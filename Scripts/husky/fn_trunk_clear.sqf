#include "..\..\script_macros.hpp"

/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/


private ["_vehicle","_vehicleInfo","_value","_list"];
_vehicle = cursorObject;
_list = ["Air","Ship","LandVehicle","Box_NATO_AmmoVeh_F","Land_Cargo20_white_F","Land_Cargo20_red_F","Land_Cargo20_blue_F","Land_Cargo20_military_green_F","Land_Cargo20_yellow_F","Land_Cargo20_IDAP_F","B_Slingload_01_Fuel_F","Land_Pod_Heli_Transport_04_fuel_F","Land_Device_slingloadable_F","Land_Device_assembled_F"];
if (isNull _vehicle || {!(KINDOF_ARRAY(_vehicle,_list))}) exitWith {};


_value = 0;
_illegalValue = 0;
{
    _var = _x select 0;
    _val = _x select 1;
    _isIllegalItem = M_CONFIG(getNumber,"VirtualItems",_var,"illegal");
    if (_isIllegalItem isEqualTo 1 ) then{
        _illegalPrice = M_CONFIG(getNumber,"VirtualItems",_var,"sellPrice");
        if (!isNull (missionConfigFile >> "VirtualItems" >> _var >> "processedItem")) then {
            _illegalItemProcessed = M_CONFIG(getText,"VirtualItems",_var,"processedItem");
            _illegalPrice = M_CONFIG(getNumber,"VirtualItems",_illegalItemProcessed,"sellPrice");
        };

        _illegalValue = _illegalValue + (round(_val * _illegalPrice / 2));
    };
} forEach (_vehicleInfo select 0);
_value = _illegalValue;

	b126 = b126 + _value;
    [1] call SOCK_fnc_updatePartial;
_vehicle setVariable ["Trunk",[[],0],true];