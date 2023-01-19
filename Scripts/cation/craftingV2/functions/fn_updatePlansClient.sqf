/*
    File: fn_updatePlansClient.sqf
    Author: B4v4r!4n_Str!k3r (julian.bauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
	Gets crafting plans of client and sends it to server
    Version: 1.1
    1.0 - Initial release
    1.1 - Bugfix: Crafting plans for each playerside
*/
private _array = [];
private _flag = switch (playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case independent: {"med"}; case east: {"east"};};
{
	private _varname = getText(_x >> "variable");
	private _plan = format["cat_crafting_plan_%1_%2",_flag,_varname];
    _array pushBack [_plan,missionNamespace getVariable [_plan,false]];
} forEach ("true" configClasses (missionConfigFile >> "Cation_CraftingV2" >> "plans"));

if (getNumber(missionConfigFile >> "Cation_CraftingV2" >> "HeadlessSupport") isEqualTo 0) then {
    [getPlayerUID player,_array,playerSide] remoteExecCall ["cat_craftingV2_fnc_updatePlans",2];
} else {
    if (husky_HC_isActive) then {
        [getPlayerUID player,_array,playerSide] remoteExecCall ["cat_craftingV2_fnc_updatePlansHC",HC_husky];
    } else {
	    [getPlayerUID player,_array,playerSide] remoteExecCall ["cat_craftingV2_fnc_updatePlans",2];
    };
};