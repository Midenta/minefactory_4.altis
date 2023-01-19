#include "..\..\script_macros.hpp"
/*
    File: fn_processAction.sqf
    Author: Bryan "Tonic" Boardwine
    Modified : NiiRoZz

    Description:
    Master handling for processing an item.
    NiiRoZz : Added multiprocess

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_vendor","_type","_itemInfo","_oldItem","_newItemWeight","_newItem","_oldItemWeight","_cost","_upp","_hasLicense","_itemName","_oldVal","_ui","_progress","_pgText","_cP","_materialsRequired","_materialsGiven","_noLicenseCost","_text","_filter","_totalConversions","_minimumConversions","_time","_conditions"];
private _hideout = (nearestObjects[getPosATL player,["Land_u_Barracks_V2_F","Land_i_Barracks_V2_F"],25]) select 0;
private _id = _hideout getVariable "gangOwner";
if(_id isEqualTo -1) exitWith {hint "Du hast das Gangversteck nicht Erobert"};
if!(_id isEqualTo ((group player) getVariable ["gang_id",-1])) exitWith {hint "Das ist nicht dein Gangversteck"};
_vendor = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
_hasLicense = false;
//Error check
if (isNull _vendor || _type isEqualTo "" || (player distance _vendor > 10)) exitWith {};
husky_action_inUse = true;//Lock out other actions during processing.

if (isClass (missionConfigFile >> "ProcessAction" >> _type)) then {
    _filter = false;
    _materialsRequired = M_CONFIG(getArray,"ProcessAction",_type,"MaterialsReq");
    _materialsGiven = M_CONFIG(getArray,"ProcessAction",_type,"MaterialsGive");
    _noLicenseCost = M_CONFIG(getNumber,"ProcessAction",_type,"NoLicenseCost");
    _text = M_CONFIG(getText,"ProcessAction",_type,"Text");
} else {_filter = true;};

if (_filter) exitWith {husky_action_inUse = false;};

_itemInfo = [_materialsRequired,_materialsGiven,_noLicenseCost,(localize format ["%1",_text])];
if (count _itemInfo isEqualTo 0) exitWith {husky_action_inUse = false;};

//Setup vars.
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;
_exit = false;
if (count _oldItem isEqualTo 0) exitWith {husky_action_inUse = false;};

_totalConversions = [];
{
    _var = ITEM_VALUE(_x select 0);
    if (_var isEqualTo 0) exitWith {_exit = true;};
    if (_var < (_x select 1)) exitWith {_exit = true;};
    _totalConversions pushBack (floor (_var/(_x select 1)));
} forEach _oldItem;

if (_exit) exitWith {husky_is_processing = false; hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast nicht genug Materialien!</t>"; husky_action_inUse = false;};


_cost = _cost * (count _oldItem);

_minimumConversions = _totalConversions call BIS_fnc_lowestNum;
_oldItemWeight = 0;
{
    _weight = ([_x select 0] call husky_fnc_itemWeight) * (_x select 1);
    _oldItemWeight = _oldItemWeight + _weight;
} count _oldItem;

_newItemWeight = 0;
{
    _weight = ([_x select 0] call husky_fnc_itemWeight) * (_x select 1);
    _newItemWeight = _newItemWeight + _weight;
} count _newItem;

_exit = false;

if (_newItemWeight > _oldItemWeight) then {
    _netChange = _newItemWeight - _oldItemWeight;
    _freeSpace = husky_maxWeight - husky_carryWeight;
    if (_freeSpace < _netChange) exitWith {_exit = true;};
    private _estConversions = floor(_freeSpace / _netChange);
    if (_estConversions < _minimumConversions) then {
        _minimumConversions = _estConversions;
    };
};

if (_exit) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast keinen Platz im Inventar, um die Materialien zu verarbeiten.</t>"; husky_is_processing = false; husky_action_inUse = false;};

//Setup our progress bar.
disableSerialization;
"progressBar" cutRsc ["test_husky_progress","PLAIN"];
_ui = uiNamespace getVariable "test_husky_progress";
_progress = _ui displayCtrl 382011;
_pgText = _ui displayCtrl 382021;
_progress ctrlSetTextColor [0.812,0.106,0.106,1];
_pgText ctrlSetStructuredText parseText format ["<t size='0.9' font='PuristaSemibold'>%2 (1%1)...</t>","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

husky_is_processing = true;

for "_i" from 0 to 1 step 0 do {
    _time = 0.28;

    if ((fed_bank getVariable ["Farmboost",false])) then {
        private _result = fed_bank getVariable "Farmboost_Number";
        _time = getNumber(missionConfigFile >> "Master_FarmBoost" >> _result >> "procces_speed");
    };

    uiSleep _time;
    _cP = _cP + 0.01;
    /*
    uiSleep  0.28;
    _cP = _cP + 0.01;
    */
    _progress progressSetPosition _cP;
    switch ((round(_cP * 100))) do {
        case 20: {
            _progress ctrlSetTextColor [0.812,0.188,0.106,1];
        };
        case 40: {
            _progress ctrlSetTextColor [0.812,0.247,0.106,1];
        };
        case 60: {
            _progress ctrlSetTextColor [0.812,0.329,0.106,1];
        };
        case 80: {
            _progress ctrlSetTextColor [0.812,0.518,0.106,1];
        };
        case 100: {
            _progress ctrlSetTextColor [0.529,0.812,0.106,1];
        };
    };
    _pgText ctrlSetStructuredText parseText format ["<t size='0.9' font='PuristaSemibold'>%3 (%1%2)...</t>",round(_cP * 100),"%",_upp];
    if (_cP >= 1) exitWith {};
    if (player distance _vendor > 10) exitWith {};
};
if (player distance _vendor > 10) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du musst innerhalb von 10m bleiben, um verarbeiten zu können.</t>"; "progressBar" cutText ["","PLAIN"]; husky_is_processing = false; husky_action_inUse = false;};


{
    [false,(_x select 0),((_x select 1)*(_minimumConversions))] call husky_fnc_handleInv;
} count _oldItem;

{
    [true,(_x select 0),((_x select 1)*(_minimumConversions))] call husky_fnc_handleInv;
} count _newItem;

if (_minimumConversions isEqualTo (_totalConversions call BIS_fnc_lowestNum)) then {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Informant</t><br /><t size='1.5' color='#ffffff'>Du hast deine Materialien verarbeitet!</t>";} else {hint localize "STR_Process_Partial";};
husky_is_processing = false; husky_action_inUse = false;

"progressBar" cutText ["","PLAIN"];
