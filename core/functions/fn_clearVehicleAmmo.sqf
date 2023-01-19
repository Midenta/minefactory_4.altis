#include "..\..\script_macros.hpp"
/*
    File: fn_clearVehicleAmmo.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Clears the vehicle of ammo types that we don't want.

    Syntax: _vehicle removeMagazinesTurret [magazineName, turretPath]
    Documentation: https://community.bistudio.com/wiki/removeMagazinesTurret
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_vehicle","_veh"];
_vehicle = [_this,0,objNull,[objNull]] call BIS_fnc_param;
if (isNull _vehicle) exitWith {};
_veh = typeOf _vehicle;
/*
if (_veh isEqualTo "B_Boat_Armed_01_minigun_F") then {
    _vehicle removeMagazinesTurret ["200Rnd_40mm_G_belt",[0]];
};*/
/*
if (_veh isEqualTo "B_APC_Wheeled_01_cannon_F") then {
    _vehicle removeMagazinesTurret ["60Rnd_40mm_GPR_Tracer_Red_shells",[0]];
    _vehicle removeMagazinesTurret ["40Rnd_40mm_APFSDS_Tracer_Red_shells",[0]];
};
*/

if (_veh isEqualTo "O_Heli_Attack_02_F") then {
    _vehicle removeMagazinesTurret ["250Rnd_30mm_APDS_shells",[0]];
    _vehicle removeMagazinesTurret ["8Rnd_LG_scalpel",[0]];
    _vehicle removeMagazinesTurret ["38Rnd_80mm_rockets",[0]];
};
/*
if (_veh isEqualTo "B_Heli_Transport_01_F") then {
    _vehicle removeMagazinesTurret ["2000Rnd_65x39_Belt_Tracer_Red",[1]];
    _vehicle removeMagazinesTurret ["2000Rnd_65x39_Belt_Tracer_Red",[2]];
};
*/

if (_veh isEqualTo "O_T_VTOL_02_infantry_F") then {
 //Y-32 Infantry
 {_vehicle removeWeapon _x} forEach weapons _vehicle;
 {_vehicle removeMagazine _x} forEach magazines _vehicle;
};

if (_veh isEqualTo "O_T_VTOL_02_vehicle_F") then {
 //Y-32 Vehicle
 {_vehicle removeWeapon _x} forEach weapons _vehicle;
 {_vehicle removeMagazine _x} forEach magazines _vehicle;
};

if (_veh isEqualTo "O_APC_Wheeled_02_rcws_F") then {
 //Marid
 _vehicle animate ["HideTurret",1];
 {_vehicle removeWeapon _x} forEach weapons _vehicle;
 {_vehicle removeMagazine _x} forEach magazines _vehicle;
};
if (_veh isEqualTo "B_AFV_Wheeled_01_cannon_F") then {
 //Rhino MGS
 _vehicle animate ["HideTurret",1];
 {_vehicle removeWeapon _x} forEach weapons _vehicle;
 {_vehicle removeMagazine _x} forEach magazines _vehicle;
};

if (_veh isEqualTo "I_LT_01_scout_F") then {
 //AWC 303 NYX Aufklärer
 //_vehicle animate ["HideTurret",1];
 {_vehicle removeWeapon _x} forEach weapons _vehicle;
 {_vehicle removeMagazine _x} forEach magazines _vehicle;
};
if (_veh isEqualTo "I_LT_01_AT_F") then {
 //AWC 301 Nyx (AT)
 _vehicle animate ["HideTurret",1];
 {_vehicle removeWeapon _x} forEach weapons _vehicle;
 {_vehicle removeMagazine _x} forEach magazines _vehicle;
};

if (_veh isEqualTo "B_MBT_01_mlrs_F") then {
 //M5 Sandstorm MLRS
 _vehicle animate ["HideTurret",1];
 {_vehicle removeWeapon _x} forEach weapons _vehicle;
 {_vehicle removeMagazine _x} forEach magazines _vehicle;
};

if (_veh isEqualTo "O_Heli_Attack_02_F") then {
 //Kajman
 {_vehicle removeWeapon _x} forEach weapons _vehicle;
 {_vehicle removeMagazine _x} forEach magazines _vehicle;
};

if (_veh isEqualTo "B_Heli_Attack_01_F") then {
 //Blackfoot
 {_vehicle removeWeapon _x} forEach weapons _vehicle;
 {_vehicle removeMagazine _x} forEach magazines _vehicle;
};

if (_veh isEqualTo "B_Plane_CAS_01_F") then {
 //Wipeout Jet
 {_vehicle removeWeapon _x} forEach weapons _vehicle;
 {_vehicle removeMagazine _x} forEach magazines _vehicle;
};

/*
if (_veh isEqualTo "B_Boat_Armed_01_minigun_F") then {
 //Speedboot HMG
 {_vehicle removeWeapon _x} forEach weapons _vehicle;
 {_vehicle removeMagazine _x} forEach magazines _vehicle;
};
*/

if (_veh isEqualTo "B_APC_Wheeled_03_cannon_F") then {
 //Gorgon
 _vehicle animate ["HideTurret",1];
 {_vehicle removeWeapon _x} forEach weapons _vehicle;
 {_vehicle removeMagazine _x} forEach magazines _vehicle;
};

if (_veh isEqualTo "B_APC_Wheeled_01_cannon_F") then {
 //Marshall
 _vehicle animate ["HideTurret",1];
 {_vehicle removeWeapon _x} forEach weapons _vehicle;
 {_vehicle removeMagazine _x} forEach magazines _vehicle;
};

if (_veh isEqualTo "B_APC_Tracked_01_CRV_F") then {
 //Bobcat
 _vehicle animate ["HideTurret",1];
 {_vehicle removeWeapon _x} forEach weapons _vehicle;
 {_vehicle removeMagazine _x} forEach magazines _vehicle;
};

if (_veh isEqualTo "B_UAV_05_F") then {
 //Sentinal Drohne
 {_vehicle removeWeapon _x} forEach weapons _vehicle;
 {_vehicle removeMagazine _x} forEach magazines _vehicle;
};

clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
clearItemCargoGlobal _vehicle;
clearBackpackCargoGlobal _vehicle;
