#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/


/*
	File: standup.sqf
	Author: John "Paratus" VanderZwet
	Description:
	Stand up from chair
*/




detach player;
[player,"","switch",true] remoteExecCall ["husky_fnc_animSync",RCLIENT];
if (!isNull husky_sitting) then { deleteVehicle husky_sitting; };
husky_sitting = objNull;




_pos = getPosASL player;
_dir = getDir player;
player setPosASL [(_pos select 0) + (0.5 * sin(_dir)), (_pos select 1) + (0.5 * cos(_dir)), _pos select 2];

/*
player switchMove "";  
player removeaction standup
*/
//4D6163526165