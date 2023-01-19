/*
    File: fn_handleItemLocker.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Takes items from locker / stores items in locker.
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
if ((getNumber(missionConfigFile >> "Cation_Lockergang" >> "version")) > 4) then {
    if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {closeDialog 0;};
};

private _exit = false;
if (((findDisplay 50001) getVariable ["mode",0]) isEqualTo 1) then {
    if ((player distance cat_Lockergang_vehicle) > getNumber(missionConfigFile >> "Cation_Lockergang" >> "distanceVehicle")) then {
        hint format [["DistanceVehicle"] call cat_Lockergang_fnc_getText,getNumber(missionConfigFile >> "Cation_Lockergang" >> "distanceVehicle")];
        _exit = true;
    };
};
if (_exit) exitwith {[0] call cat_Lockergang_fnc_switchDisplayMode;};

private _trunkData = ((group player) getVariable "cat_Lockergang_trunk");
private _oldTrunk = _trunkData;

if (_add) then {
    if (_index isEqualTo -1) then {
        _trunkData pushBack [_type,_item,_amount,_ammoCount];
    } else {
        _trunkData set[_index,[_type,_item,(((_trunkData select _index) select 2) + _amount),_ammoCount]];
    };
    (group player) setVariable ["cat_Lockergang_trunk",_trunkData,true];
} else {
    if (_amount isEqualTo ((_trunkData select _index) select 2)) then {
        _trunkData deleteAt _index;
    } else {
        _trunkData set[_index,[_type,_item,(((_trunkData select _index) select 2) - _amount),_ammoCount]];
    };
    (group player) setVariable ["cat_Lockergang_trunk",_trunkData,true];
};

[] call cat_Lockergang_fnc_refreshDialog;