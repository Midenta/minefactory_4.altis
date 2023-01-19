#include "..\..\script_macros.hpp"
/*
 File: fn_copSiren4.sqf
 Author: Bryan "Tonic" Boardwine / ammorosh




 Description:
 Starts the cop siren sound for other players

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

private ["_veh"];
_veh = vehicle player;

 if (_veh getVariable ["siren2",false]) exitWith {hint "Du darfst die Sirene nicht Spammen!";};

 _veh setVariable ["siren2",true,true];
	[_veh,"razzia",100,1] remoteExec ["husky_fnc_say3D",RANY];
	titleText ["Warnung AN","PLAIN"];titleFadeOut 2;
 sleep 26;
	_veh setVariable ["siren2",false,true];
	titleText ["Warnung AUS","PLAIN"];titleFadeOut 2;

 //if (!(_vehicle getVariable "siren3")) exitWith {};
