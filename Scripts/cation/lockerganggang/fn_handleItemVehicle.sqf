/*
    File: fn_handleItemVehicle.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Takes items from vehicle / stores items in vehicle.
*/
params[
    ["_item","",[""]],
    ["_add",false,[false]],
    ["_type",-1,[0]],
    ["_index",-1,[0]],
    ["_amount",0,[0]],
    ["_ammoCount",0,[0]]
];

if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed || husky_action_inUse) exitWith {closeDialog 0;};
if ((getNumber(missionConfigFile >> "Cation_Lockerganggang" >> "version")) > 4) then {
    if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {closeDialog 0;};
};

private _exit = false;
if (((findDisplay 500012) getVariable ["mode",0]) isEqualTo 1) then {
    if ((player distance cat_Lockerganggang_vehicle) > getNumber(missionConfigFile >> "Cation_Lockerganggang" >> "distanceVehicle")) then {
        hint format [["DistanceVehicle"] call cat_Lockerganggang_fnc_getText,getNumber(missionConfigFile >> "Cation_Lockerganggang" >> "distanceVehicle")];
        _exit = true;
    };
};
if (_exit) exitwith {[0] call cat_Lockerganggang_fnc_switchDisplayMode;};

private _trunkData = cat_Lockerganggang_vehicle getVariable ["Trunk",[[],0]];
private _inv = _trunkData select 0;

private _weight = _amount * ([_item,_type] call cat_Lockerganggang_fnc_itemWeight);
private _index = [_item,_inv,-1,-1] call cat_Lockerganggang_fnc_index;
if (_add) then {
    if (_index isEqualTo -1) then {
        _inv pushBack [_item,_amount];
    } else {
        _inv set[_index,[_item,((_inv select _index select 1) + _amount)]];
    };
    cat_Lockerganggang_vehicle setVariable["Trunk",[_inv,(_trunkData select 1) + _weight],true];
} else {
    private _value = (_inv select _index) select 1;
    if (_amount isEqualTo _value) then {
        _inv deleteAt _index;
    } else {
        _inv set[_index,[_item,(_value - _amount)]];
    };
    cat_Lockerganggang_vehicle setVariable["Trunk",[_inv,(_trunkData select 1) - _weight],true];
};

[] call cat_Lockerganggang_fnc_refreshDialog;