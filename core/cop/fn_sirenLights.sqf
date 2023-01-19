#include "..\..\script_macros.hpp"
/*
    File: fn_sirenLights.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Lets play a game! Can you guess what it does? I have faith in you, if you can't
    then you have failed me and therefor I lose all faith in humanity.. No pressure.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_vehicle"];
_vehicle = param [0,objNull,[objNull]];
if (isNull _vehicle) exitWith {}; //Bad entry!
if (!((typeOf _vehicle) in husky_cop_veh)) exitWith {}; //Last chance check to prevent something from defying humanity and creating a monster.
    
_trueorfalse = _vehicle getVariable ["lights",false];
if (_trueorfalse) then {
    titleText ["Warnlicht ausgeschaltet.","PLAIN"];
    _vehicle setVariable ["lights",false,true];
} else {
    titleText ["Warnlicht angeschaltet.","PLAIN"];
    _vehicle setVariable ["lights",true,true];
    [_vehicle,0.22] remoteExec ["husky_fnc_copLights",RCLIENT];
};
