#include "..\..\script_macros.hpp"
/*
    File: fn_clothingSelection.sqf
    Author: Deathman / MrFrost

    Description:
    Check selected Colthing and give you Infromation about it
*/
private ["_control","_index","_shop","_priceTag","_price","_item","_itemArray","_bool"];
if ((tvCurSel 3101) isEqualTo -1) exitWith {hint localize "STR_Shop_Weapon_NoSelect"};
private _type = tvdata[3101,(tvCurSel 3101)];
private _buyprice = tvValue[3101,(tvCurSel 3101)];
if(_type isEqualTo "") exitWith {};
if(_buyprice isEqualTo 0) exitWith {};
_picturetext = CONTROL(3100,3112);
_text = CONTROL(3100,3117);
_itemInfo = [_type] call husky_fnc_fetchCfgDetails;
_Vitespace = M_CONFIG(getNumber,"huskyCfgBackpacks",_type,"vItemSpace");
_picturetext ctrlSetStructuredText parseText format ["<img size='5.0' valign='middle' align='center' image='%1'/>",_itemInfo select 2];
if((_itemInfo select 6) isEqualTo "CfgWeapons") then {
    if((_itemInfo select 9) isEqualTo "") then {
        _text ctrlSetStructuredText parseText format ["<t size='1.5' font='PuristaLight' >%1</t><br/><t size='0.9' font='PuristaLight' >Preis: </t><t size='0.9' font='PuristaLight' color='#20d429'>%2€</t>",_itemInfo select 1,[_buyprice]call husky_fnc_numberText];
    } else {
        _text ctrlSetStructuredText parseText format ["<t size='1.5' font='PuristaLight' >%1</t><br/><t size='0.9' font='PuristaLight' >Preis: </t><t size='0.9' font='PuristaLight' color='#20d429'>%2€</t><br/><t size='0.9' font='PuristaLight' >Panzerung: %3</t>",_itemInfo select 1,[_buyprice]call husky_fnc_numberText,_itemInfo select 9];
    };
};
if ((_itemInfo select 6) isEqualTo "CfgGlasses") then {
    _text ctrlSetStructuredText parseText format ["<t size='1.5' font='PuristaLight' >%1</t><br/><t size='0.9' font='PuristaLight' >Preis: </t><t size='0.9' font='PuristaLight' color='#20d429'>%2€</t>",_itemInfo select 1,[_buyprice]call husky_fnc_numberText];
};
if ((_itemInfo select 6) isEqualTo "CfgVehicles") then {
    _text ctrlSetStructuredText parseText format ["<t size='1.5' font='PuristaLight' >%1</t><br/><t size='0.9' font='PuristaLight' >Preis: </t><t size='0.9' font='PuristaLight' color='#20d429'>%2€</t><br/><t size='0.9' font='PuristaLight' >Art: %3</t><br/><t size='0.9' font='PuristaLight' >Platz: %4</t>",_itemInfo select 1,[_buyprice]call husky_fnc_numberText,_itemInfo select 4,_Vitespace];
};
