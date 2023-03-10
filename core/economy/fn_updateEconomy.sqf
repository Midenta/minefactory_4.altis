#include "..\..\script_macros.hpp"
/*
    File: fn_updateEconomy.sqf
    Author: Worldtrade1101
    Edited by: Derek
    Base on Tonic script
    Description:
    Update and fill the Economy gui menu.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_display","_name","_factor","_categories","_goodlist"];
disableSerialization;
params [
    ["_type", 0],
    ["_market", []]
];
husky_market = _market;

//Setup control vars.
_display = findDisplay 39000;
_goodlist = _display displayCtrl 39001;

//Purge list
lbClear _goodlist;

if (count husky_market isEqualTo 0) exitwith {};

_categories = husky_SETTINGS(getArray, "market_categories");
_factor = 1;
{
    _goodlist lbAdd _x;
    _goodlist lbSetValue [(lbSize _goodlist)-1,(_factor*2)-1];
    _factor = _factor + 1;
} forEach _categories;

{
    if ((_x select 2) > 1 ) then {
        _name = ITEM_NAME((_x select 0));
        _goodlist lbAdd format["%1",(localize _name)];
        _goodlist lbSetData [(lbSize _goodlist)-1,_x select 0];
        _goodlist lbSetValue [(lbSize _goodlist)-1,2*(_x select 6)];

    };
} foreach husky_market;

lbSortByValue _goodlist;