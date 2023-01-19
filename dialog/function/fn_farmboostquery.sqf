#include "..\..\script_macros.hpp"
/*
    File: fn_farmboost.sqf
    Author: Alex Smith

    Description:
    -

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
//13377

private _dialog = findDisplay 76548;
private _value = ctrlText 13377;
if(_value isEqualTo "") exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast nichts eingegeben !</t>";};

[getPlayerUID player, "Farmcodes Versuch", format ["hat versucht den Code %1 eingelöst.",_value]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
//diag_log _value;
//_farmboostaktiv = fed_bank getVariable ["Farmboost",false,false];
if ((fed_bank getVariable ["Farmboost",false])) exitWith {
//hint "Bitte warte bis zum n�chsten Restart, dann kannst du deinen Farmboost einl�sen!";
hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Bitte warte bis zum kommenden Restart, dann kannst du deinen Farmboost aktivieren!</t>";
};

//hint "Dein Code wird gepr�ft...";
hint parseText "<t underline='true' size='1.8' color='#7cff00'>Information</t><br /><t size='1.5' color='#ffffff'>Dein Code wird kontrolliert...</t>";
if (husky_HC_isActive) then {
    [_value, player] remoteExec ["HC_fnc_getFarmcodes",HC_husky];
} else {
    [_value, player] remoteExec ["TON_fnc_getFarmcodes",RSERV];
};

/*
private["_value"];

//13377
_dialog = findDisplay 76548;


_value = ctrlText 13377;


[getPlayerUID player, "Farmcodes", format ["hat den Code %1 aktiviert.",_value]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];



if !(isnil "husky_farmboost") exitWith {
//hint "Bitte warte bis zum nächsten Restart, dann kannst du deinen Farmboost einlösen!";
hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Bitte warte bis zum kommenden Restart, dann kannst du deinen Farmboost aktivieren!</t>";
};

//hint "Dein Code wird geprüft...";
hint parseText "<t underline='true' size='1.8' color='#7cff00'>Information</t><br /><t size='1.5' color='#ffffff'>Dein Code wird kontrolliert...</t>";
if (husky_HC_isActive) then {
    [_value, player] remoteExecCall ["HC_fnc_getFarmcodes",HC_husky];
} else {
    [_value, player] remoteExecCall ["TON_fnc_getFarmcodes",RSERV];
};
*/