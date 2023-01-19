#include "..\..\script_macros.hpp"
/*
	File: fn_insureCar.sqf
	Author: Guit0x "Lintox"
	Description:
	Insure a vehicle from the garage.

    Thieves

	MineFactory.eu

	Diese Mission ist bearbeitet von dem Development Team von MineFactory.eu! 
	Diese Mission darf von keinem anderen genutzt werden außer von MineFactory.eu!
*/
private["_vehicle","_vehiclehusky","_vid","_pid","_unit","_multiplier","_price","_purchasePrice","_insurancePrice"];
disableSerialization;

if ((lbCurSel 2802) isEqualTo -1) exitWith {hint localize "STR_Global_NoSelection"};
_vehicle = lbData[2802,(lbCurSel 2802)];

_vehicle2 = (call compile format["%1",_vehicle]) select 3;
_vehicle = (call compile format["%1",_vehicle]) select 0;

_vehiclehusky = _vehicle;
_vid = lbValue[2802,(lbCurSel 2802)];
_pid = getPlayerUID player;
_unit = player;

_vehicleChip = _vehicle2;


if(isNil "_vehicle") exitWith {hint localize "STR_Garage_Selection_Error"};
if ((time - husky_action_delay) < 1.5) exitWith {hint localize "STR_NOTF_ActionDelay";};
if (!isClass (missionConfigFile >> "huskyCfgVehicles" >> _vehiclehusky)) then {
    _vehiclehusky = "Default"; //Use Default class if it doesn't exist
    //diag_log format["%1: huskyCfgVehicles class doesn't exist",_vehicle];
};
_price = M_CONFIG(getNumber,"huskyCfgVehicles",_vehiclehusky,"price");
switch (playerSide) do {
    case civilian: {
        _multiplier = husky_SETTINGS(getNumber,"vehicle_insurance_multiplier_CIVILIAN");
        _purchasePrice = _price * husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_CIVILIAN");
    };
    case west: {
        _multiplier = husky_SETTINGS(getNumber,"vehicle_insurance_multiplier_COP");
        _purchasePrice = _price * husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_COP");
    };
    case independent: {
        _multiplier = husky_SETTINGS(getNumber,"vehicle_insurance_multiplier_MEDIC");
        _purchasePrice = _price * husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_MEDIC");
    };
    case east: {
        _multiplier = husky_SETTINGS(getNumber,"vehicle_insurance_multiplier_OPFOR");
        _purchasePrice = _price * husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_OPFOR");
    };
};
_insurancePrice = _purchasePrice * _multiplier;
if(!(_insurancePrice isEqualType 0) || _insurancePrice < 1) then {_insurancePrice = 500};
if(b126 < _insurancePrice) exitWith {hint format[(localize "STR_GNOTF_NotEnoughMoney"),[_insurancePrice] call husky_fnc_numberText];};


if (_vehicleChip isEqualTo 1) then {_insurancePrice = _insurancePrice * 1.2;};
if (_vehicleChip isEqualTo 2) then {_insurancePrice = _insurancePrice * 1.4;};
if (_vehicleChip isEqualTo 3) then {_insurancePrice = _insurancePrice * 1.7;};
if (_vehicleChip isEqualTo 4) then {_insurancePrice = _insurancePrice * 2;};
if (_vehicleChip isEqualTo 5) then {_insurancePrice = _insurancePrice * 2.3;};
if (_vehicleChip isEqualTo 6) then {_insurancePrice = _insurancePrice + 6000000;};

if (husky_HC_isActive) then {
    [_vid,_pid,_insurancePrice,player,husky_garage_type] remoteExecCall ["HC_fnc_insureCar",HC_husky];
} else {
    [_vid,_pid,_insurancePrice,player,husky_garage_type] remoteExecCall ["TON_fnc_insureCar",RSERV];
};
//hint localize "STR_InsuranceApply";
hint parseText "<t underline='true' size='1.8' color='#7cff00'>Information</t><br /><t size='1.5' color='#ffffff'>Das Fahrzeug wurde Versichert! Der Schutz umfasst nur Totalsch�den und kein Diebstahl!</t>";
b126 = b126 - _insurancePrice;
husky_action_delay = time;
//closeDialog 0;

[getPlayerUID player, "Versicherung gekauft", format ["%1 - %2 hat sein %3 fuer %4 versichert. Bankkonto: %5 € Bargeld: %6 €",profileName,(getPlayerUID player),_vehicle,[_insurancePrice] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

