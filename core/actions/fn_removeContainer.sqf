#include "..\..\script_macros.hpp"
/*
    File : removeContainer.sqf
    Author: NiiRoZz

    Description:
    Delete Container from house storage
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_house","_action","_container","_containerType","_containers"];
_container = param [0,objNull,[objNull]];
_containerType = typeOf _container;
_house = nearestObject [player, "House"];
if (!(_house in husky_vehicles)) exitWith {hint localize "STR_ISTR_Box_NotinHouse"};
if (isNull _container) exitWith {};
_containers = _house getVariable ["containers",[]];
closeDialog 0;

_action = [
    format [localize "STR_House_DeleteContainerMSG"],localize "STR_pInAct_RemoveContainer",localize "STR_Global_Remove",localize "STR_Global_Cancel"
] call BIS_fnc_guiMessage;

if (_action) then {
    private ["_box","_diff"];
    _box = switch (_containerType) do {
        case ("Land_PlasticCase_01_large_CBRN_F"): {"storagefest1"};
        case ("B_supplyCrate_F"): {"storagefest2"};
		case ("Land_PaperBox_closed_F"): {"storagefest3"};
		case ("Box_East_AmmoVeh_F"): {"storagefest4"};
        case ("HazmatBag_01_F"): {"storageuran1"};
		case ("Land_MetalBarrel_F"): {"storageflussig1"};
		case ("Land_WaterBarrel_F"): {"storageflussig2"};
		case ("Land_WaterTank_F"): {"storageflussig3"};
        default {"None"};
    };
    if (_box == "None") exitWith {};

    _diff = [_box,1,husky_carryWeight,husky_maxWeight] call husky_fnc_calWeightDiff;
    if (_diff isEqualTo 0) exitWith {hint "Dein Inventar ist voll, du kannst nichts mehr abbauen/sammeln";};

    if (husky_HC_isActive) then {
        [_container] remoteExecCall ["HC_fnc_deleteDBContainer",HC_husky];
    } else {
        [_container] remoteExecCall ["TON_fnc_deleteDBContainer",RSERV];
    };

    {
        if (_x == _container) then {
            _containers deleteAt _forEachIndex;
        };
    } forEach _containers;
    _house setVariable ["containers",_containers,true];

    [true,_box,1] call husky_fnc_handleInv;
};
