scriptName "fn_gang_findGang";
/*
 *
 *	@File:		fn_gang_findGang.sqf
 *	@Author: 	AllianceApps
 *	@Date:		11.05.2018
 *
 *	You are not allowed to use this script or remove the credits of the script without written permission of the author.
 *  You are not allowed to use this script without a valid license. License terms apply.
 *
 *  Du darfst dieses Script nicht nutzen oder diesen Copyright-Hinweis nicht entfernen, wenn du keine schriftliche Bestätigung des Autors hast.
 *  Du darfst dieses Script nicht ohne gültige Lizenz nutzen. Die Lizenzbestimmungen für Scripts sind zu beachten.
 *
 */
_gangid = param [0, -1, [0]];
[player] joinSilent grpNull;
if (_gangid isEqualTo -1) exitWith {};
player setVariable ["gang_init_done",false,true];
_found = grpNull;
{
    if ((_x getVariable ["gang_id",-1]) isEqualTo _gangid) exitWith {
        _found = _x;
    };
} forEach allGroups;
if (!(isNull _found)) exitWith {
    _members =+ (_found getVariable ["gang_members",[]]);
    _player = [];
    _index = 0;
    _uid = getplayeruid player;
    {
        if ((_x select 0) isEqualTo _uid) exitWith {_player = _x};
        _index = _index + 1;
    } forEach _members;
    if (_player isEqualTo []) exitWith {player setVariable ["gang_init_done",true,true]};
    _player set[3, player];
    _members set[_index, _player];
    _found setVariable ["gang_members",_members,true];
    [player] join _found;
    if ((_player select 1) isEqualTo 0) then {
        player setRank "COLONEL";
    } else {
        player setRank "PRIVATE";
    };
    if ((_found getVariable ["gang_owner",[]]) isEqualTO _uid) then {
        _found selectLeader player;
    };

	_tag = _found getVariable ["gang_tag",""];
	if (getNumber(missionConfigFile >> "gang_config" >> "show_defined_gangtags") isEqualTo 1) then {
		if (!(_tag isEqualTo "")) then {
			player setVariable ["realname", format["[%1] %2",_tag,profileName],true];
		} else {
			player setVariable ["realname", profilename, true];
		};
	};
	player setVariable ["gang_init_done",true,true];
};
if (husky_HC_isActive) then {
    [_gangid,group player,player] remoteExecCall ["ton_fnc_gang_load",2];	//["hc_fnc_gang_load",hc_husky]
} else {
    [_gangid,group player,player] remoteExecCall ["ton_fnc_gang_load",2];
};
