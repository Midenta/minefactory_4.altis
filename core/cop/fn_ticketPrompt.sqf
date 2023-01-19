#include "..\..\script_macros.hpp"
/*
    File: fn_ticketPrompt
    Author: Bryan "Tonic" Boardwine

    Description:
    Prompts the player that he is being ticketed.
*/
private ["_cop","_val"];
if (!isNull (findDisplay 2600)) exitWith {}; //Already at the ticket menu, block for abuse?
_cop = _this select 0;
if (isNull _cop) exitWith {};
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
	[getPlayerUID player] remoteExecCall ["husky_fnc_wantedRemove",RSERV];
	[0,"STR_Cop_Ticket_PaidNOTF",true,[profileName,[_val] call husky_fnc_numberText]] remoteExecCall ["husky_fnc_broadcast",west];
	[1,"STR_Cop_Ticket_PaidNOTF_2",true,[profileName]] remoteExecCall ["husky_fnc_broadcast",_cop];
	[_val,player,_cop] remoteExecCall ["husky_fnc_ticketPaid",_cop];
};
createDialog "husky_ticket_pay";
disableSerialization;
waitUntil {!isNull (findDisplay 2600)};

husky_ticket_paid = false;
husky_ticket_val = _val;
husky_ticket_cop = _cop;


CONTROL(2600,2601) ctrlSetStructuredText parseText format ["<t align='center'><t size='.8px'>" +(localize "STR_Cop_Ticket_GUI_Given"),_cop getVariable ["realname",name _cop],[_val] call husky_fnc_numberText];

_cop spawn {
    disableSerialization;
    waitUntil {husky_ticket_paid || 	(isNull (findDisplay 2600))};
    if (isNull (findDisplay 2600) && !husky_ticket_paid) then {
        [0,"STR_Cop_Ticket_Refuse",true,[profileName]] remoteExecCall ["husky_fnc_broadcast",west];
        [1,"STR_Cop_Ticket_Refuse",true,[profileName]] remoteExecCall ["husky_fnc_broadcast",_this];
    };
};