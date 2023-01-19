#include "..\..\script_macros.hpp"
/*
    File: fn_sellHouseGarage.sqf
    Author: BoGuu
    Description:
    Sell functionality for house garages.
*/

private _house = param [0,objNull,[objNull]];
private _uid = getPlayerUID player;

if (isNull _house) exitWith {};
if !(_house getVariable ["garageBought",false]) exitWith {hint localize "STR_Garage_NotOwned";};
if ((_house getVariable "house_owner") select 0 != getPlayerUID player) exitWith {hint localize "STR_Garage_NotOwner";};
closeDialog 0;

private _sellPrice = husky_SETTINGS(getNumber,"houseGarage_sellPrice");

_action = [
    format [localize "STR_House_SellGarageMSG",
    [_sellPrice] call husky_fnc_numberText],
    localize "STR_House_GarageSell",
    localize "STR_Global_Sell",
    localize "STR_Global_Cancel"
] call BIS_fnc_guiMessage;

if (_action) then {

	if (gettingBought > 1) exitWith { hint localize "STR_House_CoolDown"; };

    if (husky_HC_isActive) then {
        [_uid,_house,1] remoteExec ["HC_fnc_houseGarage",HC_husky];
    } else {
        [_uid,_house,1] remoteExec ["TON_fnc_houseGarage",RSERV];
    };

    b126 = b126 + _sellPrice;
    [1] call SOCK_fnc_updatePartial;

    _house setVariable ["garageBought",false,true];

};
[getPlayerUID player, "soldGarage", format ["%1 - %2 hat sich eine Garage f�r %3 � verkauft. Bargeld: %4 � Bankkonto: %5 �",profileName,(getPlayerUID player),[_sellPrice] call husky_fnc_numberText],[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

closeDialog 0;

sleep 60;
gettingBought = 0; 