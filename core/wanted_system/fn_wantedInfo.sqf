/*
    File: fn_wantedInfo.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Pulls back information about the wanted criminal.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
disableSerialization;

private _data = param [0,[],[[]]];
private _display = findDisplay 2400;
private _list = _display displayCtrl 2402;
private _mylist = [];

if (isNil "_data") exitWith {hint localize "STR_Cop_wantedList_FailedToFetch";};
if !(_data isEqualType []) exitWith {hint localize "STR_Cop_wantedList_FailedToFetch";};
if (_data isEqualTo []) exitWith {hint localize "STR_Cop_wantedList_FailedToFetch";};

lbClear _list;

private _crimes = _data select 0;

{
    _crime = _x;
    if !(_crime in _mylist) then {
        _mylist pushBack _crime;
        _list lbAdd format [localize "STR_Wanted_Count",{_x == _crime} count _crimes,localize _crime];
    };
} forEach _crimes;

ctrlSetText[2403,format [localize "STR_Wanted_Bounty",[(_data select 1)] call husky_fnc_numberText]];

[getPlayerUID player, "Fahndungsliste Price", format ["%1 - %2 hat ein Wert von %3 € %4  auf der Fahndungsliste.",profileName,(getPlayerUID player),(_data select 1),_crimes]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
