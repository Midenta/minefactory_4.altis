#include "..\..\script_macros.hpp"

/*
    File: fn_marketGrab.sqf
    Author: Derek
    Description:
    Gets the data for the market item you are looking at

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_display","_good","_currgood","_currprice","_recprice","_recchange","_startprice","_startchange","_name"];
disableSerialization;
_display = findDisplay 39000;
_currgood = 39002;
_currprice = 39003;
_recprice = 39004;
_recchange = 39005;
_startprice = 39006;
_startchange = 39007;
_value = lbValue[39001,(lbCurSel 39001)];

// Ignore the market types defined in Master_Config
if ((_value mod 2) isEqualTo 1)  exitWith {};

_good = lbData[39001,(lbCurSel 39001)];

{
    if ((_x select 0) isEqualTo _good) exitWith {_good = _x;};
} forEach husky_market;

_name = ITEM_NAME(_good select 0);

ctrlSetText[_currgood, format["Aktuelle Waren: %1",(localize _name)]];
ctrlSetText[_currprice, format["Aktueller Preis: %1€", (_good select 2)]];
ctrlSetText[_recprice, format["K�rzlicher Preis: %1€", (_good select 7)]];
ctrlSetText[_recchange, format["Letzte �nderung: %1€", ((_good select 2) - (_good select 7))]];
ctrlSetText[_startprice, format["Preis bei Serverstart: %1€", (_good select 8)]];
ctrlSetText[_startchange, format["Preis�nderung seit Serverstart: %1€", ((_good select 2) - (_good select 8))]];
