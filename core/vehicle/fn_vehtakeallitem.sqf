#include "..\..\script_macros.hpp"
#define ctrlSelData(ctrl) (lbData[##ctrl,(lbCurSel ##ctrl)])
/*
 File: fn_vehTakeAllItem.sqf
 Author: Killerknight
 
 Description:
 Take all (max items) from selected and add it to the players inventory
 
	Thieves

	Universe-Community.de

	Diese Mission ist bearbeitet von dem Development Team von Universe-Community.de 
	Diese Mission darf von keinem anderen genutzt werden außer von Universe-Community.de!	
*/
private["_ctrl","_num","_index","_data","_old","_value","_weight","_diff"];

if (!DarfEinzahlen) exitWith {};
if (DarfEinzahlen) then {
	DarfEinzahlen = false;
	[] spawn {
		sleep 1;
		DarfEinzahlen = true;
	};
};

disableSerialization;
if (isNull husky_trunk_vehicle OR !alive husky_trunk_vehicle) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Entweder existiert das Fahrzeug nicht oder es wurde zerstört.</t>";};
if (!alive player) exitwith {closeDialog 0;};

if ((lbCurSel 3502) == -1) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast nichts ausgewählt</t>";};
_ctrl = ctrlSelData(3502);
_config = configName (missionConfigFile >> "VirtualItems" >> _ctrl);
_num2 = getNumber(missionConfigFile >> "VirtualItems" >> _config >> "weight");
_num1 = (floor (((husky_maxWeight) - (husky_carryWeight)) / _num2));
_num = if (_num1 <= ((((husky_trunk_vehicle getVariable "Trunk") select 0) select (lbCurSel 3502)) select 1)) then {_num1}else{((((husky_trunk_vehicle getVariable "Trunk") select 0) select (lbCurSel 3502)) select 1)};
if (_num < 1) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du kannst nichts unter 1 eingeben!</t>";};

_index = [_ctrl,((husky_trunk_vehicle getVariable "Trunk") select 0)] call TON_fnc_index;
_data = (husky_trunk_vehicle getVariable "Trunk") select 0;
_old = husky_trunk_vehicle getVariable "Trunk";
if (_index == -1) exitWith {};
_value = _data select _index select 1;
if (_num > _value) exitWith { hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Das Fahrzeug hat nicht so viele dieser Gegenstände.</t>";};
_num = [_ctrl,_num,husky_carryWeight,husky_maxWeight] call husky_fnc_calWeightDiff;
if (_num == 0) exitWith {hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Dein Inventar ist voll.</t>";};
_weight = ([_ctrl] call husky_fnc_itemWeight) * _num;

if (_ctrl == "money") then {
	if (_num == _value) then {
		_data set[_index,-1];
		_data = _data - [-1];
	} else {
		_data set[_index,[_ctrl,(_value - _num)]];
	};

	husky_cash = husky_cash + _num;
	husky_trunk_vehicle setVariable["Trunk",[_data,(_old select 1) - _weight],true];
	[husky_trunk_vehicle] call husky_fnc_vehInventory;
} else {
	if ([true,_ctrl,_num] call husky_fnc_handleInv) then {
		if (_num == _value) then {
			_data set[_index,-1];
			_data = _data - [-1];
		} else {
			_data set[_index,[_ctrl,(_value - _num)]];
		};
		husky_trunk_vehicle setVariable["Trunk",[_data,(_old select 1) - _weight],true];
		[husky_trunk_vehicle] call husky_fnc_vehInventory;
	} else {
		hint parseText "<t underline='true' size='1.8' color='#7cff00'>Warnung</t><br /><t size='1.5' color='#ffffff'>Dein Inventar ist voll.</t>";
	};
};

/*

private["_ctrl","_num","_index","_data","_old","_value","_weight","_diff"];

if (!DarfEinzahlen) exitWith {};
if (DarfEinzahlen) then {
	DarfEinzahlen = false;
	[] spawn {
		sleep 1;
		DarfEinzahlen = true;
	};
};

disableSerialization;
if (isNull husky_trunk_vehicle OR !alive husky_trunk_vehicle) exitWith {["Entweder existiert das Fahrzeug nicht oder es wurde zerstört.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
if (!alive player) exitwith {closeDialog 0;};
//if ((husky_trunk_vehicle getVariable ["trunk_in_use_by",player]) != player) exitWith {  closeDialog 0;["Der Kofferraum dieses Fahrzeuges wird bereits benutzt, nur eine Person kann auf ihn zugreifen.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
//if (husky_action_inUse) exitWith {closeDialog 0;}; // How did he opened the dialog ?!


if ((lbCurSel 3502) == -1) exitWith {["Du hast nichts ausgewählt.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
_ctrl = ctrlSelData(3502);
_config = configName (missionConfigFile >> "VirtualItems" >> _ctrl);
_num2 = getNumber(missionConfigFile >> "VirtualItems" >> _config >> "weight");
_num1 = (floor (((husky_maxWeight) - (husky_carryWeight)) / _num2));
_num = if (_num1 <= ((((husky_trunk_vehicle getVariable "Trunk") select 0) select (lbCurSel 3502)) select 1)) then {_num1}else{((((husky_trunk_vehicle getVariable "Trunk") select 0) select (lbCurSel 3502)) select 1)};

if (!([_num] call TON_fnc_isnumber)) exitWith {["Ungültiges Zahlenformat!", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
if (_num < 1) exitWith {["Du kannst nichts unter 1 eingeben!", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};


_index = [_ctrl,((husky_trunk_vehicle getVariable "Trunk") select 0)] call TON_fnc_index;
_data = (husky_trunk_vehicle getVariable "Trunk") select 0;
_old = husky_trunk_vehicle getVariable "Trunk";

if (_index == -1) exitWith {};
	_value = _data select _index select 1;
if (_num > _value) exitWith {["Das Fahrzeug hat nicht so viele dieser Gegenstände.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
	_num = [_ctrl,_num,husky_carryWeight,husky_maxWeight] call husky_fnc_calWeightDiff;
if (_num == 0) exitWith {["Dein Inventar ist voll.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
	_weight = ([_ctrl] call husky_fnc_itemWeight) * _num;
	
	if (_ctrl == "money") then {
		if (_num == _value) then {
			_data set[_index,-1];
			_data = _data - [-1];
		} else {
			_data set[_index,[_ctrl,(_value - _num)]];
		};
 
		husky_cash = husky_cash + _num;
		husky_trunk_vehicle setVariable["Trunk",[_data,(_old select 1) - _weight],true];
		[husky_trunk_vehicle] call husky_fnc_vehInventory;
	} else {
		if ([true,_ctrl,_num] call husky_fnc_handleInv) then {
			if (_num == _value) then {
				_data set[_index,-1];
				_data = _data - [-1];
			} else {
				_data set[_index,[_ctrl,(_value - _num)]];
			};
		husky_trunk_vehicle setVariable["Trunk",[_data,(_old select 1) - _weight],true];
		[husky_trunk_vehicle] call husky_fnc_vehInventory;
	} else {
		["Dein Inventar ist voll.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
};
*/