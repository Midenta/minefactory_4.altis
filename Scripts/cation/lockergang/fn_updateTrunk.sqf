/*
    File: fn_updateTrunk.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Updates locker inventory in database.
*/
if (!isServer) exitWith {};
params [
    ["_inv",[],[[]]],
    ["_level",0,[0]],
    ["_gangid",-1,[0]],
    ["_side",sideUnknown,[civilian]]
];
diag_log ["%1 | %2 | %3 | %4",_inv,_level,_gangid,_side];
if (_gangid isEqualTo -1 || _side isEqualTo sideUnknown) exitWith {};

_inv = [_inv] call DB_fnc_mresArray;
private _query = format["UPDATE lockergang SET gang_locker='%1', gang_locker_level='%2' WHERE gangid='%3'",_inv,_level,_gangid];
private _queryResult = [_query,1] call DB_fnc_asyncCall;

if ((getNumber(missionConfigFile >> "Cation_Lockergang" >> "DebugMode")) isEqualTo 1) then {
    diag_log "------------- Update Locker To Database --------";
    diag_log format ["QUERY: %1",_query];
    diag_log format ["QUERYRESULT: %1",_queryResult];
    diag_log "------------------------------------------------";
    diag_log format ["INVENTORY: %1",_inv];
    diag_log "------------------------------------------------";
};