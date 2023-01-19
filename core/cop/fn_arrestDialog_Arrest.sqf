#include "..\..\script_macros.hpp"
/*
 Player clicked arrest/ok

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

*/

private ["_time"];
if (playerSide != west) exitWith {};
if (isNil "husky_pInact_curTarget") exitWith {};
//Get minutes
_time = ctrlText 1400;
if (! ([_time] call TON_fnc_isnumber)) exitWith {
  hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Die eingegebene Zahl ist keine richtige Zahl.</t>";
};
_time = parseNumber _time; //requested number
_time = round _time;
if (_time < 1 || _time > 180) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Die Zeit muss zwischen 1 und 180 Minuten sein!</t>";};
closeDialog 0;
[husky_pInact_curTarget, _time] call husky_fnc_arrestAction;
