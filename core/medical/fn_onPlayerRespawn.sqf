#include "..\..\script_macros.hpp"
/*
    File: fn_onPlayerRespawn.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Does something but I won't know till I write it...

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_unit","_corpse","_containers"];
_unit = _this select 0;
_corpse = _this select 1;
husky_corpse = _corpse;

_group = group player;
_tag = _group getVariable ["gang_tag",""];
_tag = if (!(_tag isEqualto "")) then {format["[%1]",_tag]} else {_tag};

/*
husky_SETTINGS_tagson = true;
profileNamespace setVariable ["husky_SETTINGS_tagson",true];
//HUSKY_ID_PlayerTags = ["husky_PlayerTags","onEachFrame","husky_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
*/

//Set some vars on our new body.
_unit setVariable ["restrained",false,true];
_unit setVariable ["Escorting",false,true];
_unit setVariable ["transporting",false,true];
_unit setVariable ["playerSurrender",false,true];
_unit setVariable ["steam64id",getPlayerUID player,true]; //Reset the UID.
//_unit setVariable["missingOrgan",false,true];
//_unit setVariable["hasOrgan",false,true];

player setVariable ["exitRad",true];
player setVariable["husky_request_timer",false,true];


_tag = (group _unit) getVariable ["gang_tag",""];
if(getNumber(missionConfigFile >> "gang_config" >> "show_defined_gangtags") isEqualTo 1) then {
	if(!(_tag isEqualTo "")) then {
		_unit setVariable ["realname", format["[%1] %2",_tag,profileName],true];
	} else {
		_unit setVariable ["realname", profilename, true];
	};
} else {
	_unit setVariable ["realname", profilename, true];
};


//player setUnconscious true;
//sleep 30;
//player setUnconscious false;

player playMoveNow "AmovPpneMstpSrasWrflDnon";


[] call husky_fnc_setupActions;
[_unit,husky_SETTINGS_enableSidechannel,playerSide] remoteExecCall ["TON_fnc_manageSC",RSERV];
if (husky_SETTINGS(getNumber,"enable_fatigue") isEqualTo 0) then {player enableFatigue false;};
