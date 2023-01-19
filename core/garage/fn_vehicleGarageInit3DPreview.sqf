/**
 * Bibliothèque de fonctions permettant la visualisation 3D d'objets
 * 
 * Copyright (C) 2014 Team ~R3F~
 * 
 * This program is free software under the terms of the GNU General Public License version 3.
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

/*
    File: fn_vehicleShopInit3DPreview.sqf
    Modified By: NiiRoZz

    Description:
    Called when a player open the vehicle shop and setup cam and the while for rotate around the vehicle
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
// Creating a camera.
husky_preview_3D_vehicle_cam_g = "camera" camCreate ([[5000, 5000, 3000]] call husky_fnc_searchPosEmpty);
husky_preview_3D_vehicle_cam_g cameraEffect ["Internal", "BACK"];
husky_preview_3D_vehicle_cam_g camSetFocus [-1, -1];
showCinemaBorder false;
husky_preview_3D_vehicle_cam_g camCommit 0;

husky_preview_3D_vehicle_object_g = objNull;

// Thread execution performing a continuous rotation of the camera around the view object.
0 spawn
{
    // Until we left the visualization.
    for "_i" from 0 to 1 step 0 do {
        if (isNull husky_preview_3D_vehicle_cam_g) exitWith {};
        private ["_object","_distanceCam","_azimuthCam"];

        // Waiting for a view object.
        waitUntil {!isNull husky_preview_3D_vehicle_object_g};

        _object = husky_preview_3D_vehicle_object_g;

        _distanceCam = 2.25 * (
                [boundingBoxReal _object select 0 select 0, boundingBoxReal _object select 0 select 2]
            distance
                [boundingBoxReal _object select 1 select 0, boundingBoxReal _object select 1 select 2]
        );
        _azimuthCam = 0;

        husky_preview_3D_vehicle_cam_g camSetTarget _object;
        husky_preview_3D_vehicle_cam_g camSetPos (_object modelToWorld [_distanceCam * sin _azimuthCam, _distanceCam * cos _azimuthCam, _distanceCam * 0.33]);
        husky_preview_3D_vehicle_cam_g camCommit 0;

        // Rotation around the object.
        for "_i" from 0 to 1 step 0 do {
            if (!(husky_preview_3D_vehicle_object_g isEqualTo _object)) exitWith {};
            _azimuthCam = _azimuthCam + 1.00;

            husky_preview_3D_vehicle_cam_g camSetPos (_object modelToWorld [_distanceCam * sin _azimuthCam, _distanceCam * cos _azimuthCam, _distanceCam * 0.33]);
            husky_preview_3D_vehicle_cam_g camCommit 0.05;

            sleep 0.05;
        };
    };
};
