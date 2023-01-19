#include "..\..\script_macros.hpp"
/*
    File: fn_sellGarage.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Sells a vehicle from the garage.
*/
private ["_vehicle","_vehiclehusky","_vid","_pid","_sellPrice","_multiplier","_price","_purchasePrice"];
disableSerialization;
if ((lbCurSel 2802) isEqualTo -1) exitWith {hint localize "STR_Global_NoSelection"};
_vehicle = lbData[2802,(lbCurSel 2802)];
_vehicle = (call compile format ["%1",_vehicle]) select 0;
_vehiclehusky = _vehicle;
_vid = lbValue[2802,(lbCurSel 2802)];
_pid = getPlayerUID player;
_gFund = GANG_FUNDS;

/*
private _action = true;

_action = [
    "Willst du dein Fahrzeug wirklich verkaufen?",
    "Fahrzeug-Verkaufen",
    "Ja",
    "Nein"
] call BIS_fnc_guiMessage;

if( !_action ) exitWith {};
*/

//if (playerSide isEqualTo west) exitWith {hint "Du kannst keinen Dienstwagen verkaufen!"};
if (isNil "_vehicle") exitWith {hint localize "STR_Garage_Selection_Error"};
if ((time - husky_action_delay) < 1.5) exitWith {hint localize "STR_NOTF_ActionDelay";};
if (!isClass (missionConfigFile >> "huskyCfgVehicles" >> _vehiclehusky)) then {
    _vehiclehusky = "Default"; //Use Default class if it doesn't exist
    //diag_log format ["%1: huskyCfgVehicles class doesn't exist",_vehicle];
};

//if (_action) then {

_price = M_CONFIG(getNumber,"huskyCfgVehicles",_vehiclehusky,"price");
switch (playerSide) do {
    case civilian: {
        _multiplier = husky_SETTINGS(getNumber,"vehicle_sell_multiplier_CIVILIAN");
        _purchasePrice = _price * husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_CIVILIAN");
    };
    case west: {
        _multiplier = husky_SETTINGS(getNumber,"vehicle_sell_multiplier_COP");
        _purchasePrice = _price * husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_COP");
    };
    case independent: {
        _multiplier = husky_SETTINGS(getNumber,"vehicle_sell_multiplier_MEDIC");
        _purchasePrice = _price * husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_MEDIC");
    };
    case east: {
        _multiplier = husky_SETTINGS(getNumber,"vehicle_sell_multiplier_OPFOR");
        _purchasePrice = _price * husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_OPFOR");
    };
};

_sellPrice = _purchasePrice * _multiplier;

if (!(_sellPrice isEqualType 0) || _sellPrice < 1) then {_sellPrice = 500;};

if (husky_HC_isActive) then {
    [_vid,_pid,_sellPrice,player,husky_garage_type] remoteExecCall ["HC_fnc_vehicleDelete",HC_husky];
} else {
    [_vid,_pid,_sellPrice,player,husky_garage_type] remoteExecCall ["TON_fnc_vehicleDelete",RSERV];
};

hint format [localize "STR_Garage_SoldCar",[_sellPrice] call husky_fnc_numberText];
b126 = b126 + _sellPrice;
[1] call SOCK_fnc_updatePartial;
//};

[getPlayerUID player, "soldVehicle", format ["%1 - %2 hat das Fahrzeug %3 für %4 € verkauft. Bankkonto: %5 €  Bargeld: %6 € Gangkonto: %7 €",profileName,(getPlayerUID player),_vehiclehusky,[_sellPrice] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText,[_gFund] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];


if (husky_SETTINGS(getNumber,"player_advancedLog") isEqualTo 1) then {
    if (husky_SETTINGS(getNumber,"battlEye_friendlyLogging") isEqualTo 1) then {
        advanced_log = format [localize "STR_DL_AL_soldVehicle_BEF",_vehiclehusky,[_sellPrice] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText];
    } else {
        advanced_log = format [localize "STR_DL_AL_soldVehicle",profileName,(getPlayerUID player),_vehiclehusky,[_sellPrice] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText];
    };
    publicVariableServer "advanced_log";
};


husky_action_delay = time;
closeDialog 0;