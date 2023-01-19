#include "..\..\script_macros.hpp"
/*
    File: fn_s_onSliderChange.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Called when the slider is changed for any field and updates the view distance for it.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_mode","_value"];
_mode = [_this,0,-1,[0]] call BIS_fnc_param;
_value = [_this,1,-1,[0]] call BIS_fnc_param;
if (_mode isEqualTo -1 || _value isEqualTo -1) exitWith {};
disableSerialization;

switch (_mode) do {
    case 0:
    {
        husky_SETTINGS_viewDistanceFoot = round(_value);
        ctrlSetText[2902,format ["%1",round(_value)]];
        [] call husky_fnc_updateViewDistance;
        profileNamespace setVariable ["husky_viewDistanceFoot",round(_value)];
    };

    case 1:
    {
        husky_SETTINGS_viewDistanceCar = round(_value);
        ctrlSetText[2912,format ["%1",round(_value)]];
        [] call husky_fnc_updateViewDistance;
        profileNamespace setVariable ["husky_viewDistanceCar",round(_value)];
    };

    case 2:
    {
        husky_SETTINGS_viewDistanceAir = round(_value);
        ctrlSetText[2922,format ["%1",round(_value)]];
        [] call husky_fnc_updateViewDistance;
        profileNamespace setVariable ["husky_viewDistanceAir",round(_value)];
    };

    case 3: {
        _classname = lbData[20302,(lbCurSel 20302)];
        _index =  lbValue[20302,(lbCurSel 20302)];
        if ((lbCurSel 20302) isEqualTo -1) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Wähle ein Fahrzeug:</t>";};
        if (!isNil "_classname" || _classname =="") then {
            _car = (vehiclefuelList select _index) select 0;
            _vehicleInfo = [_className] call husky_fnc_fetchVehInfo;
            _fuel = fuel _car;
            _fueltank = (_vehicleInfo select 12);
            /*
            if (_car isKindOf "B_Truck_01_box_F" || _car isKindOf "B_Truck_01_transport_F") then {
                _fueltank = 450;
            };
            */
            ctrlSetText[20324,format ["Sprit : %1 Liter",round(_value) - (floor(_fuel * _fueltank))]];
            ctrlSetText [20323,format ["Gesamt : %1 �",round (husky_fuelPrices * (round(_value) -(floor(_fuel * _fueltank)))) ]];
        } else {
            hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Wähle ein Fahrzeug:</t>";
        };
    };

    case 4: {
        player setDir (360 - _value);
    };
};
