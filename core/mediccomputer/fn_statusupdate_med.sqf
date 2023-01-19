/*
    hmm no idea what just happen here

    Thieves
	
	Thieves-Gaming.de
	
	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
disableSerialization;
private _display = findDisplay 670080;
private _info = lbValue[670095,lbCurSel (670095)];
private _sel1 = lbValue[671111,(lbCurSel 671111)];

[_info,_sel1] remoteExec ["TON_fnc_statusserver_med",2];

closedialog 0;