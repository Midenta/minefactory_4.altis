#include "..\..\..\script_macros.hpp"
/*
	author: Risk
	description: Ändert jedes mal den Text jenachdem was man auswählt.
	returns: nothing
*/
params[
    "_CarControl",
    "_CarIndex"
];
//Fetch some information.
private _CarName = _CarControl lbData _CarIndex;
private _CarDescription = M_CONFIG(getText,"huskyCfgVehicles",_CarName,"description");
private _CarBuyPrice = M_CONFIG(getNumber,"huskyCfgVehicles",_CarName,"price");
private _CarWeight = M_CONFIG(getNumber,"huskyCfgVehicles",_CarName,"vItemSpace");
private _colorArray = M_CONFIG(getArray,"huskyCfgVehicles",_CarName,"textures");

private _multiplier = husky_SETTINGS(getNumber,"vehicle_sell_multiplier_CIVILIAN");
private _purchasePrice = _CarBuyPrice * husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_CIVILIAN");
private _sellPrice = _purchasePrice * _multiplier;
_vehicleInfo = [_CarName] call husky_fnc_fetchVehInfo;

ctrlShow [70704,true];
ctrlShow [70705,true];
ctrlShow [70706,true];
ctrlShow [70707,true];
ctrlShow [70708,true];
ctrlShow [70709,true];
ctrlShow [70710,true];
ctrlShow [70711,true];
ctrlShow [70712,true];
ctrlSetText [70704, (_vehicleInfo select 3)];
ctrlSetText [70710,format ["%1",_CarWeight]];

if (!(_purchasePrice isEqualTo -1)) then {
    ctrlSetText [70712,format ["%1 €",[_purchasePrice] call husky_fnc_numberText]];
} else {
    ctrlSetText [70712, "N/A"];
};
if (!(_sellPrice isEqualTo -1)) then {
    ctrlSetText [70711,format ["%1 €",[_sellPrice] call husky_fnc_numberText]];
} else {
    ctrlSetText [70711, "N/A"];
};

(CONTROL(70700,70709)) ctrlSetStructuredText parseText format["%1",_CarDescription];

_ctrl = CONTROL(70700,77013);
lbClear _ctrl;
{
    _x params [
        "_texture"
    ];
    _ctrl lbAdd _texture;
    _ctrl lbSetValue [(lbSize _ctrl)-1,_forEachIndex];
} forEach _colorArray;

[_CarName] call husky_fnc_vehicleShop3DPreview;