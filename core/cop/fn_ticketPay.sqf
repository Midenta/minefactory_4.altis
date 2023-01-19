#include "..\..\script_macros.hpp"
/*
    File: fn_ticketPay.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Pays the ticket.
*/
if (isNil "husky_ticket_val" || isNil "husky_ticket_cop") exitWith {};
if (c126 < husky_ticket_val) exitWith {
    if (b126 < husky_ticket_val) exitWith {
        hint localize "STR_Cop_Ticket_NotEnough";
        [1,"STR_Cop_Ticket_NotEnoughNOTF",true,[profileName]] remoteExecCall ["husky_fnc_broadcast",husky_ticket_cop];
        closeDialog 0;
    };

    hint format [localize "STR_Cop_Ticket_Paid",[husky_ticket_val] call husky_fnc_numberText];
    b126 = b126 - husky_ticket_val;
    [1] call SOCK_fnc_updatePartial;
    husky_ticket_paid = true;

    [0,"STR_Cop_Ticket_PaidNOTF",true,[profileName,[husky_ticket_val] call husky_fnc_numberText]] remoteExecCall ["husky_fnc_broadcast",west];
    [1,"STR_Cop_Ticket_PaidNOTF_2",true,[profileName]] remoteExecCall ["husky_fnc_broadcast",husky_ticket_cop];
    [husky_ticket_val,player,husky_ticket_cop] remoteExecCall ["husky_fnc_ticketPaid",husky_ticket_cop];

    if (husky_HC_isActive) then {
        [getPlayerUID player] remoteExecCall ["HC_fnc_wantedRemove",HC_husky];
    } else {
        [getPlayerUID player] remoteExecCall ["husky_fnc_wantedRemove",RSERV];
    };
    closeDialog 0;
};

c126 = c126 - husky_ticket_val;
[0] call SOCK_fnc_updatePartial;
husky_ticket_paid = true;

if (husky_HC_isActive) then {
    [getPlayerUID player] remoteExecCall ["HC_fnc_wantedRemove",HC_husky];
} else {
    [getPlayerUID player] remoteExecCall ["husky_fnc_wantedRemove",RSERV];
};

[0,"STR_Cop_Ticket_PaidNOTF",true,[profileName,[husky_ticket_val] call husky_fnc_numberText]] remoteExecCall ["husky_fnc_broadcast",west];
closeDialog 0;
[1,"STR_Cop_Ticket_PaidNOTF_2",true,[profileName]] remoteExecCall ["husky_fnc_broadcast",husky_ticket_cop];
[husky_ticket_val,player,husky_ticket_cop] remoteExecCall ["husky_fnc_ticketPaid",husky_ticket_cop];

//[getPlayerUID player, "PayTicket", format ["%2 wurde von %1 niedergeschlagen.",_who,profileName]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];