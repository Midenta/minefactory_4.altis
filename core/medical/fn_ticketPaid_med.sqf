#include "..\..\script_macros.hpp"
/*
    File: fn_ticketPaid.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Verifies that the ticket was paid.
*/
params [
    ["_value",5,[0]],
    ["_unit",objNull,[objNull]],
    ["_med",objNull,[objNull]]
];
if (isNull _unit || {!(_unit isEqualTo husky_ticket_unit)}) exitWith {}; //NO
if (isNull _med || {!(_med isEqualTo player)}) exitWith {}; //Double NO

b126 = b126 + _value;
[1] call SOCK_fnc_updatePartial;

[getPlayerUID player, "Ticket Med", format ["%1 - %2 hat %3 � durch das Ticket erhalten.",profileName,(getPlayerUID player),_value]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];