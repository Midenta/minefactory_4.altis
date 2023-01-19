/*
    File: fn_updateTrunk.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Updates locker inventory in database.
*/
if !(!hasInterface && !isDedicated) exitWith {};
params [
    ["_inv",[],[[]]],
    ["_level",0,[0]],
    ["_pid","",[""]],
    ["_side",sideUnknown,[civilian]]
];
if (_pid isEqualTo "" || _side isEqualTo sideUnknown) exitWith {};

_inv = [_inv] call HC_fnc_mresArray;
private _query = switch (_side) do {
    //hier muss noch die gang abfrage rein, statt player id, gang halt
    case civilian: { format["UPDATE lockergang SET civ_locker='%1', civ_level='%2' WHERE playerid='%3'",_inv,_level,_pid]; };
    //case civilian: { format["UPDATE lockergang SET civ_locker='%1', civ_level='%2' WHERE playerid='%3'",_inv,_level,_pid]; };
    case west: { format["UPDATE lockergang SET cop_locker='%1', cop_level='%2' WHERE playerid='%3'",_inv,_level,_pid]; };
    case independent: { format["UPDATE lockergang SET med_locker='%1', med_level='%2' WHERE playerid='%3'",_inv,_level,_pid]; };
    case east: { format["UPDATE lockergang SET east_locker='%1', east_level='%2' WHERE playerid='%3'",_inv,_level,_pid]; };
};
private _queryResult = [_query,1] call HC_fnc_asyncCall;

if ((getNumber(missionConfigFile >> "Cation_Lockergang" >> "DebugMode")) isEqualTo 1) then {
    diag_log "------------- Update Locker To Database --------";
    diag_log format ["QUERY: %1",_query];
    diag_log format ["QUERYRESULT: %1",_queryResult];
    diag_log "------------------------------------------------";
    diag_log format ["INVENTORY: %1",_inv];
    diag_log "------------------------------------------------";
};