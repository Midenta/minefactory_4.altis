#include "..\..\script_macros.hpp"
/*
    File: fn_newsBroadcast.sqf
    Author: Jesse "tkcjesse" Schultz

    Description:
    Creates the dialog and handles the data in the Channel 7 News Dialog.

    Notice:
    This is Old Stuff private ["_msgCost","_display","_confirmBtn","_msgCooldown","_broadcastDelay"]
*/
#define Confirm 100104

if (!dialog) then {
    createDialog "husky_news_broadcast";
};

disableSerialization;
private _display = findDisplay 100100;
private _confirmBtn = _display displayCtrl Confirm;
_confirmBtn ctrlEnable false;

private _msgCooldown = (60 * husky_SETTINGS(getNumber,"news_broadcast_cooldown"));
private _msgCost = husky_SETTINGS(getNumber,"news_broadcast_cost");

if (c126 < _msgCost) then {
    hint format [localize "STR_News_NotEnough",[_msgCost] call husky_fnc_numberText];
} else {
    _confirmBtn ctrlEnable true;
    _confirmBtn buttonSetAction "[] call husky_fnc_postNewsBroadcast; closeDialog 0;";
};

private "_broadcastDelay";
if (isNil "husky_broadcastTimer" || {(time - husky_broadcastTimer) > _msgCooldown}) then {
    _broadcastDelay = localize "STR_News_Now";
} else {
    _broadcastDelay = [(_msgCooldown - (time - husky_broadcastTimer))] call BIS_fnc_secondsToString;
    _confirmBtn ctrlEnable false;
};

CONTROL(100100,100103) ctrlSetStructuredText parseText format [ localize "STR_News_StructuredText",[_msgCost] call husky_fnc_numberText,_broadcastDelay];