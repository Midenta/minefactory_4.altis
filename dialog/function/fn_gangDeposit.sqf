#include "..\..\script_macros.hpp"
/*
    File: fn_gangDeposit.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Deposits money into the players gang bank.
*/
private ["_value"];
_value = parseNumber(ctrlText 2702);
group player setVariable ["gbank_in_use_by",player,true];

//Series of stupid checks
if (isNil {(group player) getVariable "gang_name"}) exitWith {["Du bist nicht in einer Gang!", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;}; // Checks if player isn't in a gang
if (_value > 999999) exitWith {["Du kannst nicht mehr als 999,999€ gleichzeitig einzahlen.","Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
if (_value < 0) exitWith {};
if (!([str(_value)] call TON_fnc_isnumber)) exitWith {hint localize "STR_ATM_notnumeric"};
if (_value > c126) exitWith {hint localize "STR_ATM_NotEnoughCash"};
if ((group player getVariable ["gbank_in_use_by",player]) != player) exitWith {hint localize "STR_ATM_WithdrawMin"}; //Check if it's in use.

c126 = c126 - _value;
_gFund = GANG_FUNDS;
_gFund = _gFund + _value;
group player setVariable ["gang_bank",_gFund,true];

if (husky_HC_isActive) then {
    [1,group player] remoteExecCall ["HC_fnc_updateGang",HC_husky];
} else {
    [1,group player] remoteExecCall ["TON_fnc_updateGang",RSERV];
};

hint format [localize "STR_ATM_DepositSuccessG",[_value] call husky_fnc_numberText];
[] call husky_fnc_atmMenu;
[6] call SOCK_fnc_updatePartial; //Silent Sync

[getPlayerUID player, "depositeGang", format ["%1 - %2 hat %3 € auf sein Gangkonto überwiesen. Gangkonto: %4 €  Bankkonto: %5 €  Bargeld: %6 €",profileName,(getPlayerUID player),_value,[_gFund] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];


if (husky_SETTINGS(getNumber,"player_moneyLog") isEqualTo 1) then {
    if (husky_SETTINGS(getNumber,"battlEye_friendlyLogging") isEqualTo 1) then {
        money_log = format [localize "STR_DL_ML_depositeGang_BEF",_value,[_gFund] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText];
    } else {
        money_log = format [localize "STR_DL_ML_depositeGang",profileName,(getPlayerUID player),_value,[_gFund] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText];
    };
    publicVariableServer "money_log";
};
