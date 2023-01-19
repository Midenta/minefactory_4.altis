/*
File: fn_gpsTracker.sqf
Author: Poseidon
Edit: DerOnkel
Description: Attaches a gps tracker to selected vehicle

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_vehicle","_name"];
disableSerialization;

_vehicle = cursorObject;
_name = ctrlText 20161;

_length = count (toArray(_name));
_chrByte = toArray (_name);
_allowed = toArray("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_ ");
if (_length > 25) exitWith {hint "Du kannst nur bis zu 25 Zeichen verwenden!"};
if (_length <= 3) exitWith {hint "Du musst mehr als 3 Zeichen verwenden!"};
_badChar = false;
{if (!(_x in _allowed)) exitWith {_badChar = true;};} foreach _chrByte;
if (_badChar) exitWith {hint "Du kannst nur Buchstaben und Zahlen verwenden!";};

if (!([false,"gpstracker",1] call husky_fnc_handleInv)) exitWith {};
closeDialog 0;
husky_action_inUse = true;
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
uisleep 4;
husky_action_inUse = false;

titleText["Du hast einen GPS Tracker an einem Fahrzeug angebracht.","PLAIN"];


/*
[_vehicle,_name] spawn {
	_veh = _this select 0;
	_markerName = format["%1_gpstracker",_veh];
	_marker = createMarkerLocal [_markerName, visiblePosition _veh];
	_marker setMarkerColorLocal "ColorRed";
	_marker setMarkerTypeLocal "Mil_dot";
	_marker setMarkerTextLocal format ["%1 (%2)",(_this select 1),getText(configFile >> "CfgVehicles" >> typeof _veh >> "displayName")];
	_marker setMarkerPosLocal getPos _veh;
	while {true} do {
		if (not alive _veh) exitWith {deleteMarkerLocal _markerName;};
		_marker setMarkerPosLocal getPos _veh;
		uisleep 0.5;
	};
}; 
*/

private ["_markers","_members"];
_markers = [];
_members = [];

[_vehicle,_name] spawn {
_members = units (group player);
	{
		if !(_x isEqualTo player ) then {
			_veh = _this select 0;
			_markerName = format["%1_gpstracker",_veh];
			_marker = createMarkerLocal [_markerName, visiblePosition _veh];
			_marker setMarkerColorLocal "ColorRed";
			_marker setMarkerTypeLocal "Mil_dot";
			_marker setMarkerTextLocal format ["%1 (%2)",(_this select 1),getText(configFile >> "CfgVehicles" >> typeof _veh >> "displayName")];
			_markers pushBack [_marker,_x];
			_marker setMarkerPosLocal getPos _veh;
			
			while {true} do {
				if (not alive _veh) exitWith {deleteMarkerLocal _markerName;};
				_marker setMarkerPosLocal getPos _veh;
				uisleep 0.5;
			};
		};
	} forEach _members;
	
	_veh = _this select 0;
	_markerName = format["%1_gpstracker",_veh];
	_marker = createMarkerLocal [_markerName, visiblePosition _veh];
	_marker setMarkerColorLocal "ColorRed";
	_marker setMarkerTypeLocal "Mil_dot";
	_marker setMarkerTextLocal format ["%1 (%2)",(_this select 1),getText(configFile >> "CfgVehicles" >> typeof _veh >> "displayName")];
	_marker setMarkerPosLocal getPos _veh;
	while {true} do {
		if (not alive _veh) exitWith {deleteMarkerLocal _markerName;};
		_marker setMarkerPosLocal getPos _veh;
		uisleep 0.5;
	};
};

