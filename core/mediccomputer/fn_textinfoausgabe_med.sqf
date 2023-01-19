#include "..\..\script_macros.hpp"
/*
    hmm no idea what just happen here

    Thieves
	
	Thieves-Gaming.de
	
    Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
    Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
disableSerialization;
params[
    ["_suspect", "", [""]], ["_suspect1", "", [""]], ["_statusinfo", 0, [0]]
];
private _display = findDisplay 670080;
private _text = _display displayCtrl 670083;
_status = _display displayCtrl 670091;
private _jaa = switch (_statusinfo) do {
    case 0:{
        "Offen"
    };
    case 1:{
        "Bezahlt"
    };
    case 2:{
        "Geschlossen"
    };
};
if (FETCH_CONST(husky_mediclevel) >= 4) then {
    private _Btn2 = _display displayCtrl 670097;
    _Btn2 ctrlEnable true;
};
private _Btn2 = _display displayCtrl 671197;
_Btn2 ctrlEnable true;
_status ctrlSetStructuredText parseText format["<t color='#00FF00' size='1' align='center'>%1</t>", _jaa];
_text ctrlSetStructuredText parseText format["<t size='0.9'>Verfasst von: %1<br /><br />%2</t>", _suspect1, _suspect];