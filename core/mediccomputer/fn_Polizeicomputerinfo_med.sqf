/*
	File: fn_admininfo.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Output information received to admin menu.

    hmm no idea what just happen here

    Thieves
	
	Thieves-Gaming.de
	
	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

private["_display","_ret","_text","_unit","_Btn1","_Btn2","_vest","_uni","_bp","_attach","_tmp"];
//diag_log format["%1",_this];
_ret = _this;
disableSerialization;
_display = findDisplay 620070;
_text = _display displayCtrl 620075;

private _side = switch(side _unit) do {case west: {"Cop"}; case independent: {"Med"}; case civilian : {"Civ"}; default {"Unknown"};};
_text ctrlSetStructuredText parseText format["<t size='0.9' align='center'>%1 [%2]</t>", _unit getVariable["realname",name _unit,_side]];

_Btn1 = _display displayCtrl 620076;
_Btn1 ctrlEnable true;
_Btn1 = _display displayCtrl 620077;
_Btn1 ctrlEnable true;
