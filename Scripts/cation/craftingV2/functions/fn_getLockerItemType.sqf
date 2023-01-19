/*
    File: fn_getLockerItemType.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Returns type of item stored in locker.
    Version: 1.1
    1.0 - Initial release
    1.1 - Bugfix: craft backpack to locker
*/
params [
	["_item","",[""]],
	["_vItem",false,[false]]
];

private _return = -1; // undefined

if (_vItem) then { // vItem
    _return = 0;
} else {
    if (isClass(configFile >> "CfgWeapons" >> _item)) then {
        if (getNumber(configFile >> "CfgWeapons" >> _item >> "type") in [1,2,4]) exitWith {_return = 1}; // weapon
        _base = [(configfile >> "CfgWeapons" >> _item),true] call BIS_fnc_returnParents; // get parent class of item
        if (("H_HelmetB" in _base) || ("Uniform_Base" in _base) || ("HelmetBase" in _base) || ("Vest_Camo_Base" in _base) || ("Vest_NoCamo_Base" in _base)) exitWith {_return = 3}; // clothing
        if (("ItemCore" in _base) || ("Binocular" in _base)) exitWith {_return = 2}; // item
    };
    if (isClass(configFile >> "CfgMagazines" >> _item)) exitWith {_return = 2}; // item
    if (isClass(configFile >> "CfgGlasses" >> _item)) exitWith {_return = 3}; // clothing
    if (isClass(configFile >> "CfgGlasses" >> _item)) exitWith {_return = 3}; // clothing
    if (isClass(configFile >> "CfgVehicles" >> _item)) exitWith { _return = 3}; // clothing
};

_return;