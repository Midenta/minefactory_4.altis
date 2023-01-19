/*
 File: fn_sandsackende.sqf
 Author: OLLI aka Hauklotz
 Description:
 Holt das Item aus dem Inventar und setzt es auf der Map.
 
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_position","_sandsackende"];
_sandsackende = "Land_BagFence_End_F" createVehicle [0,0,0];
_sandsackende attachTo[player,[0,1.5,0.2]];
_sandsackende setDir 90;
_sandsackende setVariable["item","sandsackendeDeployed",true];
husky_action_sandsackendeDeploy = player addAction["<t color='#00FF00'>Sandsack (ende)</t>",{if (!isNull husky_sandsackende) then {detach husky_sandsackende; husky_sandsackende = ObjNull;}; player removeAction husky_action_sandsackendeDeploy; husky_action_sandsackendeDeploy = nil;},"",999,false,false,"",'!isNull husky_sandsackende'];
husky_sandsackende = _sandsackende;
waitUntil {isNull husky_sandsackende};
if (!isNil "husky_action_sandsackendeDeploy") then {player removeAction husky_action_sandsackendeDeploy;};
if (isNull _sandsackende) exitWith {husky_sandsackende = ObjNull;};
_sandsackende setPos [(getPos _sandsackende select 0),(getPos _sandsackende select 1),0];
_sandsackende allowDamage false;
_sandsackende enableSimulation false;