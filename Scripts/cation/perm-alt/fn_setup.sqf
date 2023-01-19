/*
    File: fn_setup.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Setup variables
*/
params [
	["_receiver",objNull,[objNull]]
];
private ["_playerid"];
if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed || husky_action_inUse) exitWith {closeDialog 0;}; //If null / dead exit menu
if ((getNumber(missionConfigFile >> "Cation_Perm" >> "version")) > 3) then {
    if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {closeDialog 0;};
};
if (!(cursorObject isEqualTo _receiver)) exitWith {};
if ((getNumber(missionConfigFile >> "Cation_Perm" >> "version")) isEqualTo 5) then {
	_playerid = "pid";
} else {
	_playerid = "playerid";
};
_side = switch (playerSide) do {
	case west: { "coplevel" };
	case independent: { "mediclevel" };
};

if (getNumber(missionConfigFile >> "Cation_Perm" >> "HeadlessSupport") isEqualTo 0) then {
    [_receiver,player,getPlayerUID _receiver,_side,_playerid] remoteExecCall ["cat_perm_fnc_updateRank",2];
} else {
    if (husky_HC_isActive) then {
        [_receiver,player,getPlayerUID _receiver,_side,_playerid] remoteExecCall ["cat_perm_fnc_updateRankHC",HC_husky];
    } else {
        [_receiver,player,getPlayerUID _receiver,_side,_playerid] remoteExecCall ["cat_perm_fnc_updateRank",2];
    };
};