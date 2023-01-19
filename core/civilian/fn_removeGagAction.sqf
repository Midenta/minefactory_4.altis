#include "..\..\script_macros.hpp"
/*
    File: fn_removeGagAction.sqf
    Author: Lowheartrate & Panda

    Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {};
if(!(_unit getVariable "gagged")) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
_unit setVariable["gagged",false,true];