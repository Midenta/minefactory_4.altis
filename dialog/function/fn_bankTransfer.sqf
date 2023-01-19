#include "..\..\script_macros.hpp"
/*
    File: fn_bankTransfer.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Figure it out again.
*/
private ["_value","_unit","_tax"];
_value = parseNumber(ctrlText 2702);
_unit = call compile format ["%1",(lbData[2703,(lbCurSel 2703)])];
if (isNull _unit) exitWith {};
if ((lbCurSel 2703) isEqualTo -1) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast niemanden fur die Überweisung ausgewahlt.</t>";};
if (isNil "_unit") exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Der Spieler scheint nicht zu existieren?</t>";};

if (_value < 0) exitWith {};
if (!([str(_value)] call TON_fnc_isnumber)) exitWith {hint localize "STR_ATM_notnumeric"};
if (_value > b126) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast nicht so viel Geld auf deinem Bankkonto!</t>";};

_tax = _value * husky_SETTINGS(getNumber,"bank_transferTax");
if ((_value + _tax) > b126) exitWith {hint parseText format ["<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast nicht genug Geld auf deinem Bankkonto, es kostet %2 € um %1 € zu überweisen.</t>", [_value] call husky_fnc_numberText, [_tax] call husky_fnc_numberText];};


b126 = b126 - (_value + _tax);

[_value,profileName] remoteExecCall ["husky_fnc_wireTransfer",_unit];
[] call husky_fnc_atmMenu;
[1] call SOCK_fnc_updatePartial;
hint parseText format ["<t underline='true' size='1.8' color='#7cff00'>Geld überwiesen</t><br /><t size='1.5' color='#ffffff'>Du hast %1 € an %2 überwiesen.Eine Gebühr von %3 € wurde verrechnet.</t>", [_value] call husky_fnc_numberText,_unit getVariable ["realname",name _unit], [_tax] call husky_fnc_numberText];
//hint format [localize "STR_ATM_SentMoneySuccess",[_value] call husky_fnc_numberText,_unit getVariable ["realname",name _unit],[_tax] call husky_fnc_numberText];


[getPlayerUID player, "transferredBank", format ["%1 - %2 hat %4 %3 € überwiesen. Bankkonto: %5 €  Bargeld: %6 €",profileName,(getPlayerUID player),[_value] call husky_fnc_numberText,_unit getVariable ["realname",name _unit],[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];



if (husky_SETTINGS(getNumber,"player_moneyLog") isEqualTo 1) then {
    if (husky_SETTINGS(getNumber,"battlEye_friendlyLogging") isEqualTo 1) then {
        money_log = format [localize "STR_DL_ML_transferredBank_BEF",_value,_unit getVariable ["realname",name _unit],[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText];
    } else {
        money_log = format [localize "STR_DL_ML_transferredBank",profileName,(getPlayerUID player),_value,_unit getVariable ["realname",name _unit],[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText];
    };
    publicVariableServer "money_log";
};
