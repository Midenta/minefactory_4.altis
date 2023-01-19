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
if (!((typeOf _vehicle) in husky_medic_veh)) exitWith {}; //Last chance check to prevent something from defying humanity and creating a monster.
    
_trueorfalse = _vehicle getVariable ["lights",false];
if (_trueorfalse) then {
    titleText ["Warnlicht ausgeschaltet.","PLAIN"];
    _vehicle setVariable ["lights",false,true];
} else {
    titleText ["Warnlicht angeschaltet.","PLAIN"];
    _vehicle setVariable ["lights",true,true];
    [_vehicle,0.22] remoteExec ["husky_fnc_copLights",RCLIENT];
};


/*
params [
    ["_vehicle",objNull,[objNull]]
];
if (isNull _vehicle) exitWith {}; //Bad entry!
//if !(typeOf _vehicle in ["C_Offroad_01_F","B_MRAP_01_F","C_SUV_01_F","C_Hatchback_01_sport_F","B_Heli_Light_01_F","B_Heli_Transport_01_F"]) exitWith {}; //Last chance check to prevent something from defying humanity and creating a monster.
if (!(typeOf _vehicle in husky_medic_veh)) exitWith {};

private _trueorfalse = _vehicle getVariable ["lights",false];

if (_trueorfalse) then {
    _vehicle setVariable ["lights",false,true];
    if !(isNil {(_vehicle getVariable "lightsJIP")}) then {
        private _jip = _vehicle getVariable "lightsJIP";
		titleText ["Warnlicht ausgeschaltet.","PLAIN"];
        _vehicle setVariable ["lightsJIP",nil,true];
        remoteExec ["",_jip]; //remove from JIP queue
    };
} else {
	titleText ["Warnlicht angeschaltet.","PLAIN"];
    _vehicle setVariable ["lights",true,true];
    private _jip = [_vehicle,0.22] remoteExec ["husky_fnc_medicLights",RCLIENT,true];
    _vehicle setVariable ["lightsJIP",_jip,true];
};
*/
