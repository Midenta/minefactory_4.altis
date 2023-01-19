/*
    File: fn_createDialogUnit.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
	Creates dialog of normal unit.
*/
if (!(playerSide in [west,independent])) exitWith {};
if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed || husky_action_inUse) exitWith {closeDialog 0;}; //If null / dead exit menu
if ((getNumber(missionConfigFile >> "Cation_Reporting" >> "version")) > 3) then {
    if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {closeDialog 0;};
};
private _statusArray = switch (playerSide) do {
	case independent: {getArray(missionConfigFile >> "Cation_Reporting" >> "statusIndependentVehicle");};
	case west: {getArray(missionConfigFile >> "Cation_Reporting" >> "statusWestVehicle");};
	default {[];};
};
if (_statusArray isEqualTo []) exitWith {};
if (!createDialog "Cat_reporting_phone") exitWith {};
disableSerialization;

params [
    ["_number",""]
];
private _display = findDisplay 9700;
_display setVariable ["number",_number];
(_display displayCtrl 9701) ctrlSetTooltip format["%1",(_statusArray select 1) select 1];
(_display displayCtrl 9702) ctrlSetTooltip format["%1",(_statusArray select 2) select 1];
(_display displayCtrl 9703) ctrlSetTooltip format["%1",(_statusArray select 3) select 1];
(_display displayCtrl 9704) ctrlSetTooltip format["%1",(_statusArray select 4) select 1];
(_display displayCtrl 9705) ctrlSetTooltip format["%1",(_statusArray select 5) select 1];
(_display displayCtrl 9706) ctrlSetTooltip format["%1",(_statusArray select 6) select 1];
(_display displayCtrl 9707) ctrlSetTooltip format["%1",(_statusArray select 7) select 1];
(_display displayCtrl 9708) ctrlSetTooltip format["%1",(_statusArray select 8) select 1];
(_display displayCtrl 9709) ctrlSetTooltip format["%1",(_statusArray select 9) select 1];
(_display displayCtrl 9710) ctrlSetTooltip format["%1",(_statusArray select 0) select 1];
(_display displayCtrl 9711) ctrlSetTooltip format[(getText(missionConfigFile >> "Cation_Reporting" >> "backTo"))];
(_display displayCtrl 9712) ctrlSetTooltip format[(getText(missionConfigFile >> "Cation_Reporting" >> "saveStatus"))];
(_display displayCtrl 9713) ctrlSetTooltip format[(getText(missionConfigFile >> "Cation_Reporting" >> "deleteNumber"))];
(_display displayCtrl 9714) ctrlSetStructuredText parseText format["<t align='center'>%1</t>",(getText(missionConfigFile >> "Cation_Reporting" >> "titlePhone"))];
(_display displayCtrl 9715) ctrlSetText format[(getText(missionConfigFile >> "Cation_Reporting" >> "changeStatusTo"))];
(_display displayCtrl 9716) ctrlSetText format[(getText(missionConfigFile >> "Cation_Reporting" >> "centerStatus"))];
(_display displayCtrl 9717) ctrlSetText format[(getText(missionConfigFile >> "Cation_Reporting" >> "ownStatus"))];
(_display displayCtrl 9718) ctrlSetText (player getVariable ["reportStatus",""]);
(_display displayCtrl 9719) ctrlSetText (player getVariable ["reportCenter",""]);
(_display displayCtrl 9720) ctrlSetText _number;
(_display displayCtrl 9721) ctrlSetTooltip format[(getText(missionConfigFile >> "Cation_Reporting" >> "help"))];