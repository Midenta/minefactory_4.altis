#include "..\..\script_macros.hpp"
/*
    File: fn_chopShopSell.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Sells the selected vehicle off.
*/
disableSerialization;
private ["_control","_price","_vehicle","_nearVehicles","_price2","_chopable"];
_control = CONTROL(39400,39402);
_price = _control lbValue (lbCurSel _control);
_vehicle = _control lbData (lbCurSel _control);
_vehicle = call compile format ["%1", _vehicle];
_chopable = husky_SETTINGS(getArray,"chopShop_vehicles");
_nearVehicles = nearestObjects [getMarkerPos husky_chopShop,_chopable,25];
_vehicle = (_nearVehicles select _vehicle);
if (isNull _vehicle) exitWith {};

hint localize "STR_Shop_ChopShopSelling";
husky_action_inUse = true;
_price2 = c126 + _price;
[0] call SOCK_fnc_updatePartial;

if (husky_HC_isActive) then {
    [player,_vehicle,_price,_price2] remoteExecCall ["HC_fnc_chopShopSell",HC_husky];
} else {
    [player,_vehicle,_price,_price2] remoteExecCall ["TON_fnc_chopShopSell",RSERV];
};

[getPlayerUID player, "choppedVehicle", format ["%1 - %2 hat das Fahrzeug %3 %4 für %5 € %6 € beim Schrotthändler verschrottet. Bargeld(vor Schrott): %7 € | Bank: %8 €",profileName,(getPlayerUID player),_vehicle,_nearVehicles,[_price] call husky_fnc_numberText,[_price2] call husky_fnc_numberText,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];


if (husky_SETTINGS(getNumber,"player_advancedLog") isEqualTo 1) then {
    if (husky_SETTINGS(getNumber,"battlEye_friendlyLogging") isEqualTo 1) then {
        advanced_log = format [localize "STR_DL_AL_choppedVehicle_BEF",_vehicle,[_price] call husky_fnc_numberText,[c126] call husky_fnc_numberText];
    } else {
        advanced_log = format [localize "STR_DL_AL_choppedVehicle",profileName,(getPlayerUID player),_vehicle,[_price] call husky_fnc_numberText,[c126] call husky_fnc_numberText];
    };
    publicVariableServer "advanced_log";
};

closeDialog 0;
