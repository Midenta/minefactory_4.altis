#include "..\..\script_macros.hpp"
/*
    File: fn_vehicleShopBuyEC.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Does something with vehicle purchasing.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

params [["_mode",true,[true]]];

if ((lbCurSel 2302) isEqualTo -1) exitWith {hint localize "STR_Shop_Veh_DidntPick";closeDialog 0;};

private _className = lbData[2302,(lbCurSel 2302)];
private _vIndex = lbValue[2302,(lbCurSel 2302)];
private _vehicleList = M_CONFIG(getArray,"CarShops",(husky_veh_shop select 0),"vehicles");
private _shopSide = M_CONFIG(getText,"CarShops",(husky_veh_shop select 0),"side");


private _initalPrice = M_CONFIG(getNumber,"huskyCfgVehicles",_className,"price");

private "_buyMultiplier";
private "_rentMultiplier";

switch (playerSide) do {
    case civilian: {
        _buyMultiplier = husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_CIVILIAN");
        _rentMultiplier = husky_SETTINGS(getNumber,"vehicle_rental_multiplier_CIVILIAN");
    };
    case west: {
        _buyMultiplier = husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_COP");
        _rentMultiplier = husky_SETTINGS(getNumber,"vehicle_rental_multiplier_COP");
    };
    case independent: {
        _buyMultiplier = husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_MEDIC");
        _rentMultiplier = husky_SETTINGS(getNumber,"vehicle_rental_multiplier_MEDIC");
    };
    case east: {
        _buyMultiplier = husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_OPFOR");
        _rentMultiplier = husky_SETTINGS(getNumber,"vehicle_rental_multiplier_OPFOR");
    };
};

private "_purchasePrice";

if (_mode) then {
    _purchasePrice = round(_initalPrice * _buyMultiplier);
} else {
    _purchasePrice = round(_initalPrice * _rentMultiplier);
};

private _conditions = M_CONFIG(getText,"huskyCfgVehicles",_className,"conditions");

if !([_conditions] call husky_fnc_levelCheck) exitWith {hint localize "STR_Shop_Veh_NoLicense";};

private _colorIndex = lbValue[2304,(lbCurSel 2304)];

if (_purchasePrice < 0) exitWith {closeDialog 0;}; //Bad price entry
if ((b126 < _purchasePrice) and (_mode)) exitWith {hint format [localize "STR_Shop_Veh_NotEnoughEC",[_purchasePrice - b126] call husky_fnc_numberText];closeDialog 0;};
if (b126 < _purchasePrice) exitWith {hint format [localize "STR_Shop_Veh_NotEnoughRentEC",[_purchasePrice - b126] call husky_fnc_numberText];closeDialog 0;};


private _spawnPoints = husky_veh_shop select 1;
private _spawnPoint = "";

if ((husky_veh_shop select 0) == "lol") then {
    if (nearestObjects[(getMarkerPos _spawnPoints),["Air"],35] isEqualTo []) exitWith {_spawnPoint = _spawnPoints};
} else {
    //Check if there is multiple spawn points and find a suitable spawnpoint.
    if (_spawnPoints isEqualType []) then {
        //Find an available spawn point.
        {
            if ((nearestObjects[(getMarkerPos _x),["Car","Tank","Ship","Air"],5]) isEqualTo []) exitWith {_spawnPoint = _x};
            true
        } count _spawnPoints;
    } else {
        if (nearestObjects[(getMarkerPos _spawnPoints),["Car","Tank","Ship","Air"],5] isEqualTo []) exitWith {_spawnPoint = _spawnPoints};
    };
};


if (_spawnPoint isEqualTo "") exitWith {hint localize "STR_Shop_Veh_Block"; closeDialog 0;};
b126 = b126 - _purchasePrice;
[1] call SOCK_fnc_updatePartial;
if (_mode) then {
    hint format [localize "STR_Shop_Veh_BoughtEC",getText(configFile >> "CfgVehicles" >> _className >> "displayName"),[_purchasePrice] call husky_fnc_numberText];
} else {
    hint format [localize "STR_Shop_Veh_RentEC",getText(configFile >> "CfgVehicles" >> _className >> "displayName"),[_purchasePrice] call husky_fnc_numberText];
};

//Spawn the vehicle and prep it.

private "_vehicle";

if ((husky_veh_shop select 0) == "lol") then {
    sleep 0.6;
} else {
    _pos = getMarkerPos _spawnPoint;
	_dir = markerDir _spawnPoint;

	if(_spawnPoint isEqualTo "med_Air_1")then{
		_pos = [3731.683,12976.094,19.479];
		_dir = 90;
	};
    if(_spawnPoint isEqualTo "med_Air_HQ_Heli_1")then{
		_pos = [14564.3,16447.7,44.062];
		_dir = 223;
	};
    if(_spawnPoint isEqualTo "med_Air_HQ_Heli_2")then{
		_pos = [14636.5,16493.5,21.6017];
		_dir = 134;
	};
    if(_spawnPoint isEqualTo "civ_car_3_1")then{
		_pos = [3702.07,13382.5,2.271];
		_dir = 311;
	};
    if(_spawnPoint isEqualTo "civ_car_3")then{
		_pos = [3712.39,13395.5,1.409];
		_dir = 311;
	};
    if(_spawnPoint isEqualTo "civ_truck_1")then{
		_pos = [3683.15,13411.9,3.791];
		_dir = 221;
	};
    if(_spawnPoint isEqualTo "civ_container_1")then{
		_pos = [3670,13392.9,3.834];
		_dir = 221;
	};
    if(_spawnPoint isEqualTo "cop_air_8")then{
		_pos = [3216.78,12907,0.734];
		_dir = 100;
	};
    if(_spawnPoint isEqualTo "cop_air_3")then{
		_pos = [3211.36,12874.9,0.734];
		_dir = 100;
	};
    if(_spawnPoint isEqualTo "cop_air_5")then{
		_pos = [23699.604,5.7976718,0.6];
		_dir = 108.5;
	};
    if(_spawnPoint isEqualTo "cop_car_9")then{
		_pos = [3164.1,12896.6,0.381];
		_dir = 90;
	};
	if(_spawnPoint isEqualTo "civ_garage_air_2")then{
		_pos = [3788.68,13286.6,5.174];
		_dir = 129;
	};
	if (_spawnPoint isEqualTo "civ_garage_air_3") then {
		_pos = [3802.61,13304,6.772];
		_dir = 129;
	};
    /*
    if(_spawnPoint isEqualTo "fahrzeuge_1")then{
		_pos = [3895.835,12447.425,0.2];
		_dir = 90;
	};*/

	_vehicle = createVehicle [_className, _pos, [], 0, "NONE"];
	waitUntil {!isNil "_vehicle" && {!isNull _vehicle}}; //Wait?
	_vehicle allowDamage false; //Temp disable damage handling..
	_vehicle setPos _pos;
	_vehicle setVectorUp (surfaceNormal (getMarkerPos _spawnPoint));
	_vehicle setDir _dir;
};

