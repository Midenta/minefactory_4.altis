#include "..\..\script_macros.hpp"
/*
    File: fn_settingsMenu
    Author: Bryan "Tonic" Boardwine

    Description:
    Setup the settings menu.
*/
if (isNull (findDisplay 2900)) then {
    if (!createDialog "SettingsMenu") exitWith {hint localize "STR_NOTF_menuWillNotOpen";};
};

disableSerialization;

ctrlSetText[2902, format ["%1", husky_SETTINGS_viewDistanceFoot]];
ctrlSetText[2912, format ["%1", husky_SETTINGS_viewDistanceCar]];
ctrlSetText[2922, format ["%1", husky_SETTINGS_viewDistanceAir]];

/* Set up the sliders */
{
    slidersetRange [(_x select 0),100,8000];
    CONTROL(2900,(_x select 0)) sliderSetSpeed [100,100,100];
    sliderSetPosition [(_x select 0),(_x select 1)];
} forEach [[2901,husky_SETTINGS_viewDistanceFoot],[2911,husky_SETTINGS_viewDistanceCar],[2921,husky_SETTINGS_viewDistanceAir]];


if (isNil "husky_SETTINGS_revealObjects") then {
    husky_SETTINGS_enableNewsBroadcast = profileNamespace setVariable ["husky_enableNewsBroadcast",true];
    husky_SETTINGS_enableSidechannel = profileNamespace setVariable ["husky_enableSidechannel",true];
    husky_SETTINGS_tagson = profileNamespace setVariable ["husky_SETTINGS_tagson",true];
    husky_SETTINGS_revealObjects = profileNamespace setVariable ["husky_SETTINGS_revealObjects",true];
};

CONTROL(2900,2971) cbSetChecked husky_SETTINGS_enableSidechannel;
CONTROL(2900,2973) cbSetChecked husky_SETTINGS_enableNewsBroadcast;
CONTROL(2900,2970) cbSetChecked husky_SETTINGS_tagson;
CONTROL(2900,2972) cbSetChecked husky_SETTINGS_revealObjects;
