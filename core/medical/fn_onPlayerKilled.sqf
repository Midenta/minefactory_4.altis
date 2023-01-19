#include "..\..\script_macros.hpp"
/*
    File: fn_onPlayerKilled.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    When the player dies collect various information about that player
    and pull up the death dialog / camera functionality.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
params [
    ["_unit",objNull,[objNull]],
    ["_killer",objNull,[objNull]]
];
disableSerialization;


if  !((vehicle _unit) isEqualTo _unit) then {
    UnAssignVehicle _unit;
    _unit action ["getOut", vehicle _unit];
    _unit setPosATL [(getPosATL _unit select 0) + 3, (getPosATL _unit select 1) + 1, 0];
};

//Set some vars
_unit setVariable ["Revive",false,true];		//Revive mit Request _unit setVariable ["Revive",true,true];		//Revive ohne Request _unit setVariable ["Revive",false,true];
_unit setVariable ["name",profileName,true]; //Set my name so they can say my name.
_unit setVariable ["restrained",false,true];
_unit setVariable ["Escorting",false,true];
_unit setVariable ["transporting",false,true];
_unit setVariable ["playerSurrender",false,true];
_unit setVariable ["steam64id",(getPlayerUID player),true]; //Set the UID.
//_unit setVariable["missingOrgan",false,true];
//_unit setVariable["hasOrgan",false,true]; 

//close the esc dialog
if (dialog) then {
    closeDialog 0;
};

//death_effect = true;	//NEU TESTEN
//[] spawn husky_fnc_death_effect;

//Setup our camera view
husky_deathCamera = "CAMERA" camCreate (getPosATL _unit);
showCinemaBorder true;
husky_deathCamera cameraEffect ["Internal","Back"];

husky_deathCamera camSetTarget _unit;
husky_deathCamera camSetRelPos [0,3.5,4.5];
husky_deathCamera camSetFOV .5;
husky_deathCamera camSetFocus [50,0];
husky_deathCamera camCommit 0;

createDialog "DeathScreen";

/*
"dynamicBlur" ppEffectEnable true;       
"dynamicBlur" ppEffectAdjust [5];        
"dynamicBlur" ppEffectCommit 0;         
"dynamicBlur" ppEffectAdjust [2];      
"dynamicBlur" ppEffectCommit 3; 
  
playsound "jhmedsys_heartbeat";
*/

(findDisplay 7300) displaySetEventHandler ["KeyDown","if ((_this select 1) isEqualTo 1) then {true}"]; //Block the ESC menu

//Create a thread for something?

//respawn_timer sind 120 sek also 2 min
_unit spawn {
 private["_maxTime","_RespawnBtn","_Timer"];
	disableSerialization;
	_RespawnBtn = ((findDisplay 7300) displayCtrl 7302);
	_Timer = ((findDisplay 7300) displayCtrl 7301);
	_maxTime = time + (15*60);	//15 minuten bis force respawn 

	_RespawnBtn ctrlEnable false;
	uiSleep 3;
	_RespawnBtn ctrlEnable true;	
	private _unit = _this;
	/* waitUntil {_Timer ctrlSetText format [localize "STR_Medic_Respawn",[(_maxTime - time),"MM:SS.MS"] call BIS_fnc_secondsToString];
	round(_maxTime - time) <= 0 || isNull _unit || _unit getVariable "husky_request_timer"}; */
	while {!(round(_maxTime - time) <= 0 || isNull _unit || {_unit getVariable "husky_request_timer"})} do {
		uiSleep 0.18;
		_Timer ctrlSetText format [localize "STR_Medic_Respawn",[(_maxTime - time),"MM:SS.MS"] call BIS_fnc_secondsToString]
	};
	if (_this getVariable "husky_request_timer") then {
		_maxTime = time + (30 * 60); //beim benutzen eines erste hilfe kits + 15 min
		while {!(round(_maxTime - time) <= 0 || isNull _unit)} do {
			uiSleep 0.18;
			_Timer ctrlSetText format [localize "STR_Medic_Respawn",[(_maxTime - time),"MM:SS.MS"] call BIS_fnc_secondsToString]
		};
	};

	_this setVariable["husky_request_timer",false,true];
	//husky_request_timer = false; //Setzt den erhöhten Respawn-Timer zurück

	if (!(_this getVariable "Revive") && !(_this getVariable "husky_request_timer")) then {
		closeDialog 0; 
		husky_respawned = true; 
		death_effect = false; 
		[] call cat_spawn_fnc_spawnMenu;
	};

};

