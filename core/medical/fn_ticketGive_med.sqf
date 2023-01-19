#include "..\..\script_macros.hpp"
/*
    File: fn_ticketGive.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Gives a ticket to the targeted player.
*/
/*
if (isNil "husky_ticket_unit") exitWith {hint localize "STR_Cop_TicketNil"};
if (isNull husky_ticket_unit) exitWith {hint localize "STR_Cop_TicketExist"};

private _val = ctrlText 2652;

if (!([_val] call TON_fnc_isnumber)) exitWith {hint localize "STR_Cop_TicketNum"};
//if ((parseNumber _val) > 200000) exitWith {hint localize "STR_Cop_TicketOver100"};

[0,"STR_Cop_TicketGive",true,[profileName,[(parseNumber _val)] call husky_fnc_numberText,husky_ticket_unit getVariable ["realname",name husky_ticket_unit]]] remoteExecCall ["husky_fnc_broadcast",RCLIENT];
[player,(parseNumber _val)] remoteExec ["husky_fnc_ticketPrompt",husky_ticket_unit];
closeDialog 0;
*/
_unit = [_this,0,objNull] call bis_fnc_param;
_bool = [_this, 1, false] call bis_fnc_param;
//if ((side _unit) isEqualTo WEST) exitWith {hint "Polizisten geben sich keine Tickets!";};
if (isNil "husky_ticket_unit") exitWith {hint localize "STR_Cop_TicketNil_med"};
if (isNull husky_ticket_unit) exitWith {hint localize "STR_Cop_TicketExist_med"};

husky_ticket_unit_bank = nil;
0 remoteExec ["husky_ticket_send_bank",_unit];
waitUntil {!isNil "husky_ticket_unit_bank"};
private _val =parseNumber ctrlText 2752;
_val = floor(abs _val);
private _valprozentslider = sliderPosition 2757;
private _valprozent = (_valprozentslider/100) * husky_ticket_unit_bank;
husky_ticket_unit_bank = nil;
if ((_val isEqualTo 0) && (_valprozent isEqualTo 0)) exitWith{hint "Es wurde kein Wert festgelegt."};
_val2 = 0;
if (!(_valprozent isEqualTo 0) && !(_val isEqualTo 0)) then {
	_val2 = _valprozent + _val;
} else {
	if (!(_valprozent isEqualTo 0)) then{
		_val2 = _valprozent;
	} else {
		_val2 = _val;
	};
};

//if ((parseNumber _val) > 200000) exitWith {hint localize "STR_Cop_TicketOver100"};

[0,"STR_Cop_TicketGive_med",true,[profileName,[_val2] call husky_fnc_numberText,husky_ticket_unit_med getVariable ["realname",name husky_ticket_unit]]] remoteExecCall ["husky_fnc_broadcast",RCLIENT];
[player,_val2,_bool] remoteExec ["husky_fnc_ticketPrompt_med",husky_ticket_unit_med];
closeDialog 0;
