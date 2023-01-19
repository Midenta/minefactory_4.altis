#include "..\..\script_macros.hpp"
/*
	File: fn_tazed.sqf
	Author: Bryan "Tonic" Boardwine
	Editor: Repentz to improve the function

	Description:
	Starts the tazed animation and broadcasts out what it needs to.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
params [
	["_unit",objNull,[objNull]],
	["_shooter",objNull,[objNull]]
];

if (isNull _unit OR {isNull _shooter}) exitWith {
	player allowDamage true; 
	husky_istazed = false;
};

if (player getVariable["restrained",false]) exitWith {};

if (_shooter isKindOf "Man" && {alive player}) then {
	if (!husky_istazed) then {
		husky_istazed = true;
		disableUserInput true;
		
		//TESTEN VOR husky
		private _curWep = currentWeapon player;
        private _curMags = magazines player;
        private _attach = if (!(primaryWeapon player isEqualTo "")) then {primaryWeaponItems player} else {[]};

        {player removeMagazine _x} forEach _curMags;

        player removeWeapon _curWep;
        player addWeapon _curWep;

        if (!(count _attach isEqualTo 0) && !(primaryWeapon player isEqualTo "")) then {
            {
                _unit addPrimaryWeaponItem _x;
            } forEach _attach;
        };

        if (!(count _curMags isEqualTo 0)) then {
            {player addMagazine _x;} forEach _curMags;
        };
		

		[] spawn husky_fnc_tazer;

		if (isNull objectParent player) then {
			for [{_x=1},{_x<=10},{_x=_x+1}] do { call SOCK_fnc_forceRagdoll; sleep 0.1;
			if (animationState player isEqualTo "unconscious") exitWith	{}	};
		};

		[_unit,"tazerSound",100,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];
		
		[0,"STR_NOTF_Tazed",true,[profileName, _shooter getVariable["realname",name _shooter]]] remoteExecCall ["husky_client_fnc_broadcast",-2];

		[getPlayerUID player, "Taser", format ["%2 wurde von %1 getasert.",name _shooter,profileName]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

		//player setDamage 0;
		waitUntil{animationState player != "unconscious"};
		_anim = if (isNull objectParent player) then {"Incapacitated"} else {"kia_driver_mid01"};
		[player,_anim] remoteExec ["husky_client_fnc_animSync",0];
		sleep 10;
		player allowDamage true;
		if (!(player getVariable["Escorting",false])) then {
			detach player;
		};
		//"DynamicBlur" ppEffectEnable false;
		player setUnconscious true;
		sleep 10;
		player setUnconscious false;
		disableUserInput true;
		player playMoveNow "amovppnemstpsraswrfldnon";
			sleep 8;
		disableUserInput false;


		player setFatigue 1; //no running for you
		//player setdamage 0.6; //especially no running for you
		husky_istazed = false;
		disableUserInput false;
	};
} else {
	_unit allowDamage true;
	husky_istazed  = false;
};
