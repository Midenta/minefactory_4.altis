#include "..\..\script_macros.hpp"
/*

	File: fn_copStand.sqf
	Author: ToxicRageTv

	Description: Makes the target stand
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
	
*/
if !(player getVariable "husky_cop_sitting") exitWith {};
player setVariable ["husky_cop_sitting",false,true];
player switchMove "";
player playMoveNow "";
player playActionNow "stop";	