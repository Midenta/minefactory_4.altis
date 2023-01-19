#include "..\..\script_macros.hpp"
/*
    File: fn_bankDeposit.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Figure it out.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

*/
private ["_value"];

if (!GeldGeben) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du kannst nur alle 3 Sekunden Geld einzahlen</t>";};
if (GeldGeben) then {
	GeldGeben = false;
	[] spawn {
		sleep 3;
		GeldGeben = true;
	};
};

_value = parseNumber(ctrlText 2702);

//Series of stupid checks
if (_value < 0) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Geb eine Zahl ein.</t>";};
if (!([str(_value)] call TON_fnc_isnumber)) exitWith {hint localize "STR_ATM_notnumeric"};
if (_value > c126) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast nicht so viel Geld bei dir.</t>";};

c126 = c126 - _value;
b126 = b126 + _value;

hint parseText format ["<t underline='true' size='1.8' color='#7cff00'>Geld eingezahlt</t><br /><t size='1.5' color='#ffffff'>Du hast %1 € auf dein Bankkonto eingezahlt.</t>", [_value] call husky_fnc_numberText];

[] call husky_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial;

[getPlayerUID player, "depositedBank", format ["%1 - %2 hat %3 € auf sein Bankkonto eingezahlt. Bankkonto: %4 € Bargeld: %5 €",profileName,(getPlayerUID player),[_value] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];



if (husky_SETTINGS(getNumber,"player_moneyLog") isEqualTo 1) then {
    if (husky_SETTINGS(getNumber,"battlEye_friendlyLogging") isEqualTo 1) then {
        money_log = format [localize "STR_DL_ML_depositedBank_BEF",_value,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText];
    } else {
        money_log = format [localize "STR_DL_ML_depositedBank",profileName,(getPlayerUID player),_value,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText];

    };
    publicVariableServer "money_log";
};
