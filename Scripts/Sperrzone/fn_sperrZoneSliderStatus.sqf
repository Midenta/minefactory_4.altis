#include "..\..\script_macros.hpp"
/*
    Author : Yasar-S
    Details : Sperrzonen Slider Position
*/
disableSerialization;
private ["_display","_slider","_info","_curPos"];

_display = findDisplay 5000;
_slider = _display displayCtrl 5002;
_info = _display displayCtrl 5005;

_curPos = sliderPosition _slider;

_info ctrlSetStructuredText parseText format["<t font='PuristaSemiBold' align='center' shadow='0'>%1m</t>",[_curPos] call husky_fnc_numberText];