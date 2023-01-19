#include "..\..\script_macros.hpp"
/*
    File: fn_gagAction.sqf
    Author: Lowheartrate & Panda

    Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

if (!([false,"knebel",1] call husky_fnc_handleInv)) exitWith {hintSilent "Du hast kein Knebel!";};

private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {};
if((player distance _unit > 3)) exitWith {};
if((_unit getVariable "gagged")) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
_unit setVariable["gagged",true,true];
[player] remoteExec ["husky_fnc_gagged", _unit,false]; 
hint format["Du hast %1 geknebelt.", _unit getVariable["realname",_unit]];

//[getPlayerUID player, "Robbed Target Fail", format ["%1 - %2 hat %3  ausgeraubt.  Bargeld: %4 € Bankkonto: %5 €",profileName,(getPlayerUID player),name _robber,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
 