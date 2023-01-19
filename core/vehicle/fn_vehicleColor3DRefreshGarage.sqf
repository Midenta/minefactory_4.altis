/*
    File: fn_vehicleColor3DRefresh.sqf
    Author: 
    Modified: NiiRoZz

    Description:
    Called when a new selection is made in the rsc box and paint the vehicle with the color selected.
*/
/*
disableSerialization;
_display = findDisplay 2300;
_colorIndex = lbValue[2304, (lbCurSel 2304)];
if (isNull husky_3dPreview_object) exitWith {};

[husky_3dPreview_object, _colorIndex] call husky_fnc_colorVehicle;
*/
//private["_vehicleColor"];

disableSerialization;
_display = findDisplay 2800;
//_colorIndex = 0;
_colorIndex = lbValue[2804,(lbCurSel 2804)];
if (isNull husky_preview_3D_vehicle_object) exitWith {};

[husky_preview_3D_vehicle_object,_colorIndex] call husky_fnc_colorVehicle;
