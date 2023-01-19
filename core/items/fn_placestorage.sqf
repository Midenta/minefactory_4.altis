#include "..\..\script_macros.hpp"
/*
    File : fn_placestorage.sqf
    Author: NiiRoZz

    Description:
    PLace container were player select with preview
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

*/
private ["_container","_isFloating"];

if (!husky_container_active) exitWith {};
if (husky_container_activeObj isEqualTo objNull) exitWith {};
if (!((typeOf husky_container_activeObj) in ["Land_PlasticCase_01_large_CBRN_F","B_supplyCrate_F", "Land_PaperBox_closed_F", "Box_East_AmmoVeh_F", "Land_MetalBarrel_F","HazmatBag_01_F", "Land_WaterBarrel_F", "Land_WaterTank_F"])) exitWith {};

_container = husky_container_activeObj;
_isFloating = if (((getPos _container) select 2) < 0.1) then {false} else {true};
detach _container;
[_container,true] remoteExecCall ["husky_fnc_simDisable",RANY];
_container setPosATL [getPosATL _container select 0, getPosATL _container select 1, (getPosATL _container select 2) + 0.7];
_container allowDamage false;

if ((typeOf _container) in ["Land_PlasticCase_01_large_CBRN_F"]) then {
    [false,"storagefest1",1] call husky_fnc_handleInv;
};
if ((typeOf _container) in ["B_supplyCrate_F"]) then {
    [false,"storagefest2",1] call husky_fnc_handleInv;
};
if ((typeOf _container) in ["Land_PaperBox_closed_F"]) then {
    [false,"storagefest3",1] call husky_fnc_handleInv;
};
if ((typeOf _container) in ["Box_East_AmmoVeh_F"]) then {
    [false,"storagefest4",1] call husky_fnc_handleInv;
};
if ((typeOf _container) in ["HazmatBag_01_F"]) then {
    [false,"storageuran1",1] call husky_fnc_handleInv;
};
if ((typeOf _container) in ["Land_MetalBarrel_F"]) then {
    [false,"storageflussig1",1] call husky_fnc_handleInv;
};
if ((typeOf _container) in ["Land_WaterBarrel_F"]) then {
    [false,"storageflussig2",1] call husky_fnc_handleInv;
};
if ((typeOf _container) in ["Land_WaterTank_F"]) then {
    [false,"storageflussig3",1] call husky_fnc_handleInv;
};


/*	//Entfernt Item maby
if ((typeOf _container) in ["B_supplyCrate_F", "Box_East_Wps_Special_F", "Box_East_AmmoVeh_F", "O_CargoNet_01_ammo_F", "C_IDAP_CargoNet_01_supplies_F"]) then {
    [false,"storagebig",1] call husky_fnc_handleInv;
} else {
    [false,"storagesmall",1] call husky_fnc_handleInv;
};
*/



[_container, _isFloating] call husky_fnc_placeContainer;
husky_container_active = false;
husky_container_activeObj = objNull;
