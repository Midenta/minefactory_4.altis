#include "..\..\script_macros.hpp"
/*
    File: fn_restrainAction.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Restrains the target.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

private ["_unit"];
_unit = cursorObject;
/*
_degrees = getDir player;
_degreesu = getDir _target;
_totald = _degrees - _degreesu;
*/

if (isNull _unit) exitWith {}; //Not valid
if (player distance _unit > 3.5) exitWith {}; // lol, im keyhandler aber 3.5, statt 3?
if (_unit getVariable "restrained") exitWith {};
//if (/*(side _unit isEqualTo west && playerSide isEqualTo west) ||*/ (playerSide isEqualTo civilian && side _unit isEqualTo independent)) exitWith {};
if (player isEqualTo _unit) exitWith {};
if (!isPlayer _unit) exitWith {};
/*
if !(_totald >= -90 && _totald < 1 || _totald <= 90 && _totald > -1 || _totald >= 270 || _totald <= -270) exitWith {
*/
	//[player,"cuff"] remoteExec ["husky_fnc_say3D",RANY];
	[player,"cuff",5,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];

	_unit setVariable ["restrained",true,true];
	[player] remoteExec ["husky_fnc_restrain",_unit];
	if (playerSide isEqualTo west) then {
		[0,"STR_NOTF_Restrained",true,[_unit getVariable ["realname", name _unit], profileName]] remoteExecCall ["husky_fnc_broadcast",west];

	} else {
		if (playerSide in [civilian,independent]) then {
			systemChat format["%1 wurde von dir gefesselt",_unit getVariable ["realname", name _unit]];
		};
	};

	[getPlayerUID player, "Restrained", format ["%1 hat %2 festgenommen",profileName,name _unit]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

/*
} else {
	["Du musst hinter der Person stehen!", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
};
*/
