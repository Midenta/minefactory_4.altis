#include "..\..\script_macros.hpp"
/*

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
	Diese Mission darf von keinem anderen genutzt werden au?er von Thieves-Gaming.de!
*/
if (west countSide playableUnits < 5 && husky_safeObj getVariable "copweg";) then {
	
	hint "Der Safe ist trotz allem noch 5 Minuten offen";
	sleep (1*60);
	hint "Der Safe sollte wieder zu sein, zuwneig cops halt";
    if (west countSide playableUnits < 5) exitWith {
		hint format [localize "STR_Civ_NotEnoughCops",(husky_SETTINGS(getNumber,"minimum_cops"))];
	};
};