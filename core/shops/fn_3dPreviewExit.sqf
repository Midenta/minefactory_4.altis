/*
    File: fn_3dPreviewExit.sqf
    Author: KLM
    Description:
    Handles the cleanup of the 3d preview.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

if !(params [["_display", displayNull, [displayNull]]]) exitWith {};

// delete objects
if (!isNull husky_3dPreview_object) then {deleteVehicle husky_3dPreview_object;};
deleteVehicle husky_3dPreview_light;
husky_3dPreview_camera cameraEffect ["Terminate", "BACK"];
camDestroy husky_3dPreview_camera;
// nil variables
husky_3dPreview_position = nil;
husky_3dPreview_object = nil;
husky_3dPreview_light = nil;
husky_3dPreview_camera = nil;
husky_3dPreview_camera_mag = nil;
husky_3dPreview_camera_zoom = nil;
husky_3dPreview_camera_target = nil;
husky_3dPreview_dragging = nil;
// remove event handlers
_display displayRemoveEventHandler ["MouseButtonDown", husky_3dPreview_evh_down];
husky_3dPreview_evh_down = nil;
_display displayRemoveEventHandler ["MouseButtonUp", husky_3dPreview_evh_up];
husky_3dPreview_evh_up = nil;
_display displayRemoveEventHandler ["MouseMoving", husky_3dPreview_evh_move];
husky_3dPreview_evh_move = nil;
_display displayRemoveEventHandler ["MouseZChanged", husky_3dPreview_evh_zoom];
husky_3dPreview_evh_zoom = nil;