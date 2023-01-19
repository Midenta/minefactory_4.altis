#include "..\..\script_macros.hpp"
/*
    File: fn_pickupMoney.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Picks up money
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!	
*/
private "_value";
if ((time - husky_action_delay) < 1.5) exitWith {hint localize "STR_NOTF_ActionDelay"; _this setVariable ["inUse",false,true];};
if (isNull _this || {player distance _this > 3}) exitWith {_this setVariable ["inUse",false,true];};

_value = ((_this getVariable "item") select 1);
if (!isNil "_value") exitWith {
    deleteVehicle _this;

    /*switch (true) do {
        case (_value > 20000000) : {_value = 100000;}; //VAL>20mil->100k
        case (_value > 5000000) : {_value = 250000;}; //VAL>5mil->250k
        default {};
    };*/

    player playMove "AinvPknlMstpSlayWrflDnon";
    titleText[format [localize "STR_NOTF_PickedMoney",[_value] call husky_fnc_numberText],"PLAIN"];
    c126 = c126 + _value;
	
	[getPlayerUID player, "pickedUpMoney", format ["%1 - %2 hat %3 € vom Boden aufgehoben. Bankkonto: %4 €  Bargeld: %5 €",profileName,(getPlayerUID player),[_value] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

    [0] call SOCK_fnc_updatePartial;
    husky_action_delay = time;
	
	

    if (husky_SETTINGS(getNumber,"player_moneyLog") isEqualTo 1) then {
        if (husky_SETTINGS(getNumber,"battlEye_friendlyLogging") isEqualTo 1) then {
            money_log = format [localize "STR_DL_ML_pickedUpMoney_BEF",[_value] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText];
        } else {
            money_log = format [localize "STR_DL_ML_pickedUpMoney",profileName,(getPlayerUID player),[_value] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText];
        };
		publicVariableServer "money_log";
    };
};