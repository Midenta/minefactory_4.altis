#include "..\..\script_macros.hpp"
/*
    File: fn_spawnMenu.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Initializes the spawn point selection menu.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_spCfg","_sp","_ctrl"];
disableSerialization;

if (husky_is_arrested) exitWith {
    [] call husky_fnc_respawned;
};

if (husky_respawned) then {
    [] call husky_fnc_respawned;
};
cutText["","BLACK FADED"];
0 cutFadeOut 9999999;
if (!(createDialog "husky_spawn_selection")) exitWith {[] call husky_fnc_spawnMenu;};
(findDisplay 38500) displaySetEventHandler ["keyDown","_this call husky_fnc_displayHandler"];

_spCfg = [playerSide] call husky_fnc_spawnPointCfg;

_ctrl = ((findDisplay 38500) displayCtrl 38510);
{
    _ctrl lnbAddRow[(_spCfg select _ForEachIndex) select 1,(_spCfg select _ForEachIndex) select 0,""];
    _ctrl lnbSetPicture[[_ForEachIndex,0],(_spCfg select _ForEachIndex) select 2];
    _ctrl lnbSetData[[_ForEachIndex,0],(_spCfg select _ForEachIndex) select 0];
} forEach _spCfg;

_sp = _spCfg select 0; //First option is set by default

[((findDisplay 38500) displayCtrl 38502),1,0.1,getMarkerPos (_sp select 0)] call husky_fnc_setMapPosition;
husky_spawn_point = _sp;

ctrlSetText[38501,format ["%2: %1",_sp select 1,localize "STR_Spawn_CSP"]];