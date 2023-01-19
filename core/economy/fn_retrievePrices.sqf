#include "..\..\script_macros.hpp"
/*
File: fn_retrievePrices.sqf
Author: Derek
Description:
Searches through the economy public variables to locate the correct ones

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_market","_priceArray","_varname","_itemArray","_shopItems"];
params [
    ["_type", 0],
    ["_data", ""]
];

if ( _data isEqualTo "") exitWith {diag_log "Shoptype is null";};

_itemArray = [];

switch (_data) do {
    case "economy" :{
        _market = missionNamespace getVariable "MarketPrices";
        {
            _name = (_x select 0);
            _fact = (_x select 1);
            if (_fact != 0) then {
                _varname = format["%1MarketGoodPrice",_name];
                _priceArray = missionNamespace getVariable (_varname);
                _itemArray pushBack _priceArray;
            };
        } forEach _market;
    };
    default {
        _shopItems = M_CONFIG(getArray,"VirtualShops",_data, "items");
        if ((husky_SETTINGS(getNumber, "dynamic_market")) isEqualTo 1) then {
            {
                _varname = format["%1MarketGoodPrice",_x];
                _priceArray = missionNamespace getVariable (_varname);
                _itemArray pushBack _priceArray;
            } forEach _shopItems;
        } else {
            {
                _itemArray pushBack [_x, ITEM_BUYPRICE(_x), ITEM_SELLPRICE(_x)];
            } forEach _shopItems;
        };
    };
};

if (_data isEqualTo "economy") exitwith {[_type,_itemArray] spawn husky_fnc_updateEconomy};
[_type,_itemArray] spawn husky_fnc_updatePrice;