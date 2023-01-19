#define husky_SETTINGS(TYPE,SETTING) TYPE(missionConfigFile >> "husky_SETTINGS" >> SETTING)
/*
    File: initPlayerServer.sqf
    Author:

    Description:
    Executed only on server when a player joins mission.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
if (husky_SETTINGS(getNumber,"player_deathLog") isEqualTo 0) exitWith {};

_this select 0 addMPEventHandler ["MPKilled", {_this call fn_whoDoneIt}];
