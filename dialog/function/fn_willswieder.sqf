#include "..\..\script_macros.hpp"
/*
 File: fn_willswieder.sqf
 Author: Bryan "Tonic" Boardwine
 Description:
 Yeah... Gets the vehicle from the garage.
*/
private ["_vehicle","_vehiclehusky","_vid","_pid","_unit","_price","_price","_storageFee","_purchasePrice"];

disableSerialization;
if ((lbCurSel 28020) isEqualTo -1) exitWith {["Du hast nichts ausgewählt.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
_vehicle = lbData[28020,(lbCurSel 28020)];
_vehicle = (call compile format ["%1",_vehicle]) select 0;
_vehiclehusky = _vehicle;
_vid = lbValue[28020,(lbCurSel 28020)];
_pid = getPlayerUID player;
_unit = player;
_spawntext = localize "STR_Garage_spawn_Success";
if (isNil "_vehicle") exitWith {hint localize "STR_Garage_Selection_Error"};
if (!isClass (missionConfigFile >> "huskyCfgVehicles" >> _vehiclehusky)) then {
	_vehiclehusky = "Default"; //Use Default class if it doesn't exist
	//diag_log format ["%1: huskyCfgVehicles class doesn't exist",_vehicle];
};

_price = M_CONFIG(getNumber,"huskyCfgVehicles",_vehiclehusky,"price");
_storageFee = husky_SETTINGS(getNumber,"vehicle_impound_fee_multiplier");
_price = _price * _storageFee;
if (!(_price isEqualType 0) || _price < 1) then {_price = 500;};
if (b126 < _price) exitWith {hint format [(localize "STR_Garage_CashError"),[_price] call husky_fnc_numberText];};
if (husky_garage_sp isEqualType []) then {
	if (husky_HC_isActive) then {
		[_vid,_pid,(husky_garage_sp select 0),_unit,_price,(husky_garage_sp select 1),_spawntext] remoteExec ["HC_fnc_spawnVehicle",HC_husky];
	} else {
		[_vid,_pid,(husky_garage_sp select 0),_unit,_price,(husky_garage_sp select 1),_spawntext] remoteExec ["TON_fnc_spawnVehicle",RSERV];
	};
} else {
	if (husky_garage_sp in ["lol"]) then {
		if (husky_HC_isActive) then {
			[_vid,_pid,husky_garage_sp,_unit,_price,0,_spawntext] remoteExec ["HC_fnc_spawnVehicle",HC_husky];
		} else {
			[_vid,_pid,husky_garage_sp,_unit,_price,0,_spawntext] remoteExec ["TON_fnc_spawnVehicle",RSERV];
		};
	} else {
		if (husky_HC_isActive) then {
			[_vid,_pid,(getMarkerPos husky_garage_sp),_unit,_price,markerDir husky_garage_sp,_spawntext] remoteExec ["HC_fnc_spawnVehicle",HC_husky];
		} else {
			[_vid,_pid,(getMarkerPos husky_garage_sp),_unit,_price,markerDir husky_garage_sp,_spawntext] remoteExec ["TON_fnc_spawnVehicle",RSERV];
		};
	};
};

//["Fahrzeug wird bereitgestellt, bitte warten...", "Information"] spawn husky_fnc_createNotification;
hint localize "STR_Garage_SpawningVeh";
b126 = b126 - _price;
[1] call SOCK_fnc_updatePartial;
closeDialog 0;