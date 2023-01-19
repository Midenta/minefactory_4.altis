#include "..\..\script_macros.hpp"
/*
    File: fn_recoil.sqf
    Author: Nirawin

    Description:
    Norecoil item
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
	Diese Mission darf von keinem anderen genutzt werden au?er von Thieves-Gaming.de!
*/

[] spawn {
    husky_norecoil_effect = time;
    titleText[localize "STR_ISTR_recoilEffect","PLAIN"];
    (vehicle player) setUnitRecoilCoefficient 0; //Here you can set the coeff of the norecoil 1 is normal recoil.
    player setCustomAimCoef 0.1; //Here you can set the coeff of the norecoil 1 is normal recoil.
    waitUntil {!alive player || ((time - husky_norecoil_effect) > (1 * 60))}; //Here you can change the time the item is effective
    (vehicle player) setUnitRecoilCoefficient 1;
    player setCustomAimCoef 1;
};