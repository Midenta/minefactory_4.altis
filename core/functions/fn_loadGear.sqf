#include "..\..\script_macros.hpp"
/*
    File: fn_loadGear.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Loads saved civilian gear, this is limited for a reason and that's balance.
*/
private ["_itemArray","_handle"];
_itemArray = husky_gear;
waitUntil {!(isNull (findDisplay 46))};

_handle = [] spawn husky_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

if (count _itemArray isEqualTo 0) exitWith {
    switch (playerSide) do {
        case west: {
            [] call husky_fnc_copLoadout;
        };

        case civilian: {
            [] call husky_fnc_civLoadout;
        };

        case independent: {
            [] call husky_fnc_medicLoadout;
        };
    };
};

_itemArray params [
    "_uniform",
    "_vest",
    "_backpack",
    "_goggles",
    "_headgear",
    ["_items",[]],
    "_prim",
    "_seco",
    ["_uItems",[]],
    ["_uMags",[]],
    ["_bItems",[]],
    ["_bMags",[]],
    ["_vItems",[]],
    ["_vMags",[]],
    ["_pItems",[]],
    ["_hItems",[]],
    ["_yItems",[]]
];

if (!(_goggles isEqualTo "")) then {_handle = [_goggles,true,false,false,false] spawn husky_fnc_handleItem; waitUntil {scriptDone _handle};};
if (!(_headgear isEqualTo "")) then {_handle = [_headgear,true,false,false,false] spawn husky_fnc_handleItem; waitUntil {scriptDone _handle};};
if (!(_uniform isEqualTo "")) then {_handle = [_uniform,true,false,false,false] spawn husky_fnc_handleItem; waitUntil {scriptDone _handle};};
if (!(_vest isEqualTo "")) then {_handle = [_vest,true,false,false,false] spawn husky_fnc_handleItem; waitUntil {scriptDone _handle};};
if (!(_backpack isEqualTo "")) then {_handle = [_backpack,true,false,false,false] spawn husky_fnc_handleItem; waitUntil {scriptDone _handle};};

/* Hotfix for losing virtual items on login */
if (!isNil {(_this select 0)}) then {
    husky_maxWeight = husky_maxWeight + (round(FETCH_CONFIG2(getNumber,"CfgVehicles",(backpack player),"maximumload") / 4));
};

{_handle = [_x,true,false,false,false] spawn husky_fnc_handleItem; waitUntil {scriptDone _handle};} forEach _items;

{player addItemToUniform _x;} forEach (_uItems);
{(uniformContainer player) addItemCargoGlobal [_x,1];} forEach (_uMags);
{player addItemToVest _x;} forEach (_vItems);
{(vestContainer player) addItemCargoGlobal [_x,1];} forEach (_vMags);
{player addItemToBackpack _x;} forEach (_bItems);
{(backpackContainer player) addItemCargoGlobal [_x,1];} forEach (_bMags);
husky_maxWeight = 100;

{
    [true,(_x select 0),(_x select 1)] call husky_fnc_handleInv;
} forEach (_yItems);

husky_maxWeight = 24;
//Primary & Secondary (Handgun) should be added last as magazines do not automatically load into the gun.
if (!(_prim isEqualTo "")) then {_handle = [_prim,true,false,false,false] spawn husky_fnc_handleItem; waitUntil {scriptDone _handle};};
if (!(_seco isEqualTo "")) then {_handle = [_seco,true,false,false,false] spawn husky_fnc_handleItem; waitUntil {scriptDone _handle};};

{
    if (!(_x isEqualTo "")) then {
        player addPrimaryWeaponItem _x;
    };
} forEach (_pItems);
{
    if (!(_x isEqualTo "")) then {
        player addHandgunItem _x;
    };
} forEach (_hItems);

[player, uniform player] call husky_fnc_playerSkins;

//[getPlayerUID player, "load Gear", format ["%1 - %2 hat Gear %3",profileName,(getPlayerUID player),_itemArray]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

