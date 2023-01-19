/*
    hmm no idea what just happen here

	Bearbeitet von ԄӏՖҚ
    Freigestellt für Minefactory.eu

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
disableSerialization;
private _display = findDisplay 70080;
private _info = lbValue[70095,lbCurSel (70095)];
private _sel1 = lbValue[71111,(lbCurSel 71111)];

[_info,_sel1] remoteExec ["TON_fnc_statusserver",2];

closedialog 0;