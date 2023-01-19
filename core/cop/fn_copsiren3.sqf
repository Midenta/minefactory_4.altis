#include "..\..\script_macros.hpp"
/*
 File: fn_copSiren3.sqf
 Author: Bryan "Tonic" Boardwine / ammorosh




 Description:
 Starts the cop siren sound for other players

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
//private["_vehicle"];
//_vehicle = param [0,ObjNull,[ObjNull]];

private ["_veh"];
_veh = vehicle player;


//if (isNull _vehicle) exitWith {};
//if (isNil {_vehicle getVariable "siren3"}) exitWith {};

//if (!(_vehicle getVariable "siren3")) exitWith {};
 //if (count crew _vehicle isEqualTo 0) then {_vehicle setVariable ["siren3",false,true]};
 //if (!alive _vehicle) exitWith {};
 //if (isNull _vehicle) exitWith {};
 //_vehicle say3D ["shortsiren", 300, 1];
 if (_veh getVariable ["siren2",false]) exitWith {hint "Du darfst die Sirene nicht Spammen!";};

 _veh setVariable ["siren2",true,true];
	[_veh,"kontrolle_cop",100,1] remoteExec ["husky_fnc_say3D",RANY];
	titleText ["Warnung AN","PLAIN"];titleFadeOut 2;
 sleep 9;
	_veh setVariable ["siren2",false,true];
	titleText ["Warnung AUS","PLAIN"];titleFadeOut 2;

 //if (!(_vehicle getVariable "siren3")) exitWith {};
