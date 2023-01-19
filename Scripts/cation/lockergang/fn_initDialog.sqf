/*
    File: fn_initDialog.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Opens locker dialog   
*/
if (isNil {(group player) getVariable "gang_id"}) exitWith {hint "Du bist in keiner Gang";};
if(((group player) getVariable "gang_id") isEqualTo -1) exitWith {hint "Du bist in keiner Gang";};
if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed || husky_action_inUse) exitWith {closeDialog 0;};
if ((getNumber(missionConfigFile >> "Cation_Lockergang" >> "version")) > 4) then {
    if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {closeDialog 0;};
};
if (dialog) exitWith {};
if (!createDialog "LockerMenuGang") exitWith {};
disableSerialization;

waitUntil {!isNull (uiNamespace getVariable ["LockerMenuGang",displayNull])};
private _ui = uiNamespace getVariable ["LockerMenuGang",displayNull];
private _progressBar = _ui displayCtrl 50021;
_progressBar progressSetPosition 0;
_progressBar ctrlCommit 0;

private _display = findDisplay 50001;
(_display displayCtrl 50011) ctrlSetText format[["Locker"] call cat_Lockergang_fnc_getText];
(_display displayCtrl 50031) ctrlSetText format[["LockerInventory"] call cat_Lockergang_fnc_getText];
(_display displayCtrl 50071) ctrlSetText format[["Take"] call cat_Lockergang_fnc_getText];
(_display displayCtrl 50101) ctrlSetText format[["Store"] call cat_Lockergang_fnc_getText];
(_display displayCtrl 50111) ctrlSetText format[["Close"] call cat_Lockergang_fnc_getText];
(_display displayCtrl 50121) ctrlSetText format[["Upgrade"] call cat_Lockergang_fnc_getText];

(_display displayCtrl 50141) ctrlSetTooltip format[["VItems"] call cat_Lockergang_fnc_getText];
(_display displayCtrl 50161) ctrlSetTooltip format[["Weapons"] call cat_Lockergang_fnc_getText];
(_display displayCtrl 50181) ctrlSetTooltip format[["Items"] call cat_Lockergang_fnc_getText];
(_display displayCtrl 50201) ctrlSetTooltip format[["Equipment"] call cat_Lockergang_fnc_getText];
(_display displayCtrl 50221) ctrlSetTooltip format[["PlayerInventory"] call cat_Lockergang_fnc_getText];
(_display displayCtrl 50241) ctrlSetTooltip format[["VehicleInventory"] call cat_Lockergang_fnc_getText];

private _trunk = (group player getVariable "cat_Lockergang_trunk");
private _level = (group player getVariable "cat_Lockergang_level");
private _sizePrice = (getArray(missionConfigFile >> "Cation_Lockergang" >> "locker_size_price"));
if (_level >= count _sizePrice) then {
    ctrlShow [5012,false];
};
_display setVariable ["type",0];
_display setVariable ["mode",0];
cat_Lockergang_vehicle = objNull;

ctrlShow[50361,false];
ctrlShow[50381,false];
ctrlShow[50401,false];
ctrlShow[50441,false];

[] call cat_Lockergang_fnc_refreshDialog;

[] spawn {
    waitUntil {isNull (findDisplay 50001)};
    [3] call SOCK_fnc_updatePartial;
    private _trunk = (group player getVariable "cat_Lockergang_trunk");
    private _level = (group player getVariable "cat_Lockergang_level");
    [_trunk,_level,(group player) getVariable "gang_id",civilian] remoteExecCall ["cat_Lockergang_fnc_updateTrunk",2];
};