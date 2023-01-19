#include "..\..\script_macros.hpp"
/*
    File: fn_putInCar.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Finds the nearest vehicle and loads the target into the vehicle.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_unit"];
_unit = param [0,objNull,[objNull]];
if (isNull _unit || !isPlayer _unit) exitWith {};

_nearestVehicle = nearestObjects[getPosATL player,["Car","Tank","Ship","Submarine","Air"],10] select 0;
if (isNil "_nearestVehicle") exitWith {["Es ist kein Fahrzeug in der Nähe...", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};

detach _unit;
[_nearestVehicle] remoteExecCall ["husky_fnc_moveIn",_unit];
_unit setVariable ["Escorting",false,true];
_unit setVariable ["transporting",true,true];