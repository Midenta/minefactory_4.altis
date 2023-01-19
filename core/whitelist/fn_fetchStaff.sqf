#include "\husky_server\script_macros.hpp"
/*
	File : fn_getSideMember.sqf
	Date:   19.12.2015	
	Author: Patrick "Lucian" Schmidt
	Edit: Natic
	
	Description:
	Take a look for yourself.
*/
params[
	["_mode", 0, [0]],
	["_unit", objNull, [objNull]],
	"_query",
	"_queryResult"
];

_query = [
	format["SELECT playerid, name, coplevel FROM players WHERE coplevel > '0' ORDER BY coplevel DESC"],
	format["SELECT playerid, name, mediclevel FROM players WHERE mediclevel > '0' ORDER BY mediclevel DESC"]
	format["SELECT playerid, name, adaclevel FROM players WHERE adaclevel > '0' ORDER BY adaclevel DESC"]
	//format["SELECT playerid, name, zolllevel FROM players WHERE zolllevel > '0' ORDER BY zolllevel DESC"]
] select _mode;
_queryResult = [_query,2,true] call DB_fnc_asyncCall;
[objNull,STAFFANWSER,_queryResult] remoteExecCall ["husky_fnc_staffManager",_unit];