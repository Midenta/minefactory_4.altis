/*
    File: fn_vehInventory.sqf
    Author: ArmaServicesNet

    Description:
    Virtual menu GUI updater
*/

disableSerialization;
params [
    ['_vehicle',objNull,[objNull]],
    ['_mode',0,[0]]
];
if (isNull _vehicle || !alive _vehicle) exitWith {closeDialog 0;}; 
private _tInv = ((findDisplay 3500) displayCtrl 3502);
private _pInv = ((findDisplay 3500) displayCtrl 3503);
private _data = _vehicle getVariable ["Trunk",[]];
private _veh_data = [_vehicle] call life_fnc_vehicleWeight;    
if ((_veh_data select 0) isEqualTo -1) exitWith {closeDialog 0};
ctrlSetText[3504,format ["Weight: %1/%2",(_veh_data select 1),(_veh_data select 0)]];    
if (count _data isEqualTo 0) then {
    _vehicle setVariable ["Trunk",[[],0],true];
    _data = [];
} else {
    _data = (_data select 0);
};

lbClear _tInv;
{
    private _name = getText(missionConfigFile >> "VirtualItems" >> (_x select 0) >> "displayName");
    private _val = (_x select 1);

    if (_val > 0) then {
        if (_val > 999999) then {_val = _val call MTP_fnc_numberToString};
        _tInv lbAdd format ["[%1] - %2",_val,localize _name];
        _tInv lbSetData [(lbSize _tInv)-1,(_x select 0)];
        _icon = getText(missionConfigFile >> "VirtualItems" >> (_x select 0) >> "icon");
        if (!(_icon isEqualTo "")) then {
            _tInv lbSetPicture [(lbSize _tInv)-1,_icon];
        };
    };
} forEach _data;

if (_mode isEqualTo 1) exitWith {};
lbClear _pInv;
{
    private _val = missionNamespace getVariable [format ["life_inv_%1",getText(missionConfigFile >> "VirtualItems" >> configName _x >> "variable")],0];

    if (_val > 0) then {
        if (_val > 999999) then {_val = _val call MTP_fnc_numberToString};
        _pInv lbAdd format ["[%1] - %2",_val,localize (getText(_x >> "displayName"))];
        _pInv lbSetData [(lbSize _pInv)-1,configName _x];
        _icon = (getText(_x >> "icon"));
        if (!(_icon isEqualTo "")) then {
            _pInv lbSetPicture [(lbSize _pInv)-1,_icon];
        };
    };
} forEach ("true" configClasses (missionConfigFile >> "VirtualItems")); 