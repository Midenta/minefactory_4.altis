#include "..\..\script_macros.hpp"
/*
 File: fn_garageLBChange.sqf
 Author: Bryan "Tonic" Boardwine
 Description:
 Can't be bothered to answer it.. Already deleted it by accident..
*/
disableSerialization;
private ["_control","_index","_className","_classNamehusky","_dataArr","_vehicleColor","_vehicleInfo","_trunkSpace","_sellPrice","_retrievePrice","_sellMultiplier","_price","_storageFee","_purchasePrice"];
_control = _this select 0;
_index = _this select 1;
//Fetch some information.
_dataArr = CONTROL_DATAI(_control,_index);
_dataArr = call compile format ["%1",_dataArr];
_className = (_dataArr select 0);
_classNamehusky = _className;
if (!isClass (missionConfigFile >> "huskyCfgVehicles" >> _classNamehusky)) then {
 _classNamehusky = "Default"; //Use Default class if it doesn't exist
 //diag_log format ["%1: huskyCfgVehicles class doesn't exist",_className];
};
_vehicleColor = ((M_CONFIG(getArray,"huskyCfgVehicles",_classNamehusky,"textures") select (_dataArr select 1)) select 0);
if (isNil "_vehicleColor") then {_vehicleColor = "Default";};
_vehicleInfo = [_className] call husky_fnc_fetchVehInfo;
_trunkSpace = [_className] call husky_fnc_vehicleWeightCfg;
_price = M_CONFIG(getNumber,"huskyCfgVehicles",_classNamehusky,"price");
_storageFee = husky_SETTINGS(getNumber,"vehicle_impound_fee_multiplier");
_retrievePrice = _price * _storageFee;
if (!(_sellPrice isEqualType 0) || _sellPrice < 1) then {_sellPrice = 500;};
if (!(_retrievePrice isEqualType 0) || _retrievePrice < 1) then {_retrievePrice = 500;};
(CONTROL(28000,28030)) ctrlSetStructuredText parseText format [
(localize "STR_Shop_IMPVEH")+ " <t color='#8cff9b'>%1 �</t><br/>",
[_retrievePrice] call husky_fnc_numberText
];
ctrlShow [28030,true];
ctrlShow [28300,true];