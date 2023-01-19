#include "..\..\script_macros.hpp"
/*
    File: fn_giveMoney.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Gives the selected amount of money to the selected player.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_unit","_amount"];

if (!GeldGeben) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du kannst einem Spieler nur alle 3 Sekunden Geld geben</t>";};
if (GeldGeben) then {
	GeldGeben = false;
	[] spawn {
		sleep 3;
		GeldGeben = true;
	};
};

_amount = ctrlText 2018;
ctrlShow[2001,false];
if ((lbCurSel 2022) isEqualTo -1) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Niemand wurde ausgewählt!</t>";ctrlShow[2001,true];};
_unit = lbData [2022,lbCurSel 2022];
_unit = call compile format ["%1",_unit];
if (isNil "_unit") exitWith {ctrlShow[2001,true];};
if (_unit == player) exitWith {ctrlShow[2001,true];};
if (isNull _unit) exitWith {ctrlShow[2001,true];};



//A series of checks *ugh*
if (!husky_use_atm) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast kürzlich die Bank ausgeraubt! Du kannst deswegen kein Geld weitergeben.</t>";ctrlShow[2001,true];};
if (!([_amount] call TON_fnc_isnumber)) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast keine echte Zahl eingegeben.</t>";ctrlShow[2001,true];};
if (parseNumber(_amount) <= 0) exitWith {hint localize "STR_NOTF_enterAmount";ctrlShow[2001,true];};
if (parseNumber(_amount) > c126) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast nicht so eine große Menge von diesem Gegenstand!</t>";ctrlShow[2001,true];};
if (isNull _unit) exitWith {ctrlShow[2001,true];};
if (isNil "_unit") exitWith {ctrlShow[2001,true]; hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Der ausgewählte Spieler ist nicht in Reichweite.</t>";};

hint format [localize "STR_NOTF_youGaveMoney",[(parseNumber(_amount))] call husky_fnc_numberText,_unit getVariable ["realname",name _unit]];
//hint format [localize "STR_NOTF_youGaveMoney",[(parseNumber(_amount))] call husky_fnc_numberText,_unit getVariable ["steam64id",name _unit]];


[getPlayerUID player, "GaveMoney", format ["%3 hat %1 € %2 gegeben. Bargeld vor geben: %4 € Bankkonto: %5 €",[(parseNumber(_amount))] call husky_fnc_numberText,name _unit,profileName,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

c126 = c126 - (parseNumber(_amount));
[0] call SOCK_fnc_updatePartial;

[_unit,_amount,player] remoteExecCall ["husky_fnc_receiveMoney",_unit];
[] call husky_fnc_p_updateMenu;

ctrlShow[2001,true];
