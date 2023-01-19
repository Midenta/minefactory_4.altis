#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

params [
    ["_unit",objNull,[objNull]],
    ["_killer",objNull,[objNull]]
];
disableSerialization;

hint format ["Du hast einen Husky-Coin für das töten von %1 erhalten!",name _unit];
//[1,format ["Dein Code wahr Gültig. Du hast den %1 Aktiviert",_title]] remoteExecCall ["husky_fnc_broadcast",_unit];

husky_coins = husky_coins + 5;

[getPlayerUID player, "PvP Zonen Killer2", format ["%1 - %2 hat %3 getötet und 1 Coin erhalten. Statts Toter Bargeld: %4 € Bankkonto: %5 € Coin: %6 ",name _killer,(getPlayerUID _killer),name _unit,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];


diag_log "Umgeschossen Check täter";
diag_log format ["%1  und %2",name _killer,name _unit];