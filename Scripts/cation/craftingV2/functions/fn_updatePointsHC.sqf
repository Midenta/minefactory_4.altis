/*
    File: fn_updatePointsHC.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Save crafting points in database.
    Version: 1.0
*/
if !(!hasInterface && !isDedicated) exitWith {};
params [
    ["_pid","",[""]],
	["_points",0,[0]],
    ["_side",sideUnknown,[civilian]]
];
if (_pid isEqualTo "") exitWith {};

private _query = format["UPDATE crafting SET points='%1' WHERE playerid='%2'",_points,_pid];
private _query = switch (_side) do {
    case civilian: { format["UPDATE crafting SET civ_points='%1' WHERE playerid='%2'",_points,_pid]; };
    case west: { format["UPDATE crafting SET cop_points='%1' WHERE playerid='%2'",_points,_pid]; };
    case independent: { format["UPDATE crafting SET med_points='%1' WHERE playerid='%2'",_points,_pid]; };
    case east: { format["UPDATE crafting SET east_points='%1' WHERE playerid='%2'",_points,_pid]; };
};
private _queryResult = [_query,1] call HC_fnc_asyncCall;

if ((getNumber(missionConfigFile >> "Cation_CraftingV2" >> "DebugMode")) isEqualTo 1) then {
    //diag_log "------ Update Crafting Points To Database ------";
    //diag_log format ["QUERY: %1",_query];
    //diag_log format ["QUERYRESULT: %1",_queryResult];
    //diag_log "------------------------------------------------";
    //diag_log format ["POINTS: %1",_points];
    //diag_log "------------------------------------------------";
};