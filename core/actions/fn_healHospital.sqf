#include "..\..\script_macros.hpp"
/*
    File: fn_healHospital.sqf
    Author: Bryan "Tonic" Boardwine
    Reworked: Jesse "TKCJesse" Schultz

    Description:
    Prompts user with a confirmation dialog to heal themselves.
    Used at the hospitals to restore health to full.
    Note: Dialog helps stop a few issues regarding money loss.

    Notice:
    This is Old Stuff private ["_healCost","_action"];
*/
if (husky_action_inUse) exitWith {};
if ((damage player) < 0.01) exitWith {hint "Du brauchst keine Behandlung!";};
private _healCost = husky_SETTINGS(getNumber,"hospital_heal_fee");
if (c126 < _healCost) exitWith {hint format [localize "STR_NOTF_HS_NoCash",[_healCost] call husky_fnc_numberText];};

husky_action_inUse = true;
private "_action";
_action = [
    format [localize "STR_NOTF_HS_PopUp",[_healCost] call husky_fnc_numberText],
    localize "STR_NOTF_HS_TITLE",
    localize "STR_Global_Yes",
    localize "STR_Global_No"
] call BIS_fnc_guiMessage;

if (_action) then {
    titleText[localize "STR_NOTF_HS_Healing","PLAIN"];
    closeDialog 0;
    uiSleep 8;
    if (player distance (_this select 0) > 5) exitWith {husky_action_inUse = false; titleText[localize "STR_NOTF_HS_ToFar","PLAIN"]};
    titleText[localize "STR_NOTF_HS_Healed","PLAIN"];
    player setDamage 0;
    c126 = c126 - _healCost;
    husky_action_inUse = false;
} else {
    hint localize "STR_NOTF_ActionCancel";
    closeDialog 0;
    husky_action_inUse = false;
};

((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 2403) ctrlSetText format["%1 %",round ((1 - (damage player)) * 100)];