/*#include "..\..\script_macros.hpp"
/*
    File: fn_fuelSupply.sqf
    Author: Ulrich "Zero" Werren

    Description:
    Fuel Tank Job, Fill Gas Station with Fuel.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

private ["_vehicle","_fuelSpace","_fuelState","_fuelFeedState","_fuelLevel","_distance","_shortest","_random","_another","_ui","_progress","_pgText","_win","_price","_pricem"];
_vehicle = [_this,0,objNull,[objNull]] call BIS_fnc_param;
if (isNull _vehicle) exitWith {};
if (!isNil {_vehicle getVariable "fuelTankWork"}) exitWith {titleText[localize "STR_FuelTank_InUse","PLAIN"];};
closeDialog 0;

husky_action_inUse = true;

if (isNil {_vehicle getVariable "fuelTank"}) then{
    _fuelSpace = getNumber(missionConfigFile >> "huskyCfgVehicles" >> (typeOf _vehicle) >> "vFuelSpace");
    _fuelState = 0;
    _vehicle setVariable ["fuelTank",[_fuelSpace,_fuelState],true];
}else{
    _fuelSpace = (_vehicle getVariable "fuelTank") select 0;
    _fuelState = (_vehicle getVariable "fuelTank") select 1;
};

_another = false;
{
    if (!isNil {_x getVariable "fuelTankWork"}) exitWith {_another};
} forEach (nearestObjects [_vehicle, ["C_Van_01_fuel_F","I_Truck_02_fuel_F","B_Truck_01_fuel_F","B_T_Truck_01_fuel_F","O_Truck_02_fuel_F","O_Truck_03_fuel_F","O_Heli_Transport_04_fuel_F"], 30]);

if (_another)exitWith{titleText[localize "STR_FuelTank_AnotherInUse","PLAIN"];husky_action_inUse = false;};

if (_fuelState <= 0) exitWith {
    titleText[localize "STR_FuelTank_Empty","PLAIN"];
    husky_action_inUse = false;
};


_fuelFeedState = 0;
_random = floor((random 25000) + 15000);

{
    if (isNil {_x getVariable "fuelTank"}) then{
        _x setVariable ["fuelTank",[_random,time],true];
        _fuelFeedState = _random;
    }else{
        _fuelFeedState = (_x getVariable "fuelTank") select 0;
        if (_fuelFeedState <= 0) then {
            if (time >= ((_x getVariable "fuelTank") select 1)) then {
                _x setVariable ["fuelTank",[_random,time],true];
                _fuelFeedState = _random;
            };
        };
    };
} forEach (nearestObjects [_vehicle, ["Land_fs_feed_F","Land_FuelStation_01_pump_F","Land_FuelStation_02_pump_F","Land_FuelStation_03_pump_F","Land_FuelStation_Feed_F"], 30]);

if (_fuelFeedState <= 0) exitWith {titleText [localize "STR_FuelTank_FeedFull","PLAIN"]; husky_action_inUse = false;};

_shortest = 100000;
{
    _distance = _vehicle distance (getMarkerPos _x);
    if (_distance < _shortest) then { _shortest = _distance};
//} forEach ["tankstelle_1","tankstelle_2","marker_31","marker_32","marker_41"];
} forEach ["verarbeitung_26"];

if (_distance < 1000) exitWith {titleText [localize "STR_FuelTank_PipeLine","PLAIN"]; husky_action_inUse = false;};

_pricem = getNumber(missionConfigFile >> "husky_SETTINGS" >> "fuelTank_winMultiplier");
_price = floor((((floor(_shortest / 100) * 100) / 1337) * _pricem) * 100) / 100;
_win = 0;

_vehicle setVariable ["fuelTankWork",true,true];
_vehicle remoteExec ["husky_fnc_soundDevice",-2];
husky_action_inUse = false;

disableSerialization;
"progressBar" cutRsc ["husky_progress","PLAIN"];
_ui = uiNamespace getVariable "husky_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format ["Tank  %1 Ltr / %2 Ltr",_fuelState,_fuelSpace];
_fuelLevel = (1 / _fuelSpace) * _fuelState;
_progress progressSetPosition _fuelLevel;

waitUntil {
    if (!alive _vehicle || isNull _vehicle) exitWith {true};
    if (isEngineOn _vehicle) exitWith {titleText[localize "STR_FuelTank_Stopped","PLAIN"]; true};
    if (isNil {_vehicle getVariable "fuelTankWork"}) exitWith {titleText[localize "STR_FuelTank_Stopped","PLAIN"]; true};
    if (player distance _vehicle > 20) exitWith {titleText[localize "STR_FuelTank_Stopped","PLAIN"]; true};

    _fuelState = _fuelState - 10;
    _fuelFeedState = _fuelFeedState - 10;

    _win = _win + (_price * 100);
    _vehicle setVariable ["fuelTank",[_fuelSpace,_fuelState],true];

    _fuelLevel = (1 / _fuelSpace) * _fuelState;
    _progress progressSetPosition _fuelLevel;
    _pgText ctrlSetText format ["Tank  %1 Ltr / %2 Ltr  ( %3 Euro/ Ltr )",_fuelState,_fuelSpace,_price];

    if (_fuelState isEqualTo 0 || _fuelFeedState <= 0) exitWith {true};

    sleep 1;
    false
};


{
    if (_fuelFeedState <= 0) then{
        _x setVariable ["fuelTank",[0,(time + 600)],true];
    }else{
        _x setVariable ["fuelTank",[_fuelFeedState,time],true];
    };
} forEach (nearestObjects [_vehicle, ["Land_fs_feed_F","Land_FuelStation_01_pump_F","Land_FuelStation_02_pump_F","Land_FuelStation_03_pump_F","Land_FuelStation_Feed_F"], 30]);

if (_fuelFeedState <= 0) then {titleText [localize "STR_FuelTank_FeedFull","PLAIN"]};
if (_fuelState <= 0) then {titleText [localize "STR_FuelTank_Empty","PLAIN"]};
sleep 2;

c126 = c126 + _win;
[0] call SOCK_fnc_updatePartial;

titleText [format [localize "STR_FuelTank_Money", _win], "PLAIN"];
"progressBar" cutText ["","PLAIN"];
_vehicle setVariable ["fuelTankWork",nil,true];

