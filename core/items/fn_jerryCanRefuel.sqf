#include "..\..\script_macros.hpp"
/*
    File: fn_jerryCanRefuel.sqf
    Author: Bryan "Tonic" Boardwine
    Modified: Jesse "tkcjesse" Schultz

    Description:
    Refuels the empty fuel canister at a gas pump. Based off the jerryRefuel/lockpick scripts by Tonic.
*/
private ["_startPos","_badDistance","_title","_ui","_progress","_pgText","_cP","_action","_fuelCost"];
husky_interrupted = false;
if (husky_inv_fuelEmpty isEqualTo 0) exitWith {};
if (count(nearestObjects [player,["Land_FuelStation_Feed_F","Land_fs_feed_F","Land_FuelStation_03_pump_F"],3.5]) isEqualTo 0) exitWith { hint localize "STR_ISTR_Jerry_Distance";};
if (husky_action_inUse) exitWith {};
if !(isNull objectParent player) exitWith {};
if (player getVariable "restrained") exitWith {/*hint localize "STR_NOTF_isrestrained";*/};
if (player getVariable "playerSurrender") exitWith {/*hint localize "STR_NOTF_surrender";*/};
_fuelCost = husky_SETTINGS(getNumber,"fuelCan_refuel");

husky_action_inUse = true;
_action = [
    format [localize "STR_ISTR_Jerry_PopUp",[_fuelCost] call husky_fnc_numberText],
    localize "STR_ISTR_Jerry_StationPump",
    localize "STR_Global_Yes",
    localize "STR_Global_No"
] call BIS_fnc_guiMessage;

if (_action) then {
    if (c126 < _fuelCost) exitWith {hint localize "STR_NOTF_NotEnoughMoney"; husky_action_inUse = false;};
    _startPos = getPos player;
    //Setup our progress bar.
    disableSerialization;
    "progressBar" cutRsc ["husky_progress","PLAIN"];
    _title = localize "STR_ISTR_Jerry_Refuel";
    _ui = uiNamespace getVariable "husky_progress";
    _progress = _ui displayCtrl 38201;
    _pgText = _ui displayCtrl 38202;
    _pgText ctrlSetText format ["%2 (1%1)...","%",_title];
    _progress progressSetPosition 0.01;
    _cP = 0.01;

    for "_i" from 0 to 1 step 0 do {
        if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
            [player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["husky_fnc_animSync",RCLIENT];
            player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
            player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
        };
        uiSleep 0.2;
        if (isNull _ui) then {
            "progressBar" cutRsc ["husky_progress","PLAIN"];
            _ui = uiNamespace getVariable "husky_progress";
            _progressBar = _ui displayCtrl 38201;
            _titleText = _ui displayCtrl 38202;
        };
        _cP = _cP + 0.01;
        _progress progressSetPosition _cP;
        _pgText ctrlSetText format ["%3 (%1%2)...",round(_cP * 100),"%",_title];
        if (_cP >= 1) exitWith {};
        if (!alive player) exitWith {husky_action_inUse = false;};
        if (husky_interrupted) exitWith {husky_interrupted = false; husky_action_inUse = false;};
    };

    //Kill the UI display and check for various states
    "progressBar" cutText ["","PLAIN"];
    player playActionNow "stop";

    if (!alive player || husky_istazed || husky_isknocked) exitWith {husky_action_inUse = false;};
    if (player getVariable ["restrained",false]) exitWith {husky_action_inUse = false;};
    if (!isNil "_badDistance") exitWith {titleText[localize "STR_ISTR_Lock_TooFar","PLAIN"]; husky_action_inUse = false;};
    if (husky_interrupted) exitWith {husky_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; husky_action_inUse = false;};
    if (!([false,"fuelEmpty",1] call husky_fnc_handleInv)) exitWith {husky_action_inUse = false;};
    husky_action_inUse = false;
    c126 = c126 - _fuelCost;
    [true,"fuelFull",1] call husky_fnc_handleInv;
    hint localize "STR_ISTR_Jerry_Refueled";
} else {
    hint localize "STR_NOTF_ActionCancel";
    closeDialog 0;
    husky_action_inUse = false;
};