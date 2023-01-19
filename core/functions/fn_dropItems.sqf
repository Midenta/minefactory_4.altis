#include "..\..\script_macros.hpp"
/*
    File: fn_dropItems.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Called on death, player drops any 'virtual' items they may be carrying.

arams [
 ["_unit",objNull,[objNull]]
];
private _restricted_items = husky_SETTINGS(getArray,"drop_restricted_vitems");
private _pos = _unit modelToWorld[0,3,0];
_pos = [(_pos select 0),(_pos select 1),0];
private _obj = "Land_PlasticCase_01_small_F" createVehicle _pos; //Solltet ihr ein anderes Objekt wollen, den Classname in allen für diese Funktion benötigten Scripts ändern.
clearWeaponCargoGlobal _obj;
clearItemCargoGlobal _obj;
clearMagazineCargoGlobal _obj;
clearBackpackCargoGlobal _obj;
_name = format ["%1's Lootbox",name _unit];
_obj setVariable ["Name",_name,true]; // %1 bewirkt die Anzeige des Namens des verstorbenen Spielers an, so dass ihr das "'s Lootbox" ändern könnt falls gewünscht.
private _trunk =[];
private _weight = 0;
{
 private _value = 0;
 private _iweight = 0;
 private _itemName= "";
 private _item = "";
 if (_x isEqualType "") then {_item = _x;} else {_item = configName _x};
 if (_item isEqualTo "husky_cash") then {
	_value = c126;
	_itemName = "c126";
	_item = "money";
 } else {
	_value = ITEM_VALUE(_item);
	_iweight = (([_item] call husky_fnc_itemWeight) * _value);
	_itemName = ITEM_VARNAME(_item);
 };
 _weight = _weight + _iweight;
 if (_value > 0 && !(_item in _restricted_items)) then {
	_trunk pushBack [_item,_value];
 };
 missionNamespace setVariable [_itemName,0];
} forEach (("true" configClasses (missionConfigFile >> "VirtualItems")) + ["husky_cash"]);
_obj setVariable["Trunk",[_trunk,_weight],true];
if (husky_SETTINGS(getNumber,"drop_iitems_onDeath") isEqualTo 1) then {
 if (!(uniform _unit isEqualTo "")) then {
	{_obj addItemCargoGlobal [_x, 1];_unit removeItem _x} forEach (uniformItems _unit);
 };
 if (!(backpack _unit isEqualTo "")) then {
	{_obj addItemCargoGlobal [_x, 1];_unit removeItem _x} forEach (backpackItems _unit);
 };
 if (!(vest _unit isEqualTo "")) then {
	{_obj addItemCargoGlobal [_x, 1];_unit removeItem _x} forEach (vestItems _unit);
 };
 if (count (primaryWeaponItems _unit) > 0) then {
	{_obj addItemCargoGlobal [_x, 1];_unit removeItem _x} forEach (primaryWeaponItems _unit);
 };
 if (count (handgunItems _unit) > 0) then {
	{_obj addItemCargoGlobal [_x, 1];_unit removeItem _x} forEach (handGunItems _unit);
 };
 if !(primaryWeapon _unit isEqualTo "") then {_obj addItemCargoGlobal [(primaryWeapon _unit), 1]};
 if !(handgunWeapon _unit isEqualTo "") then {_obj addItemCargoGlobal [(handgunWeapon _unit), 1]};
	removeAllWeapons _unit;
	{player removeMagazine _x;} forEach (magazines _unit);
};
[_obj] spawn {
 params ["_obj"];
 _timer = husky_SETTINGS(getNumber,"lootbox_timer");
 uisleep (_timer*60);
 deleteVehicle _obj
};
*/
/*
private ["_obj","_unit","_item","_value"];
_unit = _this select 0;

{
    if (_x isEqualType "") then {_item = _x;} else {_item = configName _x};
    _value = ITEM_VALUE(_item);
    _itemName = ITEM_VARNAME(_item);

    switch (_item) do {
        case "waterBottle": {
            if (_value > 0) then {
                _pos = _unit modelToWorld[0,3,0];
                _pos = [(_pos select 0),(_pos select 1),0];
                _obj = "Land_BottlePlastic_V1_F" createVehicle _pos;
                //_obj setVariable ["water",_value,true];
                [_obj] remoteExecCall ["husky_fnc_simDisable",RANY];
                _obj setPos _pos;
                _obj setVariable ["item",[_item,_value],true];
                missionNamespace setVariable [_itemName,0];
            };
        };

        case "tbacon": {
            if (_value > 0) then {
                _pos = _unit modelToWorld[0,3,0];
                _pos = [(_pos select 0),(_pos select 1),0];
                _obj = "Land_TacticalBacon_F" createVehicle _pos;
                [_obj] remoteExecCall ["husky_fnc_simDisable",RANY];
                _obj setPos _pos;
                _obj setVariable ["item",[_item,_value],true];
                missionNamespace setVariable [_itemName,0];
            };
        };

        case "redgull": {
            if (_value > 0) then {
                _pos = _unit modelToWorld[0,3,0];
                _pos = [(_pos select 0),(_pos select 1),0];
                _obj = "Land_Can_V3_F" createVehicle _pos;
                [_obj] remoteExecCall ["husky_fnc_simDisable",RANY];
                _obj setPos _pos;
                _obj setVariable ["item",[_item,_value],true];
                missionNamespace setVariable [_itemName,0];
            };
        };

        case "fuelEmpty": {
            if (_value > 0) then {
                _pos = _unit modelToWorld[0,3,0];
                _pos = [(_pos select 0),(_pos select 1),0];
                _obj = "Land_CanisterFuel_F" createVehicle _pos;
                [_obj] remoteExecCall ["husky_fnc_simDisable",RANY];
                _obj setPos _pos;
                _obj setVariable ["item",[_item,_value],true];
                missionNamespace setVariable [_itemName,0];
            };
        };

        case "fuelFull": {
            if (_value > 0) then {
                _pos = _unit modelToWorld[0,3,0];
                _pos = [(_pos select 0),(_pos select 1),0];
                _obj = "Land_CanisterFuel_F" createVehicle _pos;
                [_obj] remoteExecCall ["husky_fnc_simDisable",RANY];
                _obj setPos _pos;
                _obj setVariable ["item",[_item,_value],true];
                missionNamespace setVariable [_itemName,0];
            };
        };

        case "coffee": {
            if (_value > 0) then {
                _pos = _unit modelToWorld[0,3,0];
                _pos = [(_pos select 0),(_pos select 1),0];
                _obj = "Land_Can_V3_F" createVehicle _pos;
                [_obj] remoteExecCall ["husky_fnc_simDisable",RANY];
                _obj setPos _pos;
                _obj setVariable ["item",[_item,_value],true];
                missionNamespace setVariable [_itemName,0];
            };
        };

        case "husky_cash": {
            if (c126 > 0) then {
                _pos = _unit modelToWorld[0,3,0];
                _pos = [(_pos select 0),(_pos select 1),0];
                _obj = "Land_Money_F" createVehicle _pos;
                _obj setVariable ["item",["money",missionNamespace getVariable [_item,0]],true];
                _obj setPos _pos;
                [_obj] remoteExecCall ["husky_fnc_simDisable",RANY];
                missionNamespace setVariable ["c126",0];
            };
        };

        default {
            if (_value > 0) then {
                _pos = _unit modelToWorld[0,3,0];
                _pos = [(_pos select 0),(_pos select 1),0];
                _obj = "Land_Suitcase_F" createVehicle _pos;
                [_obj] remoteExecCall ["husky_fnc_simDisable",RANY];
                _obj setPos _pos;
                _obj setVariable ["item",[_item,_value],true];
                missionNamespace setVariable [_itemName,0];
            };
        };
    };
} forEach (("true" configClasses (missionConfigFile >> "VirtualItems")) + ["husky_cash"]);
*/
/*
//#include "..\..\script_macros.hpp"

 File: fn_dropItems.sqf
 Author: moeck
 Description:
 Called on death, Player drops any 'virtual' items and items. They are stored in a plastic case.
 

params [
 ["_unit",objNull,[objNull]]
];
private _restricted_items = husky_SETTINGS(getArray,"drop_restricted_vitems");
private _pos = _unit modelToWorld[0,3,0];
_pos = [(_pos select 0),(_pos select 1),0];
private _obj = "Land_PlasticCase_01_small_F" createVehicle _pos; //Solltet ihr ein anderes Objekt wollen, den Classname in allen für diese Funktion benötigten Scripts ändern.
clearWeaponCargoGlobal _obj;
clearItemCargoGlobal _obj;
clearMagazineCargoGlobal _obj;
clearBackpackCargoGlobal _obj;
_name = format ["%1's Lootbox",name _unit];
_obj setVariable ["Name",_name,true]; // %1 bewirkt die Anzeige des Namens des verstorbenen Spielers an, so dass ihr das "'s Lootbox" ändern könnt falls gewünscht.
private _trunk =[];
private _weight = 0;
{
 private _value = 0;
 private _iweight = 0;
 private _itemName= "";
 private _item = "";
 if (_x isEqualType "") then {_item = _x;} else {_item = configName _x};
 if (_item isEqualTo "husky_cash") then {
 _value = c126;
 _itemName = "c126";
 _item = "money";
 } else {
 _value = ITEM_VALUE(_item);
 _iweight = (([_item] call husky_fnc_itemWeight) * _value);
 _itemName = ITEM_VARNAME(_item);
 };
 _weight = _weight + _iweight;
 if (_value > 0 && !(_item in _restricted_items)) then {
 _trunk pushBack [_item,_value];
 };
 missionNamespace setVariable [_itemName,0];
} forEach (("true" configClasses (missionConfigFile >> "VirtualItems")) + ["husky_cash"]);
_obj setVariable["Trunk",[_trunk,_weight],true];
if (husky_SETTINGS(getNumber,"drop_iitems_onDeath") isEqualTo 1) then {
 if (!(uniform _unit isEqualTo "")) then {
 {_obj addItemCargoGlobal [_x, 1];_unit removeItem _x} forEach (uniformItems _unit);
 };
 if (!(backpack _unit isEqualTo "")) then {
 {_obj addItemCargoGlobal [_x, 1];_unit removeItem _x} forEach (backpackItems _unit);
 };
 if (!(vest _unit isEqualTo "")) then {
 {_obj addItemCargoGlobal [_x, 1];_unit removeItem _x} forEach (vestItems _unit);
 };
 if (count (primaryWeaponItems _unit) > 0) then {
 {_obj addItemCargoGlobal [_x, 1];_unit removeItem _x} forEach (primaryWeaponItems _unit);
 };
 if (count (handgunItems _unit) > 0) then {
 {_obj addItemCargoGlobal [_x, 1];_unit removeItem _x} forEach (handGunItems _unit);
 };
 if !(primaryWeapon _unit isEqualTo "") then {_obj addItemCargoGlobal [(primaryWeapon _unit), 1]};
 if !(handgunWeapon _unit isEqualTo "") then {_obj addItemCargoGlobal [(handgunWeapon _unit), 1]};
 removeAllWeapons _unit;
 {player removeMagazine _x;} forEach (magazines _unit);
};
[_obj] spawn {
 params ["_obj"];
 _timer = husky_SETTINGS(getNumber,"lootbox_timer");
 uisleep (_timer*60);
 deleteVehicle _obj
}; //Zeit, bis die Kiste weg ist. Kann durch ändern der 10 (= 10 Minuten) geändert werden.
*/