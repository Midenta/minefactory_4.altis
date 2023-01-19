#include "..\..\script_macros.hpp"
/*
    File: fn_safeFix.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Piece of functionality for the cops to close the safe (lock it)
	
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private "_vault";
_vault = _this select 0;
if (!(_vault getVariable ["safe_open",false])) exitWith {hint localize "STR_Cop_VaultLocked"};

husky_action_inUse = true;

//Setup the progress bar
disableSerialization;
_title = localize "STR_Cop_RepairVault";
"progressBar" cutRsc ["husky_progress","PLAIN"];
_ui = uiNamespace getVariable "husky_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format ["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;

for "_i" from 0 to 1 step 0 do {
    if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
        [player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["husky_fnc_animSync",RCLIENT];
        player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
        player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
    };

    uiSleep 0.26;

    if (isNull _ui) then {
        "progressBar" cutRsc ["husky_progress","PLAIN"];
        _ui = uiNamespace getVariable "husky_progress";
        _progressBar = _ui displayCtrl 38201;
        _titleText = _ui displayCtrl 38202;
    };
    _cP = _cP + .012;
    _progressBar progressSetPosition _cP;
    _titleText ctrlSetText format ["%3 (%1%2)...",round(_cP * 100),"%",_title];
    if (_cP >= 1 || !alive player) exitWith {};
    if (husky_interrupted) exitWith {};
};

//Kill the UI display and check for various states
"progressBar" cutText ["","PLAIN"];
player playActionNow "stop";
if (!alive player) exitWith {husky_action_inUse = false;};
if (husky_interrupted) exitWith {husky_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; husky_action_inUse = false;};

husky_action_inUse = false;

_vault setVariable ["safe_open",false,true];
hint localize "STR_Cop_VaultRepaired";

[getPlayerUID player, "Safe Repair Cop", format ["%1 - %2 hat %3 repariert  Bankkonto: %6  Bargeld: %7",profileName,(getPlayerUID player),_vault,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
