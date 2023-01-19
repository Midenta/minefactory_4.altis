#include "..\..\script_macros.hpp"
/*
    File: fn_knockoutAction.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Knocks out the target.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

private "_target";
_target = param [0,objNull,[objNull]];
_degrees = getDir player; 
_degreesu = getDir _target;
_totald = _degrees - _degreesu;


if (isNull _target) exitWith {};
if (!isPlayer _target) exitWith {};
if (player distance _target > 4) exitWith {};
//if(getNumber(missionConfigFile >> "Config_Newbie" >> "knockdownAllowed") isEqualTo 1 && _target getVariable ["FLUG_newbie_isNewbie", false]) exitWith {"cantBeKnocked" call FLUG_fnc_newbieMessage;};
/*
if !(_totald >= -90 && _totald < 1 || _totald <= 90 && _totald > -1 || _totald >= 270 || _totald <= -270) exitWith {
*/	
	husky_knockout = true;
	[player,"AwopPercMstpSgthWrflDnon_End2"] remoteExecCall ["husky_fnc_animSync",RCLIENT];
	sleep 0.08;
	[_target,profileName] remoteExec ["husky_fnc_knockedOut",_target];
	
	sleep 3;
	husky_knockout = false;
/*
}else{
	["Du musst hinter der Person stehen!", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
};
*/
/*
private "_target";
_target = param [0,objNull,[objNull]];

//Error checks
if (isNull _target) exitWith {};
if (!isPlayer _target) exitWith {};
if (player distance _target > 4) exitWith {};
if(getNumber(missionConfigFile >> "Config_Newbie" >> "knockdownAllowed") isEqualTo 1 && _target getVariable ["FLUG_newbie_isNewbie", false]) exitWith {"cantBeKnocked" call FLUG_fnc_newbieMessage;};
if (playerSide in [west,independent,east,civilian]) then {
	husky_knockout = true;
	[player,"AwopPercMstpSgthWrflDnon_End2"] remoteExecCall ["husky_fnc_animSync",RCLIENT];
	sleep 0.08;
	[_target,profileName] remoteExec ["husky_fnc_knockedOut",_target];

	sleep 3;
	husky_knockout = false;

} else {
	_degrees = getDir player; 
	_degreesu = getDir _target;
	_totald = _degrees - _degreesu;
	if !(_totald >= -90 && _totald < 1 || _totald <= 90 && _totald > -1 || _totald >= 270 || _totald <= -270) exitWith {
		["Du musst hinter der Person stehen!", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	player attachTo [_target, [0, -0.4, 0.1] ];
	detach player; 
	_obj = "Land_ClutterCutter_small_F" createVehicle (getPosATL player); 
	player switchmove "AmovPpneMstpSnonWnonDnon";
	_obj setPosATL (getPosATL player);  
	player attachTo [_obj,[0,-0.3,0.7]]; 
	detach player;
	[_target,profileName] remoteExec ["husky_fnc_knockedOut",_target];
	uiSleep 3;
	husky_knockout = false;
	deleteVehicle _obj;
};
*/
