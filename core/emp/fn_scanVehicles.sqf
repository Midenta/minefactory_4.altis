#include "..\..\script_macros.hpp"
/*
	File: fn_scanVehicles.sqf
	Author/Copyright: © 2014 nano2K - written for we-are-friendly.de
	Edited by: blackfisch for Native-Network
*/
private["_display","_list","_objects"];
disableSerialization;
if (!isNull (findDisplay 3494)) then {
    _display = findDisplay 3494;
    _list = _display displayCtrl 2902;
    lbClear _list;
    husky_last_vehicles = [];
    _objects = nearestObjects [player, ["Air","Car","Tank","Ship"], 300];		//Reichweite
    {
        if (vehicle player != _x) then {
			//Falls jemand weiß, wie man Farben von Autos in der 4.4 abfragt bitte melden!
            //_color = [(typeOf _x),(_x getVariable "husky_VEH_color")] call husky_fnc_vehicleColorStr;
            //_text = format["(%1)",_color];
            _list lbAdd format ["%1 - (%2)", getText(configFile >> "cfgVehicles" >> typeOf _x >> "DisplayName"), round(player distance _x)];
            husky_last_vehicles set [count husky_last_vehicles, _x];
        };
    } foreach _objects;
};