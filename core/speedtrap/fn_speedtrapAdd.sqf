
if (isNil "husky_speedtrap") then {husky_speedtrap = ObjNull;};

private["_speedtrap"];

if (playerSide != west) exitWith {hint "Dafür hast du keine Ausbildung.";};
if (vehicle player != player) exitWith {hint "Du kannst das nicht in einem Auto Aufbauen?";};
if (!isNull husky_speedtrap) exitWith {hint "Du stellst gerade schon einen Blitzer auf";};


//if ((missionNamespace getVariable ["radarfalle",0]) isEqualTo 0 ) exitWith {};
  if (husky_inv_radarfalle < 1) exitWith { hint "Du hast kein mobilen Blitzer." };

/*
_var_speedtrap = ["radarfalle",0] call husky_fnc_handleInv;
_value_speedtrap = missionNamespace getVariable _var_speedtrap;
if (_value_speedtrap <= 0) exitWith {};
  */

_speedtrap = "Land_Runway_PAPI_4" createVehicle (position player);
_speedtrap setpos  (player modelToWorld [0,1,0]);
_speedtrap setDir ([_speedtrap, player] call BIS_fnc_dirTo);
//_speedtrap allowdamage false;
_speedtrap attachTo[player,[0,1.5,0.5]];
_speedtrap setDir 180;
_speedtrap allowdamage false;

husky_action_speedtrapDeploy = player addAction["Platziere Blitzer",{if (!isNull husky_speedtrap) then {detach husky_speedtrap; husky_speedtrap = ObjNull;}; player removeAction husky_action_speedtrapDeploy; husky_action_speedtrapDeploy = nil;},"",999,false,false,"",'!isNull husky_speedtrap'];
husky_speedtrap = _speedtrap;
waitUntil {isNull husky_speedtrap};
if (!isNil "husky_action_speedtrapDeploy") then {player removeAction husky_action_speedtrapDeploy;};
if (isNull _speedtrap) exitWith {};
_speedtrap setPos [(getPos _speedtrap select 0),(getPos _speedtrap select 1),0];

_speedtrap setVariable ["speedtrap_registered", true, true];
_speedtrap setVariable ["speedtrap_active", true, true];
_speedtrap setVariable ["speedtrap_status", false, true];		//Zum reparieren von blitzer
_speedtrap setVariable ["speedtrap_speedlimit", 50, true];
_speedtrap setVariable ["speedtrap_photos", [], true];
_speedtrap setVariable ["speedtrap_name",name player, true];

if (!([false,"radarfalle",1] call husky_fnc_handleInv)) exitWith
{
    deleteVehicle _speedtrap;
};
