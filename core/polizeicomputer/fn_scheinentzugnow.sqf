/*
    Datei : fn_scheinEntzug.sqf
    Ersteller : xnetsrac
    Link : http://www.global-gamer.com/home/wbb/index.php/Thread/501-Tutorial-Per-Interaktionbutton-Fahrerlizenz-abnehmen-Polizei/

    hmm no idea what just happen here

	Bearbeitet von ԄӏՖҚ
    Freigestellt für Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
params[
    ["", ObjNull, [ObjNull]], ["", 0, [0]]
];
_guid = getplayeruid player;

switch (_mode) do {
    case 1:{
            [4] call husky_fnc_removeLicenses;
            [0, format["%1's Führerschein wurde entzogen!", name player]] remoteExec["husky_fnc_broadcast", 1];
            [0, _guid] remoteExec["TON_fnc_fsupdate", 2];
        };
    case 2:{
            [5] call husky_fnc_removeLicenses;
            [0, format["%1 hat erfolgreich den Führerscheintest bestanden!", name player]] remoteExec["husky_fnc_broadcast", 1];
            [1, _guid] remoteExec["TON_fnc_fsupdate", 2];
        };
    default {
        ""
    };
};