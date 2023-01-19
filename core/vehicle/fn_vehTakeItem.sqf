#include "..\..\script_macros.hpp"
#define ctrlSelData(ctrl) (lbData[##ctrl,(lbCurSel ##ctrl)])
/*
    File: fn_vehTakeItem.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Used in the vehicle trunk menu, takes the selected item and puts it in the players virtual inventory
    if the player has room.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_ctrl","_num","_index","_data","_old","_value","_weight","_diff"];
disableSerialization;
if (isNull husky_trunk_vehicle || !alive husky_trunk_vehicle) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Entweder existiert das Fahrzeug nicht oder es wurde zerst�rt.</t>";};
if (!alive player) exitWith {closeDialog 0;};
if ((husky_trunk_vehicle getVariable ["trunk_in_use_by",player]) != player) exitWith {  closeDialog 0;hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Der Kofferraum dieses Fahrzeuges wird bereits benutzt, nur eine Person kann auf ihn zugreifen.</t>";};
if (husky_action_inUse) exitWith {closeDialog 0;}; // How did he opened the dialog ?!

if ((lbCurSel 3502) isEqualTo -1) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast nichts ausgew�hlt</t>";};
_ctrl = ctrlSelData(3502);
_num = ctrlText 3505;
if (!([_num] call TON_fnc_isnumber)) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Ung�ltiges Zahlenformat!</t>";};
_num = parseNumber(_num);
if (_num < 1) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du kannst nichts unter 1 eingeben!</t>";};

_index = [_ctrl,((husky_trunk_vehicle getVariable "Trunk") select 0)] call TON_fnc_index;
_data = (husky_trunk_vehicle getVariable "Trunk") select 0;
_old = husky_trunk_vehicle getVariable "Trunk";
if (_index isEqualTo -1) exitWith {};
_value = _data select _index select 1;
if (_num > _value) exitWith { hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Das Fahrzeug hat nicht so viele dieser Gegenst�nde.</t>";};
_num = [_ctrl,_num,husky_carryWeight,husky_maxWeight] call husky_fnc_calWeightDiff;
if (_num isEqualTo 0) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Dein Inventar ist voll.</t>";};
_weight = ([_ctrl] call husky_fnc_itemWeight) * _num;
if (_ctrl == "money") then {
    if (_num == _value) then {
        _data deleteAt _index;
    } else {
        _data set[_index,[_ctrl,(_value - _num)]];
    };
 
    c126 = c126 + _num;
    [0] call SOCK_fnc_updatePartial;
    husky_trunk_vehicle setVariable ["Trunk",[_data,(_old select 1) - _weight],true];
    [husky_trunk_vehicle] call husky_fnc_vehInventory;
} else {
    if ([true,_ctrl,_num] call husky_fnc_handleInv) then {
        if (_num == _value) then {
            _data deleteAt _index;
        } else {
            _data set[_index,[_ctrl,(_value - _num)]];
        };
        husky_trunk_vehicle setVariable ["Trunk",[_data,(_old select 1) - _weight],true];
        [husky_trunk_vehicle] call husky_fnc_vehInventory;
    } else {
		hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Dein Inventar ist voll.</t>";
    };
};
