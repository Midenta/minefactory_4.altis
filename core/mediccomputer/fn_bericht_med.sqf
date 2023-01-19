/*

    hmm no idea what just happen here

    Thieves
	
	Thieves-Gaming.de
	
	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

*/
disableSerialization;

private _opfer = husky_fahndung;
private _display = findDisplay 655000;
private _datum = ctrlText 655005;
private _uhrzeit = ctrlText 655006;
private _text = ctrlText 655004;
private _sel = lbData[655515, lbCurSel 655515];
private _sel1 = lbValue[655535, (lbCurSel 655535)];


//systemChat format["_sel1: %1 ", _sel1];
if (_datum isEqualTo "xx.xx.xxxx") exitWith {
    hint "Du hast das Datum vergessen";
};
if (_uhrzeit isEqualTo "xx:xx") exitWith {
    hint "Du hast die Uhrzeit vergessen";
};
if (_text isEqualTo "Beispieltext") exitWith {
    hint "Du hast den Text vergessen";
};
if (_datum isEqualTo "") exitWith {
    hint "Du hast das Datum vergessen";
};
if (_uhrzeit isEqualTo "") exitWith {
    hint "Du hast die Uhrzeit vergessen";
};
if (_text isEqualTo "") exitWith {
    hint "Du hast den Text vergessen";
};
[_datum, _uhrzeit, _text, name player, _opfer, _sel, _sel1] remoteExec["TON_fnc_bericht1_med", 2];

closedialog 0;
