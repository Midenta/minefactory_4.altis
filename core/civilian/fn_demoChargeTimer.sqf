#include "..\..\script_macros.hpp"
/*
    File: fn_demoChargeTimer.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Starts the "Demo" timer for the police.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_uiDisp","_time","_timer"];
disableSerialization;
"huskyTimer" cutRsc ["husky_timer","PLAIN"];
_uiDisp = uiNamespace getVariable "husky_timer";
_timer = _uiDisp displayCtrl 38301;
_time = time + (10 * 60);		//10 * 60

for "_i" from 0 to 1 step 0 do {
    if (isNull _uiDisp) then {
        "huskyTimer" cutRsc ["husky_timer","PLAIN"];
        _uiDisp = uiNamespace getVariable "husky_timer";
        _timer = _uiDisp displayCtrl 38301;
    };
    if (round(_time - time) < 1) exitWith {};
    if (!(fed_bank getVariable ["chargeplaced",false])) exitWith {};
    _timer ctrlSetText format ["%1",[(_time - time),"MM:SS.MS"] call BIS_fnc_secondsToString];
    sleep 0.08;
};
"huskyTimer" cutText["","PLAIN"];

//[getPlayerUID player, "Entschaerfer", format ["%1 - %2 hat ein Entsch�rfer benutzt.",profileName,(getPlayerUID player)]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];