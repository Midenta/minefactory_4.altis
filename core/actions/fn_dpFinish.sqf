#include "..\..\script_macros.hpp"
/*
    File: fn_dpFinish.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Finishes the DP Mission and calculates the money earned based
    on distance between A->B
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

	Notice:
	This is Old _dp = [_this,0,objNull,[objNull]] call BIS_fnc_param;
*/
params [
	["_db",objNull,[objNull]]
];

husky_delivery_in_progress = false;
husky_dp_point = nil;
private _dis = round((getPos husky_dp_start) distance (getPos _dp));
private _price = round(2.7 * _dis);		//Geld multiplikator

[] call husky_fnc_craftitems;

["DeliverySucceeded",[format [(localize "STR_NOTF_Earned_1"),[_price] call husky_fnc_numberText]]] call bis_fnc_showNotification;
husky_cur_task setTaskState "Succeeded";
player removeSimpleTask husky_cur_task;

c126 = c126 + _price;
[0] call SOCK_fnc_updatePartial;

[getPlayerUID player, "DP Geld", format ["%1 - %2 hat einen Distanz %4 zur�ckgelegt f�r %3 � gekauft. Bargeld: %5 � Bankkonto: %6 �",profileName,(getPlayerUID player),[_price] call husky_fnc_numberText,_dis,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
