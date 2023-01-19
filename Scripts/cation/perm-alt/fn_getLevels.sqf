/*
    File: fn_getLevels.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Sets max levels
*/

if (!isServer) exitWith {};
waitUntil {!isNil "husky_server_isReady"};
waitUntil {husky_server_isReady};

maxcoplevel = (getNumber(missionConfigFile >> "Cation_Perm" >> "maxcoplevel"));
publicVariable "maxcoplevel";

maxmediclevel = (getNumber(missionConfigFile >> "Cation_Perm" >> "maxmediclevel"));
publicVariable "maxmediclevel";