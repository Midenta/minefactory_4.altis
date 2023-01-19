/*
    File: fn_initSecurity.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description: init for security system.
*/
[] spawn {
    if (!hasInterface) exitWith {};
	waitUntil {!isNull (findDisplay 46)};
    private["_uid","_sender"];
    _sender = player;
    _uid = getPlayerUID _sender;
    if (getNumber(missionConfigFile >> "Cation_Alarm" >> "HeadlessSupport") isEqualTo 0) then {
        [_uid,_sender] remoteExec ["cat_alarm_fnc_loadSecurity",2];
    } else {
        if (husky_HC_isActive) then {
            [_uid,_sender] remoteExec ["cat_alarm_fnc_loadSecurityHC",HC_husky];
        } else {
            [_uid,_sender] remoteExec ["cat_alarm_fnc_loadSecurity",2];
        };
    };
    
};