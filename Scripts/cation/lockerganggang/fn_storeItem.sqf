#define ctrlSelData(ctrl) (lbData[##ctrl,(lbCurSel ##ctrl)])
#include "..\..\..\script_macros.hpp"
/*
    File: fn_storeItem.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Stores things into locker    
*/
params[["_mode",0,[0]]];
if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed || husky_action_inUse) exitWith {closeDialog 0;};
if ((getNumber(missionConfigFile >> "Cation_Lockerganggang" >> "version")) > 4) then {
    if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {closeDialog 0;};
};
disableSerialization;
if (locker_in_use) exitWith { hint format [["NotSoFast"] call cat_Lockerganggang_fnc_getText];};
locker_in_use = true;

if ((lbCurSel 500612) isEqualTo -1) exitWith {hint format[["NoSelection"] call cat_Lockerganggang_fnc_getText]; [] call cat_Lockerganggang_fnc_refreshDialog;};
private _display = findDisplay 500012;
private _type = _display getVariable ["type",-1];
private _viewMode = _display getVariable ["mode",0];
if (_viewMode isEqualTo 2) exitWith {[] call cat_Lockerganggang_fnc_refreshDialog;};
private _item = ctrlSelData(500612);
private _ammoCount = -1;
if(_type isEqualTo 2) then {
    private _dataArray = _item splitString ",";
    _item = _dataArray select 0;
    _ammoCount = parseNumber (_dataArray select 1);
};
if (_item isEqualTo "leer") exitWith {[] call cat_Lockerganggang_fnc_refreshDialog;};
if (_item isEqualTo "") exitWith {[] call cat_Lockerganggang_fnc_refreshDialog;};
private _amount = -1;
private _trunkData = (group player getVariable "cat_Lockerganggang_trunk");
private _value = (lbValue[500612,(lbCurSel 500612)]);
private _exit = false;

if (_viewMode isEqualTo 1) then {
    if ((player distance cat_Lockerganggang_vehicle) > getNumber(missionConfigFile >> "Cation_Lockerganggang" >> "distanceVehicle")) then {
        hint format [["DistanceVehicle"] call cat_Lockerganggang_fnc_getText,getNumber(missionConfigFile >> "Cation_Lockerganggang" >> "distanceVehicle")];
        _exit = true;
    };
};
if (_exit) exitwith {[0] call cat_Lockerganggang_fnc_switchDisplayMode;};

if (_mode isEqualTo 0) then {
    _amount = ctrlText 500912;
    if (!([_amount] call cat_Lockerganggang_fnc_isNumber)) then { _exit = true; hint format[["WrongNumFormat"] call cat_Lockerganggang_fnc_getText];};
    _amount = parseNumber(_amount);
    if (_amount > _value) then { _exit = true; hint format[["NotEnough"] call cat_Lockerganggang_fnc_getText];};
    if (_amount > [_item,_type,0] call cat_Lockerganggang_fnc_canStore) then { _exit = true; hint format[["LockerFull"] call cat_Lockerganggang_fnc_getText];};    
    if (_amount < 1) then { _exit = true; hint format[["Under1"] call cat_Lockerganggang_fnc_getText];};
} else {
    _amount = [_item,_type,0] call cat_Lockerganggang_fnc_canStore;
    if (_amount > _value) then {
        _amount = _value;
    };
    if (_amount < 1) then { _exit = true; hint format[["LockerFull"] call cat_Lockerganggang_fnc_getText];};
};
if (_exit) exitWith {[] call cat_Lockerganggang_fnc_refreshDialog;};
private _index = [_item,(group player getVariable "cat_Lockerganggang_trunk"),3,_ammoCount] call cat_Lockerganggang_fnc_index;
if (_type isEqualTo 0) then {
    if (_viewMode isEqualTo 1) then {
        if ((cat_Lockerganggang_vehicle getVariable ["trunk_in_use_by",player]) != player) exitWith { hint localize "STR_MISC_VehInvUse"; [0] call cat_Lockerganggang_fnc_switchDisplayMode; };
        [_item,false,_type,_index,_amount,_ammoCount] call cat_Lockerganggang_fnc_handleItemVehicle;
        [_item,true,_type,_index,_amount,_ammoCount] call cat_Lockerganggang_fnc_handleItemLocker;
        [getPlayerUID player, "GangLocker lagern 1", format ["%1 - %2 hat %3 %4 %5 %6 %7 . Bargeld: %8 € Bankkonto: %9 € Coin: %10 ",profileName,getplayeruid player,_item,_type,_index,_amount,_ammoCount,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
    
    } else {
        if ([false,_item,_amount] call husky_fnc_handleInv) then {      
            [_item,true,_type,_index,_amount,_ammoCount] call cat_Lockerganggang_fnc_handleItemLocker;
            [getPlayerUID player, "GangLocker lagern 2", format ["%1 - %2 hat %3 %4 %5 %6 %7 . Bargeld: %8 € Bankkonto: %9 € Coin: %10 ",profileName,getplayeruid player,_item,_type,_index,_amount,_ammoCount,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
        } else {
            hint format[["CouldNotRemoveItemsToPutInVeh"] call cat_Lockerganggang_fnc_getText];
            [] call cat_Lockerganggang_fnc_refreshDialog;
        };
    };
} else {
    [_item,false,_amount,_ammoCount] call cat_Lockerganggang_fnc_handleItemPlayer;
    [_item,true,_type,_index,_amount,_ammoCount] call cat_Lockerganggang_fnc_handleItemLocker;
    [getPlayerUID player, "GangLocker lagern 3 ", format ["%1 - %2 hat %3 %4 %5 %6 %7 . Bargeld: %8 € Bankkonto: %9 € Coin: %10 ",profileName,getplayeruid player,_item,_type,_index,_amount,_ammoCount,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
    
};