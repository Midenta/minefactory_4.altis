/*
    File: fn_updateRank.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Update rank
*/

if (!hasInterface && !isDedicated) then {
    params [
        ["_receiver",objNull,[objNull]],
        ["_sender",objNull,[objNull]],
        ["_receiverUID","",[""]],
        ["_side","",[""]],
        ["_playerid","",[""]]
    ];

    if (isNull _receiver || isNull _sender || _receiverUID isEqualTo "" || _side isEqualTo "" || _playerid isEqualTo "") exitWith {}; //Fail

    _query = format["SELECT %2 FROM players WHERE %3='%1'",_receiverUID,_side,_playerid];
    if (getNumber(missionConfigFile >> "Cation_Perm" >> "DebugMode") isEqualTo 1) then {
        diag_log _query;
    };
    private _number = ([_query,2] call HC_fnc_asyncCall) select 0;
    if (!(_number isEqualType 0)) then { _number = parseNumber(_number)};
    _receiver setVariable["rank",_number,true];

    [_receiver] remoteExecCall ["cat_perm_fnc_setupPermDialog",_sender];
};