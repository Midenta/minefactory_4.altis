/*
	File: fn_adminQuery.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Starts the query on a player.

    Thieves
	
	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
disableSerialization;

private _display = findDisplay 670080;
private _info = lbValue[670095, lbCurSel(670095)];
if ((call husky_mediclevel) < 15 ) exitWith {closeDialog 0; hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast nicht die Rechte zum entfernen von Einträgen!</t>";};

[_info] remoteExec["TON_fnc_Deleteeintrag_med", 2];
