#include "..\..\script_macros.hpp"
/*
    File: fn_knockedOut.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Starts and monitors the knocked out state.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private "_obj";
params [
    ["_target",objNull,[objNull]],
    ["_who","",[""]]
];

if (isNull _target) exitWith {};
if !(_target isEqualTo player) exitWith {};
if (_who isEqualTo "") exitWith {};
//[player,"punch",100,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];
//[player,"punch"] remoteExec ["husky_fnc_say3D",RANY];
[player,"punch",50,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];
	[] spawn husky_fnc_assomer;

[getPlayerUID player, "KnockedOut", format ["%2 wurde von %1 niedergeschlagen.",_who,profileName]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

titleText[format [localize "STR_Civ_KnockedOut",_who],"PLAIN"];
disableUserInput true;
player setUnconscious true;
sleep 10;
player setUnconscious false;
//player playMoveNow "Incapacitated";

_obj = "Land_ClutterCutter_small_F" createVehicle ASLTOATL(visiblePositionASL player);
_obj setPosATL ASLTOATL(visiblePositionASL player);

husky_isknocked = true;
player attachTo [_obj,[0,0,0]];
sleep 1;
player playMoveNow "AmovPpneMstpSrasWrflDnon";
sleep 8;

detach player;
deleteVehicle _obj;
husky_isknocked = false;
player setVariable ["robbed",false,true];
disableUserInput false;
