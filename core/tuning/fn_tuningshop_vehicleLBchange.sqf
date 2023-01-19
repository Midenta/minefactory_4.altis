disableSerialization;
private["_control","_dataArr","_index","_className","_vehicle"];
_vehicle = NOCRIS_TUNING_VEHICLES select (lbCurSel 1502);

NOCRIS_TUNING_MENU_VEHICLE = _vehicle;
NOCRIS_TUNING_MENU_CLASSNAME = typeof _vehicle;


if (!isNil "NOCRIS_TUNINGSHOP_DEMOVEHICLE") then {deleteVehicle NOCRIS_TUNINGSHOP_DEMOVEHICLE;};
if (!isNil "NOCRIS_TUNINGSHOP_DEMOVEHICLE_ATTACHMENT") then {deleteVehicle NOCRIS_TUNINGSHOP_DEMOVEHICLE_ATTACHMENT;};

_pos = getMarkerPos "auto_show";
NOCRIS_TUNINGSHOP_DEMOVEHICLE = NOCRIS_TUNING_MENU_CLASSNAME createVehicleLocal _pos;
NOCRIS_TUNINGSHOP_DEMOVEHICLE allowDamage false;
NOCRIS_TUNINGSHOP_DEMOVEHICLE enableSimulation false;
//NOCRIS_TUNINGSHOP_DEMOVEHICLE attachTo [NOCRIS_VEHICLE_LOGIC,[0,0,0]];

NOCRIS_SHOPCAM_Y = 20;
NOCRIS_SHOPCAM_X = 4;
NOCRIS_SHOPCAM_Z = 1.5;
NOCRIS_SHOP_CAM camSetTarget (NOCRIS_TUNINGSHOP_DEMOVEHICLE modelToWorld [0,0,1]);
NOCRIS_SHOP_CAM camSetPos (NOCRIS_TUNINGSHOP_DEMOVEHICLE modelToWorld [NOCRIS_SHOPCAM_X,NOCRIS_SHOPCAM_Y,NOCRIS_SHOPCAM_Z]);
NOCRIS_SHOP_CAM camCommit 1;

true;