#include "..\..\script_macros.hpp"
/*
	File: fn_SperrDeleteChange.sqf
	Author: Deathman Dev. MineFactory/HuskyGaming

	Description:
	Sperrzone List Menu Update
*/
if!(alive player)exitWith{hint "Du bist nich am leben"};
if!(playerside isEqualTo west)exitWith{hint "Du bist keine Polizei"};
if((lbCurSel 41591) isEqualTo -1) exitWith {hint "Du hast keine Zone ausgewählt"};
if((copsperr getVariable "CopSperre") isEqualTo [])exitWith{hint "Da ist keine Sperrzone"};

private _datas = lbData[41591,(lbCurSel 41591)];
private _value = lbValue[41591,(lbCurSel 41591)];

private _data = call compile format ["%1",_datas];
private _object = (copsperr getVariable "CopSperre") select _value;

private _infos = (_data select 1);
private _dialog = findDisplay 41590;
private _SperrZoneCreater = displayCtrl 41592;
private _SperrZoneTitel = displayCtrl 41593;
private _SperrZoneOrt = displayCtrl 41594;
private _SperrZoneSize = displayCtrl 41595;
private _SperrZoneMessagePlayer = displayCtrl 41596;

_SperrZoneCreater ctrlSetText format["Ersteller: %1",(_infos select 5)];
_SperrZoneTitel ctrlSetText format["Zonen Titel: %1",(_infos select 0)];
_SperrZoneOrt ctrlSetText format["Zonen Ort: %1",(_infos select 1)];
_SperrZoneMessagePlayer ctrlSetText format["%1",(_infos select 2)];
_SperrZoneSize ctrlSetText format ["Zonen Größe: %1 X %2",(_infos select 3),(_infos select 4)];