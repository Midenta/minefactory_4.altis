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
    File: fn_vehicleShop3DPreview.sqf
    Modified By: NiiRoZz

    Description:
    Called when a new selection is made in the list box and
    displays the new vehicle selected.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/


private ["_classView","_object","_id"];
/*
if (isNil "husky_preview_3D_vehicle_cam_g") then
{*/
    [] call husky_fnc_vehicleGarageInit3DPreview;
/*};*/

_classView = _this select 0;

// Ignore non instantiable objects.
if (_classView != "" && {isClass (configFile >> "CfgVehicles" >> _classView) && {getNumber (configFile >> "CfgVehicles" >> _classView >> "scope") > 0}}) then
{
    // Skip if object view is the same as previous.
    if (isNull husky_preview_3D_vehicle_object_g || {_classView != typeOf husky_preview_3D_vehicle_object_g}) then
    {
        if (!isNull husky_preview_3D_vehicle_object_g) then {detach husky_preview_3D_vehicle_object_g; deleteVehicle husky_preview_3D_vehicle_object_g;};
        // Create and place the object in the sky
        if (!husky_pos_exist_g) then {
            husky_pos_attach_g = [[5000, 5000, 3000]] call husky_fnc_searchPosEmpty;
            husky_pos_exist_g = true;
            husky_preview_light_g = "#lightpoint" createVehicleLocal husky_pos_attach_g;
            husky_preview_light_g setLightBrightness 0.8;
            husky_preview_light_g setLightColor [1,1,1];
            husky_preview_light_g setLightAmbient [1,1,1];
        };
        _object = _classView createVehicleLocal husky_pos_attach_g;
        _id = player getVariable ["husky_clientID",-1];
        [_object] call husky_fnc_clearVehicleAmmo;
        _object attachTo [husky_attachment_point, husky_pos_attach_g];

        husky_preview_3D_vehicle_object_g = _object;
    };
};
