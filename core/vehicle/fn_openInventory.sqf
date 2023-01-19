#include "..\..\script_macros.hpp"
/*
    File: fn_openInventory.sqf
    Author: Bryan "Tonic" Boardwine
 
    Description:
    Starts the initialization of vehicle virtual inventory menu.
 
	Thieves
 
	Minefactory.eu
 
	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
/*
params [
    ["_vehicle",objNull,[objNull]],
    ["_checkLag",false,[true]]
];
 
if (!_checkLag) exitWith {[_vehicle] remoteExecCall ["Ermen_fnc_checkLagVehInventory",2]};
 
if (dialog) exitWith {};
if (isNull _vehicle || !(_vehicle isKindOf "Car" || _vehicle isKindOf "Air" || _vehicle isKindOf "Ship" || _vehicle isKindOf "flugzeug" || _vehicle isKindOf "Land_Cargo20_white_F" || _vehicle isKindOf "Land_Cargo20_military_green_F" || _vehicle isKindOf "Box_IND_Grenades_F" || _vehicle isKindOf "B_supplyCrate_F" || _vehicle isKindOf "Land_PlasticCase_01_small_F" ||  _vehicle isKindOf "Box_NATO_AmmoVeh_F" || _vehicle isKindOf "Land_ShelvesWooden_blue_F" || _vehicle isKindOf "Land_Metal_wooden_rack_F" || _vehicle isKindOf "Land_PlasticCase_01_large_gray_F" || _vehicle isKindOf "Land_PlasticCase_01_medium_gray_F" || _vehicle isKindOf "Land_Cargo10_grey_F" || _vehicle isKindOf "Land_CargoBox_V1_F" || _vehicle isKindOf "Land_Cargo20_white_F" || _vehicle isKindOf "Land_Cargo20_red_F" || _vehicle isKindOf "Land_Cargo20_blue_F" || _vehicle isKindOf "Land_Cargo20_military_green_F" || _vehicle isKindOf "Land_Cargo20_yellow_F" || _vehicle isKindOf "Land_Cargo20_IDAP_F" || _vehicle isKindOf "CargoNet_01_box_F" )) exitWith {}; //Either a null or invalid vehicle type.
if !((_vehicle getVariable "trunk_in_use") isEqualType "") then {_vehicle setVariable ["trunk_in_use", "", true]};
if (((_vehicle getVariable ["trunk_in_use", ""]) != "") && {!([_vehicle getVariable ["trunk_in_use", ""]] call husky_fnc_isUIDActive)}) then {_vehicle setVariable ["trunk_in_use", "", true]};
if ((_vehicle getVariable ["trunk_in_use", ""]) == getPlayerUID player) then {_vehicle setVariable ["trunk_in_use", "", true]};
if ((_vehicle getVariable ["trunk_in_use", ""]) != "") exitWith {hint localize "STR_MISC_VehInvUse"};
_vehicle setVariable ["trunk_in_use", getPlayerUID player, true];
if (!createDialog "TrunkMenu") exitWith {hint localize "STR_MISC_DialogError";}; //Couldn't create the menu?
disableSerialization;
 
if (_vehicle isKindOf "Box_IND_Grenades_F" || _vehicle isKindOf "B_supplyCrate_F") then {
    ctrlSetText[3501,format [(localize "STR_MISC_HouseStorage")+ " - %1",getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName")]];
} else {
    ctrlSetText[3501,format [(localize "STR_MISC_VehStorage")+ " - %1",getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName")]];
};
 
private _veh_data = [_vehicle] call husky_fnc_vehicleWeight;
 
if (_veh_data select 0 isEqualTo -1) exitWith {closeDialog 0; _vehicle setVariable ["trunk_in_use",false,true]; hint localize "STR_MISC_NoStorageVeh";};
 
ctrlSetText[3504,format [(localize "STR_MISC_Weight")+ " %1/%2",_veh_data select 1,_veh_data select 0]];
[_vehicle] call husky_fnc_vehInventory;
husky_trunk_vehicle = _vehicle;
 
_vehicle spawn {
    for "_i" from 0 to 1 step 0 do {
        if !(_this getVariable ["trunk_in_use",objNull] isEqualTo getPlayerUID player) exitWith {closeDialog 0;hint "Stop bug abusing piece of shit!"};
        if (isNull findDisplay 3500) exitWith {};
        uiSleep 0.01;
    };
 
    _this setVariable ["trunk_in_use",false,true];
    if (_this isKindOf "Box_IND_Grenades_F" || _this isKindOf "B_supplyCrate_F") then {
 
        if (husky_HC_isActive) then {
            [_this] remoteExecCall ["HC_fnc_updateHouseTrunk",HC_husky];
        } else {
            [_this] remoteExecCall ["TON_fnc_updateHouseTrunk",2];
        };
    };
};
 
if (husky_SETTINGS(getNumber,"save_vehicle_virtualItems") isEqualTo 1) then {
    _vehicle spawn {
        waitUntil {isNull (findDisplay 3500)};
        _this setVariable ["trunk_in_use",false,true];
        if ((_this isKindOf "Car") || (_this isKindOf "Air") || (_this isKindOf "Ship") || (_this isKindOf "flugzeug" || (_this isKindOf "Land_Cargo20_white_F" || (_this isKindOf "Land_Cargo20_military_green_F" || (_this isKindOf "Land_PlasticCase_01_small_F" )) then {
            [] call SOCK_fnc_updateRequest;
 
            if (husky_HC_isActive) then {
                [_this,2] remoteExecCall ["HC_fnc_vehicleUpdate",HC_husky];
            } else {
                [_this,2] remoteExecCall ["TON_fnc_vehicleUpdate",2];
            };
        };
    };
};
*/
 
