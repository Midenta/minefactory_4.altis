#include "..\..\script_macros.hpp"
/*
    File: fn_safeOpen.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Opens the safe inventory menu.
*/
if (dialog) exitWith {}; //A dialog is already open.
husky_airdopObj = param [0,objNull,[objNull]];
_gFund = GANG_FUNDS;
if (isNull husky_airdopObj) exitWith {};
if !(playerSide isEqualTo civilian) exitWith {};
diag_log format ["%1",husky_airdopObj getVariable ["airdopinv",0]];
diag_log format ["%1",husky_airdopObj getVariable ["airdopinvitem",0]];
//if ((husky_airdopObj getVariable ["airdopinv",-1]) < 1) exitWith {hint localize "STR_Civ_VaultEmpty";};
if (husky_airdopObj getVariable ["inUse",false]) exitWith {hint localize "STR_Civ_VaultInUse"};
/* if (west countSide playableUnits < (husky_SETTINGS(getNumber,"minimum_cops"))) then {
    //hint format [localize "STR_Civ_NotEnoughCops",(husky_SETTINGS(getNumber,"minimum_cops"))];
	[getPlayerUID player, "Safe zu wenig Cops", format ["%1 - %2 hat den Tresor geöffent bei zuwenig Cops. Gangkonto: %4 €  Bankkonto: %5 €  Bargeld: %6 €",profileName,(getPlayerUID player),[_gFund] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

}; */
/*
if (west countSide playableUnits < 5) exitWith {
	husky_airdopObj setVariable ["copweg",true,true]; [] call husky_fnc_bankmincops;
};
*/

if (!createDialog "Federal_Safe") exitWith {localize "STR_MISC_DialogError"};

disableSerialization;
ctrlSetText[3501,(localize "STR_Civ_SafeInv")];
[husky_airdopObj] call husky_fnc_airInventory;
husky_airdopObj setVariable ["inUse",true,true];

[husky_airdopObj] spawn {
    waitUntil {isNull (findDisplay 3500)};
    (_this select 0) setVariable ["inUse",false,true];
};
