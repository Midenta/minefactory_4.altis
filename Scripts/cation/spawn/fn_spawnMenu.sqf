/*
    File: fn_spawnMenu.sqf
    Author: Bryan "Tonic" Boardwine
    Edit: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THE EDITED LINES ARE THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.

    Description:
    Initializes the spawn point selection menu.
*/
private ["_spCfg","_sp","_ctrl"];
disableSerialization;

if (husky_respawned) then {
    [] call husky_fnc_respawned;
};

0 cutText ["","BLACK IN"];

private _randCamX = 75 - floor(random 150);
private _randCamY = 75 - floor(random 150);

spawn_camera = "CAMERA" camCreate (getPosATL player);
camUseNVG false;
showCinemaBorder false;
spawn_camera cameraEffect ["Internal","Back"];
if (!(createDialog "cat_spawn_selection")) exitWith {[] call cat_spawn_fnc_spawnMenu;};
spawn_camera camSetTarget player;
spawn_camera camSetRelPos [0,3.5,4.5];
spawn_camera camSetFOV .5;
spawn_camera camSetFocus [150,0];
spawn_camera camCommit 0;

(findDisplay 38500) displaySetEventHandler ["keyDown","_this call husky_fnc_displayHandler"];

_spCfg = [playerSide] call husky_fnc_spawnPointCfg;

_ctrl = ((findDisplay 38500) displayCtrl 38510);
{
    _ctrl lbAdd ((_spCfg select _ForEachIndex) select 1);
    _ctrl lbSetPicture [_ForEachIndex,(_spCfg select _ForEachIndex) select 2];
    _ctrl lbSetData [_ForEachIndex,(_spCfg select _ForEachIndex) select 0];
} forEach _spCfg;

_sp = _spCfg select 0;
_ctrl lbSetCurSel 0;

[((findDisplay 38500) displayCtrl 38502),1,0.1,getMarkerPos (_sp select 0)] call cat_spawn_fnc_setMapPosition;
husky_spawn_point = _sp;

ctrlSetText[38501,format ["%2: %1",_sp select 1,localize "STR_Spawn_CSP"]];