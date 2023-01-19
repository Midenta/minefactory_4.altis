#include "..\..\script_macros.hpp"
/*
    File: fn_getDPMission.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Selects a random DP point for a delivery mission.
    Needs to be revised.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

    Notice:
    This is Old Stuff _target = param [0,objNull,[objNull]];
*/
params [
    ["_target",objNull,[objNull]]
];
private "_dp";
if (str(_target) in husky_SETTINGS(getArray,"delivery_points")) then {
    private "_point";
    _point = husky_SETTINGS(getArray,"delivery_points");
    _point deleteAt (_point find (str(_target)));
    //_dp = _point call BIS_fnc_selectRandom;
	_dp = selectRandom _point;
} else {
    //_dp = husky_SETTINGS(getArray,"delivery_points") call BIS_fnc_selectRandom;
	_dp = selectRandom husky_SETTINGS(getArray,"deliveryPoints");
};

husky_dp_start = _target;

husky_delivery_in_progress = true;
husky_dp_point = call compile format ["%1",_dp];

_dp = [_dp,"_"," "] call KRON_Replace;
husky_cur_task = player createSimpleTask [format ["Delivery_%1",husky_dp_point]];
husky_cur_task setSimpleTaskDescription [format [localize "STR_NOTF_DPStart",toUpper _dp],"Delivery Job",""];
husky_cur_task setTaskState "Assigned";
player setCurrentTask husky_cur_task;

["DeliveryAssigned",[format [localize "STR_NOTF_DPTask",toUpper _dp]]] call bis_fnc_showNotification;

[] spawn {
    waitUntil {!husky_delivery_in_progress || !alive player};
    if (!alive player) then {
        husky_cur_task setTaskState "Failed";
        player removeSimpleTask husky_cur_task;
        ["DeliveryFailed",[localize "STR_NOTF_DPFailed"]] call BIS_fnc_showNotification;
        husky_delivery_in_progress = false;
        husky_dp_point = nil;
    };
};