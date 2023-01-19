#include "..\..\script_macros.hpp"
/*
    File: fn_postNewsBroadcast.sqf
    Author: Jesse "tkcjesse" Schultz

    Description:
    Handles actions after the broadcast button is clicked.
*/
private ["_broadcastHeader","_broadcastMessage","_length","_badCharacter","_characterByte","_allowed","_allowedLength"];
disableSerialization;
//diag_log "fn_postNewsBroadcast Anfang";
_broadcastHeader = ctrlText (CONTROL(100100,100101));
_broadcastMessage = ctrlText (CONTROL(100100,100102));
_length = count (toArray (_broadcastHeader));
_characterByte = toArray (_broadcastHeader);
_allowed = toArray("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_ ");
_allowedLength = husky_SETTINGS(getNumber,"news_broadcast_header_length");
_badCharacter = false;

if (_length > _allowedLength) exitWith {hint format [localize "STR_News_HeaderLength",_allowedLength];};
//diag_log "fn_postNewsBroadcast 2";
{
    if (!(_x in _allowed)) exitWith {_badCharacter = true;};
} forEach _characterByte;
//diag_log "fn_postNewsBroadcast 3";
if (_badCharacter) exitWith {hint localize "STR_News_UnsupportedCharacter"};

[_broadcastHeader,_broadcastMessage,profileName] remoteExec ['husky_fnc_AAN',-2];

c126 = c126 - husky_SETTINGS(getNumber,"news_broadcast_cost");
[0] call SOCK_fnc_updatePartial;
husky_broadcastTimer = time;
publicVariable "husky_broadcastTimer";
//diag_log "fn_postNewsBroadcast Ende";
