/*

    hmm no idea what just happen here

    Thieves
	
	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
disableSerialization;
params[
    ["_suspect", "", [""]], ["_knast", 0, [0]], ["_lizens", 0, [0]], ["_gesuchte", 0, [0]],  ["_jailtime", 0, [0]], ["_array", [],[[]]]
];
//diag_log format ["%1",_jailtime];
_display = findDisplay 670080;
_name = _display displayCtrl 670090;
_gesucht = _display displayCtrl 670092;
_gesucht1 = _display displayCtrl 670093;
_Btn1 = _display displayCtrl 670150;
_kaufen = _display displayCtrl 670095;
_svalue = _display displayCtrl 671111;
_Btn1 ctrlEnable true;

private _ja = if (_knast isEqualTo 1) then {
    format ["Ja | Time: %1",_jailtime];
}else{
    "Nein"
};
private _jaaa = if (_gesuchte isEqualTo 1) then {
    "Ja"
}else{
    "Nein"
};
if (_gesuchte isEqualTo 1)then{_Btn1 ctrlEnable true;};

_name ctrlSetStructuredText parseText format["<t size='1' align='center'>%1</t>", _suspect];
_gesucht ctrlSetStructuredText parseText format["<t size='1' align='center'>%1</t>", _ja];
_gesucht1 ctrlSetStructuredText parseText format["<t size='1' align='center'>%1</t>", _jaaa];

_mIndex = _svalue lbadd "Offen";
_svalue lbSetValue[(lbSize _svalue) - 1, 0];
_mIndex = _svalue lbadd "Bezahlt";
_svalue lbSetValue[(lbSize _svalue) - 1, 1];
_mIndex = _svalue lbadd "Geschlossen";
_svalue lbSetValue[(lbSize _svalue) - 1, 2];


if (count _array > 0) then {
    {
        if ((_x select 0) > 0) then {

            _x params[
                "_id",
                "_datum",
                "_uhrzeit",
                "_info"
            ];
            _kaufen lbAdd format["%1 | %2 - %3", _datum, _uhrzeit, _info];
            _kaufen lbSetData[(lbSize _kaufen) - 1, str _id];
            _kaufen lbSetValue[(lbSize _kaufen) - 1, _id];

        };
    }foreach _array;
};
