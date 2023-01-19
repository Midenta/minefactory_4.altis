#include "..\..\script_macros.hpp"
/*
    File: fn_requestMedic.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    N/A
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private "_medicsOnline";
_medicsOnline = {!(_x isEqualTo player) && {side _x isEqualTo independent} && {alive _x}} count playableUnits > 0; //Check if medics (indep) are in the room.

husky_corpse setVariable ["Revive",false,true]; //Set the corpse to a revivable state.
if (_medicsOnline) then {
    //There is medics let's send them the request.
    [husky_corpse,profileName] remoteExecCall ["husky_fnc_medicRequest",independent];
};

//((findDisplay 7300) displayCtrl 7303) ctrlEnable false;
husky_med_calls pushBack [(name player),(getpos husky_corpse),"Ich benötige einen Revive - Automatische SOS Nachricht über das Telefon",servertime,"",player];
publicVariable "husky_med_calls";

/* params [
    ["_unit",objNull,[objNull]]
];
private "_medicsOnline";
_medicsOnline = {!(_x isEqualTo _unit) && {side _x isEqualTo independent} && {alive _x}} count playableUnits > 0; //Check if medics (indep) are in the room.

_unit setVariable ["Revive",false,true]; //Set the corpse to a revivable state.
if (_medicsOnline) then {
    //There is medics let's send them the request.
    [_unit,profileName] remoteExecCall ["husky_fnc_medicRequest",independent];
};

//((findDisplay 7300) displayCtrl 7303) ctrlEnable false;
husky_med_calls pushBack [(name _unit),(getpos _unit),"Ich benötige einen Revive - Automatische SOS Nachricht über das Telefon",servertime,"",_unit];
publicVariable "husky_med_calls"; */

//player setVariable["husky_request_timer",true,true];

//Create a thread to monitor duration since last request (prevent spammage).
/*[] spawn  {
    ((findDisplay 7300) displayCtrl 7303) ctrlEnable false;
    sleep (2 * 60);
    ((findDisplay 7300) displayCtrl 7303) ctrlEnable true;
};*/

/*
private "_medicsOnline";
_medicsOnline = {!(_x isEqualTo player) && {side _x isEqualTo independent} && {alive _x}} count playableUnits > 0; //Check if medics (indep) are in the room.

husky_corpse setVariable ["Revive",false,true]; //Set the corpse to a revivable state.
if (_medicsOnline) then {
    //There is medics let's send them the request.
    [husky_corpse,profileName] remoteExecCall ["husky_fnc_medicRequest",independent];
};
*/
/*
((findDisplay 7300) displayCtrl 7303) ctrlEnable false;
husky_med_calls pushBack [(name player),(getpos husky_corpse),"Ich benötige einen Revive - Automatische SOS Nachricht über das Telefon",servertime,"",player];
publicVariable "husky_med_calls";
*/