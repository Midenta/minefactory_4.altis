#include "..\..\script_macros.hpp"
/*
    File: fn_buyHouseGarage.sqf
    Author: BoGuu
    Description:
    Buy functionality for house garages.
*/

private _house = param [0,objNull,[objNull]];
private _uid = getPlayerUID player;

if (isNull _house) exitWith {};
if (_house getVariable ["garageBought",false]) exitWith {hint localize "STR_Garage_alreadyOwned";};
if ((_house getVariable "house_owner") select 0 != getPlayerUID player) exitWith {hint localize "STR_Garage_NotOwner";};
if (_house getVariable "blacklistedGarage") exitWith {hint "Objekt ist nicht kaufbar";};
closeDialog 0;

private _price = husky_SETTINGS(getNumber,"houseGarage_buyPrice");

_action = [
    format [localize "STR_Garage_HouseBuyMSG",
    [_price] call husky_fnc_numberText],
    localize "STR_House_GaragePurchase",
    localize "STR_Global_Buy",
    localize "STR_Global_Cancel"
] call BIS_fnc_guiMessage;

if (_action) then {

    if (b126 < _price) exitWith {hint format [localize "STR_House_NotEnough"]};
    b126 = b126 - _price;
    [1] call SOCK_fnc_updatePartial;

    if (husky_HC_isActive) then {
        [_uid,_house,0] remoteExec ["HC_fnc_houseGarage",HC_husky];
    } else {
        [_uid,_house,0] remoteExec ["TON_fnc_houseGarage",RSERV];
    };

    _house setVariable ["garageBought",true,true];

};