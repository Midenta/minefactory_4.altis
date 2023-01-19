/*
    Copyright Â© 2013 Bryan "Tonic" Boardwine, All rights reserved
    See http://armafiles.info/husky/list.txt for servers that are permitted to use this code.
    File: fn_wantedList.sqf
    Author: Bryan "Tonic" Boardwine"

    Description:
    Displays wanted list information sent from the server.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
disableSerialization;

private _info = param [0,[],[[]]];
private _display = findDisplay 2400;
private _list = _display displayCtrl 2401;

{
    private _entry = _x;
    _list lbAdd format ["%1", _entry select 1];
    _list lbSetData [(lbSize _list)-1,str(_entry)];
} forEach _info;

ctrlSetText[2404,"Verbindung hergestellt"];

if (((lbSize _list)-1) isEqualTo -1) then {
    _list lbAdd "Keine Verbrechen";
};