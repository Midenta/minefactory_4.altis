#include "..\..\script_macros.hpp"
/*
	File: fn_SperrDeleteing.sqf
	Author: Deathman Dev. MineFactory/HuskyGaming

	Description:
	Ausgewählte Sperrzonen werden dann gelöscht
*/
if!(alive player)exitWith{hint "Du bist nich am leben"};
if!(playerside isEqualTo west)exitWith{hint "Du bist keine Polizei"};
if!(FETCH_CONST(husky_coplevel) >= (getnumber(missionConfigFile >> "Sperrzonen_Master" >> "cop_level_delall"))) exitWith {hint format ["Du brauchst hier für das Polizei Level: %1",(getnumber(missionConfigFile >> "Sperrzonen_Master" >> "cop_level_del"))]};
if((lbCurSel 41591) isEqualTo -1) exitWith {hint "Du hast keine Zone ausgewählt"};
if((copsperr getVariable "CopSperre") isEqualTo [])exitWith{hint "Da ist keine Sperrzone"};

private _value = lbValue[41591,(lbCurSel 41591)];
private _object = (copsperr getVariable "CopSperre") select _value;

private _zone = _object select 0;
private _zoneicon = _object select 2;
private _infos = _object select 1;

deleteMarker _zone;
deleteMarker _zoneicon;

[3, format["<t font='PuristaBold' color='#0979e9' size = '1.5' align='center'>Polizei Sperrzone</t><br/><br/><t color='#fc1c03' font='PuristaBold' size = '1' align='left'>Titel: </t><t font='PuristaBold' size = '1' align='left'>%1</t><br/><t color='#fc1c03' font='PuristaBold' size = '1' align='left'>Größe: </t><t font='PuristaBold' size = '1' align='left'>%2 x %3</t><br/><t color='#fc1c03' font='PuristaBold' size = '1' align='left'>Ort: </t><t font='PuristaBold' size = '1' align='left'>%4</t><br/><br/><t color='#fc1c03' font='PuristaBold' size = '1' align='left'>Nachricht:</t><br/><t font='PuristaBold' size = '1' align='left'>%5</t>",(_infos select 0),(_infos select 3),(_infos select 4),(_infos select 1),"Sperrzone wurde aufgehoben"]] remoteExec ["husky_fnc_broadcast",0]; 

private _rem = (copsperr getVariable "CopSperre") deleteAt _value;
if((copsperr getVariable "CopSperre") isEqualTo []) then {
	closeDialog 0;
} else {
	[]spawn husky_fnc_SperrDeleteinit;
};