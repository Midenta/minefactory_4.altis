#include "..\..\script_macros.hpp"
/*
	File: fn_vehicleWarned.sqf
	Author/Copyright: © 2014 nano2K - written for we-are-friendly.de
	Edited by: blackfisch for Native-Network
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_vehicle"];
_vehicle =  [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if (isNull _vehicle) exitWith {};
if ((_vehicle getVariable ["nano_warned", false])) exitWith {};
_vehicle setVariable["nano_warned",true,true];
titleText [localize "STR_MISC_emp_warn_1","PLAIN",2]; titleFadeOut 4;
//["EMP Warnung erhalten!", "Information"] spawn husky_fnc_createNotification;
_vehicle say3D "empwarn";
sleep 3.35;
_vehicle say3D "empwarn";
sleep 3.35;
_vehicle say3D "empwarn";
sleep 3.35;
_vehicle setVariable["nano_warned",false,true];