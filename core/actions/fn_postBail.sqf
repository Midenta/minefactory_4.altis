#include "..\..\script_macros.hpp"
/*
    File: fn_postBail.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Called when the player attempts to post bail.
    Needs to be revised.
*/
private ["_unit"];
_unit = param [1,objNull,[objNull]];
if (husky_bail_paid) exitWith {};
if (isNil "husky_bail_amount") then {husky_bail_amount = 3500;};
if (!husky_canpay_bail) exitWith {hint localize "STR_NOTF_Bail_Post"};
if (b126 < husky_bail_amount) exitWith {hint format [localize "STR_NOTF_Bail_NotEnough",husky_bail_amount];};

b126 = b126 - husky_bail_amount;
husky_bail_paid = true;
[1] call SOCK_fnc_updatePartial;
[0,"STR_NOTF_Bail_Bailed",true,[profileName]] remoteExecCall ["husky_fnc_broadcast",RCLIENT];