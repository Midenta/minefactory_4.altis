/*
    File: fn_help.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Lists all possible status.
*/
private _text = "";
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

_text = _text + format["<t align='center'>%1</t><br/><br/>",format[(getText(missionConfigFile >> "Cation_Reporting" >> "statusMobile"))]]; 
{
	_text = _text + format["%1: %2<br/>",_x select 0,_x select 1];
} forEach _statusArray;
_text = _text + format["<br/><t align='center'>%1</t><br/><br/>",format[(getText(missionConfigFile >> "Cation_Reporting" >> "statusCenter"))]]; 
{
	_text = _text + format["%1: %2<br/>",_x select 0,_x select 1];
} forEach _centerStatusArray;

hint parseText _text;