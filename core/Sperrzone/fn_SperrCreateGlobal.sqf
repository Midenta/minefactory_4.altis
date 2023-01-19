#include "..\..\script_macros.hpp"
/*
	File: fn_SperrCreateGlobal.sqf
	Author: Deathman Dev. MineFactory/HuskyGaming

	Description:
	Sperrzone Erstellen
*/
if!(alive player)exitWith{hint "Du bist nich am leben"};
if!(playerside isEqualTo west)exitWith{hint "Du bist keine Polizei"};
params [
	["_pos1",0,[-1]],
	["_pos2",0,[-1]],
	["_zonentitel","",[""]],
	["_zonenLocation","",[""]],
	["_zonensizeX",0,[-1]],
	["_zonensizeY",0,[-1]],
	["_zonenmessageUser","",[""]],
	["_zoneColor","",[""]],
	["_zoneshape","",[""]],
	["_zoneType","",[""]]
];
private _forinfo = [_zonenTitel,_zonenLocation,_zonenmessageUser,_zonensizeX,_zonensizeY,player getVariable ["realname",name player]];

private _random = round(random 300);
private _mname = format["Sperrzone_%1",_random];

private _marksazone = round(random 300);
private _markericon = format["Sperrzone_DOT_%1",_marksazone];

private _marker2 = createMarker [_markericon,[_pos1,_pos2]];
_marker2 setMarkerType "hd_warning";
_marker2 setMarkerText "Sperrzone";
_marker2 setMarkerColor "ColorRed";

private _marker = createMarker [_mname,[_pos1,_pos2]];
_marker setMarkerType "hd_dot";
_marker setMarkerShape _zoneshape;
_marker setMarkerColor _zoneColor;
_marker setMarkerBrush _zoneType;
_marker setMarkerSize [_zonensizeX, _zonensizeY];

private _Sperrzone = [];
_Sperrzone set[0,_marker];
_Sperrzone set[1,_forinfo];
_Sperrzone set[2,_marker2];

private _oldSperrcop = copsperr getVariable "CopSperre";
_oldSperrcop pushBack _Sperrzone;
copsperr setVariable["CopSperre",_oldSperrcop,true];
[3, format["<t font='PuristaBold' color='#0979e9' size = '1.5' align='center'>Polizei Sperrzone</t><br/><br/><t color='#fc1c03' font='PuristaBold' size = '1' align='left'>Titel: </t><t font='PuristaBold' size = '1' align='left'>%1</t><br/><t color='#fc1c03' font='PuristaBold' size = '1' align='left'>Größe: </t><t font='PuristaBold' size = '1' align='left'>%2 x %3</t><br/><t color='#fc1c03' font='PuristaBold' size = '1' align='left'>Ort: </t><t font='PuristaBold' size = '1' align='left'>%4</t><br/><br/><t color='#fc1c03' font='PuristaBold' size = '1' align='left'>Nachricht:</t><br/><t font='PuristaBold' size = '1' align='left'>%5</t>",_zonentitel,_zonensizeX,_zonensizeY,_zonenLocation,_zonenmessageUser]] remoteExec ["husky_fnc_broadcast",0]; 
