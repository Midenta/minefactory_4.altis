#include "..\..\script_macros.hpp"
/*
    File: fn_impoundAction.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Impounds the vehicle
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

    Notice: 
    This is Old Stuff _vehicle = param [0,objNull,[objNull]]; | private ["_vehicle","_type","_time","_value","_vehicleData","_upp","_ui","_progress","_pgText","_cP","_filters","_impoundValue","_price","_impoundMultiplier"];
*/
params [
    ["_vehicle",objNull,[objNull]]
];
private _filters = ["Car","Tank","Air","Ship","Box_NATO_AmmoVeh_F","Land_Cargo20_white_F","Land_Cargo20_red_F","Land_Cargo20_blue_F","Land_Cargo20_military_green_F","Land_Cargo20_yellow_F","Land_Cargo20_IDAP_F","B_Slingload_01_Fuel_F","Land_Pod_Heli_Transport_04_fuel_F","Land_Device_slingloadable_F","Land_Device_assembled_F"];
if (!((KINDOF_ARRAY(_vehicle,_filters)))) exitWith {};
if (player distance cursorObject > 10) exitWith {};
if (_vehicle getVariable "NPC") exitWith {["Dieses Fahrzeug ist NPC-geschützt.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
private _vehicleData = _vehicle getVariable ["vehicle_info_owners",[]];
if (_vehicleData isEqualTo 0) exitWith {deleteVehicle _vehicle}; //Bad vehicle.
private _vehicleName = FETCH_CONFIG2(getText,"CfgVehicles",(typeOf _vehicle),"displayName");
private _price = M_CONFIG(getNumber,"huskyCfgVehicles",(typeOf _vehicle),"price");
[0,"STR_NOTF_BeingImpounded",true,[((_vehicleData select 0) select 1),_vehicleName]] remoteExecCall ["husky_fnc_broadcast",RCLIENT];
husky_action_inUse = true;

private _upp = localize "STR_NOTF_Impounding";
//Setup our progress bar.
disableSerialization;
"progressBar" cutRsc ["husky_progress","PLAIN"];
private _ui = uiNamespace getVariable "husky_progress";
private _progress = _ui displayCtrl 38201;
private _pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format ["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
private _cP = 0.01;

for "_i" from 0 to 1 step 0 do {
    uiSleep 0.09;
    _cP = _cP + 0.01;
    _progress progressSetPosition _cP;
    _pgText ctrlSetText format ["%3 (%1%2)...",round(_cP * 100),"%",_upp];
    if (_cP >= 1) exitWith {};
    if (player distance _vehicle > 10) exitWith {};
    if (!alive player) exitWith {};
};

"progressBar" cutText ["","PLAIN"];

if (player distance _vehicle > 10) exitWith {hint localize "STR_NOTF_ImpoundingCancelled"; husky_action_inUse = false;};
if (!alive player) exitWith {husky_action_inUse = false;};

if (count crew _vehicle isEqualTo 0) then {
    if (!(KINDOF_ARRAY(_vehicle,_filters))) exitWith {husky_action_inUse = false;};
    private _type = FETCH_CONFIG2(getText,"CfgVehicles",(typeOf _vehicle),"displayName");

    husky_impound_inuse = true;

    [_vehicle,true,player,false] remoteExec ["TON_fnc_vehicleImpound",2,false];

    waitUntil {!husky_impound_inuse};
    if (playerSide in [west, independent]) then {
        private _impoundMultiplier = husky_SETTINGS(getNumber,"vehicle_cop_impound_multiplier");
        private _value = _price * _impoundMultiplier;
        [0,"STR_NOTF_HasImpounded",true,[profileName,((_vehicleData select 0) select 1),_vehicleName]] remoteExecCall ["husky_fnc_broadcast",RCLIENT];
        if (_vehicle in husky_vehicles) then {
            hint format [localize "STR_NOTF_OwnImpounded",[_value] call husky_fnc_numberText,_type];
            b126 = b126 - _value;
        } else {
            hint format [localize "STR_NOTF_Impounded",_type,[_value] call husky_fnc_numberText];
            b126 = b126 + _value;
        };
        if (b126 < 0) then {b126 = 0;};
        [1] call SOCK_fnc_updatePartial;
    };
	[getPlayerUID player, "Abschleppen",format ["%3 hat %1 s %2 abgeschleppt.",_vehicleData, _vehicleName, profileName]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
} else {
    hint localize "STR_NOTF_ImpoundingCancelled";
};

husky_action_inUse = false;
