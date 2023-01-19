#include "..\..\script_macros.hpp"
/*
    File: fn_wireTransfer.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Initiates the wire-transfer
*/
params [
    ["_value",0,[0]],
    ["_from","",[""]]
];

if (_value isEqualTo 0 || _from isEqualTo "" || _from isEqualTo profileName) exitWith {}; //No
b126 = b126 + _value;
[1] call SOCK_fnc_updatePartial;
hint format [localize "STR_ATM_WireTransfer",_from,[_value] call husky_fnc_numberText];