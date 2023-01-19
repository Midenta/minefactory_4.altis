#include "..\..\script_macros.hpp"
/*
    File: fn_vInteractionMenu.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Replaces the mass add actions for various vehicle actions.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Btn7 37456
#define Btn8 37457
#define Btn9 37458
#define Btn10 37459
#define Title 37401
private ["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8","_Btn9","_Btn10","_id"];
if (!dialog) then {
    createDialog "vInteraction_Menu";
};
disableSerialization;

_curTarget = param [0,objNull,[objNull]];
//_curTarget = cursorObject;
if (isNull _curTarget) exitWith {closeDialog 0;}; //Bad target
_isVehicle = if ((_curTarget isKindOf "landVehicle") || (_curTarget isKindOf "Ship") || (_curTarget isKindOf "Air") || (_curTarget isKindOf "Box_NATO_AmmoVeh_F") || (_curTarget isKindOf "Land_Cargo20_white_F")|| (_curTarget isKindOf "Land_Cargo20_red_F") || (_curTarget isKindOf "Land_Cargo20_blue_F")|| (_curTarget isKindOf "Land_Cargo20_military_green_F") || (_curTarget isKindOf "Land_Cargo20_yellow_F") || (_curTarget isKindOf "Land_Cargo20_IDAP_F") || (_curTarget isKindOf "B_Slingload_01_Fuel_F") || (_curTarget isKindOf "Land_Pod_Heli_Transport_04_fuel_F") || (_curTarget isKindOf "Land_Device_slingloadable_F") || (_curTarget isKindOf "Land_Device_assembled_F")) then {true} else {false};
if (!_isVehicle) exitWith {closeDialog 0;};

_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
_Btn7 = _display displayCtrl Btn7;
_Btn8 = _display displayCtrl Btn8;
_Btn9 = _display displayCtrl Btn9;
_Btn10 = _display displayCtrl Btn10;
husky_vInact_curTarget = _curTarget;
_id = getObjectDLC _curTarget;

//Set Repair Action
_Btn1 ctrlSetText localize "STR_vInAct_Repair";
_Btn1 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_repairTruck; closeDialog 0;";

if ((husky_inv_toolkit >= 1) && {alive husky_vInact_curTarget} && {([husky_vInact_curTarget] call husky_fnc_isDamaged)}) then {_Btn1 ctrlEnable true;} else {_Btn1 ctrlEnable false;};

if (playerSide isEqualTo west) then {
    _Btn2 ctrlSetText localize "STR_vInAct_Registration";
    _Btn2 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_searchVehAction; closeDialog 0;";

    _Btn3 ctrlSetText localize "STR_vInAct_SearchVehicle";
    _Btn3 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_vehInvSearch; closeDialog 0;";

    _Btn4 ctrlSetText localize "STR_vInAct_PullOut";
    _Btn4 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_pulloutAction; closeDialog 0;";
    if (crew _curTarget isEqualTo []) then {_Btn4 ctrlEnable false;};

    _Btn5 ctrlSetText localize "STR_vInAct_Impound";
    _Btn5 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_impoundAction; closeDialog 0;";
	
	_Btn6 ctrlSetText localize "STR_vInAct_ImpoundTemp";
    _Btn6 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_temp_impound; closeDialog 0;";
	
	_Btn7 ctrlSetText localize "STR_vInAct_ImpoundPerm";
    _Btn7 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_perm_impound; closeDialog 0;";

	_Btn8 ctrlShow false;
    if (_curTarget isKindOf "Ship") then {
        _Btn8 ctrlSetText localize "STR_vInAct_PushBoat";
        _Btn8 buttonSetAction "[] spawn husky_fnc_pushObject; closeDialog 0;";
        if (_curTarget isKindOf "Ship" && {local _curTarget} && {crew _curTarget isEqualTo []}) then { _Btn8 ctrlEnable true;} else {_Btn8 ctrlEnable false};
		_Btn8 ctrlShow true;
    } else {
        if (!isNil "_id") then {
            if !(_id in getDLCs 1) then {
                _Btn8 ctrlSetText localize "STR_vInAct_GetInVehicle";
                _Btn8 buttonSetAction "player moveInDriver husky_vInact_curTarget; closeDialog 0;";
                if (crew _curTarget isEqualTo [] && {canMove _curTarget} && {locked _curTarget isEqualTo 0}) then {_Btn8 ctrlEnable true;} else {_Btn8 ctrlEnable false};
				_Btn8 ctrlShow true;
            };
        } else {
            _Btn8 ctrlSetText localize "STR_vInAct_Unflip";
            _Btn8 buttonSetAction "husky_vInact_curTarget setPos [getPos husky_vInact_curTarget select 0, getPos husky_vInact_curTarget select 1, (getPos husky_vInact_curTarget select 2)+3]; closeDialog 0;";
            if (alive _curTarget && {crew _curTarget isEqualTo []} && {canMove _curTarget}) then { _Btn8 ctrlEnable false;} else {_Btn8 ctrlEnable true;};
			_Btn8 ctrlShow true;
        };
    };
	
	_Btn9 ctrlSetText "Polizei Computer öffnen";
    _Btn9 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_opencopcomputer; closeDialog 0;";
	
_Btn1 ctrlShow true;	//Repariern
_Btn2 ctrlShow true;	//Besitzer
_Btn3 ctrlShow true;	//Fahrzeug durchsuchen
_Btn4 ctrlShow true;	//Aus dem Fahrzeug
_Btn5 ctrlShow true;	//Abschleppen
_Btn6 ctrlShow true;	//Beschlagnahmen
_Btn7 ctrlShow true;	//Perm Beschlagnehmen
//_Btn8 ctrlShow true;	//Gerät farmen,DLC Fahrzeuge einsteigen,Umdrehen,fuel irgendwas
_Btn9 ctrlShow true;	//CopComputer
_Btn10 ctrlShow false;	//NIX

};

if (playerSide isEqualTo independent) then {
    _Btn2 ctrlSetText localize "STR_vInAct_Registration";
    _Btn2 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_searchVehAction; closeDialog 0;";

    //_Btn3 ctrlSetText localize "STR_vInAct_SearchVehicle";
    //_Btn3 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_vehInvSearch; closeDialog 0;";

    _Btn3 ctrlSetText localize "STR_vInAct_PullOut";
    _Btn3 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_pulloutAction; closeDialog 0;";
    if (crew _curTarget isEqualTo []) then {_Btn3 ctrlEnable false;};

    _Btn4 ctrlSetText localize "STR_vInAct_Impound";
    _Btn4 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_impoundAction; closeDialog 0;";

	_Btn5 ctrlSetText localize "STR_vInAct_ImpoundTemp";
    _Btn5 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_impoundTempAction; closeDialog 0;";

	_Btn6 ctrlShow false;
    if (_curTarget isKindOf "Ship") then {
        _Btn6 ctrlSetText localize "STR_vInAct_PushBoat";
        _Btn6 buttonSetAction "[] spawn husky_fnc_pushObject; closeDialog 0;";
        if (_curTarget isKindOf "Ship" && {local _curTarget} && {crew _curTarget isEqualTo []}) then { _Btn6 ctrlEnable true;} else {_Btn6 ctrlEnable false};
		_Btn6 ctrlShow true;
    } else {
        if (!isNil "_id") then {
            if !(_id in getDLCs 1) then {
                _Btn6 ctrlSetText localize "STR_vInAct_GetInVehicle";
                _Btn6 buttonSetAction "player moveInDriver husky_vInact_curTarget; closeDialog 0;";
                if (crew _curTarget isEqualTo [] && {canMove _curTarget} && {locked _curTarget isEqualTo 0}) then {_Btn6 ctrlEnable true;} else {_Btn6 ctrlEnable false};
				_Btn6 ctrlShow true;
            };
        } else {
            _Btn6 ctrlSetText localize "STR_vInAct_Unflip";
            _Btn6 buttonSetAction "husky_vInact_curTarget setPos [getPos husky_vInact_curTarget select 0, getPos husky_vInact_curTarget select 1, (getPos husky_vInact_curTarget select 2)+3]; closeDialog 0;";
            if (alive _curTarget && {crew _curTarget isEqualTo []} && {canMove _curTarget}) then { _Btn6 ctrlEnable false;} else {_Btn6 ctrlEnable true;};
			_Btn6 ctrlShow true;
		};
    };
	
	_Btn7 ctrlSetText "Mediziner Computer öffnen";
    _Btn7 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_openmedcomputer; closeDialog 0;";
    
    if (typeOf (_curTarget) in ["C_Van_01_fuel_F","I_Truck_02_fuel_F","B_Truck_01_fuel_F","B_T_Truck_01_fuel_F","O_Truck_02_fuel_F","O_Truck_03_fuel_F","O_Heli_Transport_04_fuel_F"] && _curTarget in husky_vehicles) then {
		_Btn8 ctrlShow false;
		if (!isNil {_curTarget getVariable "fuelTankWork"}) then {
            _Btn8 ctrlSetText localize "STR_FuelTank_Stop";
            _Btn8 buttonSetAction "husky_vInact_curTarget setVariable [""fuelTankWork"",nil,true]; closeDialog 0;";
            _Btn8 ctrlShow true;
        } else {
            if (count (nearestObjects [_curTarget, ["Land_fs_feed_F","Land_FuelStation_01_pump_F","Land_FuelStation_02_pump_F","Land_FuelStation_03_pump_F","Land_FuelStation_Feed_F"], 15]) > 0) then {
                _Btn8 ctrlSetText localize "STR_FuelTank_Supply";
                _Btn8 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_fuelSupply";
                _Btn8 ctrlShow true;
            }else{
                {
                    if (player distance (getMarkerPos _x) < 30) exitWith {
                        _Btn8 ctrlSetText localize "STR_FuelTank_Store";
                        _Btn8 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_fuelStore";
                        _Btn8 ctrlShow true;
                    };
                //} forEach ["tankstelle_1","tankstelle_2","marker_31","marker_32","marker_41"];
				} forEach ["verarbeitung_26"];
            };
        };
	} else {
        _Btn8 ctrlShow false;
    };

_Btn1 ctrlShow true;	//Repariern
_Btn2 ctrlShow true;	//Besitzer
//_Btn3 ctrlShow true;	//Aus dem Fahrzeug
_Btn4 ctrlShow true;	//Abschleppen
_Btn5 ctrlShow true;	//Beschlagnahmen
//_Btn6 ctrlShow true;	//Gerät farmen,DLC Fahrzeuge einsteigen,Umdrehen,fuel irgendwas
_Btn7 ctrlShow true;	//MedComputer
//_Btn8 ctrlShow false;	//Fuel Mission
_Btn9 ctrlShow false;	//NIX
_Btn10 ctrlShow false;	//NIX

};

if (playerSide isEqualTo civilian) then {
    if (_curTarget isKindOf "Ship") then {
        _Btn2 ctrlSetText localize "STR_vInAct_PushBoat";
        _Btn2 buttonSetAction "[] spawn husky_fnc_pushObject; closeDialog 0;";
        if (alive _curTarget && {_curTarget isKindOf "Ship"} && {local _curTarget} && {crew _curTarget isEqualTo []}) then { _Btn2 ctrlEnable true;} else {_Btn2 ctrlEnable false};
    } else {
        if (!isNil "_id") then {
            if !(_id in getDLCs 1) then {
                _Btn2 ctrlSetText localize "STR_vInAct_GetInVehicle";
                _Btn2 buttonSetAction "player moveInDriver husky_vInact_curTarget; closeDialog 0;";
                if (crew _curTarget isEqualTo [] && {canMove _curTarget} && {locked _curTarget isEqualTo 0}) then {_Btn2 ctrlEnable true;} else {_Btn2 ctrlEnable false};
            };
        } else {
            _Btn2 ctrlSetText localize "STR_vInAct_Unflip";
            _Btn2 buttonSetAction "husky_vInact_curTarget setPos [getPos husky_vInact_curTarget select 0, getPos husky_vInact_curTarget select 1, (getPos husky_vInact_curTarget select 2)+3]; closeDialog 0;";
            if (alive _curTarget && {crew _curTarget isEqualTo []} && {canMove _curTarget}) then { _Btn2 ctrlEnable false;} else {_Btn2 ctrlEnable true;};
        };
    };

	_Btn3 ctrlSetText localize "STR_vInAct_PullOut";
    _Btn3 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_pulloutAction; closeDialog 0;";
    if (crew _curTarget isEqualTo []) then {_Btn3 ctrlEnable false;};
	if (!(license_civ_PullOut)) then {_Btn3 ctrlEnable false;};
	
	//if (license_civ_alice) then {	
		if (((_curTarget getVariable ['dbInfo',['-1',-1]]) select 0) isEqualTo (getplayeruid player)) then {
			_Btn4 ctrlSetText localize "STR_trade_sell_object";
			_Btn4 buttonSetAction "[husky_vInact_curTarget] call husky_fnc_initSellObject";
			_Btn4 ctrlShow true;
		} else {
			_Btn4 ctrlShow false;
		};
	//};

    if (typeOf (_curTarget) in ["C_Van_01_fuel_F","I_Truck_02_fuel_F","B_Truck_01_fuel_F","B_T_Truck_01_fuel_F","O_Truck_02_fuel_F","O_Truck_03_fuel_F","O_Heli_Transport_04_fuel_F"] && _curTarget in husky_vehicles) then {
		_Btn5 ctrlShow false;
		if (!isNil {_curTarget getVariable "fuelTankWork"}) then {
            _Btn5 ctrlSetText localize "STR_FuelTank_Stop";
            _Btn5 buttonSetAction "husky_vInact_curTarget setVariable [""fuelTankWork"",nil,true]; closeDialog 0;";
            _Btn5 ctrlShow true;
        } else {
            if (count (nearestObjects [_curTarget, ["Land_fs_feed_F","Land_FuelStation_01_pump_F","Land_FuelStation_02_pump_F","Land_FuelStation_03_pump_F","Land_FuelStation_Feed_F"], 15]) > 0) then {
                _Btn5 ctrlSetText localize "STR_FuelTank_Supply";
                _Btn5 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_fuelSupply";
                _Btn5 ctrlShow true;
            }else{
                {
                    if (player distance (getMarkerPos _x) < 30) exitWith {
                        _Btn5 ctrlSetText localize "STR_FuelTank_Store";
                        _Btn5 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_fuelStore";
                        _Btn5 ctrlShow true;
                    };
                //} forEach ["tankstelle_1","tankstelle_2","marker_31","marker_32","marker_41"];
				} forEach ["verarbeitung_26"];
            };
        };
	} else {
        _Btn5 ctrlShow false;
    };
	
	if (typeOf _curTarget == "O_Truck_03_device_F") then {
		_Btn6 ctrlShow true;
		
        _Btn6 ctrlSetText localize "STR_vInAct_DeviceMine";
        _Btn6 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_deviceMine";
        if (!isNil {(_curTarget getVariable "mining")} || !local _curTarget && {_curTarget in husky_vehicles}) then {
            _Btn6 ctrlEnable false;
        } else {
            _Btn6 ctrlEnable true;
        };
	} else {
        _Btn6 ctrlShow false;
    };
	
	if (typeOf _curTarget == "O_T_Truck_03_device_ghex_F") then {
		_Btn7 ctrlShow true;
		
        _Btn7 ctrlSetText localize "STR_vInAct_DeviceMineplus";
        _Btn7 buttonSetAction "[husky_vInact_curTarget] spawn husky_fnc_deviceMineplus";
        if (!isNil {(_curTarget getVariable "mining")} || !local _curTarget && {_curTarget in husky_vehicles}) then {
            _Btn7 ctrlEnable false;
        } else {
            _Btn7 ctrlEnable true;
        };
	} else {
        _Btn7 ctrlShow false;
    };

	
_Btn1 ctrlShow true;	//Repariern
_Btn2 ctrlShow true;	//Fahrzeug umdrehen
_Btn3 ctrlShow true;	//Aus dem Fahrzeug
_Btn4 ctrlShow true;	//Fahrzeug verkaufen
//_Btn5 ctrlShow true;	//Fuel Mission
//_Btn6 ctrlShow true;	//Gerät farmen
//_Btn7 ctrlShow false;	//Gerär Plus abbauen/verarbeiten lassen
_Btn8 ctrlShow false;	//NIX
_Btn9 ctrlShow false;	//NIX
_Btn10 ctrlShow false;	//NIX
};

