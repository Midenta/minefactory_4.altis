#include "..\..\script_macros.hpp"
/*
    File: fn_wantedGrab.sqf
    Author: ColinM

    Description:
    Prepare the array to query the crimes.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_display","_tab","_criminal"];
disableSerialization;
_display = findDisplay 2400;
_tab = _display displayCtrl 2402;
_criminal = lbData[2401,(lbCurSel 2401)];
_criminal = call compile format ["%1", _criminal];
if (isNil "_criminal") exitWith {};

if (husky_HC_isActive) then {
    [player,_criminal] remoteExec ["HC_fnc_wantedCrimes",HC_husky];
} else {
    [player,_criminal] remoteExec ["husky_fnc_wantedCrimes",RSERV];
};
