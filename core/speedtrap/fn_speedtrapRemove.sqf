private["_speedtrap"];
if (playerSide != west) exitWith {};
_speedtrap = cursorTarget;
if (isNull _speedtrap) exitwith {};

deleteVehicle _speedtrap;

[true,"radarfalle",1] call husky_fnc_handleInv;