#include "..\..\script_macros.hpp"
/*
    File: fn_medicSiren.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Starts the medic siren sound for other players.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_veh"];
_veh = vehicle player;

 if (_veh getVariable ["boothupe",false]) exitWith {hint "Du darfst die Sirene nicht Spammen!";};


 if("C_Rubberboat" == typeOf (vehicle player) && player == driver (vehicle player) || "C_Boat_Civil_01_F" == typeOf (vehicle player) && player == driver (vehicle player) || "B_SDV_01_F" == typeOf (vehicle player) && player == driver (vehicle player) || "C_Boat_Transport_02_F" == typeOf (vehicle player) && player == driver (vehicle player) || "C_Scooter_Transport_01_F" == typeOf (vehicle player) && player == driver (vehicle player) || "B_Boat_Transport_01_F" == typeOf (vehicle player) && player == driver (vehicle player) || "C_Boat_Civil_01_police_F" == typeOf (vehicle player) && player == driver (vehicle player) || "B_Boat_Armed_01_minigun_F" == typeOf (vehicle player) && player == driver (vehicle player)) then {

 _veh setVariable ["boothupe",true,true];
	[_veh,"boat_horn",300,1] remoteExec ["husky_fnc_say3D",0];
	titleText ["Warnung AN","PLAIN"];titleFadeOut 2;
 sleep 31;
	_veh setVariable ["boothupe",false,true];
	titleText ["Warnung AUS","PLAIN"];titleFadeOut 2;

 };