_unit spawn {
    private ["_requestBtn","_requestTime"];
    disableSerialization;
    _requestBtn = ((findDisplay 7300) displayCtrl 7303);
    _requestBtn ctrlEnable false;
    _requestTime = time + 5;
    waitUntil {round(_requestTime - time) <= 0 || isNull _this};
    _requestBtn ctrlEnable true;
};

[] spawn husky_fnc_deathScreen;

//Create a thread to follow with some what precision view of the corpse.
[_unit] spawn {
    private ["_unit"];
    _unit = _this select 0;
    waitUntil {if (speed _unit isEqualTo 0) exitWith {true}; husky_deathCamera camSetTarget _unit; husky_deathCamera camSetRelPos [0,3.5,4.5]; husky_deathCamera camCommit 0;};
};

//Make the killer wanted
if (!isNull _killer && {!(_killer isEqualTo _unit)} && {!(side _killer isEqualTo west)} && {alive _killer}) then {
    if (vehicle _killer isKindOf "LandVehicle") then {
        if (husky_HC_isActive) then {
            [getPlayerUID _killer,_killer getVariable ["realname",name _killer],"36"] remoteExecCall ["HC_fnc_wantedAdd",HC_husky];
        } else {
            [getPlayerUID _killer,_killer getVariable ["realname",name _killer],"36"] remoteExecCall ["husky_fnc_wantedAdd",RSERV];
        };

        //Get rid of this if you don't want automatic vehicle license removal.
        if (!local _killer) then {
            [2] remoteExecCall ["husky_fnc_removeLicenses",_killer];
        };
    } else {
        if (husky_HC_isActive) then {
            [getPlayerUID _killer,_killer getVariable ["realname",name _killer],"37"] remoteExecCall ["HC_fnc_wantedAdd",HC_husky];
        } else {
            [getPlayerUID _killer,_killer getVariable ["realname",name _killer],"37"] remoteExecCall ["husky_fnc_wantedAdd",RSERV];
        };

        if (!local _killer) then {
            [3] remoteExecCall ["husky_fnc_removeLicenses",_killer];
        };
		if ((_killer distance (getMarkerPos "pvp_1")) < 2400) then {
			[4] remoteExecCall ["husky_fnc_removeLicenses",_killer];
			[getPlayerUID player, "PvP Zonen Killer1", format ["%1 - %2 hat %3 getötet und 5 Coin erhalten. Statts Toter Bargeld: %4 € Bankkonto: %5 € Coin: %6 ",name _killer,(getPlayerUID _killer),name _unit,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
   
		};
    };
};

//husky_save_gear = [player] call husky_fnc_fetchDeadGear;
husky_save_gear = getUnitLoadout player;

if (husky_SETTINGS(getNumber,"drop_weapons_onDeath") isEqualTo 0) then {
    _unit removeWeapon (primaryWeapon _unit);
    _unit removeWeapon (handgunWeapon _unit);
    _unit removeWeapon (secondaryWeapon _unit);
};

//Killed by cop stuff...
if (side _killer isEqualTo west && !(playerSide isEqualTo west)) then {
    husky_copRecieve = _killer;
    //Did I rob the federal reserve?
    if (!husky_use_atm && {c126 > 0}) then {
        [format [localize "STR_Cop_RobberDead",[c126] call husky_fnc_numberText]] remoteExecCall ["husky_fnc_broadcast",RCLIENT];
        c126 = 0;
    };
};

if (!isNull _killer && {!(_killer isEqualTo _unit)}) then {
    husky_removeWanted = true;
};

[_unit] call husky_fnc_dropItems;			//Deaktivieren um Dead Loot zu dropen

husky_action_inUse = false;
husky_hunger = 100;
husky_thirst = 100;
husky_carryWeight = 0;
c126 = 0;
husky_is_alive = false;

[] call husky_fnc_hudUpdate; //Get our HUD updated.
[player,husky_settings_enableSidechannel,playerSide] remoteExecCall ["TON_fnc_manageSC",RSERV];

	if (playerSide isEqualTo west) then {
		if (FETCH_CONST(husky_coplevel) == 0) then  {_unit setVariable ["realname", format["[Nix] %1",profileName], true];};	//Praktikant
		if (FETCH_CONST(husky_coplevel) == 1) then  {_unit setVariable ["realname", format["[Polizist] %1",profileName], true];};	//Praktikant
		if (FETCH_CONST(husky_coplevel) == 2) then  {_unit setVariable ["realname", format["[Polizist] %1",profileName], true];};	//Constable
		if (FETCH_CONST(husky_coplevel) == 3) then  {_unit setVariable ["realname", format["[Polizist] %1",profileName], true];};	//Tercero
		if (FETCH_CONST(husky_coplevel) == 4) then  {_unit setVariable ["realname", format["[Polizist] %1",profileName], true];};	//Segundo
		if (FETCH_CONST(husky_coplevel) == 5) then  {_unit setVariable ["realname", format["[Polizist] %1",profileName], true];};	//Primero
		if (FETCH_CONST(husky_coplevel) == 6) then  {_unit setVariable ["realname", format["[Polizist] %1",profileName], true];};	//Suboficial
		if (FETCH_CONST(husky_coplevel) == 7) then  {_unit setVariable ["realname", format["[Polizist] %1",profileName], true];};	//Oficial
		if (FETCH_CONST(husky_coplevel) == 8) then  {_unit setVariable ["realname", format["[Polizist] %1",profileName], true];};	//Subinspector
		if (FETCH_CONST(husky_coplevel) == 9) then  {_unit setVariable ["realname", format["[Polizist] %1",profileName], true];};	//Inspector
		if (FETCH_CONST(husky_coplevel) == 10) then {_unit setVariable ["realname", format["[Polizist] %1",profileName], true];};	//Inspector Jefe
		if (FETCH_CONST(husky_coplevel) == 11) then {_unit setVariable ["realname", format["[Polizist] %1",profileName], true];};	//Inspector General
		if (FETCH_CONST(husky_coplevel) == 12) then {_unit setVariable ["realname", format["[Polizist] %1",profileName], true];};	//Comisario
		if (FETCH_CONST(husky_coplevel) == 13) then {_unit setVariable ["realname", format["[Polizist] %1",profileName], true];};	//Comisario Jefe
		if (FETCH_CONST(husky_coplevel) == 14) then {_unit setVariable ["realname", format["[Polizist] %1",profileName], true];};	//Comisario General
		if (FETCH_CONST(husky_coplevel) == 15) then {_unit setVariable ["realname", format["[Polizist] %1",profileName], true];};	//Comisionado General
		if (FETCH_CONST(husky_coplevel) == 16) then {_unit setVariable ["realname", format["[Polizist] %1",profileName], true];};	//Inspector	//Admin
		if (FETCH_CONST(husky_coplevel) == 17) then {_unit setVariable ["realname", format["[Polizist] %1",profileName], true];};	//Inspector	//Admin
		if (FETCH_CONST(husky_coplevel) == 18) then {_unit setVariable ["realname", format["[Polizist] %1",profileName], true];};	//Inspector	//Admin
		if (FETCH_CONST(husky_coplevel) == 19) then {_unit setVariable ["realname", format["[Polizist] %1",profileName], true];};	//Inspector	//Admin
		if (FETCH_CONST(husky_coplevel) == 20) then {_unit setVariable ["realname", format["[Polizist] %1",profileName], true];};	//Inspector	//Admin
	};
	
	if (playerSide isEqualTo independent) then {
		if (FETCH_CONST(husky_mediclevel) == 1) then  {_unit setVariable ["realname", format["[Nix] %1",profileName], true];};	//Praktikant
		if (FETCH_CONST(husky_mediclevel) == 1) then  {_unit setVariable ["realname", format["[Feuerwehr] %1",profileName], true];};	//Praktikant
		if (FETCH_CONST(husky_mediclevel) == 2) then  {_unit setVariable ["realname", format["[Feuerwehr] %1",profileName], true];};	//Constable
		if (FETCH_CONST(husky_mediclevel) == 3) then  {_unit setVariable ["realname", format["[Feuerwehr] %1",profileName], true];};	//Tercero
		if (FETCH_CONST(husky_mediclevel) == 4) then  {_unit setVariable ["realname", format["[Feuerwehr] %1",profileName], true];};	//Segundo
		if (FETCH_CONST(husky_mediclevel) == 5) then  {_unit setVariable ["realname", format["[Feuerwehr] %1",profileName], true];};	//Primero
		if (FETCH_CONST(husky_mediclevel) == 6) then  {_unit setVariable ["realname", format["[Feuerwehr] %1",profileName], true];};	//Suboficial
		if (FETCH_CONST(husky_mediclevel) == 7) then  {_unit setVariable ["realname", format["[Feuerwehr] %1",profileName], true];};	//Oficial
		if (FETCH_CONST(husky_mediclevel) == 8) then  {_unit setVariable ["realname", format["[Feuerwehr] %1",profileName], true];};	//Subinspector
		if (FETCH_CONST(husky_mediclevel) == 9) then  {_unit setVariable ["realname", format["[Feuerwehr] %1",profileName], true];};	//Inspector
		if (FETCH_CONST(husky_mediclevel) == 10) then {_unit setVariable ["realname", format["[Feuerwehr] %1",profileName], true];};	//Inspector Jefe
		if (FETCH_CONST(husky_mediclevel) == 11) then {_unit setVariable ["realname", format["[Feuerwehr] %1",profileName], true];};	//Inspector General
	};

_victimNameSide = "";
_victimName = _unit getVariable["realname",""];
_killerSide = "";
_killerName = "";

if ( (!isNull _killer) && (_killer != player)) then {
	_killerName = _killer getVariable["realname",""];
};
if(_killerName == "") then {
	_TodNachrichtTot = [ 
	"Noob %1 down!",
	"%1 ist abgekackt!",
	"%1 ist mausetot!",
	"Mit %1 ist es jetzt vorbei!",
	"Dass mein lieber %1 wars an dieser Stelle komplett!"
	];
	_deathmessage = selectRandom _TodNachrichtTot;
	_victimName = _unit getVariable["realname",""];
	_victimNameSide = _victimNameSide + _victimName; 
	NNToTmessage = format [_deathmessage, _victimNameSide];
	
}else{
	_TodNachricht = [ 
	"%1 wurde von %2 getötet!",
	"%1 bekam von %2 einen Einlauf.",
	"%1 wurde von %2 durchbohrt!",
	"%1 wurde von %2 gebraten!",
	"%1 wurde von %2 zerhackt!"
	];
	_killMessage = selectRandom _TodNachricht;
	
	_victimNameSide = _victimNameSide + _victimName; 
	_killerSide = _killerSide + _killerName;
	NNToTmessage = format [_killMessage, _victimNameSide, _killerSide];
};
[0,NNToTmessage] remoteExecCall ["husky_fnc_broadcast",-2];


[0] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;
if (playerSide isEqualTo civilian) then {
    [4] call SOCK_fnc_updatePartial;
};

