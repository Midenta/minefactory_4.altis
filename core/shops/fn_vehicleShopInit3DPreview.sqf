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
*/
// Creating a camera.
husky_preview_3D_vehicle_cam = "camera" camCreate ([[5000, 5000, 0]] call husky_fnc_searchPosEmpty);
husky_preview_3D_vehicle_cam cameraEffect ["Internal", "BACK"];
husky_preview_3D_vehicle_cam camSetFocus [-1, -1];
showCinemaBorder false;
husky_preview_3D_vehicle_cam camCommit 0;

husky_preview_3D_vehicle_object = objNull;

// Thread execution performing a continuous rotation of the camera around the view object.
0 spawn
{
    // Until we left the visualization.
    for "_i" from 0 to 1 step 0 do {
        if (isNull husky_preview_3D_vehicle_cam) exitWith {};
        private ["_object","_distanceCam","_azimuthCam"];

        // Waiting for a view object.
        waitUntil {!isNull husky_preview_3D_vehicle_object};

        _object = husky_preview_3D_vehicle_object;

        _distanceCam = 2.25 * (
                [boundingBoxReal _object select 0 select 0, boundingBoxReal _object select 0 select 2]
            distance
                [boundingBoxReal _object select 1 select 0, boundingBoxReal _object select 1 select 2]
        );
        _azimuthCam = 0;

        husky_preview_3D_vehicle_cam camSetTarget _object;
        husky_preview_3D_vehicle_cam camSetPos (_object modelToWorld [_distanceCam * sin _azimuthCam, _distanceCam * cos _azimuthCam, _distanceCam * 0.33]);
        husky_preview_3D_vehicle_cam camCommit 0;

        // Rotation around the object.
        for "_i" from 0 to 1 step 0 do {
            if (!(husky_preview_3D_vehicle_object isEqualTo _object)) exitWith {};
            _azimuthCam = _azimuthCam + 1.00;

            husky_preview_3D_vehicle_cam camSetPos (_object modelToWorld [_distanceCam * sin _azimuthCam, _distanceCam * cos _azimuthCam, _distanceCam * 0.33]);
            husky_preview_3D_vehicle_cam camCommit 0.05;

            sleep 0.05;
        };
    };
};
