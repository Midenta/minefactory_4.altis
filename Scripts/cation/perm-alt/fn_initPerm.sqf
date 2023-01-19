/*
    File: fn_initLevel.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Initializes perm system
*/
[] spawn {
    private ["_exit","_keyDown","_shift","_ctrlKey","_alt"];
    _exit = true;
    waitUntil {!(isNull (findDisplay 46))};
    waitUntil {!isNil "husky_coplevel"};
    waitUntil {!isNil "husky_mediclevel"};
    switch (playerSide) do {
        case west: { player setVariable ["rank",(call husky_coplevel),true]; if ((call husky_coplevel) >= (getNumber(missionConfigFile >> "Cation_Perm" >> "mincoplevel"))) then { _exit = false; }; };
        case independent: { player setVariable ["rank",(call husky_mediclevel),true]; if ((call husky_mediclevel) >= (getNumber(missionConfigFile >> "Cation_Perm" >> "minmediclevel"))) then { _exit = false; }; };
        default { _exit = true; };
    };
    if (!hasInterface) exitWith {};
    if (_exit) exitWith {};
    (findDisplay 46) displayAddEventHandler ["KeyDown", {
        _keyDown = _this select 1;
        _shift = switch (_this select 2) do { case true: {1}; case false: {0}; default {0};};
        _ctrlKey = switch (_this select 3) do { case true: {1}; case false: {0}; default {0};};
        _alt = switch (_this select 4) do { case true: {1}; case false: {0}; default {0};};
        if (!(_keyDown isEqualTo (getNumber(missionConfigFile >> "Cation_Perm" >> "key")))) exitWith {false};
        if (!(_shift isEqualTo (getNumber(missionConfigFile >> "Cation_Perm" >> "shift")))) exitWith {false};
        if (!(_ctrlKey isEqualTo (getNumber(missionConfigFile >> "Cation_Perm" >> "ctrl")))) exitWith {false};
        if (!(_alt isEqualTo (getNumber(missionConfigFile >> "Cation_Perm" >> "alt")))) exitWith {false};
        if (!(isPlayer cursorObject)) exitWith {false};
        if (!(playerSide isEqualTo (side cursorObject))) exitWith {false};
        [cursorObject] call cat_perm_fnc_setup;
        true;
    }];
};