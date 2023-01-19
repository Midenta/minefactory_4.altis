#define ctrlSelData(ctrl) (lbData[##ctrl,(lbCurSel ##ctrl)])
/*
    File: fn_vehicleSelected.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Changes player inventory to selected vehicle inventory
*/
if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed || husky_action_inUse) exitWith {closeDialog 0;};
if ((getNumber(missionConfigFile >> "Cation_Lockerganggang" >> "version")) > 4) then {
    if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {closeDialog 0;};
};
disableSerialization;

if ((lbCurSel 500612) isEqualTo -1) exitWith {hint format[["NoSelection"] call cat_Lockerganggang_fnc_getText]; [] call cat_Lockerganggang_fnc_refreshDialog;};
private _display = findDisplay 500012;
private _type = _display getVariable ["type",-1];
private _viewMode = _display getVariable ["mode",-1];
if !(_viewMode isEqualTo 2) exitWith {[] call cat_Lockerganggang_fnc_refreshDialog;};
private _vehicle = ctrlSelData(500612);

cat_Lockerganggang_vehicle = (objectFromNetId _vehicle);

if ((cat_Lockerganggang_vehicle getVariable ["trunk_in_use",false])) exitWith { 
    hint localize "STR_MISC_VehInvUse";
    cat_Lockerganggang_vehicle = objNull;
    _display setVariable ["mode",2];
    [] call cat_Lockerganggang_fnc_refreshDialog;
};
cat_Lockerganggang_vehicle setVariable["trunk_in_use",true,true];
cat_Lockerganggang_vehicle setVariable["trunk_in_use_by",player,true];

_display setVariable ["mode",1];

cat_Lockerganggang_vehicle spawn {
    private _display = findDisplay 500012;
    waitUntil {(isNull (findDisplay 500012)) || ((_display getVariable ["mode",-1]) isEqualTo 0)};
    _this setVariable ["trunk_in_use",false,true];
};

[] call cat_Lockerganggang_fnc_refreshDialog;