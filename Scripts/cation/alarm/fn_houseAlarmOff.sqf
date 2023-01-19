/*
    File: fn_houseAlarmOff.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description: Turns house alarm off.
*/
private ["_house"];
_house = param [0,objNull,[objNull]];
closeDialog 0;

_house setVariable ["alarm",false,true];
deleteMarkerLocal format ["alarm_%1",(_house getVariable "house_id")];