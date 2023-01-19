#include "..\..\script_macros.hpp"
/*
    File: fn_hudSetup.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Setups the hud for the player?
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
disableSerialization;

cutRsc ["playerhud", "PLAIN", 2, false];
[] call husky_fnc_hudUpdate;

[] spawn
{
    private ["_cash_old","_atmbank_old"];
    for "_i" from 0 to 1 step 0 do {
        _cash_old = husky_cash;
		_atmbank_old = husky_atmbank;
        waitUntil {(_cash_old != husky_cash) or (_atmbank_old != husky_atmbank)};
        [] call husky_fnc_hudUpdate;
    };
};
