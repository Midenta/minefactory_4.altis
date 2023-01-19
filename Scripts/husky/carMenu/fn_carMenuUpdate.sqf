#include "..\..\..\script_macros.hpp"
/*
	author: Risk
	description: opens some nasty menu
	returns: nothing
*/
disableSerialization;
//Setup control vars.
private _car_list = CONTROL(70700,77001);
ctrlShow [70704,false];
ctrlShow [70708,false];
ctrlShow [70709,false];

//Purge list
lbClear _car_list;
if (!isClass(missionConfigFile >> "husky_car_Menu" >> "husky_CarMenu")) exitWith {closeDialog 0; hint localize "STR_NOTF_ConfigDoesNotExist";};
private _carText = M_CONFIG(getArray,"husky_car_Menu","husky_CarMenu","texts");

{
    _x params["_className"];
    _vehicleInfo = [_className] call husky_fnc_fetchVehInfo;
		_car_list lbAdd (_vehicleInfo select 3);
        _car_list lbSetData [(lbSize _car_list)-1,_x];
        _car_list lbSetPicture [(lbSize _car_list)-1,(_vehicleInfo select 2)];
} forEach _carText;

if (husky_SETTINGS(getNumber,"isSorting") isEqualTo 1) then{
    lbSort _car_list;
};
call husky_fnc_vehicleShopInit3DPreview;