params [
    ["_vehicle",objNull,[objNull]],
    ["_checkLag",false,[true]]
];
 
if (!_checkLag) exitWith {[_vehicle] remoteExecCall ["Ermen_fnc_checkLagVehInventory",2]};
 
if (dialog) exitWith {};
if (isNull _vehicle || !(_vehicle isKindOf "Car" || _vehicle isKindOf "Tank" || _vehicle isKindOf "Air" || _vehicle isKindOf "Ship" || _vehicle isKindOf "Box_IND_Grenades_F" || _vehicle isKindOf "B_supplyCrate_F" ||  _vehicle isKindOf "Land_PlasticCase_01_large_CBRN_F" || _vehicle isKindOf "Land_PaperBox_closed_F" || _vehicle isKindOf "Land_MetalBarrel_F" || _vehicle isKindOf "HazmatBag_01_F" || _vehicle isKindOf "Land_WaterBarrel_F" || _vehicle isKindOf "Land_WaterTank_F" || _vehicle isKindOf "Land_PlasticCase_01_small_F" ||  _vehicle isKindOf "Box_NATO_AmmoVeh_F" || _vehicle isKindOf "Land_ShelvesWooden_blue_F" || _vehicle isKindOf "Land_Metal_wooden_rack_F" || _vehicle isKindOf "Land_PlasticCase_01_large_gray_F" || _vehicle isKindOf "Land_PlasticCase_01_medium_gray_F" || _vehicle isKindOf "Land_Cargo10_grey_F" || _vehicle isKindOf "Land_CargoBox_V1_F" || _vehicle isKindOf "Land_Cargo20_white_F" || _vehicle isKindOf "Land_Cargo20_red_F" || _vehicle isKindOf "Land_Cargo20_blue_F" || _vehicle isKindOf "Land_Cargo20_military_green_F" || _vehicle isKindOf "Land_Cargo20_yellow_F" || _vehicle isKindOf "Land_Cargo20_IDAP_F" || _vehicle isKindOf "CargoNet_01_box_F" || _vehicle isKindOf "B_Slingload_01_Fuel_F" || _vehicle isKindOf "Land_Pod_Heli_Transport_04_fuel_F" || _vehicle isKindOf "Land_Device_slingloadable_F" || _vehicle isKindOf "Land_Device_assembled_F" || _vehicle isKindOf "Land_PlasticCase_01_small_gray_F" )) exitWith {}; //Either a null or invalid vehicle type.
if ((_vehicle getVariable ["trunk_in_use",false])) exitWith { ["Der Kofferraum dieses Fahrzeuges wird bereits benutzt, nur eine Person kann auf ihn zugreifen.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
_vehicle setVariable ["trunk_in_use",true,true];
_vehicle setVariable ["trunk_in_use_by",player,true];
if (!createDialog "TrunkMenu") exitWith {["Erstellen des Dialogs gescheitert!", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;}; //Couldn't create the menu?
disableSerialization;
/*
if (_vehicle isKindOf "Box_IND_Grenades_F" || _vehicle isKindOf "B_supplyCrate_F") then {
    ctrlSetText[3501,format [(localize "STR_MISC_HouseStorage")+ " - %1",getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName")]];
} else {
    ctrlSetText[3501,format [(localize "STR_MISC_VehStorage")+ " - %1",getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName")]];
};
*/
if (_vehicle isKindOf "Box_IND_Grenades_F" || _vehicle isKindOf "B_supplyCrate_F" || _vehicle isKindOf "CargoNet_01_barrels_F" || _vehicle isKindOf "Box_East_Wps_Special_F" || _vehicle isKindOf "Box_East_AmmoVeh_F" || _vehicle isKindOf "O_CargoNet_01_ammo_F" || _vehicle isKindOf "C_IDAP_CargoNet_01_supplies_F" || _vehicle isKindOf "Land_MetalBarrel_F" || _vehicle isKindOf "HazmatBag_01_F"  || _vehicle isKindOf "Land_WaterBarrel_F" || _vehicle isKindOf "Land_WaterTank_F" /*|| _vehicle isKindOf "Land_PlasticCase_01_small_F"*/ ) then {
	ctrlSetText[3501,format [(localize "STR_MISC_HouseStorage")+ " - %1",getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName")]];
} else {
		if (_vehicle isKindOf "Land_PlasticCase_01_small_F") then {
		ctrlSetText[3501,format [(localize "STR_MISC_VehStorage")+ " - %1",(_vehicle getVariable ["BoxName",""])]];
	} else {
		ctrlSetText[3501,format [(localize "STR_MISC_VehStorage")+ " - %1",getText(configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "displayName")]];
	};
};
 
 
private _veh_data = [_vehicle] call husky_fnc_vehicleWeight;
 
if (_veh_data select 0 isEqualTo -1) exitWith {closeDialog 0; _vehicle setVariable ["trunk_in_use",false,true]; ["Dieses Fahrzeug kann keine virtuellen Gegenstände lagern.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
 
ctrlSetText[3504,format [(localize "STR_MISC_Weight")+ " %1/%2",_veh_data select 1,_veh_data select 0]];
[_vehicle] call husky_fnc_vehInventory;
husky_trunk_vehicle = _vehicle;
 
_vehicle spawn {
    for "_i" from 0 to 1 step 0 do {
        if !(_this getVariable ["trunk_in_use_by",objNull] isEqualTo player) exitWith {closeDialog 0; ["Der Kofferraum dieses Fahrzeuges wird bereits benutzt, nur eine Person kann auf ihn zugreifen.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification};
        if (isNull findDisplay 3500) exitWith {};
        uiSleep 0.01;
    };
};
 
_vehicle spawn {
    waitUntil {isNull (findDisplay 3500)};
    _this setVariable ["trunk_in_use",false,true];
    if (_this isKindOf "Box_IND_Grenades_F" || _this isKindOf "B_supplyCrate_F" || _this isKindOf "CargoNet_01_barrels_F" || _this isKindOf "Box_East_Wps_Special_F" || _this isKindOf "Box_East_AmmoVeh_F" || _this isKindOf "O_CargoNet_01_ammo_F" || _this isKindOf "C_IDAP_CargoNet_01_supplies_F" || _this isKindOf "Land_MetalBarrel_F" || _this isKindOf "HazmatBag_01_F" || _this isKindOf "Land_WaterBarrel_F" || _this isKindOf "Land_WaterTank_F" || _this isKindOf "Land_PlasticCase_01_small_F") then {
 
        if (husky_HC_isActive) then {
            [_this] remoteExecCall ["HC_fnc_updateHouseTrunk",HC_husky];
        } else {
            [_this] remoteExecCall ["TON_fnc_updateHouseTrunk",2];
        };
    };
};
 
if (husky_SETTINGS(getNumber,"save_vehicle_virtualItems") isEqualTo 1) then {
    _vehicle spawn {
        waitUntil {isNull (findDisplay 3500)};
        _this setVariable ["trunk_in_use",false,true];
        if ((_this isKindOf "Car") || (_this isKindOf "Tank") || (_this isKindOf "Air") || (_this isKindOf "Ship") || (_this isKindOf "Box_NATO_AmmoVeh_F") || (_this isKindOf "Land_PlasticCase_01_small_F") || (_this isKindOf "Land_Cargo20_white_F") || (_this isKindOf "Land_Cargo20_red_F") || (_this isKindOf "Land_Cargo20_blue_F") || (_this isKindOf "Land_Cargo20_military_green_F") || (_this isKindOf "Land_Cargo20_yellow_F") || (_this isKindOf "Land_Cargo20_IDAP_F") || (_this isKindOf "B_Slingload_01_Fuel_F")  || (_this isKindOf "Land_Pod_Heli_Transport_04_fuel_F")  || (_this isKindOf "Land_Device_slingloadable_F")  || (_this isKindOf "Land_Device_assembled_F")  || (_this isKindOf "Land_PlasticCase_01_small_gray_F") ) then {
            [] call SOCK_fnc_updateRequest;
 
            if (husky_HC_isActive) then {
                [_this,2] remoteExecCall ["HC_fnc_vehicleUpdate",HC_husky];
            } else {
                [_this,2] remoteExecCall ["TON_fnc_vehicleUpdate",2];
            };
        };
    };
};