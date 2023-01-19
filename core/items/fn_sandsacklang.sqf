/*
 File: fn_sandsacklang.sqf
 Author: OLLI aka Hauklotz
 Description:
 Holt das Item aus dem Inventar und setzt es auf der Map.
 
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_position","_sandsacklang"];
_sandsacklang = "Land_BagFence_Long_F" createVehicle [0,0,0];
_sandsacklang attachTo[player,[0,1.5,0.2]];
_sandsacklang setDir 90;
_sandsacklang setVariable["item","sandsacklangDeployed",true];
husky_action_sandsacklangDeploy = player addAction["<t color='#00FF00'>Sandsack (lang)</t>",{if (!isNull husky_sandsacklang) then {detach husky_sandsacklang; husky_sandsacklang = ObjNull;}; player removeAction husky_action_sandsacklangDeploy; husky_action_sandsacklangDeploy = nil;},"",999,false,false,"",'!isNull husky_sandsacklang'];
husky_sandsacklang = _sandsacklang;
waitUntil {isNull husky_sandsacklang};
if (!isNil "husky_action_sandsacklangDeploy") then {player removeAction husky_action_sandsacklangDeploy;};
if (isNull _sandsacklang) exitWith {husky_sandsacklang = ObjNull;};
_sandsacklang setPos [(getPos _sandsacklang select 0),(getPos _sandsacklang select 1),0];
_sandsacklang allowDamage false;
_sandsacklang enableSimulation false;