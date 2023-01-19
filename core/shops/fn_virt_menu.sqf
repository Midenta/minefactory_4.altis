#include "..\..\script_macros.hpp"
/*
    File: fn_virt_menu.sqf
    Author: Deathman
    Description:
    Initialize the virtual shop menu.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

params [
    ["_shopNPC", objNull, [objNull]],
    "",
    "",
    ["_shopType", "", [""]]
];

if (isNull _shopNPC || {_shopType isEqualTo ""}) exitWith {};

private _shopSide = M_CONFIG(getText,"VirtualShops",_shopType,"side");

husky_shop_type = _shopType;
husky_shop_npc = _shopNPC;

private _exit = false;

if !(_shopSide isEqualTo "") then {
    private _flag = switch (playerSide) do {case west: {"cop"}; case independent: {"med"}; default {"civ"};};
    if !(_flag isEqualTo _shopSide) then {_exit = true;};
};

if (_exit) exitWith {};

private _conditions = M_CONFIG(getText,"VirtualShops",_shopType,"conditions");

if !([_conditions] call husky_fnc_levelCheck) exitWith {hint localize "STR_Shop_Veh_NotAllowed";};
disableSerialization;
createDialog "shops_menu";

[] call husky_fnc_virt_update;
