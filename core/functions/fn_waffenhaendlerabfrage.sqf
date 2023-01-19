#include "..\..\script_macros.hpp"
/*

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

*/

//if (TON_fnc_playtime_values < 200) exitwith {hint "An Neulinge verkaufe ich keine Waffen. Sammel ersteinmal etwas Erfahrung auf der Insel";};

//Works
/*
if(husky_coins = husky_coins < "4") then {
	hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>An Neulinge verkaufe ich keine Waffen. Sammel ersteinmal etwas Erfahrung auf der Insel!</t>";
}else{
	createDialog "waffenshop_abfrage";
};
*/

if !(husky_w_time >= 180) then  {
	_resttime = 180 - husky_w_time;hint parseText format["<t size='1.25' font='PuristaBold' color='#fc3503'>Information</t><br/><t size='1.0' font='PuristaBold' color='#ede9e8'>Du darfst dir erst eine Waffe Kaufen wenn du 3 Stunden Spielzeit ereicht hast</t><br/><br/><t size='1.0' font='PuristaBold' color='#f28435'>Restzeit: %1 min</t>",_resttime];
	
}else{
	//createDialog "waffenshop_abfrage";
	if (license_civ_trucking) then {
		["gun","gun","gun","gun"] spawn husky_fnc_weaponShopMenu;
	}else{
		hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Ich verkaufe nur an Personen mit einem LKW Führerschein. Sammel ersteinmal etwas Erfahrung auf der Insel!</t>";
	};
};

//this addAction ["Schusswaffen",husky_fnc_waffenhaendlerabfrage, "",0,false,false,"","",4];

/*
if(husky_firstConnect) then {
	hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>An Neulinge verkaufe ich keine Waffen. Sammel ersteinmal etwas Erfahrung auf der Insel!</t>";
}else{
	createDialog "waffenshop_abfrage";
};
*/

//diag_log husky_w_time; if !(husky_w_time >= 120) exitWith {_resttime = 120 - husky_w_time;hint parseText format["<t size='1.25' font='PuristaBold' color='#fc3503'>Information</t><br/><t size='1.0' font='PuristaBold' color='#ede9e8'>Du darfst dir erst eine Waffe Kaufen wenn du 2 Stunden Spielzeit ereicht hast</t><br/><br/><t size='1.0' font='PuristaBold' color='#f28435'>Restzeit: %1 min</t>",_resttime];}; 

/*

params [
    ["_unit",objNull,[objNull]],
    ["_val","",[""]],
    ["_from",objNull,[objNull]]
];

if (isNull _unit || isNull _from || _val isEqualTo "") exitWith {};
if !(player isEqualTo _unit) exitWith {};
if (!([_val] call TON_fnc_isnumber)) exitWith {};
if (_unit == _from) exitWith {}; //Bad boy, trying to exploit his way to riches.

hint format [localize "STR_NOTF_GivenMoney",_from getVariable ["realname",name _from],[(parseNumber (_val))] call husky_fnc_numberText];
c126 = c126 + parseNumber(_val);
[0] call SOCK_fnc_updatePartial;
*/