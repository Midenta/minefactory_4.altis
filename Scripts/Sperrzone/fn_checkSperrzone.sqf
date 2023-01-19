#include "..\..\script_macros.hpp"
/*
    Author : Yasar-S
    Details : Gibt dem Server den Befehl zu gucken ob eine Sperrzone bereits existiert
*/
private["_there"];
_there = false;
if(side player in [civilian]) exitWith { 
	//["ZUGRIFF NICHT ERLAUBT.","error"] call husky_fnc_buildHint; 
	hint "ZUGRIFF NICHT ERLAUBT";
};

_there = missionNamespace getVariable ["sperrzone",false];
if(_there) exitWith {
	//["Es existiert bereits eine Sperrzone.","error"] call husky_fnc_buildHint;
	
};

[] spawn husky_fnc_getSperrzonePos;