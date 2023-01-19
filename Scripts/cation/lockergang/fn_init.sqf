/*
    File: fn_init.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Initializes locker inventory.
*/
params [
    ["_inv",[],[[]]],
    ["_level",0,[0]],
    ["_group", grpNull, [grpNull]]
];

_group setVariable ["cat_Lockergang_trunk",_inv,true];
_group setVariable ["cat_Lockergang_level",_level,true];
private _sizePrice = (getArray(missionConfigFile >> "Cation_Lockergang" >> "locker_size_price"));
if (_level isEqualTo 0) then {
    _group setVariable ["cat_Lockergang_maxWeight",0,true];
} else {
    _group setVariable ["cat_Lockergang_maxWeight",((_sizePrice select (_level-1)) select 0),true];    
};
private _carryWeight = 0;
{
    private _val = _x select 2;
    _carryWeight = _carryWeight + (([_x select 1,_x select 0] call cat_Lockergang_fnc_itemWeight) * _val);
} forEach (_group getVariable "cat_Lockergang_trunk");
_group setVariable ["cat_Lockergang_carryWeight",_carryWeight,true];
/* cat_Lockergang_trunk = _inv;
cat_Lockergang_level = _level;
private _sizePrice = (getArray(missionConfigFile >> "Cation_Lockergang" >> "locker_size_price"));
if (_level isEqualTo 0) then {
    cat_Lockergang_maxWeight = 0;
} else {    
    cat_Lockergang_maxWeight = (_sizePrice select (_level-1)) select 0;
};
private _carryWeight = 0;
{
    private _val = _x select 2;
    _carryWeight = _carryWeight + (([_x select 1,_x select 0] call cat_Lockergang_fnc_itemWeight) * _val);
} forEach cat_Lockergang_trunk;
cat_Lockergang_carryWeight = _carryWeight; */