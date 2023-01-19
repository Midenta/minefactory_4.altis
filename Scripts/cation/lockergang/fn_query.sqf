/*
    File: fn_query.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Sends a request out to the server to check for locker information.
*/
[] spawn {
    if (!hasInterface) exitWith {};
	waitUntil {!isNull (findDisplay 46)};
    if (!(husky_gangData isEqualTo [-1,-1])) then {
        [(husky_gangData select 0),civilian,player] remoteExecCall ["cat_Lockergang_fnc_fetchTrunk",2];
    };
    /* if (getNumber(missionConfigFile >> "Cation_Lockergang" >> "HeadlessSupport") isEqualTo 0) then {

        [getPlayerUID player,civilian,player] remoteExecCall ["cat_Lockergang_fnc_fetchTrunk",2];
    } else {
        if (husky_HC_isActive) then {
            [getPlayerUID player,playerSide,player] remoteExecCall ["cat_Lockergang_fnc_fetchTrunkHC",HC_husky];
        } else {
            [getPlayerUID player,playerSide,player] remoteExecCall ["cat_Lockergang_fnc_fetchTrunk",2];
        };
    }; */
};