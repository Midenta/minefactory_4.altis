#include "..\..\script_macros.hpp"
/*
	File: fn_ah_buy.sqf
	Description: buys the item but does some checks and another cool thing
	Author: Fresqo
	## Modified by powerafro2 ##
	returns _id,_seller,_item,_price,_type,_amount,_sellerName
*/

disableSerialization;
private["_d","_e","_dialog","_myListbox","_selectedOffer","_id","_seller","_item","_value","_checkid","_cnt","_status","_online","_pid","_unit","_type","_amount","_diff","_uid","_caller","_handle","_tamount","_iCheck"];
_dialog = findDisplay 15100;
_myListbox = _dialog displayCtrl 15101;
if (lbCurSel _myListbox < 0) exitWith {hint "Du musst einen Gegenstand auswählen";};
_selectedOffer = call compile (_myListbox lbData (lbCurSel _myListbox));

if (!ah_loaded) exitWith {hint "Das Auktionshaus arbeitet gerade, bitte gedulde dich einen Moment!"};
if (count _selectedOffer < 6) exitWith {};

_id = _selectedOffer select 0;
_seller = _selectedOffer select 1;
_item = _selectedOffer select 2;
_value = _selectedOffer select 3;
_type = _selectedOffer select 4;
_amount = _selectedOffer select 5;
_sellerName = _selectedOffer select 6;
_uid = getPlayerUID player;
_caller = player;
_online = false;
_iCheck = true;

_e = missionNamespace getVariable [format["ahItem_%1",_id],false];
if (player getVariable["ahID",0] != _id && !_e) exitWith {hint "Jemand hat diesen Gegenstand gekauft oder aus dem Auktionshaus genommen!";};

if (_seller isEqualTo _uid) exitWith {hint "Du kannst deinen eigenen Gegenstand nicht kaufen!";};

{_checkid = _x select 0;if (_checkid == _id) then {_status = _x select 7};}forEach all_ah_items;
if !(_status isEqualTo 0) exitWith {hint "Der Gegenstand wurde bereits gekauft!";};
if (b126 < _value) exitWith {hint "Du hast leider nicht genug Geld auf dem Bankkonto!";};

if (_type isEqualTo 0) then
	{
		_diff = [_item,_amount,husky_carryWeight,husky_maxWeight] call husky_fnc_calWeightDiff;
		if(_diff < _amount) then {_iCheck = false;};
	} else
		{
		if (_type isEqualTo 1)then
			{ if (_amount > 1) then
				{
					_iCheck = [_item,_amount] call husky_fnc_ah_checkItem;
				};
			};
		};

if(!_iCheck) exitWith {hint localize "STR_NOTF_InvFull";};
b126 = b126 - _value;

switch (_type) do {
	case 0: {[true,_item,_diff] call husky_fnc_handleInv;};
	case 1: {
	_tamount = _amount + 1;
			for [{_i=1}, {_i<_tamount}, {_i=_i+1}] do
		{
			[_item,true] call husky_fnc_handleItem;
		};
	};
};

{if((getPlayerUID _x) isEqualTo _seller) then {_online = true; _unit = _x};} foreach allPlayers;
if (_online) then {
	if (husky_HC_isActive) then {
		[1,_id] remoteExec ["HC_fnc_ah_update",HC_husky];
	} else {
		[1,_id] remoteExec ["TON_fnc_ah_update",RSERV];
	};
	[0,[_item,_value,name _unit]] call husky_fnc_ah_receiver;
	[1,[_caller,_value,_item]] remoteExec ["husky_fnc_ah_receiver",_unit];
} else {
	if (husky_HC_isActive) then {
		[3,_id,_value,_seller] remoteExec ["HC_fnc_ah_update",HC_husky];
	} else {
		[3,_id,_value,_seller] remoteExec ["TON_fnc_ah_update",RSERV];
	};
	[0,[_item,_value,_sellerName]] remoteExec ["husky_fnc_ah_receiver",_caller];
};

[getPlayerUID player, "Auktionshaus buy", format ["%1 - %2 hat %3 %4 für %5 von %6 %7 gekauft. Bankkonto: %8 €  Bargeld: %9 €",profileName,(getPlayerUID player),[_tamount] call husky_fnc_numberText,_item,[_value] call husky_fnc_numberText,_seller,_sellerName,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];


[1] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;
