#include "..\..\script_macros.hpp"
/*
    File: fn_inventoryOpened.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    For the mean time it blocks the player from opening another persons backpack

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
params [
    ["_unit", objNull, [objNull]],
    ["_container", objNull, [objNull]]
];

scopeName "main";
private _list = ["LandVehicle", "Ship", "Air","Box_NATO_AmmoVeh_F","Land_Cargo20_white_F","Land_Cargo20_red_F","Land_Cargo20_blue_F","Land_Cargo20_military_green_F","Land_Cargo20_yellow_F","Land_Cargo20_IDAP_F","B_Slingload_01_Fuel_F","Land_Pod_Heli_Transport_04_fuel_F","Land_Device_slingloadable_F","Land_Device_assembled_F","Land_PlasticCase_01_small_gray_F"];

{
    if (isNull _x) then {false breakOut "main"};

    private _containerType = typeOf _x;
	
	//if (!(FETCH_CONST(husky_adminlevel) >= 5)) then {
		//if(_isPack isEqualTo 1 && {!(playerSide in [west,independent]) || {!(cursorTarget getVariable ["playerSurrender",false])}}) exitWith {
		if (FETCH_CONFIG2(getNumber, "CfgVehicles", _containerType, "isBackpack") isEqualTo 1) exitWith {
			hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du bist nicht berechtigt, in fremde Rucksäcke zu schauen!</t>";
			true breakOut "main";
		};
	//};
	//if (!(FETCH_CONST(husky_adminlevel) >= 5)) then {
		if (_containerType in ["Box_IND_Grenades_F", "B_supplyCrate_F", "Land_WaterBarrel_F", "Land_WaterTank_F","Land_MetalBarrel_F","HazmatBag_01_F","Land_PlasticCase_01_large_CBRN_F","CargoNet_01_barrels_F", "Box_East_Wps_Special_F", "Box_East_AmmoVeh_F", "O_CargoNet_01_ammo_F", "C_IDAP_CargoNet_01_supplies_F"]) exitWith {
			private _house = nearestObject [player, "House"];
			if (!(_house in husky_vehicles) && {_house getVariable ["locked",true]}) exitWith {
			hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du bist nicht berechtigt, auf diesen Container zuzugreifen, ohne dass der Besitzer ihn aufgeschlossen hat.</t>";
				true breakOut "main";
			};
		};
	//};
	//if (!(FETCH_CONST(husky_adminlevel) >= 5)) then {
		if (KINDOF_ARRAY(_x, _list)) exitWith {
			if (!(_x in husky_vehicles) && {locked _x isEqualTo 2}) exitWith {
			hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du bist nicht berechtigt, auf dieses Fahrzeug zuzugreifen, während es abgeschlossen ist.</t>";
				true breakOut "main";
			};
		};
	//};
	if (!(FETCH_CONST(husky_adminlevel) >= 5) || (!(playerSide in [independent])) ) then {
		//Allow alive players who've been knocked out to be looted, just not the dead ones
		if (_x isKindOf "CAManBase" && {!alive _x}) exitWith {
		hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du darfst keine Leichen durchsuchen!</t>";
			true breakOut "main";
		};
	};
	//if (!(FETCH_CONST(husky_adminlevel) >= 5)) then {
		//Asservatenkammer
		if((typeOf _container) in ["CargoNet_01_box_F"]) exitWith {
			if!(playerSide == WEST) exitWith {
				if (_container getVariable "husky_closed") exitWith {
					hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Die Waffenkammer ist abgeschlossen!</t>";
					[] spawn {
							closeDialog 0; waitUntil {!isNull (findDisplay 602)
						};
						closeDialog 0;
					};
				};
			};
		};
	//};
} count [_container];





/*
private ["_container","_unit","_list"];
if (count _this isEqualTo 1) exitWith {false};
_unit = _this select 0;
_container = _this select 1;

_isPack = FETCH_CONFIG2(getNumber,"CfgVehicles",typeOf _container,"isBackpack");
if (_isPack isEqualTo 1) exitWith {
    hint localize "STR_MISC_Backpack";
    true;
};

if (_isPack isEqualTo 1 && !(playerSide in [west,independent]) && !((side _unit) in [west,independent])) exitWith {
    hint localize "STR_MISC_Backpack";
    true;
};

_isPack = FETCH_CONFIG2(getNumber,CONFIG_VEHICLES,typeOf _container,"isBackpack");
if(_isPack isEqualTo 1 && {!(playerSide in [west,independent]) || {!(cursorTarget getVariable ["playerSurrender",false])}}) exitWith {
	hint localize "STR_MISC_Backpack";
	true;
};


if ((typeOf _container) in ["Box_IND_Grenades_F","B_supplyCrate_F"]) exitWith {
    _house = nearestObject [player, "House"];
    if (!(_house in husky_vehicles) && (_house getVariable ["locked",true])) exitWith {
        hint localize "STR_House_ContainerDeny";
        true;
    };
};

_list = ["LandVehicle","Ship","Air","Box_NATO_AmmoVeh_F","Land_Cargo20_white_F","Land_Cargo20_red_F","Land_Cargo20_blue_F","Land_Cargo20_military_green_F","Land_Cargo20_yellow_F","Land_Cargo20_IDAP_F"];
if (KINDOF_ARRAY(_container,_list)) exitWith {
    if (!(_container in husky_vehicles) && {locked _container isEqualTo 2}) exitWith {
        hint localize "STR_MISC_VehInventory";
        true;
    };
};

//Allow alive players who've been knocked out to be looted, just not the dead ones

if (_container isKindOf "Man" && !alive _container) exitWith {
    hint localize "STR_NOTF_NoLootingPerson";
    true;
};
*/
