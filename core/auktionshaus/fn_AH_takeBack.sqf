#include "..\..\script_macros.hpp"
/*
	File: fn_ah_takeBack.sqf
	Author: Fresqo
	## Modified by powerafro2 ##
*/
private["_dialog","_myListbox","_data","_typeb","_type","_status","_item","_diff","_iCheck","_amount","_tamount","_id","_checkid","_found","_d","_e"];
disableSerialization;
_dialog = findDisplay 15600;
_myListbox = _dialog displayCtrl 15601;

if (!ah_loaded) exitWith {hint "Das Auktionshaus arbeitet gerade, bitte gedulde dich einen Moment!"};

if (lbCurSel _myListbox < 0) exitWith {hint "Bitte wähle einen Gegenstand aus!";};
_data = call compile (_myListbox lbData (lbCurSel _myListbox));

_item = _data select 0;
if (_item isEqualTo "yolo") exitWith {};
_typeb = _data select 1;
_status = [_data,2,3,[3]] call BIS_fnc_param;
_amount = [_data,3,0,[0]] call BIS_fnc_param;
_id = _data select 4;
_iCheck = true;

if (_status == 3) exitWith {hint "Du kannst den Gegenstand nicht zurücknehmen, da er schon in deinem Inventar ist!";};

_e = missionNamespace getVariable [format["ahItem_%1",_id],false];
if (!(player getVariable["ahID",0] isEqualTo _id) && !_e) exitWith {hint "Jemand hat diesen Gegenstand gekauft oder aus dem Auktionshaus genommen!";};

if(_typeb isEqualTo "ymenu") then {_type = 0} else {_type = 1};

_found = [];
{_checkid = _x select 0;if (_checkid isEqualTo _id) then {_found pushBack _checkid};}forEach all_ah_items;
if (_found isEqualTo []) exitWith {hint "Dieser Gegenstand wurde vor Kurzem verkauft!";};

if (_type isEqualTo 0) then {
_diff = [_item,_amount,husky_carryWeight,husky_maxWeight] call husky_fnc_calWeightDiff;
if(_diff < _amount) then {_iCheck = false;};
} else {if (_type isEqualTo 1)then { if (_amount > 1) then {
_iCheck = [_item,_amount] call husky_fnc_ah_checkItem;
		};
	};
};

if(!_iCheck) exitWith {hint localize "STR_NOTF_InvFull";};

switch (_type) do {
	case 0: {[true,_item,_diff] call husky_fnc_handleInv;};
	case 1: {
		_tamount = _amount + 1;
		for [{_i=1}, {_i<_tamount}, {_i=_i+1}] do {
			[_item,true] call husky_fnc_handleItem;
		};
	};
};

if (husky_HC_isActive) then {
	[1,_id] remoteExec ["HC_fnc_ah_update",HC_husky];
} else {
	[1,_id] remoteExec ["TON_fnc_ah_update",RSERV];
};

hint "Artikel wurde erfolgreich zurückgezogen.";

[3] call SOCK_fnc_updatePartial;
