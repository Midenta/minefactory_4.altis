#include "..\..\script_macros.hpp"
/*
    File: fn_s_onCheckedChange.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Switching it up and making it prettier..
*/
private ["_option","_state"];
_option = _this select 0;
_state = _this select 1;

switch (_option) do {
    /*case "tags": {
        if (_state isEqualTo 1) then {
            husky_SETTINGS_tagson = true;
            profileNamespace setVariable ["husky_SETTINGS_tagson",true];
            HUSKY_ID_PlayerTags = ["husky_PlayerTags","onEachFrame","husky_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
        } else {
            husky_SETTINGS_tagson = false;
            profileNamespace setVariable ["husky_SETTINGS_tagson",false];
            [HUSKY_ID_PlayerTags,"onEachFrame"] call BIS_fnc_removeStackedEventHandler;
        };
    };*/

    case "objects": {
        if (_state isEqualTo 1) then {
            husky_SETTINGS_revealObjects = true;
            profileNamespace setVariable ["husky_SETTINGS_revealObjects",true];
            husky_ID_RevealObjects = ["husky_RevealObjects","onEachFrame","husky_fnc_revealObjects"] call BIS_fnc_addStackedEventHandler;
        } else {
            husky_SETTINGS_revealObjects = false;
            profileNamespace setVariable ["husky_SETTINGS_revealObjects",false];
            [husky_ID_RevealObjects,"onEachFrame"] call BIS_fnc_removeStackedEventHandler;
        };
    };

    case "sidechat": {
        if (_state isEqualTo 1) then {
            husky_enableSidechannel = true;
            profileNamespace setVariable ["husky_enableSidechannel",true];
            husky_SETTINGS_enableSidechannel = profileNamespace getVariable ["husky_enableSidechannel",true];
        } else {
            husky_enableSidechannel = false;
            profileNamespace setVariable ["husky_enableSidechannel",false];
            husky_SETTINGS_enableSidechannel = profileNamespace getVariable ["husky_enableSidechannel",false];
        };
        [player,husky_SETTINGS_enableSidechannel,playerSide] remoteExecCall ["TON_fnc_manageSC",RSERV];
    };

    case "broadcast": {
        if (_state isEqualTo 1) then {
            husky_enableNewsBroadcast = true;
            profileNamespace setVariable ["husky_enableNewsBroadcast",true];
            husky_SETTINGS_enableNewsBroadcast = profileNamespace getVariable ["husky_enableNewsBroadcast",true];
        } else {
            husky_enableNewsBroadcast = false;
            profileNamespace setVariable ["husky_enableNewsBroadcast",false];
            husky_SETTINGS_enableNewsBroadcast = profileNamespace getVariable ["husky_enableNewsBroadcast",false];
        };
    };
};
