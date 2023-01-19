/*
    File: fn_handlePlan.sqf
    Author: B4v4r!4n_Str!k3r (julian.bauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Handles using crafting plans
    Version: 1.1
    1.0 - Initial release
    1.1 - Enhancement: If plan is already used, don't use it again.
*/
params [
	["_varname","",[""]],
	["_add",false,[false]]
];
if (_varname isEqualTo "") exitWith {}; // variable is not set

private _return = true; // return variable: true if successfully learned / removed
private _flag = switch (playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case independent: {"med"}; case east: {"east"};}; // get side
private _plan = format["cat_crafting_plan_%1_%2",_flag,_varname]; // get plan
if (_add) then { // if add plan
    if (missionNamespace getVariable [_plan,false]) then { // if plan already learned
        _return = false;
        hint format [["PlanAlreadyLearned"] call cat_craftingV2_fnc_getText,localize getText(missionConfigFile >> "Cation_CraftingV2" >> "plans" >> _varname >> "displayName")]; // display notification
    } else { // else plan not learned yet
        hint format [["PlanLearned"] call cat_craftingV2_fnc_getText,localize getText(missionConfigFile >> "Cation_CraftingV2" >> "plans" >> _varname >> "displayName")]; // display notification  
    };
} else { // else remove plan
    hint format [["PlanRemoved"] call cat_craftingV2_fnc_getText,localize getText(missionConfigFile >> "Cation_CraftingV2" >> "plans" >> _varname >> "displayName")]; // display notification  
};
missionNamespace setVariable [_plan,_add]; // set local plan variable
[] call cat_craftingV2_fnc_updatePlansClient; // call update method
// return: true if successfully learned / removed
_return;