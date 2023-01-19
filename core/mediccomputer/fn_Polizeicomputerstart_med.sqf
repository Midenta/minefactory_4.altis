#include "..\..\script_macros.hpp"
/*
	Soll nur so da sein

    Thieves
	
	Thieves-Gaming.de
	
	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

private["_display","_list","_side","_Btn1","_btn2"];
disableSerialization;
waitUntil {!isNull (findDisplay 620070)};
_display = findDisplay 620070;
_Btn1 = _display displayCtrl 620076;
_Btn1 ctrlEnable false;
_Btn2 = _display displayCtrl 620077;
_Btn2 ctrlEnable false;
_list = _display displayCtrl 620073;
if ((call husky_mediclevel) < 1 ) exitWith {closeDialog 0;};
//Purge List
lbClear _list;

{
	_side = switch(side _x) do {case civilian: {"Civ"}; case west: {"Cop"}; case independent: {"Med"}; default {"Unknown"};};
	_list lbAdd format["%1 [%2]", _x getVariable["realname",name _x],_side];
	_list lbSetdata [(lbSize _list)-1,str(_x)];
} foreach playableUnits;
