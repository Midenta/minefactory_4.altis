#include "..\..\script_macros.hpp"
/*
    File: fn_vehicleShopLBChange.sqf
    Author: Bryan "Tonic" Boardwine
    Modified : NiiRoZz

    Description:
    Called when a new selection is made in the list box and
    displays various bits of information about the vehicle.
*/
disableSerialization;
private ["_className","_classNamehusky","_initalPrice","_buyMultiplier","_rentMultiplier","_vehicleInfo","_colorArray","_ctrl","_trunkSpace","_maxspeed","_horsepower","_passengerseats","_fuel","_armor"];

//Fetch some information.
_className = (_this select 0) lbData (_this select 1);
_classNamehusky = _className;
_vIndex = (_this select 0) lbValue (_this select 1);

_initalPrice = M_CONFIG(getNumber,"huskyCfgVehicles",_classNamehusky,"price");

switch (playerSide) do {
    case civilian: {
        _buyMultiplier = husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_CIVILIAN");
        _rentMultiplier = husky_SETTINGS(getNumber,"vehicle_rental_multiplier_CIVILIAN");
    };
    case west: {
        _buyMultiplier = husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_COP");
        _rentMultiplier = husky_SETTINGS(getNumber,"vehicle_rental_multiplier_COP");
    };
    case independent: {
        _buyMultiplier = husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_MEDIC");
        _rentMultiplier = husky_SETTINGS(getNumber,"vehicle_rental_multiplier_MEDIC");
    };
    case east: {
        _buyMultiplier = husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_OPFOR");
        _rentMultiplier = husky_SETTINGS(getNumber,"vehicle_rental_multiplier_OPFOR");
    };
};

_vehicleInfo = [_className] call husky_fnc_fetchVehInfo;
_trunkSpace = [_className] call husky_fnc_vehicleWeightCfg;
_maxspeed = (_vehicleInfo select 8);
_horsepower = (_vehicleInfo select 11);
_passengerseats = (_vehicleInfo select 10);
_fuel = (_vehicleInfo select 12);
_armor = (_vehicleInfo select 9);
[_className] call husky_fnc_vehicleShop3DPreview;

ctrlShow [2330,true];
(CONTROL(2300,2303)) ctrlSetStructuredText parseText format [
    (localize "STR_Shop_Veh_UI_Rental")+ " <t color='#8cff9b'>%1 ???</t><br/>" +
    (localize "STR_Shop_Veh_UI_Ownership")+ " <t color='#8cff9b'>%2 ???</t><br/>" +
    (localize "STR_Shop_Veh_UI_MaxSpeed")+ " %3 km/h<br/>" +
    (localize "STR_Shop_Veh_UI_HPower")+ " %4<br/>" +
    (localize "STR_Shop_Veh_UI_PSeats")+ " %5<br/>" +
    (localize "STR_Shop_Veh_UI_Trunk")+ " %6<br/>" +
    (localize "STR_Shop_Veh_UI_Fuel")+ " %7<br/>" +
    (localize "STR_Shop_Veh_UI_Armor")+ " %8",
    [round(_initalPrice * _rentMultiplier)] call husky_fnc_numberText,
    [round(_initalPrice * _buyMultiplier)] call husky_fnc_numberText,
    _maxspeed,
    _horsepower,
    _passengerseats,
    if (_trunkSpace isEqualTo -1) then {"None"} else {_trunkSpace},
    _fuel,
    _armor
];

_ctrl = CONTROL(2300,2304);
lbClear _ctrl;

if (!isClass (missionConfigFile >> "huskyCfgVehicles" >> _classNamehusky)) then {
    _classNamehusky = "Default"; //Use Default class if it doesn't exist
    //diag_log format ["%1: huskyCfgVehicles class doesn't exist",_className];
};
_colorArray = M_CONFIG(getArray,"huskyCfgVehicles",_classNamehusky,"textures");

{
    _flag = (_x select 1);

    _textureName = (_x select 0);
    if ((husky_veh_shop select 2) isEqualTo _flag) then {
        _x params ["_texture"];
        private _toShow = [_x] call husky_fnc_levelCheck;
        if (_toShow) then {
            _ctrl lbAdd _textureName;

            _ctrl lbSetValue [(lbSize _ctrl)-1,_forEachIndex];
        };
    };
} forEach _colorArray;


_numberindexcolorarray = [];
for "_i" from 0 to (count(_colorArray) - 1) do {
    _numberindexcolorarray pushBack _i;
};

_indexrandom = _numberindexcolorarray call BIS_fnc_selectRandom;
_ctrl lbSetCurSel _indexrandom;

if (_className in (husky_SETTINGS(getArray,"vehicleShop_rentalOnly"))) then {
    ctrlEnable [2309,false];		//Bar kauf
	ctrlEnable [25654236,false];    //EC Kauf
} else {
    if (!(husky_veh_shop select 3)) then {
        ctrlEnable [2309,true];		//Bar kauf
		ctrlEnable [25654236,true]; //EC Kauf
    };
};

if !((lbSize _ctrl)-1 isEqualTo -1) then {
    ctrlShow[2304,true];
} else {
    ctrlShow[2304,false];
};

true;
