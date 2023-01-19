/*
    File: fn_houseAlarmBuy.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description: Let you buy a security system for your house.
*/
private ["_action","_price","_house"];
_house = param [0,objNull,[objNull]];
_price = getNumber(missionConfigFile >> "Cation_Alarm" >> "price");
closeDialog 0;

if (_house getVariable ["security",false]) exitWith {hint format [getText(missionConfigFile >> "Cation_Alarm" >> "securityAlreadyInstalled")];};

_action = [
    format [getText(missionConfigFile >> "Cation_Alarm" >> "securityInstall"),_price],
    getText(missionConfigFile >> "Cation_Alarm" >> "securitySystem"),
    getText(missionConfigFile >> "Cation_Alarm" >> "buy"),
    getText(missionConfigFile >> "Cation_Alarm" >> "cancel")
] call BIS_fnc_guiMessage;

if (_action) then {
    if (husky_cash < _price) exitWith {hint format [getText(missionConfigFile >> "Cation_Alarm" >> "NotEnoughMoney")];};
    husky_cash = husky_cash - _price;
    if (getNumber(missionConfigFile >> "Cation_Alarm" >> "HeadlessSupport") isEqualTo 0) then {
        [(getPlayerUID player),_house] remoteExec ["cat_alarm_fnc_addSecurity",2];
    } else {
        if (husky_HC_isActive) then {
            [(getPlayerUID player),_house] remoteExec ["cat_alarm_fnc_addSecurityHC",HC_husky];
        } else {
            [(getPlayerUID player),_house] remoteExec ["cat_alarm_fnc_addSecurity",2];
        };
    };
        
    _marker = createMarkerLocal [format ["house_%1",(_house getVariable "house_id")],(getPosATL _house)];
    _marker setMarkerTextLocal format["%1 [%2]",getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName"),getText(missionConfigFile >> "Cation_Alarm" >> "secured")];
    _marker setMarkerColorLocal "ColorBlue";
    _marker setMarkerTypeLocal "loc_Lighthouse";
};