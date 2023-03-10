	#include "..\..\script_macros.hpp"
/*
	File: fn_ah_load.sqf
	Author: Fresqo
	## Modified by powerafro2 ##
*/
if!(playerside isEqualto civilian)exitWith{hint "Du wollst woll dein Polizei oder Feuerwehr Gear Verkaufen daraus wird aber nichts.";};
waitUntil {createDialog "AH_buy";};
disableSerialization;
private["_dialog","_myListbox","_curOffer","_id","_type","_amount","_item","_pic","_itemName","_price","_seller","_sellerName","_status","_time","_search","_allAH","_found"];
params [
	["_search","",[""]]
];
_dialog = findDisplay 15100;
_myListbox = _dialog displayCtrl 15101;
_allAH = all_ah_items;

if(_search != "") then {
	_allAH = [];
	{_found = _x select 3 select 1 find _search; if (_found != -1) then {_allAH pushBack _x};} forEach all_ah_items;
};
if (count all_ah_items isEqualTo 0) then {
	_myListbox lbAdd format ["Aktuell sind keine Gegenstände im Auktionshaus!"];
	_myListbox lbSetData [(lbSize _myListbox)-1,format ["%1",["nichts"]]];
} else {
	{
		_curOffer = _x;
		_id = _curOffer select 0;
		_type = _curOffer select 1;
		_amount = _curOffer select 2;
		_item = _curOffer select 3 select 0;
		if (_type isEqualTo 0) then {
			_itemName = localize ITEM_NAME(_item);
			_pic = M_CONFIG(getText,"VirtualItems",_item,"icon");
			} else {if (_type isEqualTo 1) then {
			_itemName = ([_item] call husky_fnc_fetchCfgDetails) select 1;
			_pic = [_item] call husky_fnc_fetchCfgDetails select 2;
			};
		};
		_price = _curOffer select 4;
		_seller = _curOffer select 5;
		_sellerName = _curOffer select 6;
		_status = _curOffer select 7;
		_time = _curOffer select 8;
		_time = round (_time / 3);
		if (_status isEqualTo 0)then {
		_myListbox lbAdd format ["%5 %3 für $%2 von %1, Auktion läuft in %4 Std. aus",_sellerName,[_price] call husky_fnc_numberText,_itemName,[_time] call husky_fnc_numberText,[_amount] call husky_fnc_numberText];
		_myListbox lbSetPicture [(lbSize _myListbox)-1, _pic];
		_myListbox lbSetPictureColor [(lbSize _myListbox)-1, [1, 1, 1, 1]];
		_myListbox lbSetData [(lbSize _myListbox)-1,format ["%1",[_id,_seller,_item,_price,_type,_amount,_sellerName]]];
		};
	} forEach _allAH;
};

/* for "_i" from 0 to 1 step 0 do {
	sleep 1;
	if (isNull (findDisplay 15100)) exitWith {};
	sleep 1;
	if (isNull (findDisplay 15100)) exitWith {};
	sleep 1;
	if (isNull (findDisplay 15100)) exitWith {};
	sleep 1;
	if (isNull (findDisplay 15100)) exitWith {};
	sleep 1;
	((findDisplay 15100) displayCtrl 15160) ctrlSetText "textures\Menus\auktionshaus\auktionshaus.jpg";
	if (isNull (findDisplay 15100)) exitWith {};
	sleep 0.1;
	((findDisplay 15100) displayCtrl 15160) ctrlSetText "textures\Menus\auktionshaus\auktionshaus.jpg";
	if (isNull (findDisplay 15100)) exitWith {};
	sleep 0.1;
	((findDisplay 15100) displayCtrl 15160) ctrlSetText "textures\Menus\auktionshaus\auktionshaus.jpg";
	if (isNull (findDisplay 15100)) exitWith {};
	sleep 0.1;
	((findDisplay 15100) displayCtrl 15160) ctrlSetText "textures\Menus\auktionshaus\auktionshaus.jpg";
	if (isNull (findDisplay 15100)) exitWith {};
	sleep 0.1;
	((findDisplay 15100) displayCtrl 15160) ctrlSetText "textures\Menus\auktionshaus\auktionshaus.jpg";
	if (isNull (findDisplay 15100)) exitWith {};
}; */
