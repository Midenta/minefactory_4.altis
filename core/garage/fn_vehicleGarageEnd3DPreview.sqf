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
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

if (!isNull husky_preview_3D_vehicle_object_g) then {detach husky_preview_3D_vehicle_object_g; deleteVehicle husky_preview_3D_vehicle_object_g;};
husky_preview_3D_vehicle_object_g = objNull;

husky_preview_3D_vehicle_cam_g cameraEffect ["Terminate", "BACK"];
camDestroy husky_preview_3D_vehicle_cam_g;
deleteVehicle husky_preview_light_g;
husky_preview_light_g = objNull;
husky_preview_3D_vehicle_cam_g = objNull;
husky_pos_exist_g = false;
husky_pos_attach_g = [];