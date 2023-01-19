#include "..\..\script_macros.hpp"
/*
    File: fn_arrestAction.sqf
    Author:

    Description:
    Arrests the targeted person.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
params [
	["_unit",objNull,[objNull]],
	["_time",1,[30]]
];

if (isNull _unit) exitWith {}; //Not valid
if (isNil "_unit") exitWith {}; //Not Valid
if (!(_unit isKindOf "Man")) exitWith {}; //Not a unit
if (!isPlayer _unit) exitWith {}; //Not a human
if (!(_unit getVariable "restrained")) exitWith {}; //He's not restrained.
if (!((side _unit) in [civilian,independent,east,west])) exitWith {}; //Not a civ
if (isNull _unit) exitWith {}; //Not valid

if (husky_HC_isActive) then {
 if (_time < 1) exitwith {};
 [getPlayerUID _unit,_unit,player,false] remoteExecCall ["HC_fnc_wantedBounty",HC_husky];
} else {
 if (_time < 1) exitwith {};
 [getPlayerUID _unit,_unit,player,false] remoteExecCall ["husky_fnc_wantedBounty",RSERV];
};

if (isNull _unit) exitWith {}; //Not valid
detach _unit;

[_unit,false,_time] remoteExecCall ["husky_fnc_jail",_unit];
[0,"STR_NOTF_Arrested_1",true, [_unit getVariable ["realname",name _unit], profileName]] remoteExecCall ["husky_fnc_broadcast",west];

[getPlayerUID player, "Arrested", format ["%1 - %2 hat %3 verhaftet.",profileName,(getPlayerUID player),_unit getVariable ["realname",name _unit]]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];


if (husky_SETTINGS(getNumber,"player_advancedLog") isEqualTo 1) then {
 if (husky_SETTINGS(getNumber,"battlEye_friendlyLogging") isEqualTo 1) then {
 advanced_log = format [localize "STR_DL_AL_Arrested_BEF",_unit getVariable ["realname",name _unit]];
 } else {
 advanced_log = format [localize "STR_DL_AL_Arrested",profileName,(getPlayerUID player),_unit getVariable ["realname",name _unit]];
 };
 publicVariableServer "advanced_log";
};
