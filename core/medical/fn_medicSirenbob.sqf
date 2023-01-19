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

 if (_veh getVariable ["sirenbob",false]) exitWith {["Du darfst die Sirene nicht Spammen!", "Achtung", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
//if (!(typeOf vehicle player) in ["B_APC_Tracked_01_CRV_F"]) exitWith {["Du bist in keinem Kathastrophenfahrzeug!", "Achtung", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
 
 if("B_APC_Tracked_01_CRV_F" == typeOf (vehicle player) && player == driver (vehicle player)) then {

 _veh setVariable ["sirenbob",true,true];
	[_veh,"med_siren_bob",3000,1] remoteExec ["husky_fnc_say3D",0];
	titleText ["Warnung AN","PLAIN"];titleFadeOut 2;
 sleep 120;
	_veh setVariable ["sirenbob",false,true];
	titleText ["Warnung AUS","PLAIN"];titleFadeOut 2;
 };