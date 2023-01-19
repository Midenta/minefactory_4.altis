/*
    File: fn_createDialogUnit.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
	Updates dialog of normal unit.
*/
if (!dialog) exitWith {};
disableSerialization;
params [
    ["_number",""]
];

private _display = findDisplay 9700;
_display setVariable ["number",_number];
(_display displayCtrl 9720) ctrlSetText _number;