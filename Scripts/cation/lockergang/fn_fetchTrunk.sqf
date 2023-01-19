/*
    File: fn_fetchLockerTrunk.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Fetches locker inventory from database.
*/
if (!isServer) exitWith {};
params [
    ["_gangid",-1,[0]],
    ["_side",sideUnknown,[civilian]],
    ["_sender",objNull,[objNull]]
];

if (_gangid isEqualTo -1 || _side isEqualTo sideUnknown || isNull _sender) exitWith {};

private _query = format["SELECT lockergang.gang_locker, lockergang.gang_locker_level FROM lockergang WHERE gangid='%1'",_gangid]; 
private _queryResult = [_query,2] call DB_fnc_asyncCall;

if ((getNumber(missionConfigFile >> "Cation_Lockergang" >> "DebugMode")) isEqualTo 1) then {
    diag_log "------------- Fetch Locker From Database -------";
    diag_log format ["QUERY: %1",_query];
    diag_log format ["Result: %1",_queryResult];
    diag_log "------------------------------------------------";
};

if (_queryResult isEqualTo []) exitWith {
    [_gangid,_side,_sender] spawn cat_Lockergang_fnc_add;
};

if (_queryResult isEqualType "") exitWith {
    [_gangid,_side,_sender] spawn cat_Lockergang_fnc_add;
};

if (count _queryResult isEqualTo 0) exitWith {
    [_gangid,_side,_sender] spawn cat_Lockergang_fnc_add;
};

private _inv = [_queryResult select 0] call DB_fnc_mresToArray;
if (_inv isEqualType "") then {_inv = call compile format["%1", _inv];};

private _level = _queryResult select 1;

if ((getNumber(missionConfigFile >> "Cation_Lockergang" >> "DebugMode")) isEqualTo 1) then {
    diag_log format ["Inventory: %1",_inv];
    diag_log format ["Level: %1",_level];
    diag_log "------------------------------------------------";
};

[_inv,_level,group _sender] remoteExecCall ["cat_Lockergang_fnc_init",group _sender];