#include "..\..\script_macros.hpp"
/*
File: fn_virt_buy_sell.sqf
Author: Deathman

Description:
Kannst dich net enscheiden nuuuuu
*/
if ((tvCurSel 2401) isEqualTo -1) exitWith {hint localize "STR_Shop_Virt_Nothing"};

if ((uiNamespace getVariable ["VitemShop_Shop_Filter",0]) isEqualTo 1) then {
    [] call husky_fnc_virt_sell;
} else {
    [] call husky_fnc_virt_buy;
};
/*
private _index = (lbCurSel 38402);
switch (_index) do {
    case 0: {
        [] call husky_fnc_virt_buy;
    };
    case 1: {
        [] call husky_fnc_virt_sell;
    };
*/
