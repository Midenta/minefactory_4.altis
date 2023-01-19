#include "..\..\script_macros.hpp"
/*
    File: fn_vehicleWeightCfg.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Master configuration for vehicle weight.
*/
private ["_className","_classNamehusky","_weight"];
_className = [_this,0,"",[""]] call BIS_fnc_param;
_classNamehusky = _className;
if (!isClass (missionConfigFile >> "huskyCfgVehicles" >> _classNamehusky)) then {
    _classNamehusky = "Default"; //Use Default class if it doesn't exist
    //diag_log format ["%1: huskyCfgVehicles class doesn't exist",_className];
};
_weight = M_CONFIG(getNumber,"huskyCfgVehicles",_classNamehusky,"vItemSpace");

if (isNil "_weight") then {_weight = -1;};
_weight;