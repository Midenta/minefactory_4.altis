#include "..\..\script_macros.hpp"
/*
 File: fn_lootBoxEpic.sqf
 Auhtor: Deathman

 Description:
 Diese Datei ist dafür da leuten für die Legendär Loot Box Items und Geld zu geben
*/
private _items = [];
private _names = [];
private _itemarray = (getArray(missionConfigFile >> "husky_SETTINGS" >> "lootboxepic_items"));
private _lootboxmoney = (getNumber(missionConfigFile >> "husky_SETTINGS" >> "lootboxepic_money"));

for "_i" from 0 to 2 do {
        _items pushBack selectRandom _itemarray;
};
_money = _lootboxmoney + round(random 20000);
{
 private _displayName = getText(missionConfigFile >> "VirtualItems" >> _x >> "displayName");
 private _weight = getNumber(missionConfigFile >> "VirtualItems" >> _x >> "weight");
 _names pushBack (localize _displayName);
 private _amount = selectRandom [1,2];
 [true,_x,_amount] call husky_fnc_handleInv;
} forEach _items;
_itemStr = _names joinString ", ";
c126 = c126 + _money;
hint parseText format ["<t font='PuristaBold' size='1.3' color='#d98921' align='center'>Loot Box Episch</t>
<br/><t font='PuristaBold' size='1.0' color='#ffffff' align='center'>Du hast nun folgende Items und Geld erlangt</t>
<br/><t font='PuristaBold' size='1.0' color='#d98921' align='center'>Items: %1</t>
<br/><t font='PuristaBold' size='1.0' color='#16A112' align='center'>Geld: %2€</t>",_itemStr,_money];
