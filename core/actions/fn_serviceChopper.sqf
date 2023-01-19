#include "..\..\script_macros.hpp"
/*
    File: fn_serviceChopper.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Main functionality for the chopper service paid, to be replaced in later version.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
	
	this addAction[localize"STR_MAR_Service_helicopter",husky_fnc_serviceChopper,"",1.5,false,false,"","",4];
*/
private ["_serviceCost"];
disableSerialization;
private ["_search","_ui","_progress","_cP","_pgText"];
if (husky_action_inUse) exitWith {hint localize "STR_NOTF_Action"};

_serviceCost = husky_SETTINGS(getNumber,"service_chopper");
_search = nearestObjects[getPos air_sp, ["Air"],10];

if (count _search isEqualTo 0) exitWith {hint localize "STR_Service_Chopper_NoAir"};
if (c126 < _serviceCost) exitWith {hint localize "STR_Serive_Chopper_NotEnough"};

husky_action_inUse = true;
"progressBar" cutRsc ["husky_progress","PLAIN"];
_ui = uiNamespace getVariable "husky_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format [localize "STR_Service_Chopper_Servicing","waiting..."];
_progress progressSetPosition 0.01;
_cP = 0.01;

for "_i" from 0 to 1 step 0 do {
    uiSleep  0.2;
    _cP = _cP + 0.01;
    _progress progressSetPosition _cP;
    _pgText ctrlSetText format [localize "STR_Service_Chopper_Servicing",round(_cP * 100)];
    if (_cP >= 1) exitWith {};
};

if (!alive (_search select 0) || (_search select 0) distance air_sp > 15) exitWith {husky_action_inUse = false; hint localize "STR_Service_Chopper_Missing"};

c126 = c126 - _serviceCost;
if (!local (_search select 0)) then {
    [(_search select 0),1] remoteExecCall ["husky_fnc_setFuel",(_search select 0)];
} else {
    (_search select 0) setFuel 1;
};

(_search select 0) setDamage 0;

"progressBar" cutText ["","PLAIN"];
titleText [localize "STR_Service_Chopper_Done","PLAIN"];
husky_action_inUse = false;

