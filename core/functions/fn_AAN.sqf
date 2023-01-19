#include "..\..\script_macros.hpp"
/*
    File: fn_AAN.sqf
    Author: Karel Moricky
    Modified: Jesse "tkcjesse" Schultz

    Description:
    It's showtime!

    Parameter(s):
    _this select 0: STRUCTURED TEXT: Header text
    _this select 1: STRUCTURED TEXT: Bottom text (moving)
    _this select 2: PROFILENAME: Below Header text
*/
private ["_header","_line","_sender","_display","_textHeader","_textLine","_textLinePos","_textClock"];
_header = _this select 0;
_line = _this select 1;
_sender = _this select 2;
disableSerialization;

if (!husky_SETTINGS_enableNewsBroadcast || isStreamFriendlyUIEnabled) exitWith {};

30 cutRsc ["rscAAN","plain"];
_display = uiNamespace getVariable "BIS_AAN";
_textHeader = _display displayCtrl 3001;
_textHeader ctrlSetStructuredText parseText format [localize "STR_News_BroadcastedBy",_header,_sender];
_textHeader ctrlCommit 0;

_textLine = _display displayCtrl 3002;
_textLine ctrlSetStructuredText parseText format ["                         %1                         %1                         %1                         %1                         %1                         %1                         %1                         %1                         %1                         %1                         %1",_line];
_textLine ctrlCommit 0;
_textLinePos = ctrlPosition _textLine;
_textLinePos set [0,-100];
_textLine ctrlSetPosition _textLinePos;
_textLine ctrlCommit 1500;

_textClock = _display displayctrl 3003;
_textClock ctrlSetText ([daytime,"HH:MM"] call bis_fnc_timetostring);
_textClock ctrlCommit 0;

[getPlayerUID player, "AAN Newes", format ["%1 - %2 Nachricht: %3 | %4  Bargeld: %5 � Bankkonto: %6 �",profileName,(getPlayerUID player),_header,_line,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
    
sleep 60;	//30   dauer in sekunden, wie lang die nachricht angezeigt wird
30 cutText ["","plain"];
