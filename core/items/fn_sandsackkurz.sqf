/*
 File: fn_sandsackkurz.sqf
 Author: OLLI aka Hauklotz
 Description:
 Holt das Item aus dem Inventar und setzt es auf der Map.
 
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_position","_sandsackkurz"];
_sandsackkurz = "Land_BagFence_Short_F" createVehicle [0,0,0];
_sandsackkurz attachTo[player,[0,1.5,0.2]];
_sandsackkurz setDir 90;
_sandsackkurz setVariable["item","sandsackkurzDeployed",true];
husky_action_sandsackkurzDeploy = player addAction["<t color='#00FF00'>Sandsack (kurz)</t>",{if (!isNull husky_sandsackkurz) then {detach husky_sandsackkurz; husky_sandsackkurz = ObjNull;}; player removeAction husky_action_sandsackkurzDeploy; husky_action_sandsackkurzDeploy = nil;},"",999,false,false,"",'!isNull husky_sandsackkurz'];
husky_sandsackkurz = _sandsackkurz;
waitUntil {isNull husky_sandsackkurz};
if (!isNil "husky_action_sandsackkurzDeploy") then {player removeAction husky_action_sandsackkurzDeploy;};
if (isNull _sandsackkurz) exitWith {husky_sandsackkurz = ObjNull;};
_sandsackkurz setPos [(getPos _sandsackkurz select 0),(getPos _sandsackkurz select 1),0];
_sandsackkurz allowDamage false;
_sandsackkurz enableSimulation false;