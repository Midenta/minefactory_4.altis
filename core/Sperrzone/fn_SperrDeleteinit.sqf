#include "..\..\script_macros.hpp"
/*
	File: fn_SperrDeleteinit.sqf
	Author: Deathman Dev. MineFactory/HuskyGaming

	Description:
	Sperrzonen List Init
*/
if!(alive player)exitWith{hint "Du bist nich am leben"};
if!(playerside isEqualTo west)exitWith{hint "Du bist keine Polizei"};
if((copsperr getVariable "CopSperre") isEqualTo []) exitWith {hint "Es sind noch keine Sperrzonen Aktiv"};
closeDialog 0;
disableSerialization;

createDialog "dialog_SperrZone_Deleting";


private _dialog = findDisplay 41590;
private _SperrZoneList = displayCtrl 41591;

lbClear _SperrZoneList;

{
	diag_log _foreachindex;
	private _SperrInfo = _x select 1;
	_SperrZoneList lbAdd format ["%1",_SperrInfo select 0];
	_tmp = [_x select 0,_x select 1,_x select 2];
	_SperrZoneList lbSetData [(lbSize _SperrZoneList)-1,str(_tmp)];
	_SperrZoneList lbSetValue [(lbSize _SperrZoneList)-1,_foreachindex];
} forEach (copsperr getVariable "CopSperre");