#include "..\..\script_macros.hpp"
/*
    File: fn_sellHouse.sqf
    Author: Bryan "Tonic" Boardwine
    Modified : NiiRoZz

    Description:
    Sells the house and delete all container near house.
*/
private ["_house","_uid","_action","_houseCfg"];

if (dialog) then {closeDialog 0};

_house = param [0,objNull,[objNull]];
_uid = getPlayerUID player;

if (isNull _house) exitWith {};
if (!(_house isKindOf "House_F")) exitWith {};
if (isNil {_house getVariable "house_owner"}) exitWith {hint localize "STR_House_noOwner";};
closeDialog 0;

_houseCfg = [(typeOf _house)] call husky_fnc_houseConfig;
if (count _houseCfg isEqualTo 0) exitWith {};

_action = [
    format [localize "STR_House_SellHouseMSG",
    (round((_houseCfg select 0)/2)) call husky_fnc_numberText,
    (_houseCfg select 1)],localize "STR_pInAct_SellHouse",localize "STR_Global_Sell",localize "STR_Global_Cancel"
] call BIS_fnc_guiMessage;

if (_action) then {
    closeDialog 0;
	if (gettingBought > 1) exitWith { hint localize "STR_House_CoolDown"; };

    _house setVariable ["house_sold",true,true];

	_id = _house getVariable ["house_id",-1];
	_group = grpNull;
	_bool = getNumber (missionConfigFile >> "gang_config" >> "remove_hq_upgrades") isEquaLTo 1;
	{
		if ((_x getVariable ["gang_hq_id",-1]) isEqualTo _id) exitWith {
			_x setVariable ["gang_hq_id", -1, true];
			_x setVariable ["gang_hq", objNull,true];
			_x setVariable ["gang_garage_info", [], true];
			if (_bool) then {
				_x setVariable ["gang_hq_upgrades", [], true];
			};
			_group = _x;
		};
	} forEach allGroups;

    if (husky_HC_isActive) then {
        [_house] remoteExecCall ["HC_fnc_sellHouse",HC_husky];
		if (!(isNull _group)) then {
			[13, _group, true] remoteExecCall ["hc_fnc_gang_update",HC_husky];
		} else {
			[_id,_bool] remoteExecCall ["hc_fnc_gang_hq_recursive",HC_husky];
		};
    } else {
        [_house] remoteExecCall ["TON_fnc_sellHouse",RSERV];
		if (!(isNull _group)) then {
			[13, _group, true] remoteExecCall ["ton_fnc_gang_update",2];
		} else {
			[_id,_bool] remoteExecCall ["ton_fnc_gang_hq_recursive",2];
		};
    };

    _house setVariable ["locked",false,true];
    deleteMarkerLocal format ["house_%1",_house getVariable "uid"];
    _house setVariable ["uid",nil,true];

    b126 = b126 + (round((_houseCfg select 0)/2));
    [1] call SOCK_fnc_updatePartial;
    _index = husky_vehicles find _house;

	[getPlayerUID player, "soldHouse", format ["%1 - %2 hat sich ein Haus für %3 � verkauft. Bankkonto: %4 �",profileName,(getPlayerUID player),(round((_houseCfg select 0)/2)),[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

    if (husky_SETTINGS(getNumber,"player_advancedLog") isEqualTo 1) then {
        if (husky_SETTINGS(getNumber,"battlEye_friendlyLogging") isEqualTo 1) then {
            advanced_log = format [localize "STR_DL_AL_soldHouse_BEF",(round((_houseCfg select 0)/2)),[b126] call husky_fnc_numberText];
        } else {
            advanced_log = format [localize "STR_DL_AL_soldHouse",profileName,(getPlayerUID player),(round((_houseCfg select 0)/2)),[b126] call husky_fnc_numberText];
            };
        publicVariableServer "advanced_log";
    };

    if !(_index isEqualTo -1) then {
        husky_vehicles deleteAt _index;
    };

    _index = [str(getPosATL _house),husky_houses] call TON_fnc_index;
    if !(_index isEqualTo -1) then {
        husky_houses deleteAt _index;
    };
    _numOfDoors = FETCH_CONFIG2(getNumber,"CfgVehicles",(typeOf _house), "numberOfDoors");
    for "_i" from 1 to _numOfDoors do {
        _house setVariable [format ["bis_disabled_Door_%1",_i],0,true];
    };
    _containers = _house getVariable ["containers",[]];
    if (count _containers > 0) then {
        {
            _x setVariable ["Trunk",nil,true];

            if (husky_HC_isActive) then {
                [_x] remoteExecCall ["HC_fnc_sellHouseContainer",HC_husky];
            } else {
                [_x] remoteExecCall ["TON_fnc_sellHouseContainer",RSERV];
            };

        } forEach _containers;
    };
    _house setVariable ["containers",nil,true];
};
