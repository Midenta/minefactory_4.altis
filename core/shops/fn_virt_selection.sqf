#include "..\..\script_macros.hpp"
/*
    File: fn_virt_selection.sqf
    Author: Deathman

    Description:
    Zeigt dir Infos an über das Item
*/
if ((tvCurSel 38403) isEqualTo -1) exitWith {hint localize "STR_Shop_Weapon_NoSelect"};
private _price = tvValue[38403,(tvCurSel 38403)]; if (isNil "_price") then {_price = 0;};
private _item = tvData[38403,(tvCurSel 38403)];
if(_item isEqualTo "") exitWith {};
if(_price isEqualTo 0) exitWith {};
if(_price isEqualTo -1) exitWith {};
private _pic = getText(missionConfigFile >> "VirtualItems" >> _item >> "icon");
private _displayname = getText(missionConfigFile >> "VirtualItems" >> _item >> "displayName");
private _weight = getNumber(missionConfigFile >> "VirtualItems" >> _item >> "weight");
private _sellprice = getNumber(missionConfigFile >> "VirtualItems" >> _item >> "sellPrice");
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
	_text ctrlSetStructuredText parseText format ["<t size='1.3' font='PuristaLight' >%1</t><br/><t size='0.9' font='PuristaLight' >Kaufpreis: </t><t size='0.9' font='PuristaLight' color='#20d429'>%2€</t><br/><t size='0.9' font='PuristaLight' >Verkaufspreis: </t><t size='0.9' font='PuristaLight' color='#20d429'>%3€</t><br/><t size='0.9' font='PuristaLight' >Gewicht: %4</t><br/><t size='0.9' font='PuristaLight' >Trinken: %5</t><br/><t size='0.9' font='PuristaLight' >Illegal: %6</t>",(localize _displayname),[_price]call husky_fnc_numberText,[_sellprice]call husky_fnc_numberText,_weight,[_drinkelbel]call husky_fnc_numberText,_iligal];
} else {
	if(_edabel isEqualTo -1) then {
		_text ctrlSetStructuredText parseText format ["<t size='1.3' font='PuristaLight' >%1</t><br/><t size='0.9' font='PuristaLight' >Kaufpreis: </t><t size='0.9' font='PuristaLight' color='#20d429'>%2€</t><br/><t size='0.9' font='PuristaLight' >Verkaufspreis: </t><t size='0.9' font='PuristaLight' color='#20d429'>%3€</t><br/><t size='0.9' font='PuristaLight' >Gewicht: %4</t><br/><t size='0.9' font='PuristaLight' >Illegal: %5</t>",(localize _displayname),[_price]call husky_fnc_numberText,[_sellprice]call husky_fnc_numberText,_weight,_iligal];
	} else {
		_text ctrlSetStructuredText parseText format ["<t size='1.3' font='PuristaLight' >%1</t><br/><t size='0.9' font='PuristaLight' >Kaufpreis: </t><t size='0.9' font='PuristaLight' color='#20d429'>%2€</t><br/><t size='0.9' font='PuristaLight' >Verkaufspreis: </t><t size='0.9' font='PuristaLight' color='#20d429'>%3€</t><br/><t size='0.9' font='PuristaLight' >Gewicht: %4</t><br/><t size='0.9' font='PuristaLight' >Essen: %5</t><br/><t size='0.9' font='PuristaLight' >Illegal: %6</t>",(localize _displayname),[_price]call husky_fnc_numberText,[_sellprice]call husky_fnc_numberText,_weight,[_edabel]call husky_fnc_numberText,_iligal];
    };
};
