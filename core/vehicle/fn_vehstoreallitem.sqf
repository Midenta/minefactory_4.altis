#include "..\..\script_macros.hpp"
#define ctrlSelData(ctrl) (lbData[##ctrl,(lbCurSel ##ctrl)])
/*
 File: fn_vehStoreAllItem.sqf
 Author: Killerknight
 ���Edit by: Blackfisch
 
 Description:
 stores all (max items) from selected and add it to the Vehicles inventory
 
	Thieves

	Universe-Community.de

	Diese Mission ist bearbeitet von dem Development Team von Universe-Community.de 
	Diese Mission darf von keinem anderen genutzt werden au�er von Universe-Community.de!	
*/
private["_ctrl","_num","_totalWeight","_itemWeight","_veh_data","_inv","_index","_val","_Truck","_FuelTrucks","_FuelStuff","_SaltStuff","_SaltTrucks","_uranStuff","_uranTrucks"];

if ((husky_trunk_vehicle getVariable ["trunk_in_use_by",player]) != player) exitWith { closeDialog 0; hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Der Kofferraum dieses Fahrzeuges wird bereits benutzt, nur eine Person kann auf ihn zugreifen.</t>";};
if (husky_action_inUse) exitWith {closeDialog 0;}; // How did he opened the dialog ?!

if (!DarfEinzahlen) exitWith {};
if (DarfEinzahlen) then {
 DarfEinzahlen = false;
 [] spawn {
 sleep 1;
 DarfEinzahlen = true;
 };
};

disableSerialization;


 
_ctrl = ctrlSelData(3503);
if ((lbCurSel ((findDisplay 3500) displayCtrl 3503)) isEqualTo -1)exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast nichts ausgew�hlt</t>";};
if (husky_trunk_vehicle isKindOf "House_F") then {
	_mWeight = 0;
	{_mWeight = _mWeight + ([(typeOf _x)] call husky_fnc_vehicleWeightCfg);} foreach (husky_trunk_vehicle getVariable["containers",[]]);
	_totalWeight = [_mWeight,(husky_trunk_vehicle getVariable["Trunk",[[],0]]) select 1];
} else {
	_totalWeight = [husky_trunk_vehicle] call husky_fnc_vehicleWeight;
};

_num2 = getNumber(missionConfigFile >> "VirtualItems" >> _ctrl >> "weight");
_num1 = (floor (((_totalWeight select 0) - (_totalWeight select 1)) / _num2));
_num = if (_num1 <= (ITEM_VALUE(_ctrl))) then {_num1}else{(ITEM_VALUE(_ctrl))};
if (_num < 1) exitWith {hint localize "STR_MISC_Under1";};
_itemWeight = ([_ctrl] call husky_fnc_itemWeight) * _num;
_veh_data = husky_trunk_vehicle getVariable ["Trunk",[[],0]];
_inv = _veh_data select 0;

if (_ctrl == "goldbar" && {husky_trunk_vehicle isKindOf "Air"}) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du kannst das nur in einem Landfahrzeug lagern!</t>";};
//if (_ctrl == "goldbar" && {!(husky_trunk_vehicle isKindOf "LandVehicle")}) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du kannst das nur in einem Landfahrzeug lagern!</t>";};

//if (_ctrl == "ITEM CLASSNAME" && {!(husky_trunk_vehicle isKindOf "LandVehicle")}) exitWith {hint localize "STR_NOTF_canOnlyStoreInLandVeh";};

_Truck = TypeOf husky_trunk_vehicle;
_FuelStuff = ["oil_unprocessed", "oil_processed", "Kerosin","Kraftstoff"]; //Wich Items can be stored in?
_FuelTrucks = ["C_Van_01_fuel_F","I_Truck_02_fuel_F","B_Truck_01_fuel_F","B_T_Truck_01_fuel_F","O_Truck_02_fuel_F","O_Truck_03_fuel_F","B_Slingload_01_Fuel_F","Land_Pod_Heli_Transport_04_fuel_F","O_Heli_Transport_04_fuel_F","CargoNet_01_barrels_F","Land_WaterBarrel_F","Land_WaterTank_F"]; //Fuel Trucks, who are allowed to carry fuel

_SaltStuff = ["salt_unrefined", "salt_refined"];
_SaltTrucks = ["C_Plane_Civil_01_F","C_Plane_Civil_01_racing_F","I_C_Plane_Civil_01_F"]; 

_uranStuff = ["uraniniterz", "uraninitloesung","yellow_cake","rohes_uranylnitrat","reines_uranylnitrat","rohes_uran","reines_uran","plutonium"];
_uranTrucks = ["Land_Device_slingloadable_F","Land_Cargo20_IDAP_F","HazmatBag_01_F"]; 

/*
_golgStuff = ["salt_unrefined", "salt_refined"];
_goldTrucks = ["C_Plane_Civil_01_F","C_Plane_Civil_01_racing_F","I_C_Plane_Civil_01_F"]; 
*/

switch (true) do {
	case ((_ctrl in _FuelStuff) && (_Truck in _FuelTrucks)): {husky_TankLaster = 1}; //Fuel in FuelTruck -> Allowed
	case (!(_ctrl in _FuelStuff) && !(_Truck in _FuelTrucks)): {husky_TankLaster = 2}; //NonFuel in NonFuelTruck -> Allowed
	case (!(_ctrl in _FuelStuff) && (_Truck in _FuelTrucks)): {husky_TankLaster = 3}; //NonFuel in FuelTruck -> Nope
	case ((_ctrl in _FuelStuff) && !(_Truck in _FuelTrucks)): {husky_TankLaster = 4}; //Fuel in NonFuelTruck -> Nope!
};
switch (true) do {
	case ((_ctrl in _SaltStuff) && (_Truck in _SaltTrucks)): {husky_SalzSpace = 1}; 
	case (!(_ctrl in _SaltStuff) && !(_Truck in _SaltTrucks)): {husky_SalzSpace = 2};
	case (!(_ctrl in _SaltStuff) && (_Truck in _SaltTrucks)): {husky_SalzSpace = 3}; 
	case ((_ctrl in _SaltStuff) && !(_Truck in _SaltTrucks)): {husky_SalzSpace = 4}; 
};

switch (true) do {
	case ((_ctrl in _uranStuff) && (_Truck in _uranTrucks)): {husky_uranSpace = 1}; 
	case (!(_ctrl in _uranStuff) && !(_Truck in _uranTrucks)): {husky_uranSpace = 2};
	case (!(_ctrl in _uranStuff) && (_Truck in _uranTrucks)): {husky_uranSpace = 3}; 
	case ((_ctrl in _uranStuff) && !(_Truck in _uranTrucks)): {husky_uranSpace = 4}; 
};

/*
switch (true) do {
	case ((_ctrl in _golgStuff) && (_Truck in _goldTrucks)): {husky_GoldSpace = 1}; 
	case (!(_ctrl in _golgStuff) && !(_Truck in _goldTrucks)): {husky_GoldSpace = 2};
	case (!(_ctrl in _golgStuff) && (_Truck in _goldTrucks)): {husky_GoldSpace = 3}; 
	case ((_ctrl in _golgStuff) && !(_Truck in _goldTrucks)): {husky_GoldSpace = 4}; 
};
*/

if (husky_TankLaster == 3) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du kannst das hier nicht einlagern!</t>";};
if (husky_TankLaster == 4) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du kannst das hier nicht einlagern!</t>";};

if (husky_SalzSpace == 3) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du kannst das hier nicht einlagern!</t>";};
if (husky_SalzSpace == 4) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du kannst das hier nicht einlagern!</t>";};


if (husky_uranSpace == 3) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du kannst das hier nicht einlagern!</t>";};
if (husky_uranSpace == 4) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du kannst das hier nicht einlagern!</t>";};
/*
if (husky_GoldSpace == 3) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du kannst das hier nicht einlagern!</t>";};
if (husky_GoldSpace == 4) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du kannst das hier nicht einlagern!</t>";};
*/

if (_ctrl == "money") then {
	_index = [_ctrl,_inv] call TON_fnc_index;
	if (c126 < _num) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast nicht genug Material bei dir, um die eingegeben Menge in das Fahrzeug zu lagern!</t>";};
	if (_index == -1) then {
		_inv pushBack [_ctrl,_num];
	} else {
		_val = _inv select _index select 1;
		_inv set[_index,[_ctrl,_val + _num]];
	};
	
	husky_cash = husky_cash - _num;
	husky_trunk_vehicle setVariable["Trunk",[_inv,(_veh_data select 1) + _itemWeight],true];
	[husky_trunk_vehicle] call husky_fnc_vehInventory;
} else {
	if (((_totalWeight select 1) + _itemWeight) > (_totalWeight select 0)) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Das Fahrzeug ist entweder voll oder hat nicht so viel Platz.</t>";};
	
	if (!([false,_ctrl,_num] call husky_fnc_handleInv)) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Das Fahrzeug ist entweder voll oder hat nicht so viel Platz.</t>";};
		_index = [_ctrl,_inv] call TON_fnc_index;
	if (_index isEqualTo -1) then {
		_inv pushBack [_ctrl,_num];
	} else {
		_val = _inv select _index select 1;
		_inv set[_index,[_ctrl,_val + _num]];
	};
	
	husky_trunk_vehicle setVariable["Trunk",[_inv,(_veh_data select 1) + _itemWeight],true];
	[husky_trunk_vehicle] call husky_fnc_vehInventory;
};