#include "..\..\script_macros.hpp"
/*
    File: fn_vehicleShopLBChange.sqf
    Author: Bryan "Tonic" Boardwine
    Modified : NiiRoZz

    Description:
    Called when a new selection is made in the list box and
    displays various bits of information about the vehicle.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
disableSerialization;
private ["_className","_classNamehusky","_initalPrice","_buyMultiplier","_rentMultiplier","_vehicleInfo","_colorArray","_ctrl","_trunkSpace","_maxspeed","_horsepower","_passengerseats","_fuel","_armor"];

//Fetch some information.
_className = (_this select 0) lbData (_this select 1);
_classNamehusky = _className;
_vIndex = (_this select 0) lbValue (_this select 1);

_initalPrice = M_CONFIG(getNumber,"huskyCfgVehicles",_classNamehusky,"price");

_vehicleInfo = [_className] call husky_fnc_fetchVehInfo;
_trunkSpace = [_className] call husky_fnc_vehicleWeightCfg;
_maxspeed = (_vehicleInfo select 8);
_horsepower = (_vehicleInfo select 11);
_passengerseats = (_vehicleInfo select 10);
_fuel = (_vehicleInfo select 12);
_armor = (_vehicleInfo select 9);
[_className] call husky_fnc_vehicleGarage3DPreview;

ctrlShow [2330,true];
(CONTROL(2800)) ctrlSetStructuredText parseText format [
    (localize "STR_Shop_Veh_UI_Rental")+ " <t color='#8cff9b'>%1 �</t><br/>" +
    (localize "STR_Shop_Veh_UI_Ownership")+ " <t color='#8cff9b'>%2 �</t><br/>" +
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

_ctrl = CONTROL(2800);
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


if !((lbSize _ctrl)-1 isEqualTo -1) then {
    ctrlShow[2803,true];
} else {
    ctrlShow[2803,false];
};

true;
