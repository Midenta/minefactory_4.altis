/*
 File: fn_sandsackecke.sqf
 Author: OLLI aka Hauklotz
 Description:
 Holt das Item aus dem Inventar und setzt es auf der Map.
 
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_position","_sandsackecke"];
_sandsackecke = "Land_BagFence_Corner_F" createVehicle [0,0,0];
_sandsackecke attachTo[player,[0,1.5,0.2]];
_sandsackecke setDir 90;
_sandsackecke setVariable["item","sandsackeckeDeployed",true];
husky_action_sandsackeckeDeploy = player addAction["<t color='#00FF00'>Sandsack (ecke)</t>",{if (!isNull husky_sandsackecke) then {detach husky_sandsackecke; husky_sandsackecke = ObjNull;}; player removeAction husky_action_sandsackeckeDeploy; husky_action_sandsackeckeDeploy = nil;},"",999,false,false,"",'!isNull husky_sandsackecke'];
husky_sandsackecke = _sandsackecke;
waitUntil {isNull husky_sandsackecke};
if (!isNil "husky_action_sandsackeckeDeploy") then {player removeAction husky_action_sandsackeckeDeploy;};
if (isNull _sandsackecke) exitWith {husky_sandsackecke = ObjNull;};
_sandsackecke setPos [(getPos _sandsackecke select 0),(getPos _sandsackecke select 1),0];
_sandsackecke allowDamage false;
_sandsackecke enableSimulation false;