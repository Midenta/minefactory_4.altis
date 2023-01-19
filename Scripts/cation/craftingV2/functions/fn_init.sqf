/*
    File: fn_init.sqf
    Author: B4v4r!4n_Str!k3r (julian.bauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Initializes main variables and starts query of information from server
    Version: 1.0
*/
[] spawn {
    if (!hasInterface) exitWith {}; // if not headless
	waitUntil {!isNull (findDisplay 46)}; // wait until game started

    private _flag = switch (playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case independent: {"med"}; case east: {"east"};}; // get side
	{
		private _varname = getText(_x >> "variable"); // get variable name
        private _plan = format["cat_crafting_plan_%1_%2",_flag,_varname]; // get plan variable name
		missionNamespace setVariable [_plan,false]; // initialize plan with owned: false
	} forEach ("true" configClasses (missionConfigFile >> "Cation_CraftingV2" >> "plans")); // for each plan

    missionNamespace setVariable ["cat_crafting_points",0]; // initialize points with 0
    missionNamespace setVariable ["cat_crafting_level",0]; // initialize points with 0
    
    if (getNumber(missionConfigFile >> "Cation_CraftingV2" >> "HeadlessSupport") isEqualTo 0) then { // if headless client is not enabled
        [getPlayerUID player,player,playerSide] remoteExecCall ["cat_craftingV2_fnc_query",2]; // call server
    } else {
        if (husky_HC_isActive) then { // if headless client is available
            [getPlayerUID player,player,playerSide] remoteExecCall ["cat_craftingV2_fnc_queryHC",HC_husky]; // call headless client
        } else { // else headless client unavailable
            [getPlayerUID player,player,playerSide] remoteExecCall ["cat_craftingV2_fnc_query",2]; // call server
        };
    };
};

