if (player distance (_this select 0) > 4) exitWith {hint "Du bist zu weit entfernt!";};
if (vehicle player != player) exitWith {titleText["Du kannst das nicht aus dem Fahrzeug heraus!","PLAIN"];};
disableSerialization;
_tuningmarker = [(_this select 3),0,"",["",[]]] call BIS_fnc_param;

if (!createDialog "NOCRIS_TUNINGSHOP") exitWith {};

ctrlShow [1501,false];
ctrlShow [1505,false];
ctrlShow [1506,false];
ctrlShow [1507,false];

ctrlShow [2400,false];
ctrlShow [2420,false];
ctrlShow [2421,false];
ctrlShow [2422,false];

0 fadeMusic 1;
playMusic "LeadTrack01_F";

if (!isNil "NOCRIS_TUNINGSHOP_DEMOVEHICLE") then
{
	deleteVehicle NOCRIS_TUNINGSHOP_DEMOVEHICLE;
};

_pos = getMarkerPos "auto_show";
NOCRIS_VEHICLE_LOGIC = "Logic" createVehicleLocal _pos;
NOCRIS_VEHICLE_LOGIC setPosATL _pos;

_light = "#lightpoint" createVehicleLocal _pos;
_light setLightBrightness 1;
_light setLightAmbient [1.0, 1.0, 1.0];
_light lightAttachObject [NOCRIS_VEHICLE_LOGIC, [0,0,10]];

NOCRIS_SHOP_CAM = "CAMERA" camCreate getPos NOCRIS_VEHICLE_LOGIC;
showCinemaBorder false;
NOCRIS_SHOP_CAM cameraEffect ["Internal", "Back"];
NOCRIS_SHOP_CAM camSetTarget (NOCRIS_VEHICLE_LOGIC modelToWorld [0,0,1]);
NOCRIS_SHOP_CAM camSetPos (NOCRIS_VEHICLE_LOGIC modelToWorld [1,20,2]);
NOCRIS_SHOP_CAM camSetFOV .33;
NOCRIS_SHOP_CAM camSetFocus [50, 0];
NOCRIS_SHOP_CAM camCommit 0;

NOCRIS_TUNINGSHOP_CAMDEGREE = 0;
NOCRIS_TUNINGSHOP_CAMY = 20;
NOCRIS_TUNINGSHOP_CAMX = 4;
NOCRIS_TUNINGSHOP_CAMZ = 1.5;

(findDisplay 8000) displayAddEventHandler["MouseMoving",
	{
		if (NOCRIS_VEHICLESHOP_MOVEING) then
		{
			_x = _this select 1;
			_y = _this select 2;
			_x = (_x * 8);
			_dir = getDir NOCRIS_TUNINGSHOP_DEMOVEHICLE;
			NOCRIS_TUNINGSHOP_DEMOVEHICLE setDir (_dir + _x);
			NOCRIS_TUNINGSHOP_CAMDEGREE = NOCRIS_TUNINGSHOP_CAMDEGREE + _y;
		};
	}
];

NOCRIS_TUNING_VEHICLES = [];
NOCRIS_TUNING_MENU_ARTIKELPRICE = 0;
NOCRIS_TUNING_MENU_WARENKORBPRICE = 0;
NOCRIS_TUNING_MENU_CLASSNAME = "";
NOCRIS_TUNING_MENU_VEHICLE = "";
NOCRIS_TUNING_MENU_TUNING_VARIABLE = [-1,-1,-1,-1,-1,-1,-1,-1,-1];

[] spawn {
	private["_artikelprice","_warenkorbprice"];
	while {true} do {
		disableSerialization;
		_display = findDisplay 8000;
		if (isNull _display) exitWith {};
		_artikelprice = _display displayCtrl 1005;
		_warenkorbprice = _display displayCtrl 1006;

		_artikelprice ctrlSetText format["Artikelkosten: %1 €",[NOCRIS_TUNING_MENU_ARTIKELPRICE] call husky_fnc_numberText];

		_warenkorbprice ctrlSetText format["Gesamtkosten: %1 €",[NOCRIS_TUNING_MENU_WARENKORBPRICE] call husky_fnc_numberText];
	};
};

_display = findDisplay 8000;
_vehicleListBox = _display displayCtrl 1502;
_tuningKategorieListBox = _display displayCtrl 1500;
lbClear _vehicleListBox;
lbClear _tuningKategorieListBox;

_vehicles = nearestObjects [(getmarkerpos _tuningmarker), ["Car","Tank","Truck","Air"], 30];
_allowedtuning = getArray(missionconfigfile >> "CfgTuning" >> "tuningallowed");

_tuningvehicles = [];
{
	_owners = _x getVariable ["vehicle_info_owners",[]];
	_classname = typeof _x;
	if (count _owners > 0) then
	{
		if (((_owners select 0) select 0) == getPlayerUID player && (_classname in _allowedtuning)) then
		{
			_tuningvehicles pushBack _x;
		};
	};
} forEach _vehicles;

{
	_configname = configName (_x);
	_tuningfilter = getText(_x >> "name");
	_tuningKategorieListBox lbAdd _tuningfilter;
	_tuningKategorieListBox lbSetData [(lbSize _tuningKategorieListBox)-1,str(_configname)];
} forEach ("true" configClasses (missionConfigFile >> "CfgTuning" >> str(playerSide)));

NOCRIS_TUNING_VEHICLES = _tuningvehicles;

{
	_vehicleInfo = [typeOf _x] call husky_fnc_fetchVehInfo;
	_vehicleListBox lbAdd (_vehicleInfo select 3);
	_vehicleListBox lbSetPicture [(lbSize _vehicleListBox)-1,(_vehicleInfo select 2)];
	_vehicleListBox lbSetValue [(lbSize _vehicleListBox)-1,_ForEachIndex];
} forEach _tuningvehicles;

_tuningKategorieListBox lbSetCurSel 0;
_vehicleListBox lbSetCurSel 0;

waitUntil {isNull (findDisplay 8000)};

1.5 fadeMusic 0;
playMusic "";

NOCRIS_TUNING_VEHICLES = [];
NOCRIS_TUNING_MENU_ARTIKELPRICE = 0;
NOCRIS_TUNING_MENU_WARENKORBPRICE = 0;
NOCRIS_TUNING_MENU_CLASSNAME = "";
NOCRIS_TUNING_MENU_VEHICLE = "";
NOCRIS_TUNING_MENU_TUNING_VARIABLE = [-1,-1,-1,-1,-1,-1,-1,-1,-1];

NOCRIS_SHOP_CAM cameraEffect ["TERMINATE","BACK"];
camDestroy NOCRIS_SHOP_CAM;
showChat true;

if (!isNil "NOCRIS_TUNINGSHOP_DEMOVEHICLE") then
{
	if (!isNil "NOCRIS_TUNINGSHOP_DEMOVEHICLE_ATTACHMENT") then
	{
		{deleteVehicle _x;} foreach [NOCRIS_VEHICLE_LOGIC,NOCRIS_TUNINGSHOP_DEMOVEHICLE,NOCRIS_TUNINGSHOP_DEMOVEHICLE_ATTACHMENT,_light];
	}
		else
	{
		{deleteVehicle _x;} foreach [NOCRIS_VEHICLE_LOGIC,NOCRIS_TUNINGSHOP_DEMOVEHICLE,_light];
	};
}
	else
{
	{deleteVehicle _x;} foreach [NOCRIS_VEHICLE_LOGIC,_light];
};
