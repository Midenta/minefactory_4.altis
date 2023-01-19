#include "..\..\script_macros.hpp"
/*
    File: fn_virt_selectionSell.sqf
    Author: Deathman

    Description:
    Zeigt dir Infos an über das Item
*/
if ((tvCurSel 384444) isEqualTo -1) exitWith {hint localize "STR_Shop_Weapon_NoSelect"};
private _item = tvData[384444,(tvCurSel 384444)];
if(_item isEqualTo "") exitWith {};
private _pic = getText(missionConfigFile >> "VirtualItems" >> _item >> "icon");
private _displayname = getText(missionConfigFile >> "VirtualItems" >> _item >> "displayName");
private _weight = getNumber(missionConfigFile >> "VirtualItems" >> _item >> "weight");
private "_price";
_price = -2;
_itemNameToSearchFor = _item;
{
    _curItemName = _x select 0;
    _curItemPrice = _x select 1;
    if (_curItemName==_itemNameToSearchFor) then {_price=_curItemPrice};
} forEach DYNMARKET_prices;
if (_price isEqualTo -1) exitWith {};
if (_price isEqualTo -2) then {
_price = getNumber(missionConfigFile >> "VirtualItems" >> _item >> "sellPrice");
if (_price isEqualTo -1) exitWith {};
};
private _iligal = getNumber(missionConfigFile >> "VirtualItems" >> _item >> "illegal");
private _edabel = getNumber(missionConfigFile >> "VirtualItems" >> _item >> "edible");
private _drinkelbel = getNumber(missionConfigFile >> "VirtualItems" >> _item >> "drinkable");
if(_iligal isEqualTo true) then {
    _iligal = "Ja";
} else {
    _iligal = "Nein";
};
_picturetext = CONTROL(38400,38444);
_text = CONTROL(38400,38445);
_picturetext ctrlSetStructuredText parseText format ["<img size='5.0' valign='bottom' align='center' image='%1'/>",_pic];
if(_drinkelbel isEqualTo -1) then {
	_text ctrlSetStructuredText parseText format ["<t size='1.3' font='PuristaLight' >%1</t><br/><t size='0.9' font='PuristaLight' >Verkaufspreis: </t><t size='0.9' font='PuristaLight' color='#20d429'>%2€</t><br/><t size='0.9' font='PuristaLight' >Gewicht: %3</t><br/><t size='0.9' font='PuristaLight' >Trinken: %4</t><br/><t size='0.9' font='PuristaLight' >Illegal: %5</t>",(localize _displayname),[_price]call husky_fnc_numberText,_weight,[_drinkelbel]call husky_fnc_numberText,_iligal];
} else {
	if(_edabel isEqualTo -1) then {
		_text ctrlSetStructuredText parseText format ["<t size='1.3' font='PuristaLight' >%1</t><br/><t size='0.9' font='PuristaLight' >Verkaufspreis: </t><t size='0.9' font='PuristaLight' color='#20d429'>%2€</t><br/><t size='0.9' font='PuristaLight' >Gewicht: %3</t><br/><t size='0.9' font='PuristaLight' >Illegal: %4</t>",(localize _displayname),[_price]call husky_fnc_numberText,_weight,_iligal];
    } else {
		_text ctrlSetStructuredText parseText format ["<t size='1.3' font='PuristaLight' >%1</t><br/><t size='0.9' font='PuristaLight' >Verkaufspreis: </t><t size='0.9' font='PuristaLight' color='#20d429'>%2€</t><br/><t size='0.9' font='PuristaLight' >Gewicht: %3</t><br/><t size='0.9' font='PuristaLight' >Essen: %4</t><br/><t size='0.9' font='PuristaLight' >Illegal: %5</t>",(localize _displayname),[_price]call husky_fnc_numberText,_weight,[_edabel]call husky_fnc_numberText,_iligal];
    };
};
