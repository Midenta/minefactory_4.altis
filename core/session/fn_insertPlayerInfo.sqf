#include "..\..\script_macros.hpp"
/*
    File: fn_insertPlayerInfo.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Upon first join inital player data is sent to the server and added to the database.
    Setup data gets sent to husky_server\Functions\MySQL\fn_insertRequest.sqf
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/


if (husky_session_completed) exitWith {}; //Why did this get executed when the client already initialized? F.... arma...
cutText[localize "STR_Session_QueryFail","BLACK FADED"];

//[0, localize "STR_Session_QueryFail"] call mav_introcam_fnc_updateCinematicStatus;
0 cutFadeOut 9999999;

husky_firstConnect = true;

private ["_bank", "_bankcop", "_bankmed"];
/*
switch (playerSide) do { //Das hier ausklammern!
 case west: {
 _bankcop = husky_SETTINGS(getNumber,"bank_cop");
 };
 case civilian: {
 _bank = husky_SETTINGS(getNumber,"bank_civ");
 };
 case independent: {
 _bankmed = husky_SETTINGS(getNumber,"bank_med");
 };
};*/

_bankcop = husky_SETTINGS(getNumber,"bank_cop"); 
_bank = husky_SETTINGS(getNumber,"bank_civ"); 
_bankmed = husky_SETTINGS(getNumber,"bank_med");
if (husky_HC_isActive) then {
	[getPlayerUID player,profileName,c126,_bank,_bankcop,_bankmed,player] remoteExecCall ["HC_fnc_insertRequest",HC_husky];
} else {
	[getPlayerUID player,profileName,c126,_bank,_bankcop,_bankmed,player] remoteExecCall ["DB_fnc_insertRequest",RSERV];
};

/*
if (husky_session_completed) exitWith {}; //Why did this get executed when the client already initialized? Fucking arma...
//cutText[localize "STR_Session_QueryFail","BLACK FADED"];
[0, localize "STR_Session_QueryFail"] call mav_introcam_fnc_updateCinematicStatus;

0 cutFadeOut 9999999;
private ["_bank"];

switch (playerSide) do {
    case west: {
        _bank = husky_SETTINGS(getNumber,"bank_cop");
    };
    case civilian: {
        _bank = husky_SETTINGS(getNumber,"bank_civ");
    };
    case independent: {
        _bank = husky_SETTINGS(getNumber,"bank_med");
    };
};

if (husky_HC_isActive) then {
    [getPlayerUID player,profileName,c126,_bank,player] remoteExecCall ["HC_fnc_insertRequest",HC_husky];
} else {
    [getPlayerUID player,profileName,c126,_bank,player] remoteExecCall ["DB_fnc_insertRequest",RSERV];
};*/