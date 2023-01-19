/*
	File: fn_adminQuery.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Starts the query on a player.

	Bearbeitet von ԄӏՖҚ
    Freigestellt für Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
/*
disableSerialization;

if (!isNil {
        admin_query_ip
    }) exitWith {
    hint "You are already querying a player."
};

private _display = findDisplay 20070;
private _text = _display displayCtrl 20075;
private _info = lbData[20073, lbCurSel(20073)];
_info = call compile format["%1", _info];

if (isNil "_info") exitWith {
    _text ctrlSetText "Player no longer exists?";
};
if (isNull _info) exitWith {
    _text ctrlSetText "Player no longer exists?";
};

[player] remoteExec["TON_fnc_polizei_query", 2];
*/

private["_display","_text","_info","_prim","_sec","_vest","_uni","_bp","_attach","_tmp"];
disableSerialization;
_display = findDisplay 20070;
if (!isNil {admin_query_ip}) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Sie befragen bereits einen Spieler.</t>";};
_text = _display displayCtrl 20075;
private _unit = lbData[20073,(lbCurSel 20073)];
_unit = call compile format ["%1",_unit];
//diag_log format["%1",_unit getVariable["realname",name _unit]];private
_text ctrlSetStructuredText parseText format["<t size='0.9' align='center'>%1</t>", _unit getVariable["realname",name _unit]];
_Btn1 = _display displayCtrl 20076;
_Btn1 ctrlEnable true;
_Btn1 = _display displayCtrl 20077;
_Btn1 ctrlEnable true;
