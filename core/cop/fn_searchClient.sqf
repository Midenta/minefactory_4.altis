#include "..\..\script_macros.hpp"
/*
    File: fn_searchClient.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Searches the player and he returns information back to the player.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_inv","_val","_var","_robber"];
params [
    ["_cop",objNull,[objNull]]
];
if (isNull _cop) exitWith {};

_inv = [];
_robber = false;

//Illegal items
{
    _var = configName(_x);
    _val = ITEM_VALUE(_var);
    if (_val > 0) then {
        _inv pushBack [_var,_val];
        [false,_var,_val] call husky_fnc_handleInv;
    };
} forEach ("getNumber(_x >> 'illegal') isEqualTo 1" configClasses (missionConfigFile >> "VirtualItems"));

if (!husky_use_atm) then  {
    c126 = 0;
    _robber = true;
};

[player,_inv,_robber] remoteExec ["husky_fnc_copSearch",_cop];
/*
private ["_inv","_val","_var","_robber"];
params [
    ["_cop",objNull,[objNull]],
    ["_arr",""]
];
if (isNull _cop) exitWith {};
if (_arr isEqualTo "ALL") exitWith {
    {
        _var = configName(_x);
        _val = ITEM_VALUE(_var);
        if (_val > 0) then {
            [false,_var,_val] call husky_fnc_handleInv;
        };
    } forEach ("getNumber(_x >> 'illegal') isEqualTo 1" configClasses (missionConfigFile >> "VirtualItems"));
};
if (_arr isEqualTo "") exitWith {
    _inv = [];
    {
        _var = configName(_x);
        _val = ITEM_VALUE(_var);
        if (_val > 0) then {
            _inv pushBack [_var,_val];
        };
    } forEach ("getNumber(_x >> 'illegal') isEqualTo 1" configClasses (missionConfigFile >> "VirtualItems"));
    [player,1,_inv] remoteExec ["husky_fnc_searchAction",_cop];
};

{
    _var = configName(_x);
    _val = ITEM_VALUE(_var);
    if (_var isEqualTo _arr) exitWith {
        if (_val > 0) then {
            [false,_var,_val] call husky_fnc_handleInv;
        };
    };
} forEach ("getNumber(_x >> 'illegal') isEqualTo 1" configClasses (missionConfigFile >> "VirtualItems"));
*/