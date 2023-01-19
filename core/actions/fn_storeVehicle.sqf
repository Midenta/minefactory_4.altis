#include "..\..\script_macros.hpp"
/*
    File: fn_storeVehicle.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Stores the vehicle in the garage.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_nearVehicles","_vehicle"];
if !(isNull objectParent player) then {
    _vehicle = vehicle player;
} else {
    _nearVehicles = nearestObjects[getPos (_this select 0),["Car","Tank","Air","Ship","Box_NATO_AmmoVeh_F","Land_Cargo20_white_F","Land_Cargo20_red_F","Land_Cargo20_blue_F","Land_Cargo20_military_green_F","Land_Cargo20_yellow_F","Land_Cargo20_IDAP_F","B_Slingload_01_Fuel_F","Land_Pod_Heli_Transport_04_fuel_F","Land_Device_slingloadable_F","Land_Device_assembled_F"],30]; //Fetch vehicles within 30m.
    if (count _nearVehicles > 0) then {
        {
            if (!isNil "_vehicle") exitWith {}; //Kill the loop.
            _vehData = _x getVariable ["vehicle_info_owners",[]];
            if (count _vehData  > 0) then {
                _vehOwner = ((_vehData select 0) select 0);
                if ((getPlayerUID player) == _vehOwner) exitWith {
                    _vehicle = _x;
                };
            };
        } forEach _nearVehicles;
    };
};

_gFund = GANG_FUNDS;

if (isNil "_vehicle") exitWith {hint localize "STR_Garage_NoNPC"};
if (isNull _vehicle) exitWith {};
if (!alive _vehicle) exitWith {hint localize "STR_Garage_SQLError_Destroyed"};

if (husky_HC_isActive) then {
    [_vehicle,false,(_this select 1),false] remoteExec ["HC_fnc_vehicleStore",HC_husky,false];
} else {
    [_vehicle,false,(_this select 1),false] remoteExec ["TON_fnc_vehicleStore",RSERV,false];
};
/*
_storetext = localize "STR_Garage_Store_Success";

if (husky_HC_isActive) then {
    [_vehicle,false,(_this select 1),_storetext,false] remoteExec ["HC_fnc_vehicleStore",HC_husky,false];
} else {
    [_vehicle,false,(_this select 1),_storetext,false] remoteExec ["TON_fnc_vehicleStore",RSERV,false];
};
*/

[getPlayerUID player, "Fahrzeug Einparken", format ["%1 - %2 hat sein %3 %4 eingeparkt. Bargeld %5 Bank %6 Gangkonto: %7",profileName,(getPlayerUID player),_vehicle,_nearVehicles,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[_gFund] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];


hint localize "STR_Garage_Store_Server";
husky_garage_store = true;
