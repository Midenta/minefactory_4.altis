_newPos = [_this,1,-1] call bis_fnc_param;
if (_newPos isEqualTo -1) exitWith {};
private _valprozent = (_newpos/100) * husky_ticket_unit_bank;
ctrlSetText[2656,format ["%1 Prozent | %2 €",round _newpos,[_valprozent] call husky_fnc_numberText]];
