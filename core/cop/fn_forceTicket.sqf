#include "..\..\script_macros.hpp"
/*
    File: fn_ticketGive.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Gives a ticket to the targeted player.
*/
/*if (isNil "husky_ticket_unit") exitWith {hint localize "STR_Cop_TicketNil"};
if (isNull husky_ticket_unit) exitWith {hint localize "STR_Cop_TicketExist"};

private _val = ctrlText 2652;

if (!([_val] call TON_fnc_isnumber)) exitWith {hint localize "STR_Cop_TicketNum"};
//if ((parseNumber _val) > 200000) exitWith {hint localize "STR_Cop_TicketOver100"};

[0,"STR_Cop_TicketGive",true,[profileName,[(parseNumber _val)] call husky_fnc_numberText,husky_ticket_unit getVariable ["realname",name husky_ticket_unit]]] remoteExecCall ["husky_fnc_broadcast",RCLIENT];
[player,(parseNumber _val)] remoteExec ["husky_fnc_ticketPrompt",husky_ticket_unit];
closeDialog 0;*/
_unit = [_this,0,objNull] call bis_fnc_param;
if (isNil "husky_ticket_unit") exitWith {hint localize "STR_Cop_TicketNil"};
if (isNull husky_ticket_unit) exitWith {hint localize "STR_Cop_TicketExist"};

husky_ticket_unit_bank = nil;
0 remoteExec ["husky_ticket_send_bank",_unit];
waitUntil {!isNil "husky_ticket_unit_bank"};
_bank = husky_ticket_unit_bank;
husky_ticket_unit_bank = nil;
private _val = ctrlText 2652;
private _valprozentslider = sliderPosition 2657;
private _valprozent = (_valprozentslider/100) * _bank;

if ((isNull _val) && (isNull _valprozent)) exitWith{hint "Es wurde kein Wert festgelegt."};

if (!(isNull _valprozent) && !(isNull _val)) then {
	_val2 = _valprozent + _val;
} else {
	if (!(isNull _valprozent)) then{
		_val2 = _valprozent;
	} else {
		if (!(isNull _val)) then{
			_val2 = _val;
		};
	};
};

if (!([_val] call TON_fnc_isnumber)) exitWith {hint localize "STR_Cop_TicketNum"};

//if ((parseNumber _val) > 200000) exitWith {hint localize "STR_Cop_TicketOver100"};

[0,"STR_Cop_TicketGive",true,[profileName,[(parseNumber _val)] call husky_fnc_numberText,husky_ticket_unit getVariable ["realname",name husky_ticket_unit]]] remoteExecCall ["husky_fnc_broadcast",RCLIENT];
[player,(parseNumber _val2)] remoteExec ["husky_fnc_ticketPrompt",husky_ticket_unit];
closeDialog 0;
