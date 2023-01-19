#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

private ["_veh"];
_veh = vehicle player;

 if (_veh getVariable ["ponnygang_siren",false]) exitWith {hint "Du darfst die Sirene nicht Spammen!";};

 _veh setVariable ["ponnygang_siren",true,true];
	[_veh,"ponnygang"] remoteExec ["husky_fnc_say3D",RANY];
	titleText ["Warnung AN","PLAIN"];titleFadeOut 2;
 sleep 30;
	_veh setVariable ["ponnygang_siren",false,true];
	titleText ["Warnung AUS","PLAIN"];titleFadeOut 2;

