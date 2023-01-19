/*
    File: fn_houseAlarmMarker.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description: Marks secured house on map.
*/
private ["_house","_position"];
_house = param [0,objNull,[objNull]];
_position = getPosATL _house;

_marker = createMarkerLocal [format ["house_%1",(_house getVariable "house_id")],_position];
_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
_marker setMarkerColorLocal "ColorBlue";
_marker setMarkerTypeLocal "loc_Lighthouse";
if(_house getVariable["security",false]) then {
	_marker setMarkerTextLocal format["%1 [%2]",_houseName,getText(missionConfigFile >> "Cation_Alarm" >> "secured")];
} else {
    _marker setMarkerTextLocal _houseName;
};