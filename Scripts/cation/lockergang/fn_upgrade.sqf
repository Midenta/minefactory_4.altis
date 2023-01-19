#include "..\..\..\script_macros.hpp"
/*
    File: fn_upgrade.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description: 
    Upgrade locker inventory  
*/
if(((group player) getVariable "gang_id") isEqualTo -1) exitWith {hint "Du bist in keiner Gang";};
if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed || husky_action_inUse) exitWith {closeDialog 0;};
if ((getNumber(missionConfigFile >> "Cation_Lockergang" >> "version")) > 4) then {
    if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {closeDialog 0;};
};
private _trunk = ((group player) getVariable "cat_Lockergang_trunk");
diag_log _trunk;
//private _nextStage = cat_Lockergang_level + 1;

private _stages = ((group player) getVariable "cat_Lockergang_level");
private _nextStage = _stages + 1;
(group player) setVariable ["cat_Lockergang_level",_nextStage,true];
diag_log _nextStage;
//private _nextStage = (group player setVariable ["cat_Lockergang_level",((group player getVariable "cat_Lockergang_level") + 1),true]);
private _sizePrice = (getArray(missionConfigFile >> "Cation_Lockergang" >> "locker_size_price"));
if (_nextStage > count _sizePrice) exitWith {};

private _size = _sizePrice select (_nextStage - 1) select 0;
private _price = _sizePrice select (_nextStage - 1) select 1;


private _oldSize = 0;
if !((_nextStage - 1) isEqualTo 0) then {
    _oldSize = _sizePrice select (_nextStage - 2) select 0;
};

private _action = [
    format [(["UpgradeLockerMSG"] call cat_Lockergang_fnc_getText),[_price] call BIS_fnc_numberText,[_size] call BIS_fnc_numberText,[_oldSize] call BIS_fnc_numberText],
    (["UpgradeLocker"] call cat_Lockergang_fnc_getText),
    (["Yes"] call cat_Lockergang_fnc_getText),
    (["No"] call cat_Lockergang_fnc_getText)
] call BIS_fnc_guiMessage;

if (_action) then {
    if (_price > husky_atmbank) exitWith { hint format[["NotEnoughCash"] call cat_Lockergang_fnc_getText]; };
    if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed || husky_action_inUse) exitWith {closeDialog 0;};
    if ((getNumber(missionConfigFile >> "Cation_Lockergang" >> "version")) > 4) then {
        if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {closeDialog 0;};
    };
    husky_atmbank = husky_atmbank - _price;
    [0] call SOCK_fnc_updatePartial;
    hint format [(["UpgradeSuccess"] call cat_Lockergang_fnc_getText),_price,_size];
    (group player) setVariable ["cat_Lockergang_level",_nextStage,true];
    //cat_Lockergang_maxWeight = _size;
    (group player) setVariable ["cat_Lockergang_maxWeight",_size,true];
        [_trunk,_nextStage,(group player) getVariable "gang_id",civilian] remoteExec ["cat_Lockergang_fnc_updateTrunk",2];

    [] call cat_Lockergang_fnc_refreshDialog;
    [getPlayerUID player, "Update Locker grosse Gang", format ["%1 - %2 hat sein Schließfach erweitert für %3 %4 . Bargeld: %5 € Bankkonto: %6 € Coin: %7 ",profileName,getplayeruid player,[_price] call husky_fnc_numberText,_size,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
    

};
