#include "..\..\script_macros.hpp"
/*
    File: fn_ticketPrompt
    Author: Bryan "Tonic" Boardwine

    Description:
    Prompts the player that he is being ticketed.
*/
private ["_med","_val"];
if (!isNull (findDisplay 2700)) exitWith {}; //Already at the ticket menu, block for abuse?
_med = _this select 0;
if (isNull _med) exitWith {};
_val = _this select 1;
_bool = [_this, 2, false] call bis_fnc_param;
if (_bool) exitWith {
	_done = false;
	if (_val < c126) then {
		c126 = c126 - _val;
		[0] call SOCK_fnc_updatePartial;
		_done = true;
	};
	if (_val < b126) then {
		b126 = b126 - _val;
		[1] call SOCK_fnc_updatePartial;
		_done = true;
	};
	if (!_done) then {
		b126 = 0;
		c126 = 0;
		[6] call SOCK_fnc_updatePartial;
	};
	[0,"STR_Cop_Ticket_PaidNOTF_med",true,[profileName,[_val] call husky_fnc_numberText]] remoteExecCall ["husky_fnc_broadcast",independent];
	[1,"STR_Cop_Ticket_PaidNOTF_2_med",true,[profileName]] remoteExecCall ["husky_fnc_broadcast",_med];
	[_val,player,_med] remoteExecCall ["husky_fnc_ticketPaid_med",_med];
};
createDialog "husky_ticket_pay_med";
disableSerialization;
waitUntil {!isNull (findDisplay 2700)};

husky_ticket_paid_med = false;
husky_ticket_val_med = _val;
husky_ticket_med = _med;


CONTROL(2700,2701) ctrlSetStructuredText parseText format ["<t align='center'><t size='.8px'>" +(localize "STR_Cop_Ticket_GUI_Given_med"),_med getVariable ["realname",name _med],[_val] call husky_fnc_numberText];

_med spawn {
    disableSerialization;
    waitUntil {husky_ticket_paid_med || 	(isNull (findDisplay 2700))};
    if (isNull (findDisplay 2700) && !husky_ticket_paid_med) then {
        [0,"STR_Cop_Ticket_Refuse_med",true,[profileName]] remoteExecCall ["husky_fnc_broadcast",independent];
        [1,"STR_Cop_Ticket_Refuse_med",true,[profileName]] remoteExecCall ["husky_fnc_broadcast",_this];
    };
};