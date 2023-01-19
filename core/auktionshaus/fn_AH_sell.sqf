#include "..\..\script_macros.hpp"
/*
	File: fn_ah_sell.sqf
	Author: Fresqo
	## Modified by powerafro2 ##
*/

private["_able","_uid","_dialog","_myListbox","_myQuantity","_onGuy","_details","_tquantity","_myTotal","_price","_typeb","_type","_classname","_realName","_bad","_tax","_action","_selectedSell","_quantity","_tochangePriceText","_tochangePriceNumber","_tochangeQuantityText","_tochangeQuantityNumber","_invItem"];
disableSerialization;
_dialog = findDisplay 15600;
_myListbox = _dialog displayCtrl 15601;
_able = 10;

_bad = false;
_realName = "";

_uid = getPlayerUID player;
if (({_x select 5 isEqualTo _uid} count all_ah_items) >= _able) exitWith {hint format["Du kannst maximal %1 Gegenstände auflisten!",_able];closeDialog 0;};

_price = ctrlText 15603;
_quantity = ctrlText 15602;

if(! ([_price] call TON_fnc_isnumber)) exitWith {hint "Du musst eine Zahl im Feld eingeben.";};
if(! ([_quantity] call TON_fnc_isnumber)) exitWith {hint "Du musst eine Zahl im Feld eingeben.";};
_price = parseNumber _price;
_quantity = parseNumber _quantity;

if (lbCurSel _myListbox < 0) exitWith {hint "Bitte wähle einen Gegenstand aus.";};
_selectedSell = call compile (_myListbox lbData (lbCurSel _myListbox));

_classname = _selectedSell select 0;
if (_classname isEqualTo "yolo") exitWith {};
_typeb = _selectedSell select 1;
_invItem = [_selectedSell,2,3,[3]] call BIS_fnc_param;
if (_invItem != 3) exitWith {hint "Du kannst einen verkauften Gegenstand nicht in das Auktionshaus stellen!"};
if(_typeb isEqualTo "ymenu") then {_type = 0} else {_type = 1};

if (_price < 1) exitWith {hint "Ungültige Zahl"};
if (_price > 9000000) exitWith {hint "Ungültige Zahl! Du kannst max. 9 Millionen einstellen."};

_tax = round (_price * 0.03);

switch (_type) do {
	case 0: {
		_realName = localize ITEM_NAME(_classname);
		if (_quantity > 100) then {_bad = true; hint "Der Preis darf nicht unter 100$ liegen!"};
	};
	case 1: {
		if (_quantity > 1) then	{
			_details = [_classname] call husky_fnc_fetchCfgDetails;
			if (!(_details select 6 == "CfgMagazines")) then {
			hint "Du kannst davon nur 1 verkaufen!";_bad = true;};
			_onGuy = {_classname == _x} count (magazines player);
			if (_onGuy < _quantity) then {hint "Du hast nicht genug davon!";_bad = true;}
		};
		_realName = ([_classname] call husky_fnc_fetchCfgDetails) select 1;
	};
};

_action = [format["Es fallen $%1 Gebühren an. JA zum Bestätigen.",_tax],"Auktions Bestätigung","JA","NEIN"] call BIS_fnc_guiMessage;
if(_action) then {
		if(b126 < _tax) exitWith {hint "Du hast nicht genug Geld auf deinem Bankkonto, um die Gebühren zu zahlen.";_bad = true;};

	switch (_type) do {
		case 0: {if(!([false,_classname,_quantity] call husky_fnc_handleInv)) then {hint "Du hast nicht genug davon!";_bad = true;};};
		case 1: {
			_tquantity = _quantity +1;
			for [{_i=1}, {_i<_tquantity}, {_i=_i+1}] do	{
				[_classname,false] spawn husky_fnc_handleItem;
			};
		};
	};
	if (_bad) exitWith {closeDialog 0;};
	if (husky_HC_isActive) then {
		[4,_type,_quantity,_price,getPlayerUID player,_classname,_realName,name player] remoteExec ["HC_fnc_ah_update",HC_husky];
	} else {
		[4,_type,_quantity,_price,getPlayerUID player,_classname,_realName,name player] remoteExec ["TON_fnc_ah_update",RSERV];
		//diag_log "TON_fnc_ah_update aufgerufen";
	};
	hint "Die Ware wurde in das Auktionshaus gestellt!";
	b126 = b126 - _tax;
};

[getPlayerUID player, "Auktionshaus sell", format ["%1 - %2 hat %3 %4 für %5 Steuer: %6 ins Auktionshaus gesetellt. Bankkonto: %7 €  Bargeld: %8 €",profileName,(getPlayerUID player),[_quantity] call husky_fnc_numberText,_classname,[_price] call husky_fnc_numberText,[_tax] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

[1] call SOCK_fnc_updatePartial;
[3] call SOCK_fnc_updatePartial;
closeDialog 0;
uisleep 0.1;
[] spawn husky_fnc_AH_load;