#define ctrlSelData(ctrl) (lbData[##ctrl,(lbCurSel ##ctrl)])
#include "..\..\..\script_macros.hpp"
/*
    File: fn_takeItem.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Takes things from locker    
*/
params[["_mode",0,[0]]];
if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed || husky_action_inUse) exitWith {closeDialog 0;};
if ((getNumber(missionConfigFile >> "Cation_Lockergang" >> "version")) > 4) then {
    if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {closeDialog 0;};
};
disableSerialization;
if (locker_in_use) exitWith { hint format [["NotSoFast"] call cat_Lockergang_fnc_getText];};
locker_in_use = true; 

if ((lbCurSel 50051) isEqualTo -1) exitWith {hint format[["NoSelection"] call cat_Lockergang_fnc_getText]; [] call cat_Lockergang_fnc_refreshDialog;};
private _display = findDisplay 50001;
private _type = _display getVariable ["type",-1];
private _viewMode = _display getVariable ["mode",-1];
if (_viewMode isEqualTo 2) exitWith {
    [] call cat_Lockergang_fnc_vehicleSelected;
};
private _item = ctrlSelData(50051);
private _ammoCount = -1;
if(_type isEqualTo 2) then {
    private _dataArray = _item splitString ",";
    if (count _dataArray isEqualTo 2) then {
        _item = _dataArray select 0;
        _ammoCount = parseNumber (_dataArray select 1);
    };
};
if (_item isEqualTo "leer") exitWith {[] call cat_Lockergang_fnc_refreshDialog;};
if (_item isEqualTo "") exitWith {[] call cat_Lockergang_fnc_refreshDialog;};
private _amount = -1;
private _trunkData = (group player getVariable "cat_Lockergang_trunk");
private _index = [_item,(group player getVariable "cat_Lockergang_trunk"),3,_ammoCount] call cat_Lockergang_fnc_index;
if (_index isEqualTo -1) exitWith {[] call cat_Lockergang_fnc_refreshDialog;};
private _value = _trunkData select _index select 2;
private _exit = false;

private _storage = 1;
if (_viewMode isEqualTo 1) then {
    _storage = 2;
};
if (_mode isEqualTo 0) then {
    _amount = ctrlText 50081;
    if (!([_amount] call cat_Lockergang_fnc_isNumber)) then { _exit = true; hint format[["WrongNumFormat"] call cat_Lockergang_fnc_getText];};
    _amount = parseNumber(_amount);
    if (_amount > _value) then {_exit = true; hint format[["NotEnoughLocker"] call cat_Lockergang_fnc_getText]};
    if (_amount > [_item,_type,_storage] call cat_Lockergang_fnc_canStore) then {_exit = true; hint format[["InvFull"] call cat_Lockergang_fnc_getText]};
    if (_amount < 1) then { _exit = true; hint format[["Under1"] call cat_Lockergang_fnc_getText];};
} else {
    _amount = [_item,_type,_storage] call cat_Lockergang_fnc_canStore;
    if (_amount > _value) then {
        _amount = _value;
    };
    if (_amount < 1) then { _exit = true; hint format[["InvFull"] call cat_Lockergang_fnc_getText];};
};
if (_exit) exitWith {[] call cat_Lockergang_fnc_refreshDialog;};

if (_type isEqualTo 0) then {
    if (_viewMode isEqualTo 1) then {
        if ((cat_Lockergang_vehicle getVariable ["trunk_in_use_by",player]) != player) exitWith { hint localize "STR_MISC_VehInvUse"; [0] call cat_Lockergang_fnc_switchDisplayMode; };
        [_item,true,_type,_index,_amount,_ammoCount] call cat_Lockergang_fnc_handleItemVehicle;        
        [_item,false,_type,_index,_amount,_ammoCount] call cat_Lockergang_fnc_handleItemLocker;
        [getPlayerUID player, "Locker nehmen 1 Gang", format ["%1 - %2 hat %3 %4 %5 %6 %7 . Bargeld: %8 € Bankkonto: %9 € Coin: %10 ",profileName,getplayeruid player,_item,_type,_index,_amount,_ammoCount,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
    
    } else {
        if ([true,_item,_amount] call husky_fnc_handleInv) then {
            [_item,false,_type,_index,_amount,_ammoCount] call cat_Lockergang_fnc_handleItemLocker;
            [getPlayerUID player, "Locker nehmen 2 Gang", format ["%1 - %2 hat %3 %4 %5 %6 %7 . Bargeld: %8 € Bankkonto: %9 € Coin: %10 ",profileName,getplayeruid player,_item,_type,_index,_amount,_ammoCount,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
    
        } else {
            hint format[["InvFull"] call cat_Lockergang_fnc_getText];
            [] call cat_Lockergang_fnc_refreshDialog;
        };
    };
} else {
    [_item,true,_amount,_ammoCount] call cat_Lockergang_fnc_handleItemPlayer;
    [_item,false,_type,_index,_amount,_ammoCount] call cat_Lockergang_fnc_handleItemLocker;
    [getPlayerUID player, "Locker nehmen 3 Gang", format ["%1 - %2 hat %3 %4 %5 %6 %7 . Bargeld: %8 € Bankkonto: %9 € Coin: %10 ",profileName,getplayeruid player,_item,_type,_index,_amount,_ammoCount,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
    
};