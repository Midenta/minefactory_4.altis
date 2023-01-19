scriptName "fn_clientSendUpdateToServer";
/*--------------------------------------------------------------------
	Author: Maverick (ofpectag: MAV)
    File: fn_clientSendUpdateToServer.sqf

	<Maverick Applications>
    Written by Maverick Applications (www.maverick-apps.de)
    You're not allowed to use this file without permission from the author!
--------------------------------------------------------------------*/
#define __filename "fn_clientSendUpdateToServer.sqf"

params [
	["_which", -1, [0]]
];

if (_which isEqualTo -1) exitWith {};

private _toSend = switch (_which) do {
	case 0: {husky_currentExpLevel};
	case 1: {husky_currentExp};
	case 2: {husky_currentPerkPoints};
	case 3: {husky_currentExpPerks};
};

diag_log "fn_clientSendUpdateToServer.sqf Sending to server";
[_which, _toSend, getPlayerUID player] remoteExecCall ["mav_ttm_fnc_updateDatabaseEntry", 2];