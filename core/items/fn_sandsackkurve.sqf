/*
 File: fn_sandsackkurve.sqf
 Author: OLLI aka Hauklotz
 Description:
 Holt das Item aus dem Inventar und setzt es auf der Map.
 
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_position","_sandsackkurve"];

_sandsackkurve = "Land_BagFence_Round_F" createVehicle [0,0,0];
_sandsackkurve attachTo[player,[0,1.5,0.2]];
_sandsackkurve setDir 90;
_sandsackkurve setVariable["item","sandsackkurveDeployed",true];

husky_action_sandsackkurveDeploy = player addAction["<t color='#00FF00'>Sandsack (kurve)</t>",{if (!isNull husky_sandsackkurve) then {detach husky_sandsackkurve; husky_sandsackkurve = ObjNull;}; player removeAction husky_action_sandsackkurveDeploy; husky_action_sandsackkurveDeploy = nil;},"",999,false,false,"",'!isNull husky_sandsackkurve'];
husky_sandsackkurve = _sandsackkurve;
waitUntil {isNull husky_sandsackkurve};
if (!isNil "husky_action_sandsackkurveDeploy") then {player removeAction husky_action_sandsackkurveDeploy;};
if (isNull _sandsackkurve) exitWith {husky_sandsackkurve = ObjNull;};
_sandsackkurve setPos [(getPos _sandsackkurve select 0),(getPos _sandsackkurve select 1),0];
_sandsackkurve allowDamage false;
_sandsackkurve enableSimulation false;