#include "..\..\script_macros.hpp"
// Written by Kupferkarpfen
// License: CC BY-NC-SA 4.0
/*

Thieves

Minefactory.eu

Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

private _item = param[0, "", [""]];
if( _item isEqualTo "" ) exitWith {};

if( vehicle player != player ) exitWith {};

private _chipType = switch(_item) do {
    case "chip0": { 0 };
    case "chip1": { 1 };
    case "chip2": { 2 };
    case "chip3": { 3 };
    case "chip4": { 4 };
    case "chip5": { 5 };
    case "chip6": { 6 };
    default { -1 };
};
if( _chipType < 0 ) exitWith {};
private _vehicle = cursorTarget;
if( isNull _vehicle ) exitWith {};
//diag_log "chip 1";
if((!(_vehicle isKindOf "Car") && !(_vehicle isKindOf "Tank") && !(_vehicle isKindOf "Ship"))) exitWith {
	hint "Du kannst hier kein Chip-Tuning einbauen!";
    //[format["Du kannst hier kein Chip-Tuning einbauen!"],true,"slow"] call husky_fnc_NachrichtSys;
};

/*
if(!(_vehicle getVariable["owner", ""] isEqualTo (getPlayerUID player)) && (playerSide == west || playerSide == resistance)) exitWith {
    //[format["Das kannst du nur bei deinen eigenen Fahrzeugen machen!"],true,"slow"] call husky_fnc_NachrichtSys;
	hint "Das kannst du nur bei deinen eigenen Fahrzeugen machen!";
};
*/

//diag_log "chip 2";
private _action = true;
if( _chipType isEqualTo 0 ) then {
    _action = [
        "Willst du an deinem Fahrzeug das Chip-Tuning entfernen und wieder die Original-Software verwenden?",
        "Chip-Tuning",
        "Ja",
        "Nein"
    ] call BIS_fnc_guiMessage;
} else {
    _action = [
        "Willst du an deinem Fahrzeug wirklich ein illegales Chip-Tuning durchführen? Wenn die Polizei dich damit auf öffentlichen Straßen erwischt kann sie darauf bestehen die Modifikation rückgängig zu machen, da die Betriebserlaubnis erloschen ist!",
        "Chip-Tuning",
        "Ja",
        "Nein"
    ] call BIS_fnc_guiMessage;
};

if( !_action ) exitWith {};
//diag_log "chip 3";
if( husky_action_inUse ) exitWith {};
husky_action_inUse = true;

closeDialog 0;

husky_interrupted = false;

// KK: Holster weapon:
if( currentWeapon player != "" ) then {
    husky_currentWeaponToRecall = currentWeapon player;
    player action ["SwitchWeapon", player, player, 100];
    player switchcamera cameraView; // << What is this needed for?
    sleep 1;
};

disableSerialization;

private _duration = 40;
//diag_log "chip 4";
private _cp = 0;
private _startTime = time;
private _timeOut = _startTime + _duration;
private _animTarget = time;
private _interrupted = true;

5 cutRsc ["husky_progress","PLAIN"];
private _ui = uiNamespace getVariable "husky_progress";
private _progressBar = _ui displayCtrl 38201;
private _progressText = _ui displayCtrl 38202;

private _animCounter = 0;
while { alive player && !husky_isTazed && !husky_interrupted && !(player getVariable["restrained", false]) && player distance _vehicle <= 10 } do {

    if( _animTarget <= time ) then {
        _animTarget = time + 2;
        [player, "AinvPknlMstpSnonWnonDnon_medic_1"] remoteExec ["husky_fnc_animSync", -2];
		//[player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["husky_fnc_animSync",RCLIENT];
    };

    _cp = (time - _startTime) / (_timeOut - _startTime);
    _progressBar progressSetPosition _cP;
    _progressText ctrlSetText format[ "Montiere den Tuningchip am Fahrzeug.. (%1%2)", round(_cP * 100), "%" ];

    if( _cp >= 1 ) exitWith {
        _interrupted = false;
    };

    uisleep 0.25;
};

husky_action_inUse = false;

5 cutText ["","PLAIN"];
player playActionNow "stop";

if( _interrupted || { !([false, _item, 1] call husky_fnc_handleInv) } ) exitWith {
	hint "Aktion abgebrochen!";
    //[format["Aktion abgebrochen!"],true,"slow"] call husky_fnc_NachrichtSys;
};

_vehicle setVariable["chip.enabled", _chipType > 0, true];
_vehicle setVariable["chip.type", _chipType, true];

uisleep 1;
//diag_log "chip 5";
//[_vehicle] remoteExec [ "XYDB_fnc_updateVehicle", XYDB];

[getPlayerUID player, "Tuning Chip einbau", format ["%1 - %2 hat einen Stage %4 Chip benutzt. %3 ",profileName,(getPlayerUID player),_vehicle,_chipType]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];


hint (["Chip-Tuning wurde entfernt, dein Fahrzeug ist nun wieder im Original-Zustand", "Chip-Tuning wurde eingebaut. Bitte einparken um zu Speichern!"] select (_chipType > 0));