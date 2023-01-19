#include "..\..\script_macros.hpp"
/*
	File: fn_SperrMap.sqf
	Author: Deathman Dev. MineFactory/HuskyGaming

	Description:
	Sperrzonen inizalizieren
*/
if!(alive player)exitWith{hint "Du bist nich am leben"};
if!(playerside isEqualTo west)exitWith{hint "Du bist keine Polizei"};
disableSerialization;
if((lbCurSel 21457) isEqualTo -1) exitWith {hint "Du hast keine Farbe ausgewählt"};
if((lbCurSel 21459) isEqualTo -1) exitWith {hint "Du hast keinen Zonen Shape ausgewählt"};
if((lbCurSel 21458) isEqualTo -1) exitWith {hint "Du hast keine Zonen Art ausgewählt"};
if(parseNumber(ctrlText 21455) < 0) exitWith {hint "So klein soll die Zone werden"};
if(parseNumber(ctrlText 21456) < 0) exitWith {hint "So klein soll die Zone werden"};
if((ctrlText 21451) isEqualTo "") exitWith {hint "Im Zonen Titel steht doch nichts"};
if((ctrlText 21452) isEqualTo "") exitWith {hint "Es wurde keine Location angegebn"};
if((ctrlText 21453) isEqualTo "") exitWith {hint "Du hast keine Nachricht an die User"};

private _zoneColor = lbData[21457,(lbCurSel 21457)];//0
private _zoneshape = lbData[21459,(lbCurSel 21459)];//1
private _zoneType = lbData[21458,(lbCurSel 21458)];//2
private _zonenTitel = ctrlText 21451;//3
private _zonenLocation = ctrlText 21452;//4
private _zonenmessageUser = ctrlText 21453;//5
private _zonenMessageInZone = ctrlText 21454;//6
private _zonensizeX = parseNumber(ctrlText 21455);//7
private _zonensizeY = parseNumber(ctrlText 21456);//8
zoneinfo = [_zoneColor,_zoneshape,_zoneType,_zonenTitel,_zonenLocation,_zonenmessageUser,_zonensizeX,_zonensizeY];

hint "Setzte jetzt deine Sperrzone wo du willst";
openMap true;
if!(visibleMap)exitWith {hint "Du Bist nicht auf der Karte"};
closeDialog 0;
onMapSingleClick "[(_pos select 0),(_pos select 1),zoneinfo select 3,zoneinfo select 4,zoneinfo select 6,zoneinfo select 7,zoneinfo select 5,zoneinfo select 0,zoneinfo select 1,zoneinfo select 2] spawn husky_fnc_SperrCreateGlobal; onMapSingleClick """"; true;";
//[(_pos select 0),(_pos select 1)zoneinfo select 3,zoneinfo select 4,zoneinfo select 7,zoneinfo select 8,zoneinfo select 5,zoneinfo select 6,zoneinfo select 0,zoneinfo select 1,zoneinfo select 2] remoteExec [""TON_fnc_SperrCreateGlobal"",2]; 