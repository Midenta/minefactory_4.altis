#include "..\..\script_macros.hpp"
/*
    File : fn_storageBox.sqf
    Author: NiiRoZz

    Description:
    Create Storage and attachto player;
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_object","_attachPos"];

/*params [
    ["_size",false,[false]]
];
*/
if (!(nearestObject [player, "House"] in husky_vehicles)) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du musst in deinem Haus sein, um dies platzieren zu k�nnen.</t>";};

husky_container_active = true;
closeDialog 0;
/*
if (_size) then {
    _object = "B_supplyCrate_F" createVehicle [0,0,0];
} else {
    _object = "Box_IND_Grenades_F" createVehicle [0,0,0];
};
*/

private "_state";
_state = param [0,1,[0]];
switch (_state) do {
	case 1: {
        _object = "Land_PlasticCase_01_large_CBRN_F" createVehicle  [0,0,0];
    };
	case 2: {
        _object = "B_supplyCrate_F" createVehicle  [0,0,0];
    };
	case 3: {
        _object = "Land_PaperBox_closed_F" createVehicle  [0,0,0];
    };
	case 4: {
        _object = "Box_East_AmmoVeh_F" createVehicle  [0,0,0];
    };
	case 5: {
        _object = "Land_MetalBarrel_F" createVehicle  [0,0,0];
    };
	case 6: {
        _object = "Land_WaterBarrel_F" createVehicle  [0,0,0];
    };
	case 7: {
        _object = "Land_WaterTank_F" createVehicle  [0,0,0];
    };
    case 8: {
        _object = "HazmatBag_01_F" createVehicle  [0,0,0];
    };
};


husky_container_activeObj = _object;
_attachPos = [0.16, 3, ((boundingBoxReal _object) select 1) select 2];
[_object] remoteExecCall ["husky_fnc_simDisable",RANY];
_object attachTo[player, _attachPos];

clearWeaponCargoGlobal _object;
clearMagazineCargoGlobal _object;
clearItemCargoGlobal _object;
clearBackpackCargoGlobal _object;
titleText [localize "STR_NOTF_PlaceContainer", "PLAIN"];
