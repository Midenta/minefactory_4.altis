#include "..\..\script_macros.hpp"
/*
    File: fn_revived.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    THANK YOU JESUS I WAS SAVED!

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_medic","_dir","_reviveCost"];
_medic = param [0,"Unknown Medic",[""]];
_reviveCost = husky_SETTINGS(getNumber,"revive_fee");

//[husky_save_gear] spawn husky_fnc_loadDeadGear;
player setUnitLoadout husky_save_gear;

//hint format [localize "STR_Medic_RevivePay",_medic,[_reviveCost] call husky_fnc_numberText];

closeDialog 0;
husky_deathCamera cameraEffect ["TERMINATE","BACK"];
camDestroy husky_deathCamera;

//Take fee for services.
if (b126 > _reviveCost) then {
    b126 = b126 - _reviveCost;
} else {
    b126 = 0;
};

//Bring me back to husky.
player setDir (getDir husky_corpse);
player setPosASL (visiblePositionASL husky_corpse);
husky_corpse setVariable ["realname",nil,true]; //Should correct the double name sinking into the ground.
husky_corpse setVariable ["Revive",nil,true];
husky_corpse setVariable ["name",nil,true];
[husky_corpse] remoteExecCall ["husky_fnc_corpse",RANY];
deleteVehicle husky_corpse;


husky_action_inUse = false;
husky_is_alive = true;

player setVariable ["Revive",nil,true];
player setVariable ["name",nil,true];
player setVariable ["Reviving",nil,true];

player setVariable ["exitRad",true];

player setVariable["husky_request_timer",false,true];

[player, uniform player] call husky_fnc_playerSkins;
[] call husky_fnc_hudUpdate; //Request update of hud.
[] call SOCK_fnc_updateRequest;

/*
player setUnconscious true;
sleep 30;
player setUnconscious false;
player playMoveNow "AmovPpneMstpSrasWrflDnon";
*/
//"dynamicBlur" ppEffectEnable false; 

player setdamage 0.9;			//10 HP nach revive

[getPlayerUID player, "Revive Player Client", format ["%1 - %2 wiederbelebt von %3 .  Bargeld: %4 € Bankkonto: %5 €",profileName,(getPlayerUID player),_medic,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

"dynamicBlur" ppEffectEnable false; 


/*
private ["_medic","_dir","_reviveCost"];
_medic = param [0,"Unknown Medic",[""]];
_reviveCost = husky_SETTINGS(getNumber,"revive_fee");

[husky_save_gear] spawn husky_fnc_loadDeadGear;
husky_corpse setVariable ["realname",nil,true]; //Should correct the double name sinking into the ground.
[husky_corpse] remoteExecCall ["husky_fnc_corpse",RANY];

_dir = getDir husky_corpse;
//hint format [localize "STR_Medic_RevivePay",_medic,[_reviveCost] call husky_fnc_numberText];

closeDialog 0;
husky_deathCamera cameraEffect ["TERMINATE","BACK"];
camDestroy husky_deathCamera;

//Take fee for services.
if (b126 > _reviveCost) then {
    b126 = b126 - _reviveCost;
} else {
    b126 = 0;
};

//Bring me back to husky.
player setDir _dir;
player setPosASL (visiblePositionASL husky_corpse);
husky_corpse setVariable ["Revive",nil,true];
husky_corpse setVariable ["name",nil,true];
[husky_corpse] remoteExecCall ["husky_fnc_corpse",RANY];
deleteVehicle husky_corpse;

husky_action_inUse = false;
husky_is_alive = true;

player setVariable ["Revive",nil,true];
player setVariable ["name",nil,true];
player setVariable ["Reviving",nil,true];
[player, uniform player] call husky_fnc_playerSkins;
[] call husky_fnc_hudUpdate; //Request update of hud.
[] call SOCK_fnc_updateRequest;

*/

/*
if (alive player) then {
	0 = ["DynamicBlur", 400, [10]] spawn
	{
		params ["_name", "_priority", "_effect", "_handle"];
		while {
			_handle = ppEffectCreate [_name, _priority];
			_handle < 0
		} do {
			_priority = _priority + 1;
		};
		_handle ppEffectEnable true;
		_handle ppEffectAdjust _effect;
		_handle ppEffectCommit 1;
		waitUntil {ppEffectCommitted _handle};
		systemChat "Mein Kopf tut weh, es sollte bald vergehen ...";
		uiSleep 60;
		_handle ppEffectEnable false;
		ppEffectDestroy _handle;
		systemChat "Mir geht es schon besser.";
	};
};

if (playerside isEqualto civilian) then {
	player switchmove "AinjPpneMstpSnonWnonDnon";
	player setDamage 0.9;
};
*/
