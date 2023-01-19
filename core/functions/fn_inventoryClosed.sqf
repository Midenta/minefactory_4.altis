#include "..\..\script_macros.hpp"
/*
    File: fn_inventoryClosed.sqf
    Author: Bryan "Tonic" Boardwine
    Modified : NiiRoZz

    Description:
    1 : Used for syncing house container data but when the inventory menu
    is closed a sync request is sent off to the server.
    2 : Used for syncing vehicle inventory when save vehicle gear are activated
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private "_container";
_container = param [1,objNull,[objNull]];
if (isNull _container) exitWith {}; //MEH
if (isNull _kammer) exitWith {}; //MEH

if ((typeOf _container) in ["Box_IND_Grenades_F","B_supplyCrate_F", "CargoNet_01_barrels_F", "Land_WaterTank_F","Land_MetalBarrel_F","HazmatBag_01_F","Land_PlasticCase_01_large_CBRN_F", "Box_East_Wps_Special_F", "Box_East_AmmoVeh_F", "O_CargoNet_01_ammo_F", "C_IDAP_CargoNet_01_supplies_F"]) exitWith {
    if (husky_HC_isActive) then {
        [_container] remoteExecCall ["HC_fnc_updateHouseContainers",HC_husky];
    } else {
        [_container] remoteExecCall ["TON_fnc_updateHouseContainers",RSERV];
    };
};

if (husky_SETTINGS(getNumber,"save_vehicle_inventory") isEqualTo 1) then {
    if ((_container isKindOf "Car") || (_container isKindOf "Tank") || (_container isKindOf "Air") || (_container isKindOf "Ship") || (_container isKindOf "flugzeug") || (_container isKindOf "Box_NATO_AmmoVeh_F") || (_container isKindOf "Land_Cargo20_white_F") || (_container isKindOf "Land_Cargo20_red_F") || (_container isKindOf "Land_Cargo20_blue_F") || (_container isKindOf "Land_Cargo20_military_green_F") || (_container isKindOf "Land_Cargo20_yellow_F") || (_container isKindOf "Land_Cargo20_IDAP_F") || (_container isKindOf "B_Slingload_01_Fuel_F") || (_container isKindOf "Land_Pod_Heli_Transport_04_fuel_F") || (_container isKindOf "Land_Device_slingloadable_F") || (_container isKindOf "Land_Device_assembled_F") || (_container isKindOf "Land_PlasticCase_01_small_gray_F")) then {
        if (husky_HC_isActive) then {
            [_container,1] remoteExecCall ["HC_fnc_vehicleUpdate",HC_husky];
        } else {
            [_container,1] remoteExecCall ["TON_fnc_vehicleUpdate",RSERV];
        };
    };
};

//Asservatenkammer
if((typeOf _container) in ["CargoNet_01_box_F"]) exitWith {
	[_container] remoteExec ["TON_fnc_updateKammer",2];
};

[] call SOCK_fnc_updateRequest;