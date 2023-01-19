#include "..\..\script_macros.hpp"
/*
    File: fn_safeStore.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Gateway copy of fn_vehStoreItem but designed for the safe.
	
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_ctrl","_num"];
disableSerialization;
_ctrl = CONTROL_DATA(3503);
_num = ctrlText 3506;

//Error checks
if (!([_num] call TON_fnc_isnumber)) exitWith {hint localize "STR_MISC_WrongNumFormat";};
_num = parseNumber(_num);
if (_num < 1) exitWith {hint localize "STR_Cop_VaultUnder1";};
if (!(_ctrl isEqualTo "goldBar")) exitWith {hint localize "STR_Cop_OnlyGold"};
if (_num > husky_inv_goldbar) exitWith {hint format [localize "STR_Cop_NotEnoughGold",_num];};

//Store it.
if (!([false,_ctrl,_num] call husky_fnc_handleInv)) exitWith {hint localize "STR_Cop_CantRemove";};
_safeInfo = husky_safeObj getVariable ["safe",0];
husky_safeObj getVariable ["safe",_safeInfo + _num,true];

[husky_safeObj] call husky_fnc_safeInventory;
