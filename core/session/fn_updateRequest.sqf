#include "..\..\script_macros.hpp"
/*
    File: fn_updateRequest.sqf
    Author: Tonic

    Description:
    Passes ALL player information to the server to save player data to the database.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_packet","_array","_flag","_alive","_position"];
_packet = [getPlayerUID player,(profileName),playerSide,c126,b126];
_array = [];
_alive = alive player;
_position = getPosATL player;
_flag = switch (playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case independent: {"med"};};

{
    _varName = LICENSE_VARNAME(configName _x,_flag);
    _array pushBack [_varName,LICENSE_VALUE(configName _x,_flag)];
} forEach (format ["getText(_x >> 'side') isEqualTo '%1'",_flag] configClasses (missionConfigFile >> "Licenses"));

_packet pushBack _array;

[] call husky_fnc_saveGear;
_packet pushBack husky_gear;

_array = [];
_array pushBack husky_hunger;
_array pushBack husky_thirst;
_array pushBack (damage player);
//_array pushBack COINS;
_packet pushBack _array;



switch (playerSide) do {
    case civilian: {
        _packet pushBack husky_is_arrested;
        _packet pushBack _alive;
        _packet pushBack _position;
		_packet pushBack COINS;
	};
};

if (husky_HC_isActive) then {
    _packet remoteExecCall ["HC_fnc_updateRequest",HC_husky];
} else {
    _packet remoteExecCall ["DB_fnc_updateRequest",RSERV];
};


/*
	Saves the cellphone information to the database.
	Add this to the end of the file.
	- Panda
*/

_messages = player getVariable "cellphone_messages";

if (husky_HC_isActive) then 
{
    [getPlayerUid player, _messages] remoteExecCall ["HC_fnc_saveCellPhone",HC_husky];
} 
else 
{
    [getPlayerUid player, _messages] remoteExecCall ["DB_fnc_saveCellPhone",2];
};


