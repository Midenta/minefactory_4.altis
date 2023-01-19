/*
	File:	fn_keyDown.sqf
	Date:   2017-05-31 14:37:11
	Author: Patrick "Lucian" Schmidt (DE100) & - RamBob(Team ELAN)
	Disclaimer: This script was developted as a result of a co-operation betwen DE100-Altis.husky and Team-Elan.de.
				No one besides the two mentioned communitys is allowed to use and/or edit the script.
	
	Description:
	Take a look for yourself.
*/
disableSerialization;

params[
	["_display", displayNull, [displayNull]],
	["_key", 0, [0]]
];

if !(_key isEqualTo (getNumber(missionConfigFile >> "husky_Settings" >> "lpick_sys_key"))) exitWith {false;};
if (_display getVariable ["shiftingActive",false]) exitWith {false;};
_display setVariable ["shiftingActive",true];
false;