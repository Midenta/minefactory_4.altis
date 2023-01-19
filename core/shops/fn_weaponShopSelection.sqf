#include "..\..\script_macros.hpp"
/*
    File: fn_weaponShopSelection.sqf
    Author: Deathman / MrFrost

    Description:
    Check wich weapon is selected and give you Information about it.
*/
if ((tvCurSel 38403) isEqualTo -1) exitWith {hint localize "STR_Shop_Weapon_NoSelect"};
private "_price";
private "_item";
_price = tvValue[38403,(tvCurSel 38403)]; if (isNil "_price") then {_price = 0;};
_item = tvData[38403,(tvCurSel 38403)];
if(_item isEqualTo "") exitWith {};
if(_price isEqualTo 0) exitWith {};
_picturetext = CONTROL(38400,38444);
_text = CONTROL(38400,38445);
_itemInfo = [_item] call husky_fnc_fetchCfgDetails;
_picturetext ctrlSetStructuredText parseText format ["<img size='5.0' valign='middle' align='center' image='%1'/>",_itemInfo select 2];
if ((_itemInfo select 6) isEqualTo "CfgWeapons") then {
_magazoninfo = [((_itemInfo select 7) select 0)]call husky_fnc_fetchCfgDetails;
    if(_magazoninfo isEqualTo []) then {
        _descripotion = (getText(configfile >> "CfgWeapons" >> _item >> "descriptionShort"));
        if (_descripotion isEqualTo "") then {
            _text ctrlSetStructuredText parseText format ["<t size='1.5' font='PuristaLight' >%1</t><br/><t size='0.9' font='PuristaLight' >Preis: </t><t size='0.9' font='PuristaLight' color='#20d429'>%2€</t>",_itemInfo select 1,[_price]call husky_fnc_numberText];
        } else {
            _text ctrlSetStructuredText parseText format ["<t size='1.5' font='PuristaLight' >%1</t><br/><t size='0.9' font='PuristaLight' >Preis: </t><t size='0.9' font='PuristaLight' color='#20d429'>%2€</t><br/><t size='0.9' font='PuristaLight' >Art: %3</t>",_itemInfo select 1,[_price]call husky_fnc_numberText,_descripotion];
        };
    } else {
        _text ctrlSetStructuredText parseText format ["<t size='1.5' font='PuristaLight' >%1</t><br/><t size='0.9' font='PuristaLight' >Preis: </t><t size='0.9' font='PuristaLight' color='#20d429'>%2€</t><br/><t size='0.9' font='PuristaLight' >Magazin: %3</t><br/><t size='0.9' font='PuristaLight' >Art: %4</t>",_itemInfo select 1,[_price]call husky_fnc_numberText,_magazoninfo select 1,_itemInfo select 9];
    };
};

if ((_itemInfo select 6) isEqualTo "CfgMagazines") then {
    _text ctrlSetStructuredText parseText format ["<t size='1.5' font='PuristaLight' >%1</t><br/><t size='0.9' font='PuristaLight' >Preis: </t><t size='0.9' font='PuristaLight' color='#20d429'>%2€</t><br/><t size='0.9' font='PuristaLight' >%3</t>",_itemInfo select 1,[_price]call husky_fnc_numberText,_itemInfo select 9];
};
