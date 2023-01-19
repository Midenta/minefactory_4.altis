/*
	File: fn_adminQuery.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Starts the query on a player.

    Thieves
	
	Thieves-Gaming.de
	
	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/


private["_display","_text","_info","_prim","_sec","_vest","_uni","_bp","_attach","_tmp"];
disableSerialization;
_display = findDisplay 620070;
if (!isNil {admin_query_ip}) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Sie befragen bereits einen Spieler.</t>";};
_text = _display displayCtrl 620075;
private _unit = lbData[620073,(lbCurSel 620073)];
_unit = call compile format ["%1",_unit];
_text ctrlSetStructuredText parseText format["<t size='0.9' align='center'>%1</t>", _unit getVariable["realname",name _unit]];
_Btn1 = _display displayCtrl 620076;
_Btn1 ctrlEnable true;
_Btn1 = _display displayCtrl 620077;
_Btn1 ctrlEnable true;
