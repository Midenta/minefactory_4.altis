/*
    File: fn_updateLevels.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Update level in batabase
*/

if (!isServer) exitWith {};
private "_now";
params [
	["_receiver",objNull,[objNull]],
	["_sender",objNull,[objNull]],
	["_level",0,[0]],
	["_receiverUID","",[""]],
	["_side","",[""]],
	["_playerid","",[""]]
];

if (isNull _receiver || isNull _sender || _receiverUID isEqualTo "" || _side isEqualTo "" || _playerid isEqualTo "") exitWith {}; //Fail

_now = _receiver getVariable ["rank",-1];

_query = format["UPDATE players SET %3='%2' WHERE %4='%1'",_receiverUID,_level,_side,_playerid];
[_query,1] call DB_fnc_asyncCall;

if (_level > 0) then {
	if (_level < _now) then {
		[1,format[(getText(missionConfigFile >> "Cation_Perm" >> "messageReceiverDeg")),_level]] remoteExecCall ["husky_fnc_broadcast",_receiver];
		[1,format[(getText(missionConfigFile >> "Cation_Perm" >> "messageSenderDeg")),_level,name _receiver]] remoteExecCall ["husky_fnc_broadcast",_sender];
	} else {
		[1,format[(getText(missionConfigFile >> "Cation_Perm" >> "messageReceiverPro")),_level]] remoteExecCall ["husky_fnc_broadcast",_receiver];
		[1,format[(getText(missionConfigFile >> "Cation_Perm" >> "messageSenderPro")),_level,name _receiver]] remoteExecCall ["husky_fnc_broadcast",_sender];
	};
} else {
	[1,format[(getText(missionConfigFile >> "Cation_Perm" >> "messageReceiverFired"))]] remoteExecCall ["husky_fnc_broadcast",_receiver];
	[1,format[(getText(missionConfigFile >> "Cation_Perm" >> "messageSenderFired")),name _receiver]] remoteExecCall ["husky_fnc_broadcast",_sender];
};