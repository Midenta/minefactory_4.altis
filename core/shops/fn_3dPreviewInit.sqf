/*
    File: fn_3dPreviewInit.sqf
    Author: BoGuu & KLM
    Description:
    Called to initialize the 3d preview.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

if !(params [["_display", displayNull, [displayNull]]]) exitWith {};

husky_3dPreview_position = [0, 0, 10000];
// create camera
husky_3dPreview_camera = "camera" camCreate husky_3dPreview_position;
husky_3dPreview_camera cameraEffect ["Internal", "BACK"];
husky_3dPreview_camera camSetFocus [-1, -1];
showCinemaBorder false;
husky_3dPreview_camera camCommit 0;
// create light
husky_3dPreview_light = "#lightpoint" createVehicleLocal husky_3dPreview_position;
husky_3dPreview_light setLightBrightness 0.5;
husky_3dPreview_light setLightColor [1, 1, 1];
husky_3dPreview_light setLightAmbient [1, 1, 1];
// set initial values for global vars
husky_3dPreview_camera_mag = 0;
husky_3dPreview_camera_zoom = 0;
husky_3dPreview_camera_target = [];
husky_3dPreview_object = objNull;
husky_3dPreview_dragging = false;
// event handlers
husky_3dPreview_evh_down = _display displayAddEventHandler ["MouseButtonDown", {husky_3dPreview_dragging = true}];
husky_3dPreview_evh_up = _display displayAddEventHandler ["MouseButtonUp", {husky_3dPreview_dragging = false}];

husky_3dPreview_evh_move = _display displayAddEventHandler ["MouseMoving", {
    params ["", "_dx", "_dy"];
    if (husky_3dPreview_dragging) then {
        _dir = vectorDir husky_3dPreview_object;
        _newdir = [(_dir select 0) * cos (_dx * 5) - (_dir select 1) * sin (_dx * 5), (_dir select 0) * sin (_dx * 5) + (_dir select 1) * cos (_dx * 5), 0];
        husky_3dPreview_object setVectorDir vectorNormalized _newdir;
    };
}];

husky_3dPreview_evh_zoom = _display displayAddEventHandler ["MouseZChanged", {
    params ["", "_scroll"];
    private _max = husky_3dPreview_camera_mag;
    private _object = husky_3dPreview_object;
    private _bodyDiagonal = [boundingBoxReal _object select 0 select 0, boundingBoxReal _object select 0 select 2] distance [boundingBoxReal _object select 1 select 0, boundingBoxReal _object select 1 select 2];
    private _min = _bodyDiagonal + 1;
    private _step = (_max - _min) / 10;
    private _oldPos = getPos husky_3dPreview_camera;
    husky_3dPreview_camera_zoom = _min max (husky_3dPreview_camera_zoom - (_step * (abs (_scroll) / _scroll)));
    husky_3dPreview_camera_zoom = _max min husky_3dPreview_camera_zoom;
    if (husky_3dPreview_camera_zoom >= _max || {husky_3dPreview_camera_zoom <= _min}) exitWith {};
    private _newPos = husky_3dPreview_camera_target vectorAdd ((vectorNormalized ((getPos husky_3dPreview_camera) vectorDiff husky_3dPreview_camera_target)) vectorMultiply husky_3dPreview_camera_zoom);
    husky_3dPreview_camera camSetPos _newPos;
    husky_3dPreview_camera camCommit 0.15;
}];