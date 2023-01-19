#include "..\..\script_macros.hpp"
/*
    File: fn_garageLBChange.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Can't be bothered to answer it.. Already deleted it by accident..

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

//Orginal
disableSerialization;
private ["_control","_index","_className","_classNamehusky","_dataArr","_vehicleColor","_vehicleInfo","_trunkSpace","_sellPrice","_retrievePrice","_sellMultiplier","_price","_storageFee","_purchasePrice","_insurance","_insuranceMultiplier","_insurancePrice"];
_control = _this select 0;
_index = _this select 1;

//Fetch some information.
_dataArr = CONTROL_DATAI(_control,_index);
_dataArr = call compile format ["%1",_dataArr];
_className = (_dataArr select 0);
_classNamehusky = _className;
_insurance = (_dataArr select 2);
_vehicleChip = (_dataArr select 3);

if (!isClass (missionConfigFile >> "huskyCfgVehicles" >> _classNamehusky)) then {
    _classNamehusky = "Default"; //Use Default class if it doesn't exist
    //diag_log format ["%1: huskyCfgVehicles class doesn't exist",_className];
};

_vehicleColor = ((M_CONFIG(getArray,"huskyCfgVehicles",_classNamehusky,"textures") select (_dataArr select 1)) select 0);
if (isNil "_vehicleColor") then {_vehicleColor = "Default";};

_vehicleInfo = [_className] call husky_fnc_fetchVehInfo;
_trunkSpace = [_className] call husky_fnc_vehicleWeightCfg;


_price = M_CONFIG(getNumber,"huskyCfgVehicles",_classNamehusky,"price");
_storageFee = husky_SETTINGS(getNumber,"vehicle_storage_fee_multiplier");

switch (playerSide) do {
    case civilian: {
        _purchasePrice = _price * husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_CIVILIAN");
        _sellMultiplier = husky_SETTINGS(getNumber,"vehicle_sell_multiplier_CIVILIAN");
        _insuranceMultiplier = husky_SETTINGS(getNumber,"vehicle_insurance_multiplier_CIVILIAN");
    };
    case west: {
        _purchasePrice = _price * husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_COP");
        _sellMultiplier = husky_SETTINGS(getNumber,"vehicle_sell_multiplier_COP");
        _insuranceMultiplier = husky_SETTINGS(getNumber,"vehicle_insurance_multiplier_COP");
    };
    case independent: {
        _purchasePrice = _price * husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_MEDIC");
        _sellMultiplier = husky_SETTINGS(getNumber,"vehicle_sell_multiplier_MEDIC");
        _insuranceMultiplier = husky_SETTINGS(getNumber,"vehicle_insurance_multiplier_MEDIC");
    };
    case east: {
        _purchasePrice = _price * husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_OPFOR");
        _sellMultiplier = husky_SETTINGS(getNumber,"vehicle_sell_multiplier_OPFOR");
        _insuranceMultiplier = husky_SETTINGS(getNumber,"vehicle_insurance_multiplier_OPFOR");
    };
};
_retrievePrice = _purchasePrice * _storageFee;
_sellPrice = _purchasePrice * _sellMultiplier;
_insurancePrice = _purchasePrice * _insuranceMultiplier;



if (!(_sellPrice isEqualType 0) || _sellPrice < 1) then {_sellPrice = 500;};
if (!(_retrievePrice isEqualType 0) || _retrievePrice < 1) then {_retrievePrice = 500;};
if (!(_insurancePrice isEqualType 0) || _insurancePrice < 1) then {_insurancePrice = 500;};
private _vehcolorindex = _dataArr select 1;
[_className,_vehcolorindex] call husky_fnc_vehicleGarage3DPreview;


//if (_vehicleChip in [1,2,3,4,5,6]) then {_insurancePrice = _insurancePrice + 3000000;};
if (_vehicleChip isEqualTo 1) then {_insurancePrice = _insurancePrice * 1.2;};
if (_vehicleChip isEqualTo 2) then {_insurancePrice = _insurancePrice * 1.4;};
if (_vehicleChip isEqualTo 3) then {_insurancePrice = _insurancePrice * 1.7;};
if (_vehicleChip isEqualTo 4) then {_insurancePrice = _insurancePrice * 2;};
if (_vehicleChip isEqualTo 5) then {_insurancePrice = _insurancePrice * 2.3;};
if (_vehicleChip isEqualTo 6) then {_insurancePrice = _insurancePrice + 6000000;};

//diag_log format ["%1 %2 Versicherung",_vehicleChip,_insurancePrice];


ctrlShow [2830,true];
(CONTROL(2800,2803)) ctrlSetStructuredText parseText format [
    (localize "STR_Shop_Veh_UI_RetrievalP")+ " <t color='#8cff9b'>%1€</t><br/>
    " +(localize "STR_Shop_Veh_UI_SellP")+ " <t color='#8cff9b'>%2€</t><br/>
    Versicherungspreis: <t color='#8cff9b'>%10€</t><br/>
    Versicherungsstatus: %11<br/>
    " +(localize "STR_Shop_Veh_UI_Color")+ " %8<br/>
    " +(localize "STR_Shop_Veh_UI_MaxSpeed")+ " %3 km/h<br/>
    " +(localize "STR_Shop_Veh_UI_HPower")+ " %4<br/>
    " +(localize "STR_Shop_Veh_UI_PSeats")+ " %5<br/>
    " +(localize "STR_Shop_Veh_UI_Trunk")+ " %6<br/>
    " +(localize "STR_Shop_Veh_UI_Fuel")+ " %7<br/>
    " +(localize "STR_Shop_Veh_UI_Chip")+ " %9<br/>
    ",
    [_retrievePrice] call husky_fnc_numberText,
    [_sellPrice] call husky_fnc_numberText,
    (_vehicleInfo select 8),
    (_vehicleInfo select 11),
    (_vehicleInfo select 10),
    if (_trunkSpace isEqualTo -1) then {"None"} else {_trunkSpace},
    (_vehicleInfo select 12),
    _vehicleColor,
    _vehicleChip,
    [_insurancePrice] call husky_fnc_numberText,
    if(_insurance isEqualTo 1) then {"<t color='#8cff9b'>Versichert</t>"} else {"<t color='#FF0000'>Keine Versicherung</t>"}
];

if(_insurance == 1) then {
    ctrlShow [97480,False];
}else{
    ctrlShow [97480,True];
};

ctrlShow [2803,true];
ctrlShow [2830,true];
