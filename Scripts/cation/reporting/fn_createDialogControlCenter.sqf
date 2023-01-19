/*
    File: fn_createDialogControlCenter.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
	Creates dialog of control center.
*/
if (playerSide isEqualTo west) then {
    if ((call husky_coplevel) < (getNumber(missionConfigFile >> "Cation_Reporting" >> "controlCenterMinLevelIndependent"))) exitWith {};
};
if (playerSide isEqualTo independent) then {
    if ((call husky_mediclevel) < (getNumber(missionConfigFile >> "Cation_Reporting" >> "controlCenterMinLevelIndependent"))) exitWith {};
};
if (!(playerSide in [west,independent])) exitWith {};
if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed || husky_action_inUse) exitWith {closeDialog 0;}; //If null / dead exit menu
if ((getNumber(missionConfigFile >> "Cation_Reporting" >> "version")) > 3) then {
    if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {closeDialog 0;};
};
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
if (!createDialog "Cat_reporting_tablet") exitWith {};
disableSerialization;

private _display = findDisplay 9800;
//(_display displayCtrl 9801) //Map
private _statusBox = (_display displayCtrl 9802); //Statuscombobox
lbClear _statusBox;
(_display displayCtrl 9803) ctrlSetText ""; //Center Number
(_display displayCtrl 9804) ctrlSetText ""; //Status Number
(_display displayCtrl 9805) ctrlSetText format[(getText(missionConfigFile >> "Cation_Reporting" >> "titleTablet"))];
(_display displayCtrl 9806) ctrlSetText format[(getText(missionConfigFile >> "Cation_Reporting" >> "statusPlayer"))];
(_display displayCtrl 9807) ctrlSetText format[(getText(missionConfigFile >> "Cation_Reporting" >> "playerHeader"))];
private _playerListBox = (_display displayCtrl 9808); //playerlistbox
lbClear _playerListBox;
(_display displayCtrl 9809) ctrlSetText format[(getText(missionConfigFile >> "Cation_Reporting" >> "changeTo"))];
(_display displayCtrl 9810) ctrlSetStructuredText parseText format["<t size='1' align='center'>%1</t>",(getText(missionConfigFile >> "Cation_Reporting" >> "ok"))];
(_display displayCtrl 9811) ctrlSetText format[(getText(missionConfigFile >> "Cation_Reporting" >> "centerStatus"))];

cat_reporting_current_entries = [];
switch (playerSide) do {
    case west: { { if ((side _x isEqualTo west) && (alive _x)) then {cat_reporting_current_entries pushBack _x;};} forEach playableUnits; };
    case independent: { {if ((side _x isEqualTo independent) && (alive _x)) then {cat_reporting_current_entries pushBack _x;};} forEach playableUnits; };
    default { };
};

{
    private _entryStatus = _x getVariable ["reportStatus",2];
    _playerListBox lbAdd format["[%1] %2",_entryStatus,(name _x)];
    _entryStatus = parseNumber(_entryStatus);
    _playerListBox lbSetTooltip [lbSize(_playerListBox)-1,(_statusArray select _entryStatus) select 1];
} forEach cat_reporting_current_entries;

{
    _statusBox lbAdd format ["%1 - %2",_x select 0,_x select 1];
} forEach _centerStatusArray;
_playerListBox lbSetCurSel 0;

[] spawn cat_reporting_fnc_markers;