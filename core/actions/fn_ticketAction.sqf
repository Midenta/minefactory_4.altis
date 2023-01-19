/*
    File: fn_ticketAction.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Starts the ticketing process.
*/
params [
    ["_unit",objNull,[objNull]]
];
disableSerialization;
if (!(createDialog "husky_ticket_give")) exitWith {};
if (isNull _unit || !isPlayer _unit) exitWith {};
ctrlSetText[2651,format ["Strafzettel an %1",_unit getVariable ["realname",name _unit]]];
sliderSetRange [2657, 0, 8];
sliderSetSpeed [2657, 0.5, 1];
sliderSetPosition [2657, 0];
husky_ticket_unit_bank = nil;
0 remoteExec ["husky_ticket_send_bank",_unit];
waitUntil {!(isNil "husky_ticket_unit_bank")};
husky_ticket_unit = _unit;
