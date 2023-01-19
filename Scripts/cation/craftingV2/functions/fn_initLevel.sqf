/*
    File: fn_initLevel.sqf
    Author: B4v4r!4n_Str!k3r (julian.bauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Initializes crafting levels
    Version: 1.0
*/
params [
	["_points",0,[0]]
];

missionNamespace setVariable ["cat_crafting_points",_points]; // set mission variable with current points

private _level = 0; // initialize level variable
{
	private _minPoints = getNumber(_x >> "minPoints"); // get min points required for current level
	if (_minPoints <= _points) then { // if min points lower or equal to current points
		_level = getNumber(_x >> "value"); // save level
	};
} forEach ("true" configClasses (missionConfigFile >> "Cation_CraftingV2" >> "levels")); // for each level config class
missionNamespace setVariable ["cat_crafting_level",_level]; // set mission variable with current level