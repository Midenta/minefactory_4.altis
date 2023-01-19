/*
    File: fn_ah_select.sqf
    Author: Fresqo
    ## Modified by powerafro2 ##
*/
disableSerialization;
private["_control","_index","_data","_shoppe","_cnt","_id","_units"];
params ["_control","_index"];
_data = _control lbData _index;_data = call compile format["%1",_data];
_cnt = count _data;
_units = [];

if (_cnt isEqualTo 1) exitWith {};
_id = switch (_cnt) do {
    case 5: {_data select 4};
    case 7: {_data select 0};
    default {0};
};

if !(_id isEqualTo 0) then {
	{if (_x getVariable ["ahID",0] isEqualTo _id) then {_units pushBack _x};}forEach playableUnits;
    if (_units isEqualTo []) then {
        player setVariable ["ahID",_id,true];
        missionNamespace setVariable [format["ahItem_%1",_id],true,true];
    };
};

waitUntil{isNull (findDisplay 15600) && isNull (findDisplay 15100) || !(player getVariable["ahID",0] isEqualTo _id)};
missionNamespace setVariable [format["ahItem_%1",_id],false,true];
