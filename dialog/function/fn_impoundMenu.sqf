#include "..\..\script_macros.hpp"
/*
    File: fn_impoundMenu.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Not actually a impound menu, may act as confusion to some but that is what I wanted.
    The purpose of this menu is it is now called a 'Garage' where vehicles are stored (persistent ones).

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_vehicles","_control"];
disableSerialization;
_vehicles = param [0,[],[[]]];
ctrlShow[2803,false];
ctrlShow[2830,false];
waitUntil {!isNull (findDisplay 2800)};

if (count _vehicles isEqualTo 0) exitWith {
    ctrlSetText[2811,localize "STR_Garage_NoVehicles"];
};

_control = CONTROL(2800,2802);
lbClear _control;

{
    _vehicleInfo = [(_x select 2)] call husky_fnc_fetchVehInfo;
    _control lbAdd (_vehicleInfo select 3);
    _tmp = [(_x select 2),(_x select 8),(_x select 9),(_x select 10)];
    _tmp = str(_tmp);
    _control lbSetData [(lbSize _control)-1,_tmp];
    _control lbSetPicture [(lbSize _control)-1,(_vehicleInfo select 2)];
    _control lbSetValue [(lbSize _control)-1,(_x select 0)];
} forEach _vehicles;

ctrlShow[2810,false];
ctrlShow[2811,false];

//[_vehicles] call husky_fnc_vehicleGarage3DPreview;
/*
private ["_vehicles","_control"];
disableSerialization;
_vehicles = param [0,[],[[]]];

ctrlShow[2803,false];
ctrlShow[2830,false];
waitUntil {!isNull (findDisplay 2800)};

//if (isNull husky_preview_3D_vehicle_object) exitWith {};

if (count _vehicles isEqualTo 0) exitWith {
    ctrlSetText[2811,localize "STR_Garage_NoVehicles"];
};

_control = CONTROL(2800,2802);
lbClear _control;
if (playerSide isEqualTo WEST) then {
	_arr = getArray(missionConfigFile >> "CarShops" >> "cop_car" >> "vehicles") + getArray(missionConfigFile >> "CarShops" >> "cop_air" >> "vehicles") + getArray(missionConfigFile >> "CarShops" >> "cop_ship" >> "vehicles");
	_allowed = [];
	{
		if (call compile (_x select 1)) then {
			_allowed pushBackUnique (_x select 0);
		};
	} forEach _arr;
	{
	    //diag_log format["AUSGABE %1 | %2",_x,(_x select 2)];
		if ((_x select 2) in _allowed) then {
			_vehicleInfo = [(_x select 2)] call husky_fnc_fetchVehInfo;
			_control lbAdd (_vehicleInfo select 3);
			_tmp = [(_x select 2),(_x select 8)];
			_tmp = str(_tmp);
			_control lbSetData [(lbSize _control)-1,_tmp];
			_control lbSetPicture [(lbSize _control)-1,(_vehicleInfo select 2)];
			_control lbSetValue [(lbSize _control)-1,(_x select 0)];

		};
	} forEach _vehicles;
} else {
	{
		_vehicleInfo = [(_x select 2)] call husky_fnc_fetchVehInfo;
		_control lbAdd (_vehicleInfo select 3);
		_tmp = [(_x select 2),(_x select 8)];
		_tmp = str(_tmp);
		_control lbSetData [(lbSize _control)-1,_tmp];
		_control lbSetPicture [(lbSize _control)-1,(_vehicleInfo select 2)];
		_control lbSetValue [(lbSize _control)-1,(_x select 0)];
	} forEach _vehicles;
};
lbSort _control;

ctrlShow[2810,false];
ctrlShow[2811,false];
*/
