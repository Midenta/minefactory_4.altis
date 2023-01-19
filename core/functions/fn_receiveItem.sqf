#include "..\..\script_macros.hpp"
/*
    File: fn_receiveItem.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Receive an item from a player.
*/
private ["_unit","_val","_item","_from","_diff"];
_unit = _this select 0;
if !(_unit isEqualTo player) exitWith {};
_val = _this select 1;
_item = _this select 2;
_from = _this select 3;

_diff = [_item,(parseNumber _val),husky_carryWeight,husky_maxWeight] call husky_fnc_calWeightDiff;

if (!(_diff isEqualTo (parseNumber _val))) then {
    if ([true,_item,_diff] call husky_fnc_handleInv) then {
        //hint format [localize "STR_MISC_TooMuch_3",_from getVariable ["steam64id",name _from],_val,_diff,((parseNumber _val) - _diff)];
		hint format [localize "STR_MISC_TooMuch_3",_from getVariable ["realname",name _from],_val,_diff,((parseNumber _val) - _diff)];
        [_from,_item,str((parseNumber _val) - _diff),_unit] remoteExecCall ["husky_fnc_giveDiff",_from];
    } else {
        [_from,_item,_val,_unit,false] remoteExecCall ["husky_fnc_giveDiff",_from];
    };
} else {
    if ([true,_item,(parseNumber _val)] call husky_fnc_handleInv) then {
        private "_type";
        _type = M_CONFIG(getText,"VirtualItems",_item,"displayName");
        //hint format [localize "STR_NOTF_GivenItem",_from getVariable ["steam64id",name _from],_val,(localize _type)];
		hint format [localize "STR_NOTF_GivenItem",_from getVariable ["realname",name _from],_val,(localize _type)];
    } else {
        [_from,_item,_val,_unit,false] remoteExecCall ["husky_fnc_giveDiff",_from];
    };
};
[3] call SOCK_fnc_updatePartial;