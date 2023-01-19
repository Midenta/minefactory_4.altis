/*
    File: fn_setPerm.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Handles perm update request
*/
private ["_value","_maxValue","_side","_playerid"];
_value = parseNumber (lbData [9506,(lbCurSel 9506)]);
params [
	["_receiver",objNull,[objNull]]
];

closeDialog 0;

switch (playerside) do {
	case west: { _maxValue = maxcoplevel; _side = "coplevel"; };
	case independent: { _maxValue = maxmediclevel; _side = "mediclevel"; };
	default { };
};

if ((getNumber(missionConfigFile >> "Cation_Perm" >> "version")) isEqualTo 5) then {
	_playerid = "pid";
} else {
	_playerid = "playerid";
};

if (getNumber(missionConfigFile >> "Cation_Perm" >> "HeadlessSupport") isEqualTo 0) then {
    [_receiver,player,_value,getPlayerUID _receiver,_side,_playerid] remoteExecCall ["cat_perm_fnc_updatePerm",2];
} else {
    if (husky_HC_isActive) then {
        [_receiver,player,_value,getPlayerUID _receiver,_side,_playerid] remoteExecCall ["cat_perm_fnc_updatePermHC",HC_husky];
    } else {
        [_receiver,player,_value,getPlayerUID _receiver,_side,_playerid] remoteExecCall ["cat_perm_fnc_updatePerm",2];
    };
};