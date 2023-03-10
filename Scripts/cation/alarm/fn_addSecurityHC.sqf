/*
    File: fn_addSecurityHC.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description: Adds securitysystem to Database.
*/
private ["_housePos","_query"];
params [
    ["_uid","",[""]],
    ["_house",objNull,[objNull]]
];
if (!hasInterface && !isDedicated) then {
    if (isNull _house || _uid isEqualTo "") exitWith {};

    _housePos = getPosATL _house;

    _query = format ["UPDATE houses SET security='1' WHERE pid='%1' AND pos='%2' AND owned='1'",_uid,_housePos];
    if ((getNumber(missionConfigFile >> "Cation_Alarm" >> "DebugMode")) isEqualTo 1) then {
        diag_log "------------- add security system to house -----";
        diag_log format ["QUERY: %1",_query];
        diag_log "------------------------------------------------";
    };

    [_query,1] call HC_fnc_asyncCall;
    _house setVariable ["security",true,true];
    _house setVariable ["alarm",false,true];
};