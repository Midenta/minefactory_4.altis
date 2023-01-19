#include "..\..\script_macros.hpp"
/*
 File: fn_copSiren2.sqf
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
	[_veh,"warnshortsiren",100,1] remoteExec ["husky_fnc_say3D",RANY];
	titleText ["Warnung AN","PLAIN"];titleFadeOut 2;
 sleep 7;
	_veh setVariable ["siren2",false,true];
	titleText ["Warnung AUS","PLAIN"];titleFadeOut 2;



/*
private["_vehicle"];
_vehicle = param [0,ObjNull,[ObjNull]];


if (isNull _vehicle) exitWith {};
if (isNil {_vehicle getVariable "siren2"}) exitWith {};


if (!(_vehicle getVariable "siren2")) exitWith {};
 if (count crew _vehicle isEqualTo 0) then {_vehicle setVariable ["siren2",false,true]};
 if (!alive _vehicle) exitWith {};
 if (isNull _vehicle) exitWith {};

 _vehicle say3D ["warnshortsiren", 300, 1];		 //_vehicle say3D "warnshortsiren";	//Standard

	//husky_siren_active = true;
	//titleText ["Warnung AN","PLAIN"];titleFadeOut 2;
 sleep 5;
	//titleText ["Warnung AUS","PLAIN"];titleFadeOut 2;
	//husky_siren_active = false;

 if (!(_vehicle getVariable "siren2")) exitWith {};
*/
/*
for "_i" from 0 to 1 step 0 do {
 if (!(_vehicle getVariable "siren2")) exitWith {};
 if (count crew _vehicle isEqualTo 0) then {_vehicle setVariable ["siren2",false,true]};
 if (!alive _vehicle) exitWith {};
 if (isNull _vehicle) exitWith {};

 _vehicle say3D "warnshortsiren";//Class/name specified in description.ext
 sleep 10;//Exactly matches the length of the audio file.

 if (!(_vehicle getVariable "siren2")) exitWith {};
};
*/
