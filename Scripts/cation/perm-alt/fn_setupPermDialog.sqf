/*
    File: fn_setupPermDialog.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Creates perm dialog
*/
params [
	["_receiver",objNull,[objNull]]
];
private ["_level","_maxlevel","_listbox","_playerid"];
if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed || husky_action_inUse) exitWith {closeDialog 0;}; //If null / dead exit menu
if ((getNumber(missionConfigFile >> "Cation_Perm" >> "version")) > 3) then {
    if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {closeDialog 0;};
};
closeDialog 0;
if (!(cursorObject isEqualTo _receiver)) exitWith {};
if (dialog) exitWith {};
if (!createDialog "Cat_perm_management") exitWith {}; //Couldn't create the menu?
disableSerialization;
_level = _receiver getVariable ["rank",-1];
if (_level isEqualTo -1) exitWith {};

_display = findDisplay 9500;
(_display displayCtrl 9501) ctrlSetText format[(getText(missionConfigFile >> "Cation_Perm" >> "administration"))];
(_display displayCtrl 9502) ctrlSetText format[(getText(missionConfigFile >> "Cation_Perm" >> "playername"))];
(_display displayCtrl 9503) ctrlSetText format["%1",name _receiver];
(_display displayCtrl 9504) ctrlSetText format[(getText(missionConfigFile >> "Cation_Perm" >> "rank"))];
(_display displayCtrl 9505) ctrlSetText format["%1",_level];
_listbox = _display displayCtrl 9506;
(_display displayCtrl 9507) ctrlSetStructuredText parseText format["<t align='center'>%1</t>",(getText(missionConfigFile >> "Cation_Perm" >> "save"))];
(_display displayCtrl 9508) ctrlSetStructuredText parseText format["<t align='center'>%1</t>",(getText(missionConfigFile >> "Cation_Perm" >> "close"))];

_maxlevel = switch (playerSide) do {
    case west: { maxcoplevel };
    case independent: { maxmediclevel };
    default { };
};
lbClear _listbox;
for "_i" from 0 to _maxlevel step 1 do {
    switch (_i) do {
        case _level: {};
        case 0: {_listbox lbAdd format[(getText(missionConfigFile >> "Cation_Perm" >> "fire"))]; _listbox lbSetData [(lbSize 9506)-1,str(_i)]; };
        default {_listbox lbAdd (format["%1",_i]); _listbox lbSetData [(lbSize 9506)-1,str(_i)]; };
    };
};
_listbox lbSetCurSel 0;