#include "..\..\script_macros.hpp"
/*
	File: fn_SperrInit.sqf
	Author: Deathman Dev. MineFactory/HuskyGaming

	Description:
	Sperrzonen INIT
*/
if!(alive player)exitWith{hint "Du bist nich am leben"};
if!(playerside isEqualTo west)exitWith{hint "Du bist keine Polizei"};
if!(FETCH_CONST(husky_coplevel) >= (getnumber(missionConfigFile >> "Sperrzonen_Master" >> "cop_level_open")))exitWith{hint format ["Du brauchst hier für das Polizei Level: %1",(getnumber(missionConfigFile >> "Sperrzonen_Master" >> "cop_level_open"))]};
disableSerialization;
if(!dialog) then {
	createDialog "dialog_SperrZone_System";
};

private _dialog = findDisplay 21450;
private _listcolor = displayCtrl 21457;
private _listshape = displayCtrl 21459;
private _listtype = displayCtrl 21458;
private _zonetitel = displayCtrl 21451;
private _zonelocation = displayCtrl 21452;
private _zoneMessageUser = displayCtrl 21453;
private _location = text nearestLocation [position player, "NameVillage"];

_zonetitel ctrlSetText (getText(missionConfigFile >> "Sperrzonen_Master" >> "zonen_titel"));
_zoneMessageUser ctrlSetText (getText(missionConfigFile >> "Sperrzonen_Master" >> "zonen_message_player"));
if(_location isEqualTo "") then {
	_zonelocation ctrlSetText (getText(missionConfigFile >> "Sperrzonen_Master" >> "zonen_ort"));
} else {
	_zonelocation ctrlSetText format ["Nahe %1",_location];
};

lbClear _listcolor;
lbClear _listshape;
lbClear _listtype;

{
	_listcolor lbAdd format ["%1",_x select 0];
	_listcolor lbSetColor[(lbSize _listcolor)-1,_x select 2];
	_listcolor lbSetData [(lbSize _listcolor)-1,_x select 1];
	_listcolor lbSetCurSel 11;
} forEach (getArray(missionConfigFile >> "Sperrzonen_Master" >> "zonecolor"));

{
	_listshape lbAdd format ["%1",_x select 0];
	_listshape lbSetData [(lbSize _listshape)-1,_x select 1];
	_listshape lbSetPicture[(lbSize _listshape)-1,_x select 2];
	_listshape lbSetPictureColor[(lbSize _listshape)-1,[0,0.698,1,1]];
	_listshape lbSetCurSel 1;
} forEach (getArray(missionConfigFile >> "Sperrzonen_Master" >> "zoneshape"));

{
	_listtype lbAdd format ["%1",_x select 0];
	_listtype lbSetData [(lbSize _listtype)-1,_x select 1];
	_listtype lbSetPicture[(lbSize _listtype)-1,_x select 2];
	_listtype lbSetPictureColor[(lbSize _listtype)-1,[0,0.698,1,1]];
	_listtype lbSetCurSel 5;
} forEach (getArray(missionConfigFile >> "Sperrzonen_Master" >> "zonetypes"));
//(getArray(missionConfigFile >> "Sperrzonen_Master" >> "zonecolor")