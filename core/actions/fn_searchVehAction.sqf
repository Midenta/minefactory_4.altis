#include "..\..\script_macros.hpp"
/*
    File: fn_searchVehAction.sqf
    Author:

    Description:

    Thieves

	MineFactory.eu

	Diese Mission ist bearbeitet von dem Development Team von MineFactory.eu! 
	Diese Mission darf von keinem anderen genutzt werden außer von MineFactory.eu!

*/
private ["_vehicle","_data"];
_vehicle = cursorObject;
if ((_vehicle isKindOf "Car") || (_vehicle isKindOf "Tank") || !(_vehicle isKindOf "Air") || !(_vehicle isKindOf "Ship") || !(_vehicle isKindOf "Box_NATO_AmmoVeh_F") || !(_vehicle isKindOf "Land_Cargo20_white_F") || !(_vehicle isKindOf "Land_Cargo20_red_F") || !(_vehicle isKindOf "Land_Cargo20_blue_F") || !(_vehicle isKindOf "Land_Cargo20_military_green_F") || !(_vehicle isKindOf "Land_Cargo20_yellow_F") || !(_vehicle isKindOf "Land_Cargo20_IDAP_F") || !(_vehicle isKindOf "B_Slingload_01_Fuel_F") || !(_vehicle isKindOf "Land_Pod_Heli_Transport_04_fuel_F") || !(_vehicle isKindOf "Land_Device_slingloadable_F") || !(_vehicle isKindOf "Land_Device_assembled_F")) then {
    _owners = _vehicle getVariable "vehicle_info_owners";
    if (isNil "_owners") exitWith {hint localize "STR_NOTF_VehCheat";};

    husky_action_inUse = true;
    //hint localize "STR_NOTF_Searching";
	hint parseText "<t underline='true' size='1.8' color='#ff0000'>Information</t><br /><t size='1.5' color='#ffffff'>Halterabfrage zu dem Fahrzeug läuft!</t>";

    uisleep (1 * 5);
	
    husky_action_inUse = false;

    if (player distance _vehicle > 8 || !alive player || !alive _vehicle) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du bist zuweit entfernt für eine Halterabfrage!</t>";/*hint localize "STR_NOTF_SearchVehFail";*/};
    //_inventory = [(_vehicle getVariable "vehicle_info_inv")] call fnc_veh_inv;
    //if (isNil {_inventory}) then {_inventory = "Nothing in storage."};
    _owners = [_owners] call husky_fnc_vehicleOwners;

	/*
    if (_owners == "any<br/>") then {
        _owners = "Wuff Wuff Miau<br/>";
    };
	*/
	
    /*
	if (_owners == "any<br/>") then {
        _owners = "No owners, impound it<br/>";
    };
    */
	
	//diag_log _owners;
	
    hint parseText format [localize "STR_NOTF_SearchVeh",_owners];
};
