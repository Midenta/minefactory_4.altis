#include "..\..\script_macros.hpp"
/*
    File: fn_vehicleShopMenu.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Blah
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

(_this select 3) params [
    ["_Garage","",[""]],
    ["_sideCheck",sideUnknown,[civilian]],
    ["_spawnPoints","",["",[]]],
    ["_GarageFlag","",[""]],
    ["_GarageTitle","",[""]],
    ["_disableBuy",false,[true]]
];

disableSerialization;

//Long boring series of checks
if (dialog) exitWith {};
if (_Garage isEqualTo "") exitWith {};
if (!(_sideCheck isEqualTo sideUnknown) && {!(playerSide isEqualTo _sideCheck)}) exitWith {hint localize "STR_Shop_Veh_NotAllowed"};

private _conditions = M_CONFIG(getText,"CarShops",_Garage,"conditions");
if !([_conditions] call husky_fnc_levelCheck) exitWith {hint localize "STR_Shop_Veh_NotAllowed"};


  createDialog "husky_impound_menu";


husky_veh_Garage = [_Garage,_spawnpoints,_GarageFlag,_disableBuy]; //Store it so so other parts of the system can access it.

//Fetch the shop config.
_vehicleList = M_CONFIG(getArray,"CarShops",_Garage,"vehicles");

private _control = CONTROL(2800,2802);
lbClear _control; //Flush the list.
ctrlShow [2330,false];

//Loop through
{
    _x params["_className"];

    private _toShow = [_x] call husky_fnc_levelCheck;

    if (_toShow) then {
        _vehicleInfo = [_className] call husky_fnc_fetchVehInfo;
        _control lbAdd (_vehicleInfo select 3);
        _control lbSetPicture [(lbSize _control)-1,(_vehicleInfo select 2)];
        _control lbSetData [(lbSize _control)-1,_className];
        _control lbSetValue [(lbSize _control)-1,_forEachIndex];
    };
} forEach _vehicleList;


 [] call husky_fnc_vehicleGarageInit3DPreview;


((findDisplay 2800) displayCtrl 2802) lbSetCurSel 0;
