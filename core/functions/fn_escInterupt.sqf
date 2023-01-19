#include "..\..\script_macros.hpp"

/*
    File: fn_escInterupt.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Monitors when the ESC menu is pulled up and blocks off
    certain controls when conditions meet.
*/

private ["_abortButton","_respawnButton","_fieldManual","_escSync","_canUseControls"];
disableSerialization;
//_gFund = GANG_FUNDS;

_escSync = {
    private ["_abortButton","_thread","_syncManager"];
    disableSerialization;

    _syncManager = {
        disableSerialization;
        private ["_abortButton","_timeStamp","_abortTime"];
        _abortButton = CONTROL(49,104);
        _abortTime = husky_SETTINGS(getNumber,"escapeMenu_timer");
        _timeStamp = time + _abortTime;

        waitUntil {
            _abortButton ctrlSetText format [localize "STR_NOTF_AbortESC",[(_timeStamp - time),"SS.MS"] call BIS_fnc_secondsToString];
            _abortButton ctrlCommit 0;
            round(_timeStamp - time) <= 0 || isNull (findDisplay 49)
        };

        _abortButton ctrlSetText localize "STR_DISP_INT_ABORT";
        _abortButton ctrlCommit 0;
    };

    _abortButton = CONTROL(49,104);

    if (_this) then {
        _thread = [] spawn _syncManager;
        waitUntil {scriptDone _thread || isNull (findDisplay 49)};
        _abortButton ctrlEnable true;
    };
};

_canUseControls = {
    if (playerSide isEqualTo west) exitWith {true};
    if ((player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || (player getVariable ["transporting",false]) || (husky_is_arrested) || (husky_istazed) || (husky_isknocked)) then {false} else {true};
};

for "_i" from 0 to 1 step 0 do {
    waitUntil {!isNull (findDisplay 49)};
    _abortButton = CONTROL(49,104);
	//_abortButton ctrlSetEventHandler ["ButtonClick","[] spawn XaFlaForo_fnc_logout; (findDisplay 49) closeDisplay 2; true"];
    //_abortButton buttonSetAction "[] call SOCK_fnc_updateRequest; [player] remoteExec [""TON_fnc_cleanupRequest"",2];[0, format[""%1 hat die U-Bahn benutz"", (name player)], false] remoteExec [""husky_fnc_broadcast"", -2, false];";
    //_abortButton ctrlSetEventHandler ["ButtonClick","[] spawn husky_fnc_OutroCam; [0, format[""%1 hat die U-Bahn benutzt"", (name player)], false] remoteExec [""husky_fnc_broadcast"", -2, false]; [getPlayerUID player, ""DeSpawn"", format [""%1 - %2 ist in die Lobby. Bargeld: %3 € Bankkonto: %4 € Coins: %5 € Gangkonto: %6 € Gear:"",profileName,(getPlayerUID player),[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText,[_gFund] call husky_fnc_numberText]] remoteExec [""HC_fnc_AdvancedLog"",2]; (findDisplay 49) closeDisplay 2; true;"];
    _abortButton ctrlSetEventHandler ["ButtonClick","[] spawn husky_fnc_OutroCam; [0, format[""%1 hat die U-Bahn benutzt"", (name player)], false] remoteExec [""husky_fnc_broadcast"", -2, false]; (findDisplay 49) closeDisplay 2; true;"];
	_respawnButton = CONTROL(49,1010);
    _fieldManual = CONTROL(49,122);
    private _saveButton = CONTROL(49,103);
    _saveButton ctrlSetText "";

    //Extras
    if (husky_SETTINGS(getNumber,"escapeMenu_displayExtras") isEqualTo 1) then {
        private _topButton = CONTROL(49,2);
        _topButton ctrlEnable false;
        _topButton ctrlSetText format ["%1",husky_SETTINGS(getText,"escapeMenu_displayText")];
        _saveButton ctrlEnable false;
        _saveButton ctrlSetText format ["Spieler UID: %1",getPlayerUID player];
		((findDisplay 49) displayctrl 120) ctrlsetText format ["%1",husky_SETTINGS(getText,"escapeMenu_BOTTOM_displayText")];
    };

    //Block off our buttons first.
    _abortButton ctrlEnable false;
    _respawnButton ctrlEnable false;
    _fieldManual ctrlEnable false; //Never re-enable, blocks an old script executor.
    _fieldManual ctrlShow false;

    _usebleCtrl = call _canUseControls;
    _usebleCtrl spawn _escSync;
    
    if (_usebleCtrl) then {
        _respawnButton ctrlEnable true; //Enable the button.
    };
    
    waitUntil {isNull (findDisplay 49) || {!alive player}};
    if (!isNull (findDisplay 49) && {!alive player}) then {
        (findDisplay 49) closeDisplay 2;
    };
};


