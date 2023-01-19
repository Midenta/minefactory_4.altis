/*
    hmm no idea what just happen here

    Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
disableSerialization;
params[
    "_control",
    "_index"
];
private _className = _control lbData _index;

_vIndex = _control lbValue _index;
_display = findDisplay 616899;
_kosten = _display displayCtrl 616907;
_faktor = _display displayCtrl 616908;
_einfach = _display displayCtrl 616909;
_swag = _display displayCtrl 616905;
_123 = _display displayCtrl 616912;

{
    if ((_x select 4) isEqualTo _vIndex) then {
        params[
            "_woot",
            "_lols",
            "_wtf",
            "_sel3",
            "_id"
        ];
        _name = getText(missionConfigFile >> "VirtualItems" >> _sel3 >> "displayName");
        _lols1 = (_woot / _lols);
        _kosten ctrlSetStructuredText parseText format["<t size='0.9' color='#ADFF2F' align='center'>%1€</t>", [_woot] call husky_fnc_numberText];
        _einfach ctrlSetStructuredText parseText format["<t size='0.9' color='#ADFF2F' align='center'>%1€</t>", [_lols1] call husky_fnc_numberText];
        _faktor ctrlSetStructuredText parseText format["<t size='0.9' align='center'>x%1</t>", _lols];
        _swag ctrlSetStructuredText parseText format["<t size='0.9' align='center'>%1</t>", _name];
        _123 ctrlSetStructuredText parseText format["<t size='0.9' align='center'>%1</t>", _wtf];
    };
} foreach husky_schwarzmarkt;
