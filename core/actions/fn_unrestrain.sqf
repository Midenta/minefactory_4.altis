
#include "..\..\script_macros.hpp"
/*
    File: fn_unrestrain.sqf
    Author:

    Description:

*/
private ["_unit"];
_unit = param [0,objNull,[objNull]];
if (isNull _unit || !(_unit getVariable ["restrained",false])) exitWith {}; //Error check?

_unit setVariable ["restrained",false,true];
_unit setVariable ["Escorting",false,true];
_unit setVariable ["transporting",false,true];
_unit setVariable ["tied", nil, true];
_unit setVariable ["gagged",false,true];
_unit setVariable ["blindfolded", nil, true];
detach _unit;

[0,"STR_NOTF_Unrestrain",true,[_unit getVariable ["realname",name _unit], profileName]] remoteExecCall ["husky_fnc_broadcast",west];

[getPlayerUID player, "Unrestrain", format ["%1 hat %2 freigelassen.",profileName,name _unit]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
