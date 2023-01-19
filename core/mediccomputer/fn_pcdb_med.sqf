/*
	File: fn_admininfo.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Output information received to admin menu.

    Thieves
	
	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
disableSerialization;
private _unit = lbData[620073,(lbCurSel 620073)];
_unit = call compile format["%1", _unit];
//diag_log format ["%1",_unit];
private _guid = getPlayerUID _unit;
//diag_log format["%1",_guid];
closeDialog 0;
createDialog "polizeicomputer_med";
waitUntil {
    !isNull(findDisplay 670080)
};
private _display = findDisplay 670080;
if (!isNil {admin_query_ip}) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Sie befragen bereits einen Spieler.</t>";};
private _text = _display displayCtrl 670090;
private _Btn1 = _display displayCtrl 670097;
_Btn1 ctrlEnable false;
private _Btn2 = _display displayCtrl 671197;
_Btn2 ctrlEnable false;
_text ctrlSetStructuredText parseText format["<t size='0.9' align='center'>%1</t>", _unit getVariable["realname", name _unit]];


husky_fahndung = _guid;
[_guid, player] remoteExec["TON_fnc_wantedlist_med", 2];
