/*
 File: fn_packupsandsackecke.sqf
 Author: Bryan "Tonic" Boardwine
 Edited by: OLLI aka Hauklotz
 Description:
 Packs up a deployed wall.
 
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_sandsackecke"];
_sandsackecke = nearestObjects[getPos player,["Land_BagFence_Corner_F"],8] select 0;
if (isNil "_sandsackecke") exitWith {};
//if (vehicle player != player) exitWith { hint "Du kannst das nicht während du in einem Fahrzeug sitzt."};
if (([true,"sandsackecke",1] call husky_fnc_handleInv)) then
{
 titleText["Du hast den Sandsack aufgehoben.","PLAIN"];
 player removeAction husky_action_sandsackeckePickup;
 husky_action_sandsackeckePickup = nil;
 deleteVehicle _sandsackecke;
};