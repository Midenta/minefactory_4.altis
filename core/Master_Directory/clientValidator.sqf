#include "..\..\script_macros.hpp"
/*
    File: clientValidator.sqf
    Author:

    Description:
    Loops through a list of variables and checks whether
    or not they are defined, if they are defined then trigger
    spyglass and kick the client to the lobby.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_vars"];
_vars = [
    "husky_revive_fee", "husky_gangPrice", "husky_gangUpgradeBase", "husky_enableFatigue", "husky_paycheck_period", "husky_vShop_rentalOnly", "sell_array", "buy_array",
    "husky_weapon_shop_array", "husky_garage_prices", "husky_garage_sell", "husky_houseLimit", "husky_gangUpgradeMultipler", "husky_impound_car", "husky_impound_boat",
    "husky_impound_air"
];

{
    if (!isNil {(missionNamespace getVariable _x)}) exitWith {
        [profileName, getPlayerUID player, format ["VariableSetBeforeInitialized_%1", _x]] remoteExecCall ["SPY_fnc_cookieJar", RSERV];
        [profileName, format [localize "STR_SpyDetect_VariableSetBeforeClientInitialized", _x]] remoteExecCall ["SPY_fnc_notifyAdmins", RCLIENT];
        sleep 0.5;
        failMission "SpyGlass";
    };
} forEach _vars;