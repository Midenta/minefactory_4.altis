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
params [
    ["_size",false,[false]]
];

//if (!(nearestObject [player, "House"] in husky_vehicles)) exitWith {["Du musst in deinem Haus sein, um dies platzieren zu k�nnen.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};

husky_container_active = true;
closeDialog 0;



_object = "Land_CargoBox_V1_F" createVehicle [0,0,0];


husky_container_activeObj = _object;
_attachPos = [0.16, 3, ((boundingBoxReal _object) select 1) select 2];
[_object] remoteExecCall ["husky_fnc_simDisable",RANY];
_object attachTo[player, _attachPos];

clearWeaponCargoGlobal _object;
clearMagazineCargoGlobal _object;
clearItemCargoGlobal _object;
clearBackpackCargoGlobal _object;

titleText [localize "STR_NOTF_PlaceContainer", "PLAIN"];
