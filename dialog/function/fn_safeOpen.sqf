#include "..\..\script_macros.hpp"
/*
    File: fn_safeOpen.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Opens the safe inventory menu.
*/
if (dialog) exitWith {}; //A dialog is already open.
husky_safeObj = param [0,objNull,[objNull]];
_gFund = GANG_FUNDS;
if (isNull husky_safeObj) exitWith {};
if !(playerSide isEqualTo civilian) exitWith {};
if ((husky_safeObj getVariable ["safe",-1]) < 1) exitWith {hint localize "STR_Civ_VaultEmpty";};
if (husky_safeObj getVariable ["inUse",false]) exitWith {hint localize "STR_Civ_VaultInUse"};
if (west countSide playableUnits < (husky_SETTINGS(getNumber,"minimum_cops"))) then {
    //hint format [localize "STR_Civ_NotEnoughCops",(husky_SETTINGS(getNumber,"minimum_cops"))];
	[getPlayerUID player, "Safe zu wenig Cops", format ["%1 - %2 hat den Tresor geöffent bei zuwenig Cops. Gangkonto: %4 €  Bankkonto: %5 €  Bargeld: %6 €",profileName,(getPlayerUID player),[_gFund] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

};
/*
if (west countSide playableUnits < 5) exitWith {
	husky_safeObj setVariable ["copweg",true,true]; [] call husky_fnc_bankmincops;
};
*/

if (!createDialog "Federal_Safe") exitWith {localize "STR_MISC_DialogError"};

disableSerialization;
ctrlSetText[3501,(localize "STR_Civ_SafeInv")];
[husky_safeObj] call husky_fnc_safeInventory;
husky_safeObj setVariable ["inUse",true,true];

[husky_safeObj] spawn {
    waitUntil {isNull (findDisplay 3500)};
    (_this select 0) setVariable ["inUse",false,true];
};
