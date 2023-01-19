 #include "..\..\script_macros.hpp"
/*
    File: fn_unimpound.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Yeah... Gets the vehicle from the garage.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_vehicle","_vehiclehusky","_vid","_pid","_unit","_price","_price","_storageFee","_purchasePrice"];
disableSerialization;
if ((lbCurSel 2802) isEqualTo -1) exitWith {["Du hast nichts ausgewählt.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
_vehicle = lbData[2802,(lbCurSel 2802)];
_vehicle = (call compile format ["%1",_vehicle]) select 0;
_vehiclehusky = _vehicle;
_vid = lbValue[2802,(lbCurSel 2802)];
_pid = getPlayerUID player;
_unit = player;
_spawntext = localize "STR_Garage_spawn_Success";
_gFund = GANG_FUNDS;
if (isNil "_vehicle") exitWith {hint localize "STR_Garage_Selection_Error"};
if (!isClass (missionConfigFile >> "huskyCfgVehicles" >> _vehiclehusky)) then {
    _vehiclehusky = "Default"; //Use Default class if it doesn't exist
    //diag_log format ["%1: huskyCfgVehicles class doesn't exist",_vehicle];
};

_price = M_CONFIG(getNumber,"huskyCfgVehicles",_vehiclehusky,"price");
_storageFee = husky_SETTINGS(getNumber,"vehicle_storage_fee_multiplier");

switch (playerSide) do {
    case civilian: {_purchasePrice = _price * husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_CIVILIAN");};
    case west: {_purchasePrice = _price * husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_COP");};
    case independent: {_purchasePrice = _price * husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_MEDIC");};
    case east: {_purchasePrice = _price * husky_SETTINGS(getNumber,"vehicle_purchase_multiplier_OPFOR");};
};
_price = _purchasePrice * _storageFee;

if (!(_price isEqualType 0) || _price < 1) then {_price = 500;};
if (b126 < _price) exitWith {hint format [(localize "STR_Garage_CashError"),[_price] call husky_fnc_numberText];};



if (husky_garage_sp isEqualType []) then {

	if (husky_HC_isActive) then {
		[_vid,_pid,(husky_garage_sp select 0),_unit,_price,(husky_garage_sp select 1),_spawntext] remoteExec ["HC_fnc_spawnVehicle",HC_husky];
	} else {
		[_vid,_pid,(husky_garage_sp select 0),_unit,_price,(husky_garage_sp select 1),_spawntext] remoteExec ["TON_fnc_spawnVehicle",RSERV];
	};
} else {
		
		/*
		private "_pos";
		private "_dir";
		*/
		
		_pos = getMarkerPos husky_garage_sp;
		_dir = markerDir husky_garage_sp;
		
		
		if (husky_garage_sp isEqualTo "med_Air_1") then {
			_pos = [_pos select 0,_pos select 1,19.479];
			_dir = 90;
		};
		if(husky_garage_sp isEqualTo "med_Air_HQ_Heli_1")then{
			_pos = [14564.3,16447.7,44.062];
			_dir = 223;
		};
		if(husky_garage_sp isEqualTo "med_Air_HQ_Heli_2")then{
			_pos = [14636.5,16493.5,21.6017];
			_dir = 134;
		};
		if (husky_garage_sp isEqualTo "civ_car_3_1") then {
			_pos = [_pos select 0,_pos select 1,2.271];
			_dir = 311;
		};
		if (husky_garage_sp isEqualTo "civ_car_3") then {
			_pos = [_pos select 0,_pos select 1,1.409];
			_dir = 311;
		};
		if (husky_garage_sp isEqualTo "civ_truck_1") then {
			_pos = [_pos select 0,_pos select 1,3.791];
			_dir = 221;
		};
		if (husky_garage_sp isEqualTo "civ_container_1") then {
			_pos = [_pos select 0,_pos select 1,3.834];
			_dir = 221;
		};
		if(husky_garage_sp isEqualTo "cop_air_8")then{
			_pos = [3216.78,12907,0.734];
			_dir = 100;
		};
		if(husky_garage_sp isEqualTo "cop_air_3")then{
			_pos = [3211.36,12874.9,0.734];
			_dir = 100;
		};
		if(husky_garage_sp isEqualTo "cop_air_5")then{
			_pos = [_pos select 0,_pos select 1,0.6];
			_dir = 108.5;
		};
		if (husky_garage_sp isEqualTo "cop_car_9") then {
			_pos = [_pos select 0,_pos select 1,0.381];
			_dir = 90;
		};
		if(husky_garage_sp isEqualTo "civ_garage_air_2")then{
			_pos = [_pos select 0,_pos select 1,5.174];
			_dir = 126.6;
		};
		if (husky_garage_sp isEqualTo "civ_garage_air_3") then {
			_pos = [_pos select 0,_pos select 1,6.772];
			_dir = 126.6;
		};
		if (husky_garage_sp isEqualTo "cop_car_1") then {
			_pos = [_pos select 0,_pos select 1,0.5];
			_dir = 315;
		};
		/*
		if (husky_garage_sp isEqualTo "fahrzeuge_1") then {
			_pos = [_pos select 0,_pos select 1,0.2];
			_dir = 90;
		};
		*/
		

		if (husky_HC_isActive) then {
			[_vid,_pid,_pos,_unit,_price,_dir,_spawntext] remoteExec ["HC_fnc_spawnVehicle",HC_husky];
		} else {
			[_vid,_pid,_pos,_unit,_price,_dir,_spawntext] remoteExec ["TON_fnc_spawnVehicle",RSERV];
		};

};


//["Fahrzeug wird bereitgestellt, bitte warten...", "Information"] spawn husky_fnc_createNotification;
//hint localize "STR_Garage_SpawningVeh";
hint parseText "<t underline='true' size='1.8' color='#7cff00'>Informant</t><br /><t size='1.5' color='#ffffff'>Fahrzeug wird bereitgestellt, bitte warten...</t>";

b126 = b126 - _price;
[1] call SOCK_fnc_updatePartial;

[getPlayerUID player, "Fahrzeug Ausparken", format ["%1 - %2 hat %3 %4 %5 ausgeparkt. Bargeld: %6 € Bankkonto: %7 € Coins: %8 € Gangkonto: %9 € ",profileName,(getPlayerUID player),_vehicle,_vid,_price,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText,[_gFund] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
closeDialog 0;
