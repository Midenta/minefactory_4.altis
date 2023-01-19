#include "..\..\..\script_macros.hpp"
/*
	author: Risk
	description: opens some nasty menu
	returns: nothing
*/
disableSerialization;
//Setup control vars.
private _VehicleList = CONTROL(2800,2802);


//Purge list
lbClear _VehicleList;

    _x params["_className"];
    _vehicleInfo = [_className] call husky_fnc_fetchVehInfo;
	_VehicleList lbAdd (_vehicleInfo select 3);
    _VehicleList lbSetData [(lbSize _VehicleList)-1,_x];
    _VehicleList lbSetPicture [(lbSize _VehicleList)-1,(_vehicleInfo select 2)];


call husky_fnc_vehicleShopInit3DPreview;