_vehicle lock 2;
//if !( _vehicle isKindOf "Ship") then {_vehicle setPosATL _pos;} else {_vehicle setPosASL _pos;};
[_vehicle,_colorIndex] call husky_fnc_colorVehicle;
[_vehicle] call husky_fnc_clearVehicleAmmo;
[_vehicle,"trunk_in_use",false,true] remoteExecCall ["TON_fnc_setObjVar",RSERV];
[_vehicle,"vehicle_info_owners",[[getPlayerUID player,profileName]],true] remoteExecCall ["TON_fnc_setObjVar",RSERV];
_vehicle setVariable ["playerSide_player",playerSide,true];
_vehicle disableTIEquipment true; //No Thermals.. They're cheap but addictive.

_vehicle enableVehicleSensor   ["PassiveRadarSensorComponent",false];
_vehicle enableVehicleSensor   ["IRSensorComponent",false];
_vehicle enableVehicleSensor   ["VisualSensorComponent",false];
_vehicle enableVehicleSensor   ["ActiveRadarSensorComponent",false];
_vehicle enableVehicleSensor   ["LaserSensorComponent",false];
_vehicle enableVehicleSensor   ["NVSensorComponent",false];

//Side Specific actions.
switch (playerSide) do {
    case west: {
        [_vehicle,"cop_offroad",true] spawn husky_fnc_vehicleAnimate;
		if(_className in ["B_UAV_05_F","B_T_UAV_03_dynamicLoadout_F"]) then {
			createVehicleCrew _vehicle;
		};
    };
    case civilian: {
        if ((husky_veh_shop select 2) isEqualTo "civ" && {_className == "B_Heli_Light_01_F"}) then {
            [_vehicle,"civ_littlebird",true] spawn husky_fnc_vehicleAnimate;
        };
    };
    case independent: {
        [_vehicle,"med_offroad",true] spawn husky_fnc_vehicleAnimate;
    };
};

_vehicle allowDamage true;

husky_vehicles pushBack _vehicle;


//private _vehicleOwner = name player;


//Always handle key management by the server
[getPlayerUID player,playerSide,_vehicle,1] remoteExecCall ["TON_fnc_keyManagement",RSERV];

//Orginal
if (_mode) then {
    if !(_className in husky_SETTINGS(getArray,"vehicleShop_rentalOnly")) then {
        if (husky_HC_isActive) then {
            [(getPlayerUID player),playerSide,_vehicle,_colorIndex,profileName] remoteExec ["HC_fnc_vehicleCreate",HC_husky];
        } else {
            [(getPlayerUID player),playerSide,_vehicle,_colorIndex,profileName] remoteExec ["TON_fnc_vehicleCreate",RSERV];
        };
    }else{
		_vehicle setVariable ["noSell",true,true];
    };
};

[getPlayerUID player, "Fahrzeuge kaufen EC", format ["%1 - %2 hat sich das Fahrzeug %3 für %4 € gekauft. Bargeld: %5 € Bankkonto: %6 €",profileName,(getPlayerUID player),_className,[_purchasePrice] call husky_fnc_numberText,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];


if (husky_SETTINGS(getNumber,"player_advancedLog") isEqualTo 1) then {
    if (husky_SETTINGS(getNumber,"battlEye_friendlyLogging") isEqualTo 1) then {
        advanced_log = format [localize "STR_DL_AL_boughtVehicle_BEF",_className,[_purchasePrice] call husky_fnc_numberText,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText];
    } else {
        advanced_log = format [localize "STR_DL_AL_boughtVehicle",profileName,(getPlayerUID player),_className,[_purchasePrice] call husky_fnc_numberText,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText];
    };
    publicVariableServer "advanced_log";
};

closeDialog 0; //Exit the menu.
true;
