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
if ((getNumber(missionConfigFile >> "Cation_Lockerganggang" >> "version")) > 4) then {
    if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {closeDialog 0;};
};
if (dialog) exitWith {};
if (!createDialog "LockerMenuGanggang") exitWith {};
disableSerialization;

waitUntil {!isNull (uiNamespace getVariable ["LockerMenuGanggang",displayNull])};
private _ui = uiNamespace getVariable ["LockerMenuGanggang",displayNull];
private _progressBar = _ui displayCtrl 500212;
_progressBar progressSetPosition 0;
_progressBar ctrlCommit 0;

private _display = findDisplay 500012;
(_display displayCtrl 500112) ctrlSetText format[["Locker"] call cat_Lockerganggang_fnc_getText];
(_display displayCtrl 500312) ctrlSetText format[["LockerInventory"] call cat_Lockerganggang_fnc_getText];
(_display displayCtrl 500712) ctrlSetText format[["Take"] call cat_Lockerganggang_fnc_getText];
(_display displayCtrl 501012) ctrlSetText format[["Store"] call cat_Lockerganggang_fnc_getText];
(_display displayCtrl 501112) ctrlSetText format[["Close"] call cat_Lockerganggang_fnc_getText];
(_display displayCtrl 501212) ctrlSetText format[["Upgrade"] call cat_Lockerganggang_fnc_getText];

(_display displayCtrl 501412) ctrlSetTooltip format[["VItems"] call cat_Lockerganggang_fnc_getText];
(_display displayCtrl 501612) ctrlSetTooltip format[["Weapons"] call cat_Lockerganggang_fnc_getText];
(_display displayCtrl 501812) ctrlSetTooltip format[["Items"] call cat_Lockerganggang_fnc_getText];
(_display displayCtrl 502012) ctrlSetTooltip format[["Equipment"] call cat_Lockerganggang_fnc_getText];
(_display displayCtrl 502212) ctrlSetTooltip format[["PlayerInventory"] call cat_Lockerganggang_fnc_getText];
(_display displayCtrl 502412) ctrlSetTooltip format[["VehicleInventory"] call cat_Lockerganggang_fnc_getText];

private _trunk = (group player getVariable "cat_Lockerganggang_trunk");
private _level = (group player getVariable "cat_Lockerganggang_level");
private _sizePrice = (getArray(missionConfigFile >> "Cation_Lockerganggang" >> "locker_size_price"));
if (_level >= count _sizePrice) then {
    ctrlShow [501212,false];
};
_display setVariable ["type",0];
_display setVariable ["mode",0];
cat_Lockerganggang_vehicle = objNull;

ctrlShow[503612,false];
ctrlShow[503812,false];
ctrlShow[504012,false];
ctrlShow[504412,false];

[] call cat_Lockerganggang_fnc_refreshDialog;

[] spawn {
    waitUntil {isNull (findDisplay 500012)};
    [3] call SOCK_fnc_updatePartial;
    private _trunk = (group player getVariable "cat_Lockerganggang_trunk");
    private _level = (group player getVariable "cat_Lockerganggang_level");
    [_trunk,_level,(group player) getVariable "gang_id",civilian] remoteExecCall ["cat_Lockerganggang_fnc_updateTrunk",2];
};