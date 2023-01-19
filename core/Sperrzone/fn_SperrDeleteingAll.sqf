#include "..\..\script_macros.hpp"
/*
	File: fn_SperrDeleteingAll.sqf
	Author: Deathman Dev. MineFactory/HuskyGaming

	Description:
	Alle Sperrzonen werden dann gelöscht
*/
if!(alive player)exitWith{hint "Du bist nich am leben"};
if!(playerside isEqualTo west)exitWith{hint "Du bist keine Polizei"};
if!(FETCH_CONST(husky_coplevel) >= (getnumber(missionConfigFile >> "Sperrzonen_Master" >> "cop_level_delall")))exitWith{hint format ["Du brauchst hier für das Polizei Level: %1",(getnumber(missionConfigFile >> "Sperrzonen_Master" >> "cop_level_delall"))]};
if((copsperr getVariable "CopSperre") isEqualTo [])exitWith{hint "Da ist keine Sperrzone"};

{
	deleteMarker (_x select 0);
	deleteMarker (_x select 2);
} forEach (copsperr getVariable "CopSperre");

[3, format["<t font='PuristaBold' color='#0979e9' size = '1.5' align='center'>Polizei Sperrzone</t><br/><br/><t color='#fc1c03' font='PuristaBold' size = '1' align='left'>Nachricht: </t><t font='PuristaBold' size = '1' align='left'>%1</t>","Es wurden alle Sperrzonen von der Polizei Entfernt"]] remoteExec ["husky_fnc_broadcast",0]; 
closeDialog 0;
copsperr setVariable["CopSperre",[],true];