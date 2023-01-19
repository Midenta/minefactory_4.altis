#include "..\..\script_macros.hpp"
/*
    File: fn_ticketPay.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Pays the ticket.
*/
if (isNil "husky_ticket_val" || isNil "husky_ticket_med") exitWith {};
if (c126 < husky_ticket_val) exitWith {
    if (b126 < husky_ticket_val) exitWith {
        hint localize "STR_Cop_Ticket_NotEnough_med";
        [1,"STR_Cop_Ticket_NotEnoughNOTF_med",true,[profileName]] remoteExecCall ["husky_fnc_broadcast",husky_ticket_med];
        closeDialog 0;
    };

    hint format [localize "STR_Cop_Ticket_Paid_med",[husky_ticket_val] call husky_fnc_numberText];
    b126 = b126 - husky_ticket_val;
    [1] call SOCK_fnc_updatePartial;
    husky_ticket_paid = true;

    [0,"STR_Cop_Ticket_PaidNOTF_med",true,[profileName,[husky_ticket_val] call husky_fnc_numberText]] remoteExecCall ["husky_fnc_broadcast",independent];
    [1,"STR_Cop_Ticket_PaidNOTF_2_med",true,[profileName]] remoteExecCall ["husky_fnc_broadcast",husky_ticket_med];
    [husky_ticket_val,player,husky_ticket_med] remoteExecCall ["husky_fnc_ticketPaid",husky_ticket_med];

    closeDialog 0;
};

c126 = c126 - husky_ticket_val;
[0] call SOCK_fnc_updatePartial;
husky_ticket_paid_med = true;

[0,"STR_Cop_Ticket_PaidNOTF_med",true,[profileName,[husky_ticket_val] call husky_fnc_numberText]] remoteExecCall ["husky_fnc_broadcast",independent];
closeDialog 0;
[1,"STR_Cop_Ticket_PaidNOTF_2_med",true,[profileName]] remoteExecCall ["husky_fnc_broadcast",husky_ticket_med];
[husky_ticket_val,player,husky_ticket_med] remoteExecCall ["husky_fnc_ticketPaid",husky_ticket_med];