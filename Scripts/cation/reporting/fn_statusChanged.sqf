/*
    File: fn_statusChanged.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
	Changes status of unit.
*/
private _display = findDisplay 9700;
private _number = _display getVariable ["number",""];

if (_number isEqualTo "") exitWith {
	hint getText(missionConfigFile >> "Cation_Reporting" >> "noStatusSelected");
	[] call cat_reporting_fnc_createDialogUnit;
};

player setVariable ["reportStatus",_number,true];
_display setVariable ["number",_number];
(_display displayCtrl 9718) ctrlSetText _number;
(_display displayCtrl 9720) ctrlSetText "";
hint format ["%1: %2",getText(missionConfigFile >> "Cation_Reporting" >> "statusChangedTo"),_number];