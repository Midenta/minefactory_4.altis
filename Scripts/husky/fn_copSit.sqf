#include "..\..\script_macros.hpp"
/*

	File: fn_copSit.sqf
	Author: ToxicRageTv

	Description: makes the target sit
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
	
*/
private ["_unit"];
_unit = param [0,objNull,[objNull]];
if (isNull _unit) exitWith {}; //Not valid
if (player getVariable "husky_cop_sitting") exitWith {};

player setVariable ["husky_cop_sitting",true];

[] spawn {
	while {player getVariable "husky_cop_sitting" && player getVariable "restrained"} do {
		if (animationState player != "Acts_AidlPsitMstpSsurWnonDnon02") then {
			[player,"Acts_AidlPsitMstpSsurWnonDnon02",true] remoteExecCall ["husky_fnc_animSync",RCLIENT];
			player switchMove "Acts_AidlPsitMstpSsurWnonDnon02";
			player playMoveNow "Acts_AidlPsitMstpSsurWnonDnon02";
		};
		if (!(player getVariable "husky_cop_sitting") || !(player getVariable "restrained")) exitWith {
			player switchMove "";
			player playMoveNow "";
			player playActionNow "stop";
		};
	};
	player setVariable ["husky_cop_sitting",false,true];
};