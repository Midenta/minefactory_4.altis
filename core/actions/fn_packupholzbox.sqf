/*
 File: fn_packupmauer.sqf
 Author: Bryan "Tonic" Boardwine
 Edited by: OLLI aka Hauklotz
 Description:
 Packs up a deployed wall.
 
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_holzbox"];
_holzbox = nearestObjects[getPos player,["Land_WoodenBox_F"],8] select 0;
if (isNil "_holzbox") exitWith {};
//if (vehicle player != player) exitWith { hint "Du kannst das nicht während du in einem Fahrzeug sitzt."};
if (([true,"holzbox",1] call husky_fnc_handleInv)) then
{
 titleText["Du hast die Holzkiste aufgehoben.","PLAIN"];
 player removeAction husky_action_holzboxPickup;
 husky_action_holzboxPickup = nil;
 deleteVehicle _holzbox;
};