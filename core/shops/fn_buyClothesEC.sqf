#include "..\..\script_macros.hpp"
/*
    File: fn_buyClothesEC.sqf
    Author: Bryan "Tonic" Boardwine edit by Deathman / MrFrost

    Description:
    Buys the current set of clothes and closes out of the shop interface.
*/
private "_price";
if ((tvCurSel 3101) isEqualTo -1) exitWith {titleText[localize "STR_Shop_NoClothes","PLAIN"];};

_price = 0;
{
    if (!(_x isEqualTo -1)) then {
        _price = _price + _x;
    };
} forEach husky_clothing_purchase;

if (_price > b126) exitWith {titleText[localize "STR_Shop_NotEnoughClothesEC","PLAIN"];};
b126 = b126 - _price;

[getPlayerUID player, "Buy-Kleidung EC", format ["%1 - %2 hat %3 � bezahlt. Bargeld: %4 � Bankkonto: %5 �",profileName,(getPlayerUID player),[_price] call husky_fnc_numberText,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
[1] call SOCK_fnc_updatePartial;
[] call husky_fnc_hudUpdate;
husky_clothesPurchased = true;
[player, uniform player] call husky_fnc_playerSkins;
closeDialog 0;
