#include "..\..\script_macros.hpp"
/*
    File: fn_openEconomy.sqf
    Author: Derek
    Description:
    Opens the Market menu
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_display","_units","_type","_sellList","_buyList"];


if ((husky_SETTINGS(getNumber, "dynamic_market")) isEqualTo 1) then {
    disableSerialization;
    createDialog "Market";
    waitUntil {!isNull findDisplay 39000};
    _display = findDisplay 39000;
    _sellList = _display displayCtrl 39002;
    _buyList = _display displayCtrl 39003;

    lbClear _sellList;
    lbClear _buyList;

    [0, "economy"] spawn husky_fnc_retrievePrices;
};