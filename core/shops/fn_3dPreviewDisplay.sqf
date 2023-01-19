/*
    File: fn_3dPreviewDisplay.sqf
    Author: KLM
    Description:
    Called to change the object in the 3d preview.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

if !(params [["_className", "", [""]]]) exitWith {};

if (isNil "husky_3dPreview_camera" || {isNull husky_3dPreview_camera}) exitWith {};

private _isInCfg = (isClass (configFile >> "CfgVehicles" >> _className));
if (_isInCfg) then {
    if (isNull husky_3dPreview_object || {!(_className isEqualTo typeOf husky_3dPreview_object)}) then {
        if (!isNull husky_3dPreview_object) then {deleteVehicle husky_3dPreview_object;};
        private _object = _className createVehicleLocal [0, 0, 0];
        if (isNull _object) exitWith {diag_log format ["3dPreview - problem creating object: %1", _className]};
        husky_3dPreview_object = _object;
        husky_3dPreview_object enableSimulation false;
        husky_3dPreview_object setPos husky_3dPreview_position;
        husky_3dPreview_object setVectorUp [0, 0, 1];
        private _bodyDiagonal = [boundingBoxReal _object select 0 select 0, boundingBoxReal _object select 0 select 2] distance [boundingBoxReal _object select 1 select 0, boundingBoxReal _object select 1 select 2];
        private _distance = _bodyDiagonal * 2;
        husky_3dPreview_camera_target = getPos _object;
        husky_3dPreview_camera camSetTarget husky_3dPreview_camera_target;
        husky_3dPreview_camera camSetPos (_object modelToWorld [0, _distance, _distance * 0.3]);
        husky_3dPreview_camera setVectorUp [0, 0, 1];
        husky_3dPreview_camera camCommit 0;
        husky_3dPreview_camera_mag = vectorMagnitude (husky_3dPreview_object worldToModel (getPos husky_3dpreview_camera));
        husky_3dPreview_camera_zoom = husky_3dPreview_camera_mag;
    };
};