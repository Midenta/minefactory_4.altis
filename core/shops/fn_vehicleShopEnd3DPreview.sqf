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
    File: fn_vehicleShopEnd3DPreview.sqf
    Modified By: NiiRoZz

    Description:
    Called when a player end the vehicle shop and destroy cam and vehicle
*/

if (!isNull husky_preview_3D_vehicle_object) then {detach husky_preview_3D_vehicle_object; deleteVehicle husky_preview_3D_vehicle_object;};
husky_preview_3D_vehicle_object = objNull;

husky_preview_3D_vehicle_cam cameraEffect ["Terminate", "BACK"];
camDestroy husky_preview_3D_vehicle_cam;
deleteVehicle husky_preview_light;
husky_preview_light = objNull;
husky_preview_3D_vehicle_cam = objNull;
husky_pos_exist = false;
husky_pos_attach = [];