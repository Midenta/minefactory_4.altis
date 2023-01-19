/*
    File: fn_lbChanged.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Changes info for selected unit.
*/
disableSerialization;
params [
    ["_control",controlNull,[controlNull]],
    ["_selection",0,[0]]
];
if (!dialog) exitWith {};
private _display = findDisplay 9800;
private _unit = cat_reporting_current_entries select _selection;
private _statusArray = switch (playerSide) do {
	case west: {getArray(missionConfigFile >> "Cation_Reporting" >> "statusWestVehicle");};
	case independent: {getArray(missionConfigFile >> "Cation_Reporting" >> "statusIndependentVehicle");};
	default {[];};
};
if (_statusArray isEqualTo []) exitWith {};
private _centerStatusArray = switch (playerSide) do {
	case west: {getArray(missionConfigFile >> "Cation_Reporting" >> "statusWestCenter");};
	case independent: {getArray(missionConfigFile >> "Cation_Reporting" >> "statusIndependentCenter");};
	default {[];};
};
if (_centerStatusArray isEqualTo []) exitWith {};
private _status = -1;
{
    if ((_unit getVariable "reportCenter") in _x) then {
        _status = _forEachIndex;
    };
} forEach _centerStatusArray;

[(_display displayCtrl 9801),1,0.1,(getPos _unit)] call cat_reporting_fnc_setMapPosition;
(_display displayCtrl 9803) ctrlSetText format["%1",(_unit getVariable "reportCenter")]; //Center Number
if (_status > -1) then {
    (_display displayCtrl 9803) ctrlSetTooltip format["%1",(_centerStatusArray select _status) select 1]; //Center Number
};
(_display displayCtrl 9804) ctrlSetText format["%1",(_unit getVariable "reportStatus")]; //Status Number
(_display displayCtrl 9804) ctrlSetTooltip format["%1",(_statusArray select (parseNumber(_unit getVariable "reportStatus"))) select 1]; //Status Number