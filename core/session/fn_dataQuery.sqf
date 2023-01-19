#include "..\..\script_macros.hpp"
/*
    File: fn_dataQuery.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Starts the 'authentication' process and sends a request out to
    the server to check for player information.
	
	Thieves

	Universe-Community.de

	Diese Mission ist bearbeitet von dem Development Team von Universe-Community.de
	Diese Mission darf von keinem anderen genutzt werden außer von Universe-Community.de!
*/
private ["_uid","_side","_sender"];
if (husky_session_completed) exitWith {}; //Why did this get executed when the client already initialized? Fucking arma...
_sender = player;
_uid = getPlayerUID _sender;
_side = playerSide;
cutText[format [localize "STR_Session_Query",_uid],"BLACK FADED"];
//[0, localize "STR_Session_Query"] call mav_introcam_fnc_updateCinematicStatus;

0 cutFadeOut 999999999;

if (husky_HC_isActive) then {
    [_uid,_side,_sender] remoteExec ["HC_fnc_queryRequest",HC_husky];
} else {
    [_uid,_side,_sender] remoteExec ["DB_fnc_queryRequest",RSERV];
};
