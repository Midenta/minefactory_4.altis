#include "..\..\script_macros.hpp"
/*
    File: fn_robAction.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Starts the robbing process?
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_target"];
_target = cursorObject;

//Error checks
if (isNull _target) exitWith {};
if (!isPlayer _target) exitWith {};

if(getNumber(missionConfigFile >> "Config_Newbie" >> "robbingAllowed") isEqualTo 1 && _target getVariable ["FLUG_newbie_isNewbie", false]) exitWith {"cantBeRobbed" call FLUG_fnc_newbieMessage;};

if (_target getVariable ["robbed",false]) exitWith {};
[player] remoteExecCall ["husky_fnc_robPerson",_target];
_target setVariable ["robbed",true,true];

