#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/


/*
	File: sitdown.sqf
	Author: John "Paratus" VanderZwet
	Description:
	Sit in a chair!
*/


//diag_log "fn_sitdown.sqf Test 1";
//diag_log husky_sitting;
private ["_chair","_unit","_dir","_z"];




_chair = _this select 0; 
_unit = _this select 1;
//_action = [_this,2] call BIS_fnc_param;



if (!isNull husky_sitting) exitWith { hint "Du sitzt schon!" };
if (vehicle _unit != _unit) exitWith { hint "Du sitzt schon hier!" };
if (_unit distance _chair > 4) exitWith { hint "Ich hoffe deine F��e sind nicht so lang?" };
if (_unit getVariable ["restrained",false]) exitWith {};
if (_unit getVariable ["isTazed",false]) exitWith {};




if (!isNull (_chair getVariable ["sitting", objNull])) exitWith { hint "Da sitz schon jemand?"; };




_dir = switch (typeOf _chair) do
{
	case "Land_ChairPlastic_F": { 270 };
	case "Land_CampingChair_V1_F": { 180 };
	case "Land_CampingChair_V2_F": { 180 };
	case "Land_ChairWood_F": { 180 };
	case "Land_OfficeChair_01_F": { 180 };
	
	case "Land_CampingChair_V2_white_F": { 180 };
	case "Land_RattanChair_01_F": { 180 };
	case "Land_WoodenLog_F": { 180 };
	
	default { 180 };
};


//diag_log "fn_sitdown.sqf Test 2";

_z = switch (typeOf _chair) do
{
	default { 0 };
};


//diag_log husky_sitting;

_posATL = getPosATL _chair;
_obj = "Land_ClutterCutter_small_F" createVehicle (_posATL);
_obj setPosATL (_posATL);
_obj setDir ((direction _chair) - _dir);
_obj setVariable ["idleTime", time, true];

_unit setPos (getPos _chair); 
_unit setDir ((getDir _chair) - 180);
_unit setposATL [getposATL _unit select 0, getposATL _unit select 1,((getposATL _unit select 2) +0.3)];


//_unit attachTo [_obj,[0,0,_z]];
husky_sitting = _obj;
_chair setVariable ["sitting", _unit, true];




[_unit,"Crew","switch",true] remoteExecCall ["husky_fnc_animSync",RCLIENT];
_action = _unit addAction ["<t color='#B45F04'>Aufstehen</t>","Scripts\Chair\standup.sqf"];




waitUntil { isNull husky_sitting || !(alive _unit) || player distance (getPos _chair) > 2 };


//diag_log "fn_sitdown.sqf Test 3";

_unit removeAction _action;
husky_sitting = objNull;
_chair setVariable ["sitting", nil, true];
if (isNull attachedTo _unit) then
{
	if (attachedTo _unit == _obj) then { detach _unit; deleteVehicle _obj; };
};

/*
_chair = _this select 0; 
_unit = _this select 1; 

[[_unit, "Crew"], "MAC_fnc_switchMove"] spawn BIS_fnc_MP; 
_unit setPos (getPos _chair); 
_unit setDir ((getDir _chair) - 180); 
standup = _unit addaction ["<t color='#0099FF'>Aufstehen</t>","Scripts\Chair\standup.sqf"];
_unit setpos [(getpos _unit) select 0, (getpos _unit) select 1,(((getpos _unit) select 2) +1)];
*/