#include "..\..\script_macros.hpp"
/*
    File: fn_changeClothes.sqf
    Author: Bryan "Tonic" Boardwine edit by Deathman / MrFrost

    Description:
    Used in the clothing store to show a 'preview' of the piece of clothing.
*/
disableSerialization;
private _type = tvdata[3101,(tvCurSel 3101)];
private _buyprice = tvValue[3101,(tvCurSel 3101)];
private _control = (_this select 0) select 0;
private _selection = ((_this select 0) select 1) select 0;
private _price = (findDisplay 3100) displayCtrl 3102;
private _total = (findDisplay 3100) displayCtrl 3106;
if (_selection isEqualTo -1) exitWith {hint localize "STR_Shop_NoSelection";};
if (isNull _control) exitWith {hint localize "STR_Shop_NoDisplay"};
if (husky_cMenu_lock) exitWith {};
husky_cMenu_lock = true;
private "_totalPrice";
husky_clothing_purchase set[_selection,_buyprice];
if (_type isEqualTo "") then {
    _item = switch (_selection) do {
        case 0: {uniform player};
        case 1: {headGear player};
        case 2: {goggles player};
        case 3: {vest player};
        case 4: {backpack player};
    };

    [_item,false] call husky_fnc_handleItem;
} else {
    [_type,true,nil,nil,nil,nil,nil,true] call husky_fnc_handleItem;
};

husky_cMenu_lock = false;
_price ctrlSetStructuredText parseText format [(localize "STR_GNOTF_Price")+ " <t color='#8cff9b'>%1€</t>",[_buyprice] call husky_fnc_numberText];

_totalPrice = 0;
{
    if (_x != -1) then {
        _totalPrice = _totalPrice + _x;
    };
} forEach husky_clothing_purchase;

_total ctrlSetStructuredText parseText format [(localize "STR_Shop_Total")+ " <t color='#8cff9b'>%1€</t>",[_totalPrice] call husky_fnc_numberText];

[player, uniform player] call husky_fnc_playerSkins;
