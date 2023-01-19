#include "..\..\script_macros.hpp"
/*
    File: fn_jaws.sqf
    Author: Bryan "Tonic" Boardwine
	redone by: Toxic
	
    Description:
    Main functionality for lock-picking.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

    Notice:
    This is Old Stuff private ["_curTarget","_distance","_isVehicle","_title","_progressBar","_cP","_titleText","_dice","_badDistance"];
*/
private _curTarget = cursorObject;
private "_badDistance";
husky_interrupted = false;

if (husky_action_inUse) exitWith {};
if (isNull _curTarget) exitWith {}; //Bad type
private _distance = ((boundingBox _curTarget select 1) select 0) + 2;
if (player distance _curTarget > _distance) exitWith {}; //Too far

private _isVehicle = if ((_curTarget isKindOf "LandVehicle") || (_curTarget isKindOf "Ship") || (_curTarget isKindOf "Air")) then {true} else {false};
if (_isVehicle && _curTarget in husky_vehicles) exitWith {hint localize "STR_ISTR_Lock_AlreadyHave"};

//More error checks
if (!_isVehicle && !isPlayer _curTarget) exitWith {};
if (!_isVehicle && !(_curTarget getVariable ["restrained",false])) exitWith {};
if (_curTarget getVariable "NPC") exitWith {hint localize "STR_NPC_Protected"};

private _title = format [localize "STR_ISTR_Jaws",if (!_isVehicle) then {"Handcuffs"} else {getText(configFile >> "CfgVehicles" >> (typeOf _curTarget) >> "displayName")}];
husky_action_inUse = true; //Lock out other actions

//Setup the progress bar
disableSerialization;
"progressBar" cutRsc ["husky_progress","PLAIN"];
private "_ui";
_ui = uiNamespace getVariable "husky_progress";
private _progressBar = _ui displayCtrl 38201;
private _titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format ["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
private _cP = 0.01;

for "_i" from 0 to 1 step 0 do {
    if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
        [player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["husky_fnc_animSync",RCLIENT];
        player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
        player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
    };

    sleep 0.26;

    if (isNull _ui) then {
        "progressBar" cutRsc ["husky_progress","PLAIN"];
        _ui = uiNamespace getVariable "husky_progress";
        _progressBar = _ui displayCtrl 38201;
        _titleText = _ui displayCtrl 38202;
    };
    _cP = _cP + 0.05;
    _progressBar progressSetPosition _cP;
    _titleText ctrlSetText format ["%3 (%1%2)...",round(_cP * 100),"%",_title];

    if (_cP >= 1 || !alive player) exitWith {};
    if (husky_istazed) exitWith {}; //Tazed
    if (husky_isknocked) exitWith {}; //Knocked
    if (husky_interrupted) exitWith {};
    if (player getVariable ["restrained",false]) exitWith {};
    if (player distance _curTarget > _distance) exitWith {_badDistance = true;};
};

//Kill the UI display and check for various states
"progressBar" cutText ["","PLAIN"];
player playActionNow "stop";

if (!alive player || husky_istazed || husky_isknocked) exitWith {husky_action_inUse = false;};
if (player getVariable ["restrained",false]) exitWith {husky_action_inUse = false;};
if (!isNil "_badDistance") exitWith {titleText[localize "STR_ISTR_Lock_TooFar","PLAIN"]; husky_action_inUse = false;};
if (husky_interrupted) exitWith {husky_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; husky_action_inUse = false;};

husky_action_inUse = false;

if (!_isVehicle) then {
    _curTarget setVariable ["restrained",false,true];
    _curTarget setVariable ["Escorting",false,true];
    _curTarget setVariable ["transporting",false,true];
} else {
    titleText[localize "STR_ISTR_Jaws_Success","PLAIN"];
    husky_vehicles pushBack _curTarget;
};