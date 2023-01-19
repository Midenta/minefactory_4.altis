/*
    File: fn_finishStatusChange.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
	Finishes status change.
*/
private _selection = lbCurSel 9802;
private _unitSelection = lbCurSel 9808;
if (_selection isEqualTo -1 || _unitSelection isEqualTo -1) exitWith {
	hint getText(missionConfigFile >> "Cation_Reporting" >> "nothingSelected");
};
private _centerStatusArray = switch (playerSide) do {
	case independent: {getArray(missionConfigFile >> "Cation_Reporting" >> "statusIndependentCenter");};
	case west: {getArray(missionConfigFile >> "Cation_Reporting" >> "statusWestCenter");};
	default {[];};
};
if (_centerStatusArray isEqualTo []) exitWith {};
private _unit = cat_reporting_current_entries select _unitSelection;
private _status = (_centerStatusArray select _selection) select 0;
private _text = (_centerStatusArray select _selection) select 1;
private _display = findDisplay 9800;
_unit setVariable ["reportCenter",_status,true];
(_display displayCtrl 9803) ctrlSetText format["%1",_status]; //Center Number
(_display displayCtrl 9803) ctrlSetTooltip format["%1",_text]; //Center Number

[_status,_text] remoteExecCall ["cat_reporting_fnc_statusMessage",_unit];