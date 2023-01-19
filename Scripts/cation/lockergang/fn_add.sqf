/*
    File: fn_addLocker.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Inserts locker in database.
*/
if (!isServer) exitWith {};
params [
    ["_gangid",-1,[0]],
    ["_side",sideUnknown,[civilian]],
    ["_sender",objNull,[objNull]]
];
if (_gangid isEqualTo -1 || _side isEqualTo "" || isNull _sender) exitWith {};

private _query = format["SELECT lockergang.gang_locker, lockergang.gang_locker_level FROM lockergang WHERE gangid='%1'",_gangid]; 
private _queryResult = [_query,2] call DB_fnc_asyncCall;
private _exit = 0;
if !(_queryResult isEqualTo []) then {
    _exit = 1;
};
if !(count _queryResult isEqualTo 0) then {
    _exit = 2;
};
if ((getNumber(missionConfigFile >> "Cation_Lockergang" >> "DebugMode")) isEqualTo 1) then {
    diag_log "- Check if there is a locker entry in Database -";
    diag_log format ["QUERY: %1",_query];    
    diag_log format ["Result: %1",_queryResult];
    if (_exit isEqualTo 1) then {
        diag_log "ENTRY FOUND 1";
        diag_log "------------------------------------------------";
    };
    if (_exit isEqualTo 2) then {
        diag_log "ENTRY FOUND 2";
        diag_log "------------------------------------------------";
    };
    diag_log "NO ENTRY FOUND";
    diag_log "------------------------------------------------";
};
if (_exit > 0) exitWith {
    [_gangid,_side,_sender] call cat_Lockergang_fnc_fetchTrunk;
};

_query = format ["DELETE FROM lockergang WHERE gangid='%1'",_gangid];
_queryResult = [_query,2] call DB_fnc_asyncCall;
waitUntil {!isNil "_queryResult"};
_query = format ["INSERT INTO lockergang (gangid, gang_locker, gang_locker_level) VALUES('%1', '""[]""', '0')",_gangid];
_queryResult = [_query,2] call DB_fnc_asyncCall;
waitUntil {!isNil "_queryResult"};

if ((getNumber(missionConfigFile >> "Cation_Lockergang" >> "DebugMode")) isEqualTo 1) then {
    diag_log "------------- Add Locker Gang To Database -----------";
    diag_log format ["QUERY: %1",_query];
    diag_log format ["Result: %1",_queryResult];
    diag_log "------------------------------------------------";
};

[_gangid,_side,_sender] call cat_Lockergang_fnc_fetchTrunk;