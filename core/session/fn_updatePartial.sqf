#include "..\..\script_macros.hpp"
/*
    File: fn_updatePartial.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Sends specific information to the server to update on the player,
    meant to keep the network traffic down with large sums of data flowing
    through remoteExec
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_mode","_packet","_array","_flag"];
_mode = param [0,0,[0]];
_packet = [getPlayerUID player,playerSide,nil,_mode];
_array = [];
_flag = switch (playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case independent: {"med"};};

switch (_mode) do {
    case 0: {
        _packet set[2,c126];
    };

    case 1: {
        _packet set[2,b126];
    };

    case 2: {
        {
            _varName = LICENSE_VARNAME(configName _x,_flag);
            _array pushBack [_varName,LICENSE_VALUE(configName _x,_flag)];
        } forEach (format ["getText(_x >> 'side') isEqualTo '%1'",_flag] configClasses (missionConfigFile >> "Licenses"));

        _packet set[2,_array];
    };

    case 3: {
        [] call husky_fnc_saveGear;
        _packet set[2,husky_gear];
    };

    case 4: {
        _packet set[2,husky_is_alive];
        _packet set[4,getPosATL player];
    };

    case 5: {
		_packet set[2,husky_is_arrested];
		_packet set[4,(player getVariable ["JailTime",0])];
	};

    case 6: {
        _packet set[2,c126];
        _packet set[4,b126];
    };

	case 7: {
		[true] call husky_fnc_saveGear;
		_packet set[2,husky_persistent_gear];
	};
	
	
	case 8: {
		_packet set[2,COINS];
	};
};

if (husky_HC_isActive) then {
    _packet remoteExecCall ["HC_fnc_updatePartial",HC_husky];
} else {
    _packet remoteExecCall ["DB_fnc_updatePartial",RSERV];
};
