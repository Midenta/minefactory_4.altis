#include "..\..\script_macros.hpp"
/*
    File: fn_jail.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Starts the initial process of jailing.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
params [
	["_unit",objNull,[objNull]],
	["_bad",false,[false]],
	["_time",15,[0]]
];
	if (isNull _unit) exitWith {}; //Dafuq?
	if !(_unit isEqualTo player) exitWith {}; //Dafuq?
	if (husky_is_arrested) exitWith {}; //Dafuq i'm already arrested
	if !((_unit getVariable ["JailTime",0]) isEqualTo 0) then {_time = (_unit getVariable ["JailTime",0])};
	
	private _illegalItems = husky_SETTINGS(getArray,"jail_seize_vItems");
	player setVariable ["restrained",false,true];
	player setVariable ["Escorting",false,true];
	player setVariable ["transporting",false,true];
	
	titleText[localize "STR_Jail_Warn","PLAIN"];
	hint localize "STR_Jail_LicenseNOTF";
	player setPos (getMarkerPos "jail_marker");
	if (_bad) then {
		waitUntil {alive player};
		sleep 1;
	};
	//Check to make sure they goto check
	if (player distance (getMarkerPos "jail_marker") > 40) then {
		player setPos (getMarkerPos "jail_marker");
	};
	
	[1] call husky_fnc_removeLicenses;
	
	husky_is_arrested = true;
	if (husky_SETTINGS(getNumber,"jail_seize_inventory") isEqualTo 1) then {
		[] spawn husky_fnc_seizeClient;
	} else {
		removeAllWeapons player;
		{player removeMagazine _x} forEach (magazines player);
	};
	if (husky_HC_isActive) then {
		[player,_bad,_time] remoteExecCall ["HC_fnc_jailSys",HC_husky];
	} else {
		[player,_bad,_time] remoteExecCall ["husky_fnc_jailSys",RSERV];
	};
	
	[getPlayerUID player, "Arrested Time", format ["%1 - %2 wurde %3 min ins Gefaengniss. Bankkonto: %3 Bargeld: %4 ",profileName,(getPlayerUID player),_time,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

	
	[5] call SOCK_fnc_updatePartial;