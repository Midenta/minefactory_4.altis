/*
	File: fn_adminQuery.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Starts the query on a player.

    hmm no idea what just happen here

	Bearbeitet von ԄӏՖҚ
    Freigestellt für Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
/*
disableSerialization;
private _display = findDisplay 20070;
if (!isNil {
        admin_query_ip
    }) exitWith {
    hint "You are already querying a player."
};
private _text = _display displayCtrl 20075;
private _info = lbData[20073, lbCurSel(20073)];
_info = call compile format["%1", _info];
if (isNil "_info") exitWith {
    _text ctrlSetText "Player no longer exists?";
};
if (isNull _info) exitWith {
    _text ctrlSetText "Player no longer exists?";
};
[player] remoteExec ["TON_fnc_database_query",2];
_text ctrlSetText "Datenbank wird geladen...";
*/

private["_display","_text","_info","_prim","_sec","_vest","_uni","_bp","_attach","_tmp"];
disableSerialization;
_display = findDisplay 20070;
if (!isNil {admin_query_ip}) exitWith {hint "Sie befragen bereits einen Spieler."};
_text = _display displayCtrl 20075;
_info = lbData[20073,lbCurSel (20073)];
_info = call compile format["%1", _info];
if (isNil "_info") exitWith {_text ctrlSetText "Spieler existiert nicht mehr";};
if (isNull _info) exitWith {_text ctrlSetText "Spieler existiert nicht mehr";};
//[[player],"TON_fnc_database_query",_info,false] spawn husky_fnc_MP;
[husky_atmbank,husky_cash,owner player,player] remoteExec ["TON_fnc_database_query",2];

_text ctrlSetText "Datenbank wird geladen...";
