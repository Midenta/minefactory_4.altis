#include "..\..\script_macros.hpp"
/*
    File: fn_adminGodMode.sqf
    Author: Tobias 'Xetoxyc' Sittenauer

    Description: Enables God mode for Admin
*/

if (FETCH_CONST(husky_adminlevel) < 4) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

closeDialog 0;

if (husky_god) then {
    husky_god = false;
    titleText [localize "STR_ANOTF_godModeOff","PLAIN"]; titleFadeOut 2;
    player allowDamage true;
} else {
    husky_god = true;
    titleText [localize "STR_ANOTF_godModeOn","PLAIN"]; titleFadeOut 2;
    player allowDamage false;
};