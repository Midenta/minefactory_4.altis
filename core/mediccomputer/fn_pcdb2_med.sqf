/*
	File: fn_admininfo.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Output information received to admin menu.

    Thieves
	
	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
disableSerialization;
params[
    "",
    "",
    "",
    "_unit"
];
closeDialog 0;
createDialog "Polizeibericht_med";

waitUntil {
    !isNull(findDisplay 655000)
};
_guid = getplayeruid _unit;
husky_fahndung = _guid;