#include "..\..\script_macros.hpp"
/*
    File: fn_getAchievement.sqf
    Author: Deathman

    Description:
    Hier Krigst du das Achievement
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
params [
	["_type","",[""]]
];
if (_type isEqualTo "") exitWith {diag_log "Es ist ein Fehler aufgetreten!"};

if (!isClass (missionConfigFile >> "Achievement_cop" >> _type)) exitWith {};
private _displayName = getText (missionConfigFile >> "Achievement_cop" >> _type >> "displayName");
playsound "achievment";
hint parseText format ["<t size=1.30' font='puristaMedium' align='center' color='#0D82DF'>Achievement erhalten</t><br/>
<t size='1.5 'font='puristaLight' align='center'>%1</t><br/>", _displayName];
[8] call SOCK_fnc_updatePartial;
