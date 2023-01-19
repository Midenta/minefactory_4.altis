#include "..\..\script_macros.hpp"
/*
    File: fn_colorVehicle.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Reskins the vehicle.
*/
params [
    ["_vehicle",objNull,[objNull]],
    ["_index",-1,[0]]
];

private _className = typeOf _vehicle;

if (isNull _vehicle || {!alive _vehicle} || {_index isEqualTo -1}) exitWith {};
//Does the vehicle already have random styles? Halt till it's set.

if (local _vehicle) then {
    private _colorIndex = 1;
    if (_className isEqualTo "C_Offroad_01_F") then {_colorIndex = 3};
    _vehicle setVariable ["color",_colorIndex,true];
};

if (!isClass (missionConfigFile >> "huskyCfgVehicles" >> _className)) then {
    _className = "Default"; //Use Default class if it doesn't exist
};

private _textures = M_CONFIG(getArray,"huskyCfgVehicles",_className,"textures");
if (count _textures <= _index) exitWith {};

private _texturePaths =  (_textures select _index) param [2,[]];

_vehicle setVariable ["husky_VEH_color",_index,true];

{_vehicle setObjectTextureGlobal [_forEachIndex,_x]} forEach _texturePaths;

/*
private ["_textures","_className","_classNamehusky"];
params [
    ["_vehicle",objNull,[objNull]],
    ["_index",-1,[0]]
];

_className = typeOf _vehicle;
_classNamehusky = _className;

if (isNull _vehicle || !alive _vehicle || _index isEqualTo -1) exitWith {};
//Does the vehicle already have random styles? Halt till it's set.

if (local _vehicle) then {
    switch _className do {
        case "C_Offroad_01_F": {[_vehicle,"color",3,true] remoteExecCall ["TON_fnc_setObjVar",RSERV];};
        case "C_Hatchback_01_F": {[_vehicle,"color",1,true] remoteExecCall ["TON_fnc_setObjVar",RSERV];};
        case "C_Hatchback_01_sport_F": {[_vehicle,"color",1,true] remoteExecCall ["TON_fnc_setObjVar",RSERV];};
        case "C_SUV_01_F": {[_vehicle,"color",1,true] remoteExecCall ["TON_fnc_setObjVar",RSERV];};
        case "C_Van_01_box_F": {[_vehicle,"color",1,true] remoteExecCall ["TON_fnc_setObjVar",RSERV];};
        case "C_Van_01_transport_F": {[_vehicle,"color",1,true] remoteExecCall ["TON_fnc_setObjVar",RSERV];};
    };
};

if (!isClass (missionConfigFile >> "huskyCfgVehicles" >> _classNamehusky)) then {
    _classNamehusky = "Default"; //Use Default class if it doesn't exist
    //diag_log format ["%1: huskyCfgVehicles class doesn't exist",_className];
};

_textures = ((M_CONFIG(getArray,"huskyCfgVehicles",_classNamehusky,"textures") select _index) select 2);
if (isNil "_textures" || {count _textures isEqualTo 0}) exitWith {};

_vehicle setVariable ["husky_VEH_color",_index,true];

//{_vehicle setObjectTextureGlobal [_forEachIndex,_x];} forEach _textures;
*/
