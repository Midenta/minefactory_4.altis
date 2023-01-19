/*
    File: fn_setMapPosition.sqf
    Author: Bryan "Tonic" Boardwine
    Edit: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THE EDITED LINES ARE THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Sets the given control / maps focus position
*/
disableSerialization;
params [
    ["_control",controlNull,[controlNull]],
    ["_time",[1,[0]]],
    ["_zoom",0.1,[0]],
    ["_position",[],[[]]]
];

if (isNull _control || _position isEqualTo []) exitWith {};

_control ctrlMapAnimAdd[_time,_zoom,_position];
ctrlMapAnimCommit _control;