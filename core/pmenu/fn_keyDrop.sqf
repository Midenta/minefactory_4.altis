/*
    File: fn_keyDrop.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Drops a key to a vehicle (Excluding houses).
*/
disableSerialization;

private _dialog = findDisplay 2001;
private _list = _dialog displayCtrl 2701;
private _sel = lbCurSel _list;
_gFund = GANG_FUNDS;

if (_sel isEqualTo -1) exitWith {
    hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Keine Daten ausgewählt.</t>";
};

if (_list lbData _sel isEqualTo "") exitWith {
    hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast kein Fahrzeug ausgewählt.</t>";
};

private _index = parseNumber (_list lbData _sel);
private _vehicle = husky_vehicles param [_index, objNull, [objNull]];
if isNull _vehicle exitWith {};

// Do not let them drop the key to a house
if (_vehicle isKindOf "House_F") exitWith {
    hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du kannst die Schlüssel zu diesem Haus nicht wegwerfen!</t>";
};

// Solve stupidness
if (objectParent player isEqualTo _vehicle && {locked _vehicle isEqualTo 2}) exitWith {
    hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du kannst den Schlüssel nicht wegschmeißen, weil das Auto verschlossen ist und du drin sitzt.</t>";
};

husky_vehicles = husky_vehicles - [_vehicle];

// Update vehicle owners
private _owners = _vehicle getVariable ["vehicle_info_owners", []];
_owners deleteAt _index;
_vehicle setVariable ["vehicle_info_owners", _owners, true];

[getPlayerUID player, "remove Key", format ["%1 - %2 hat %3 den Schluessel für %4 weggeworfen. Bargeld: %6 Bankkonto: %5 Gangkonto: %7 €",profileName,(getPlayerUID player),_owners,_vehicle,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText,[_gFund] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];


// Reload
call husky_fnc_keyMenu
