/*
 File: fn_holzbox.sqf
 Author: OLLI aka Hauklotz
 Description:
 Holt das Item aus dem Inventar und setzt es auf der Map.
 
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_position","_holzbox"];
_holzbox = "Land_WoodenBox_F" createVehicle [0,0,0];
_holzbox attachTo[player,[0,1.5,0.2]];
_holzbox setDir 90;
_holzbox setVariable["item","holzboxDeployed",true];
husky_action_holzboxDeploy = player addAction["<t color='#00FF00'>Holzbox</t>",{if (!isNull husky_holzbox) then {detach husky_holzbox; husky_holzbox = ObjNull;}; player removeAction husky_action_holzboxDeploy; husky_action_holzboxDeploy = nil;},"",999,false,false,"",'!isNull husky_holzbox'];
husky_holzbox = _holzbox;
waitUntil {isNull husky_holzbox};
if (!isNil "husky_action_holzboxDeploy") then {player removeAction husky_action_holzboxDeploy;};
if (isNull _holzbox) exitWith {husky_holzbox = ObjNull;};
_holzbox setPos [(getPos _holzbox select 0),(getPos _holzbox select 1),0];
_holzbox allowDamage false;
_holzbox enableSimulation false;