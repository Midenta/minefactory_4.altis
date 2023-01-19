/*
    File: fn_vehicleColor3DRefresh.sqf
    Author:
    Modified: NiiRoZz

    Description:
    Called when a new selection is made in the rsc box and paint the vehicle with the color selected.
*/
disableSerialization;
_display = findDisplay 70700;
_colorIndex = lbValue[77013,(lbCurSel 77013)];
if (isNull husky_preview_3D_vehicle_object) exitWith {};

[husky_preview_3D_vehicle_object,_colorIndex] call husky_fnc_colorVehicle;