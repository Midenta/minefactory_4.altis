#include "..\..\script_macros.hpp"
/*
    File: fn_receiveMoney.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Receives money
*/

params [
    ["_unit",objNull,[objNull]],
    ["_val","",[""]],
    ["_from",objNull,[objNull]]
];

if (isNull _unit || isNull _from || _val isEqualTo "") exitWith {};
if !(player isEqualTo _unit) exitWith {};
if (!([_val] call TON_fnc_isnumber)) exitWith {};
if (_unit == _from) exitWith {}; //Bad boy, trying to exploit his way to riches.

//hint format [localize "STR_NOTF_GivenMoney",_from getVariable ["steam64id",name _from],[(parseNumber (_val))] call husky_fnc_numberText];
hint format [localize "STR_NOTF_GivenMoney",_from getVariable ["realname",name _from],[(parseNumber (_val))] call husky_fnc_numberText];

cash2 = c126;

c126 = c126 + parseNumber(_val);

[getPlayerUID player, "GaveMoney 2", format ["%2 hat %1 € von %3 erhalten. Bargeld vor geben: %4 € Bargeld nach geben: %5 € Bankkonto: %6 €",[(parseNumber(_val))] call husky_fnc_numberText,name _unit,name _from,[cash2] call husky_fnc_numberText,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];


[0] call SOCK_fnc_updatePartial;


