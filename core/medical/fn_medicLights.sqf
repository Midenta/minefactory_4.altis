/*
    File: fn_medicLights.sqf
    Author: mindstorm, modified by Adanteh
    Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow

    Description:
    Adds the light effect to med vehicles, specifically the offroad.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
// LHM START
private ["_vehicle","_lightRed","_lightBlue","_lightleft","_lightright","_leftRed","_brightness","_attach"];
_vehicle = _this select 0;
if (isNil "_vehicle" || isNull _vehicle || !(_vehicle getVariable "lights")) exitWith {};
switch (typeOf _vehicle) do {
	case "C_Hatchback_01_F": { _attach = [[-0.6, 2, -0.95], [0.6, 2, -0.95]]; };
	case "C_Hatchback_01_sport_F": { _attach = [[-0.6, 2, -0.95], [0.6, 2, -0.95]]; };
	case "C_Offroad_01_F": { _attach = [[-0.45, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	case "C_SUV_01_F": { _attach = [[-0.4, 2.3, -0.55], [0.4, 2.3, -0.52]]; };
	case "B_Heli_Light_01_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	case "B_Heli_Transport_01_F": { _attach = [[-0.5, 0.0, 0.96], [0.5, 0.0, 0.96]]; };
	case "I_MRAP_03_hmg_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	//case "I_MRAP_03_F": { _attach = [[-0.37, 0.0, 0.50], [0.37, 0.0, 0.50]]; }; 
	case "B_APC_Wheeled_01_cannon_F": { _attach = [[-1, -2.8, 0.55], [1, -2.8, 0.55]]; }; 
	case "B_MRAP_01_hmg_F": { _attach = [[-1, -2.8, 0.55], [1, -2.8, 0.55]]; };
	case "B_MRAP_01_F": { _attach = [[-1, -2.8, 0.55], [1, -2.8, 0.55]]; };
	case "O_MRAP_02_hmg_F": { _attach = [[-1, -2.8, 0.50], [1, -2.8, 0.50]]; };
	case "O_MRAP_02_F": { _attach = [[-1, -2.8, 0.55], [1, -2.8, 0.55]]; };
	case "B_Truck_01_covered_F": { _attach = [[-1.2, 4.85, -0.45], [1.25, 4.85, -0.45]];};
	case "B_Truck_01_mover_F": { _attach = [[-1.2, 4.85, -0.45], [1.25, 4.85, -0.45]];};
	case "B_Truck_01_flatbed_F": { _attach = [[-1.2, 4.85, -0.45], [1.25, 4.85, -0.45]];};
	case "B_Truck_01_fuel_F": { _attach = [[-1.2, 4.85, -0.45], [1.25, 4.85, -0.45]];};
	case "B_Heli_Transport_03_unarmed_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	case "B_T_VTOL_01_infantry_F": { _attach = [[-7.6,3.3,-1.2],[7.65,3.35,-1.1]];};
	case "B_T_VTOL_01_vehicle_F": { _attach = [[-7.6,3.3,-1.2],[7.65,3.35,-1.1]];};
	case "I_Heli_light_03_unarmed_F": { _attach = [[-1.23,4.7,-1.42],[1.23,4.7,-1.42]];};
	case "O_Heli_Transport_04_bench_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]];};
	case "C_Van_02_vehicle_F": { _attach = [[-0.3,4.006,-0.473], [0.3,4.006,-0.473]];};
	case "C_Van_02_transport_F": { _attach = [[-0.3,4.006,-0.473], [0.3,4.006,-0.473]];};
	case "B_GEN_Van_02_transport_F": { _attach = [[-0.3,4.006,-0.473], [0.3,4.006,-0.473]];};
	case "B_GEN_Van_02_vehicle_F": { _attach = [[-0.3,4.006,-0.473], [0.3,4.006,-0.473]];};
	case "C_Van_02_medevac_F": { _attach = [[-0.3,4.006,-0.473], [0.3,4.006,-0.473]];};
	case "B_Quadbike_01_F": { _attach = [[0,0.8,-0.673], [0,-1,-0.673]];};
	case "C_Van_01_box_F": { _attach = [[-0.399,1.808,-0.573], [0.301,1.808,-0.573]];};
	case "B_Truck_01_transport_F": { _attach = [[-0.799,4.602,-0.973], [0.801,4.603,-0.973]];};
	case "O_Truck_02_fuel_F": { _attach = [[-0.6,3.5,-0.973], [0.6,3.5,-0.973]];};
	case "O_Truck_03_covered_F": { _attach = [[-0.6,3.302,-0.973], [0.8,3.302,-0.973]];};
	case "B_APC_Tracked_01_CRV_F": { _attach = [[-1.1,1.806,-0.973], [1.1,1.806,-0.973]];};
	case "O_MRAP_02_F": { _attach = [[-0.5,1.2,-0.973], [0.5,1.2,-0.973]];};
	case "I_MRAP_03_F": { _attach = [[-1,2.198,-0.373], [1,2.198,-0.373]];};
	case "I_E_Offroad_01_covered_F": { _attach = [[-0.45, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	case "I_E_Offroad_01_comms_F": { _attach = [[-0.45, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	case "B_GEN_Offroad_01_covered_F": { _attach = [[-0.45, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	case "B_GEN_Offroad_01_comms_F": { _attach = [[-0.45, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	case "C_Offroad_01_covered_F": { _attach = [[-0.45, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	case "C_Offroad_01_comms_F": { _attach = [[-0.45, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	case "O_Truck_03_repair_F": { _attach = [[-0.6,2.2,0.98], [0.6,2.2,0.98]]; };
};

_lightRed = [20, 0.1, 0.1];
_lightBlue = [0.1, 0.1, 20];
_lightleft = createVehicle ["#lightpoint", getPos _vehicle, [], 0, "CAN_COLLIDE"];
sleep 0.1;
_lightleft setLightColor _lightBlue;	//_lightRed
_lightleft setLightBrightness 0;
_lightleft lightAttachObject [_vehicle, _attach select 0];
_lightleft setLightAttenuation [0.181, 0, 1000, 130];
_lightleft setLightIntensity 10;
_lightleft setLightFlareSize 0.90;
_lightleft setLightFlareMaxDistance 100;
_lightleft setLightUseFlare true;
_lightleft setLightDayLight true;
_lightright = createVehicle ["#lightpoint", getPos _vehicle, [], 0, "CAN_COLLIDE"];
sleep 0.1;
_lightright setLightColor _lightBlue;
_lightright setLightBrightness 0;
_lightright lightAttachObject [_vehicle, _attach select 1];
_lightright setLightAttenuation [0.181, 0, 1000, 130];
_lightright setLightIntensity 10;
_lightright setLightFlareSize 0.90;
_lightright setLightFlareMaxDistance 100;
_lightright setLightUseFlare true;
_lightright setLightDayLight true;

if (sunOrMoon < 1) then {
	_brightness = 30;
} else {
	_brightness = 60;
};
_leftRed = true; 

while {(alive _vehicle)} do { 
	// hint format ["DEBUG: lights: %1 \n Vehicle Player: %2",!(_vehicle getVariable "lights"),!(vehicle player !=player)];
	if (!(_vehicle getVariable "lights")) exitWith {};
	if (_leftRed) then { 
	_leftRed = false; 
	_lightright setLightBrightness 0; 
	sleep 0.05;
	_lightleft setLightBrightness _brightness; 
	} else { 
	_leftRed = true; 
	_lightleft setLightBrightness 0; 
	sleep 0.05;
	_lightright setLightBrightness _brightness; 
	};
	sleep 0.22; 
}; 
deleteVehicle _lightleft;
deleteVehicle _lightright;
// LHM END
/*
// LHM START
private ["_vehicle","_lightRed","_lightYellow","_lightBlue","_lightleft","_lightright","_leftRed","_brightness","_attach"];
_vehicle = _this select 0;
if (isNil "_vehicle" || isNull _vehicle || !(_vehicle getVariable "lights")) exitWith {};
//Definition der Farben
_lightRed = [1, 0.1, 0.1]; 
_lightBlue = [0.1, 0.1, 20];
_lightYellow = [20, 20, 0.1]; 
_lightleft = createVehicle ["#lightpoint", getPos _vehicle, [], 0, "CAN_COLLIDE"];
sleep 0.2;
_lightright = createVehicle ["#lightpoint", getPos _vehicle, [], 0, "CAN_COLLIDE"];
sleep 0.2;
switch (typeOf _vehicle) do {
	case "C_Hatchback_01_F": { _attach = [[-0.6, 2, -0.95], [0.6, 2, -0.95]];
		_lightleft setLightColor _lightBlue;
		_lightright setLightColor _lightBlue;
	};
	case "C_Hatchback_01_sport_F": { _attach = [[-0.6, 2, -0.95], [0.6, 2, -0.95]];
		_lightleft setLightColor _lightBlue;
		_lightright setLightColor _lightBlue;
	};
	case "C_Offroad_01_F": { _attach = [[-0.45, 0.0, 0.56], [0.37, 0.0, 0.56]]; 
	_lightleft setLightColor _lightBlue;
	_lightright setLightColor _lightBlue;
	};
	case "B_MRAP_01_F": { _attach = [[-1, -2.8, 0.55], [1, -2.8, 0.55]]; 
	_lightleft setLightColor _lightBlue;
	_lightright setLightColor _lightBlue; 
	};
	case "C_SUV_01_F": { _attach = [[-0.4, 2.3, -0.55], [0.4, 2.3, -0.55]]; 
	_lightleft setLightColor _lightBlue;
	_lightright setLightColor _lightBlue;
	};
	case "C_Van_01_box_F": { _attach = [[-0.75, 0.2, 1.55], [0.67, 0.2, 1.55]]; 
	_lightleft setLightColor _lightBlue;
	_lightright setLightColor _lightBlue;
	}; 
	case "B_Heli_Light_01_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]; 
	_lightleft setLightColor _lightBlue;
	_lightright setLightColor _lightBlue;
	};
	case "O_Heli_Light_02_unarmed_F": { _attach = [[-0.90,1.26,0.45], [0.90,1.26,0.45]]; 
	_lightleft setLightColor _lightBlue;
	_lightright setLightColor _lightBlue;
	};
	case "I_Heli_Transport_02_F": { _attach = [[-1.79,0.98,-2.48], [1.79,0.98,-2.48]]; 
	_lightleft setLightColor _lightBlue;
	_lightright setLightColor _lightBlue;
	};
	case "C_Offroad_01_repair_F": { _attach = [[-0.45, 0.0, 0.50], [0.37, 0.0, 0.50]]; 
	_lightleft setLightColor _lightYellow;
	_lightright setLightColor _lightYellow;
	};
	case "I_MRAP_03_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]; 
	_lightleft setLightColor _lightBlue;
	_lightright setLightColor _lightBlue;
	};
	case "B_Heli_Transport_03_unarmed_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]; 
	_lightleft setLightColor _lightBlue;
	_lightright setLightColor _lightBlue;
	};
	case "O_Heli_Transport_04_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]; 
	_lightleft setLightColor _lightBlue;
	_lightright setLightColor _lightBlue;
	};
	case "B_Truck_01_covered_F": { _attach = [[-1.2, 4.85, -0.45], [1.25, 4.85, -0.45]]; 
	_lightleft setLightColor _lightBlue;
	_lightright setLightColor _lightBlue;
	};
	case "O_T_VTOL_02_infantry_F":{ _attach = [[-7,-1.25,-0.1],[7,-1.25,-0.1]];
	_lightleft setLightColor _lightBlue;
	_lightright setLightColor _lightBlue;
	};
	case "I_Heli_light_03_unarmed_F": { _attach = [[-1.23,4.7,-1.42],[1.23,4.7,-1.42]];
	_lightleft setLightColor _lightBlue;
	_lightright setLightColor _lightBlue;
	};
};
//_lightleft setLightColor _lightBlue;
_lightleft setLightBrightness 0;
_lightleft lightAttachObject [_vehicle, _attach select 0];
_lightleft setLightAttenuation [0.181, 0, 1000, 130];
_lightleft setLightIntensity 20;
_lightleft setLightFlareSize 0.38;
_lightleft setLightFlareMaxDistance 300;
_lightleft setLightUseFlare true;
_lightleft setLightDayLight true;
//_lightright setLightColor _lightBlue;
_lightright setLightBrightness 0;
_lightright lightAttachObject [_vehicle, _attach select 1];
_lightright setLightAttenuation [0.181, 0, 1000, 130];
_lightright setLightIntensity 20;
_lightright setLightFlareSize 0.38;
_lightright setLightFlareMaxDistance 300;
_lightright setLightUseFlare true;
_lightright setLightDayLight true;
if (sunOrMoon < 1) then {
 _brightness = 30;
} else {
 _brightness = 60;
};
_leftRed = true; 
while {(alive _vehicle)} do { 
 //hint format ["DEBUG: lights: %1 \n Vehicle Player: %2",!(_vehicle getVariable "lights"),!(vehicle player !=player)];
 if (!(_vehicle getVariable "lights")) exitWith {};
 if (_leftRed) then { 
 _leftRed = false; 
 _lightright setLightBrightness 0; 
 sleep 0.05;
 _lightleft setLightBrightness _brightness; 
 } else { 
 _leftRed = true; 
 _lightleft setLightBrightness 0; 
 sleep 0.05;
 _lightright setLightBrightness _brightness; 
 };
 sleep 0.22; 
}; 
deleteVehicle _lightleft;
deleteVehicle _lightright;
// LHM END<<<<
*/
/*
// LHM START

private ["_vehicle","_lightRed","_lightBlue","_lightleft","_lightright","_leftRed","_brightness","_attach"];

_vehicle = _this select 0;

if (isNil "_vehicle" || isNull _vehicle || !(_vehicle getVariable "lights")) exitWith {};

switch (typeOf _vehicle) do {
	case "C_Hatchback_01_F": { _attach = [[-0.6, 2, -0.95], [0.6, 2, -0.95]]; };
	case "C_Hatchback_01_sport_F": { _attach = [[-0.6, 2, -0.95], [0.6, 2, -0.95]]; };
	case "C_Offroad_01_F": { _attach = [[-0.45, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	case "C_SUV_01_F": { _attach = [[-0.4, 2.3, -0.55], [0.4, 2.3, -0.52]]; };
	case "B_Heli_Light_01_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	case "B_Heli_Transport_01_F": { _attach = [[-0.5, 0.0, 0.96], [0.5, 0.0, 0.96]]; };
	case "I_MRAP_03_hmg_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	case "I_MRAP_03_F": { _attach = [[-0.37, 0.0, 0.50], [0.37, 0.0, 0.50]]; };
	case "B_APC_Wheeled_01_cannon_F": { _attach = [[-1, -2.8, 0.55], [1, -2.8, 0.55]]; };
	case "B_MRAP_01_hmg_F": { _attach = [[-1, -2.8, 0.55], [1, -2.8, 0.55]]; };
	case "B_MRAP_01_F": { _attach = [[-1, -2.8, 0.55], [1, -2.8, 0.55]]; };
	case "O_MRAP_02_hmg_F": { _attach = [[-1, -2.8, 0.50], [1, -2.8, 0.50]]; };
	case "O_MRAP_02_F": { _attach = [[-1, -2.8, 0.55], [1, -2.8, 0.55]]; };
	case "B_Truck_01_covered_F": { _attach = [[-1.2, 4.85, -0.45], [1.25, 4.85, -0.45]];};
	case "B_Heli_Transport_03_unarmed_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]]; };
	case "B_T_VTOL_01_infantry_F": { _attach = [[-7.6,3.3,-1.2],[7.65,3.35,-1.1]];};
	case "B_T_VTOL_01_vehicle_F": { _attach = [[-7.6,3.3,-1.2],[7.65,3.35,-1.1]];};
	case "I_Heli_light_03_unarmed_F": { _attach = [[-1.23,4.7,-1.42],[1.23,4.7,-1.42]];};
	case "O_Heli_Transport_04_bench_F": { _attach = [[-0.37, 0.0, 0.56], [0.37, 0.0, 0.56]];};
};

_lightRed = [0.1, 0.1, 20];
_lightBlue = [0.1, 0.1, 20];

_lightleft = createVehicle ["#lightpoint", getPos _vehicle, [], 0, "CAN_COLLIDE"];
sleep 0.2;
_lightleft setLightColor _lightRed;
_lightleft setLightBrightness 0;
_lightleft lightAttachObject [_vehicle, _attach select 0];
_lightleft setLightAttenuation [0.181, 0, 1000, 130];
_lightleft setLightIntensity 5;
_lightleft setLightFlareSize 0.38;
_lightleft setLightFlareMaxDistance 100;
_lightleft setLightUseFlare true;
_lightleft setLightDayLight true;

_lightright = createVehicle ["#lightpoint", getPos _vehicle, [], 0, "CAN_COLLIDE"];
sleep 0.2;
_lightright setLightColor _lightBlue;
_lightright setLightBrightness 0;
_lightright lightAttachObject [_vehicle, _attach select 1];
_lightright setLightAttenuation [0.181, 0, 1000, 130];
_lightright setLightIntensity 5;
_lightright setLightFlareSize 0.38;
_lightright setLightFlareMaxDistance 100;
_lightright setLightUseFlare true;
_lightright setLightDayLight true;

if (sunOrMoon < 1) then {
 _brightness = 15;
} else {
 _brightness = 15;
};

_leftRed = true;
while {(alive _vehicle)} do {
 // hint format ["DEBUG: lights: %1 \n Vehicle Player: %2",!(_vehicle getVariable "lights"),!(vehicle player !=player)];
 if (!(_vehicle getVariable "lights")) exitWith {};
 if (_leftRed) then {
     _leftRed = false;
     _lightright setLightBrightness 0;
      sleep 0.05;
     _lightleft setLightBrightness _brightness;
 } else {
     _leftRed = true;
     _lightleft setLightBrightness 0;
     sleep 0.05;
     _lightright setLightBrightness _brightness;
 };
 sleep 0.22;
};
deleteVehicle _lightleft;
deleteVehicle _lightright;
*/
// LHM END
/*
Private ["_vehicle","_lightRed","_lightBlue","_lightleft","_lightright","_leftRed"];
_vehicle = _this select 0;

if (isNil "_vehicle" || isNull _vehicle || !(_vehicle getVariable "lights")) exitWith {};
_lightRed = [0.1, 0.1, 20];
_lightBlue = [0.1, 0.1, 20];

_lightleft = "#lightpoint" createVehicle getPos _vehicle;
sleep 0.2;
_lightleft setLightColor _lightRed;
_lightleft setLightBrightness 0.2;
_lightleft setLightAmbient [0.1,0.1,1];

switch (typeOf _vehicle) do
{
    case "C_Offroad_01_F":
    {
        _lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]];
    };
};

_lightleft setLightAttenuation [0.181, 0, 1000, 130];
_lightleft setLightIntensity 10;
_lightleft setLightFlareSize 0.38;
_lightleft setLightFlareMaxDistance 150;
_lightleft setLightUseFlare true;

_lightright = "#lightpoint" createVehicle getPos _vehicle;
sleep 0.2;
_lightright setLightColor _lightBlue;
_lightright setLightBrightness 0.2;
_lightright setLightAmbient [0.1,0.1,1];

switch (typeOf _vehicle) do
{
    case "C_Offroad_01_F":
    {
        _lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.56]];
    };
};

_lightright setLightAttenuation [0.181, 0, 1000, 130];
_lightright setLightIntensity 10;
_lightright setLightFlareSize 0.38;
_lightright setLightFlareMaxDistance 150;
_lightright setLightUseFlare true;

//ARE YOU ALL HAPPY?!?!?!?!?!?!?!?!?%#?@WGD?TGD?BN?ZDHBFD?GA
_lightleft setLightDayLight true;
_lightright setLightDayLight true;

_leftRed = true;
while{ (alive _vehicle)} do
{
    if (!(_vehicle getVariable "lights")) exitWith {};
    if (_leftRed) then
    {
        _leftRed = false;
        _lightright setLightBrightness 0.0;
        sleep 0.05;
        _lightleft setLightBrightness 6;
    }
        else
    {
        _leftRed = true;
        _lightleft setLightBrightness 0.0;
        sleep 0.05;
        _lightright setLightBrightness 6;
    };
    sleep (_this select 1);
};
deleteVehicle _lightleft;
deleteVehicle _lightright;
*/