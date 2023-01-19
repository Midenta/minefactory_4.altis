#include "..\..\..\script_macros.hpp"
/*
    File: fn_refreshDialog.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description: Used as a refresher for locker inventory.
*/
if(((group player) getVariable "gang_id") isEqualTo -1) exitWith {hint "Du bist in keiner Gang";};
if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed || husky_action_inUse) exitWith {closeDialog 0;};
if ((getNumber(missionConfigFile >> "Cation_Lockergang" >> "version")) > 4) then {
    if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {closeDialog 0;};
};
disableSerialization;

if (isNull (findDisplay 50001)) exitWith {};

private _display = findDisplay 50001;
private _lInv = _display displayCtrl 50051;
private _pInv = _display displayCtrl 50061;
lbClear _lInv;
lbClear _pInv;
private _level = ((group player) getVariable "cat_Lockergang_level");
private _sizePrice = (getArray(missionConfigFile >> "Cation_Lockergang" >> "locker_size_price"));

if (_level >= count _sizePrice) then {
    ctrlShow [50121,false];
};

private _type = _display getVariable ["type",0];
private _mode = _display getVariable ["mode",0];
if !(_mode isEqualTo 1) then {
    cat_Lockergang_vehicle = objNull;
} else {
    if (((player distance cat_Lockergang_vehicle) > getNumber(missionConfigFile >> "Cation_Lockergang" >> "distanceVehicle")) && {!isNull cat_Lockergang_vehicle}) then {
        hint format [["DistanceVehicle"] call cat_Lockergang_fnc_getText,getNumber(missionConfigFile >> "Cation_Lockergang" >> "distanceVehicle")];
        [0] call cat_Lockergang_fnc_switchDisplayMode;
    };
};

ctrlShow [50261,false];

if (_mode isEqualTo 0) then {
    ctrlShow[50131,true];
    ctrlShow[50141,true];
    ctrlShow[50151,true];
    ctrlShow[50161,true];
    ctrlShow[50171,true];
    ctrlShow[50181,true];
    ctrlShow[50191,true];
    ctrlShow[50201,true];
    private _items = [];
    if !(_type isEqualTo 0) then {
        (_display displayCtrl 50041) ctrlSetText format["%1",["PlayerInventory"] call cat_Lockergang_fnc_getText];
        private _cargo = getUnitLoadout player;
        private _primary = _cargo select 0;
        private _secondary = _cargo select 1;
        private _handgun = _cargo select 2;
        private _uniformCargo = _cargo select 3;
        private _vestCargo = _cargo select 4;
        private _backpackCargo = _cargo select 5;
        _cargo = [];
        {
            if (!(_x isEqualTo [])) then { 
                if ((typeName(_x) == "ARRAY")) then {
                    if ((count (_x select 1) > 0) && _type isEqualTo 3) then {
                        ctrlShow [50261,true];
                        (_display displayCtrl 50261) ctrlSetText format[["WarningClothing"] call cat_Lockergang_fnc_getText];
                    } else {
                        _cargo pushBack [_x select 0,1];
                    };
                    for "_i" from 0 to ((count (_x select 1))-1) do {
                        if ((typeName(((_x select 1) select _i) select 0) == "ARRAY")) then {
                            _cargo pushBack [((((_x select 1) select _i) select 0) select 0),(((_x select 1) select _i) select 1)];
                        } else {
                            _cargo pushBack ((_x select 1) select _i);
                        };
                    };
                };
            };
        } forEach [_uniformCargo,_vestCargo,_backpackCargo];
        {
            if (!((_x) isEqualTo [])) then {
                if ((!((_x select 1) isEqualTo "") || !((_x select 2) isEqualTo "") || !((_x select 2) isEqualTo "") || !((_x select 4) isEqualTo []) || !((_x select 5) isEqualTo []) || !((_x select 6) isEqualTo "")) && _type isEqualTo 1)then {
                    ctrlShow [50261,true];
                    (_display displayCtrl 50261) ctrlSetText format[["WarningWeapon"] call cat_Lockergang_fnc_getText];
                } else {
                    _cargo pushBack [_x select 0,1];
                };
            };
        } forEach [_primary,_secondary,_handgun];
        {
            switch (_type) do {
                case 1 : {
                    if (isClass(configFile >> "CfgWeapons" >> (_x select 0))) then {
                        if (getNumber(configFile >> "CfgWeapons" >> (_x select 0) >> "type") in [1,2,4]) then {
                            private _index = [_x select 0,_items,-1,-1] call cat_Lockergang_fnc_index;
                            if (_index isEqualTo -1) then {
                                _items pushBack [_x select 0,_x select 1];
                            } else {
                                private _item = _items select _index;
                                _items set[_index,[_item select 0,(_item select 1) + (_x select 1)]];
                            };
                        };
                    };
                };
                case 2 : {
                    if (isClass(configFile >> "CfgMagazines" >> (_x select 0))) then {
                        private _index = [_x select 0,_items,2,_x select 2] call cat_Lockergang_fnc_index;
                        if (_index isEqualTo -1) then {
                            _items pushBack [_x select 0,_x select 1,_x select 2];
                        } else {
                            private _item = _items select _index;
                            _items set[_index,[_item select 0,(_item select 1) + (_x select 1),_item select 2]];
                        };
                    };
                    if (isClass(configFile >> "CfgWeapons" >> (_x select 0))) then {
                        _base = [(configfile >> "CfgWeapons" >> (_x select 0)),true] call BIS_fnc_returnParents;
                        if (!(("H_HelmetB" in _base) || ("Uniform_Base" in _base) || ("HelmetBase" in _base) || ("Vest_Camo_Base" in _base) || ("Vest_NoCamo_Base" in _base))) then {
                            if (("ItemCore" in _base) || ("Binocular" in _base)) then {
                                private _index = [_x select 0,_items,-1,-1] call cat_Lockergang_fnc_index;
                                if (_index isEqualTo -1) then {
                                    _items pushBack [_x select 0,_x select 1];
                                } else {
                                    private _item = _items select _index;
                                    _items set[_index,[_item select 0,(_item select 1) + (_x select 1)]];
                                };
                            };
                        };
                    };
                };
                case 3 : {
                    private _canAdd = false;
                    switch (([_x select 0] call husky_fnc_fetchCfgDetails) select 6) do {
                        case "CfgWeapons" : {
                            _base = [(configfile >> "CfgWeapons" >> (_x select 0)),true] call BIS_fnc_returnParents;
                            if (("H_HelmetB" in _base) || ("Uniform_Base" in _base) || ("HelmetBase" in _base) || ("Vest_Camo_Base" in _base) || ("Vest_NoCamo_Base" in _base)) then {
                                _canAdd = true;
                            };
                        };
                        case "CfgGlasses" : { _canAdd = true; };
                        case "CfgVehicles" : { _canAdd = true; };
                    };
                    if (_canAdd) then {
                        private _index = [_x select 0,_items,-1,-1] call cat_Lockergang_fnc_index;
                        if (_index isEqualTo -1) then {
                            _items pushBack [_x select 0,_x select 1];
                        } else {
                            private _item = _items select _index;
                            _items set[_index,[_item select 0,(_item select 1) + (_x select 1)]];
                        };
                    };
                };
            };
        } forEach _cargo;
        {
            private _section = switch (true) do {
                case (isClass(configFile >> "CfgMagazines" >> (_x select 0))): {"CfgMagazines"};
                case (isClass(configFile >> "CfgWeapons" >> (_x select 0))): {"CfgWeapons"};
                case (isClass(configFile >> "CfgVehicles" >> (_x select 0))): {"CfgVehicles"};
                case (isClass(configFile >> "CfgGlasses" >> (_x select 0))): {"CfgGlasses"};
                default {"CfgWeapons"};
            };
            if (!(_section isEqualTo "CfgMagazines")) then {
                _pInv lbAdd format["[%2] - %1",(getText(configFile >> _section >> (_x select 0) >> "displayName")),(_x select 1)];
                _pInv lbSetTooltip [lbSize(_pInv)-1,format ["%1 - %3: %2",(getText(configFile >> _section >> (_x select 0) >> "displayName")),(_x select 1),(["Amount"] call cat_Lockergang_fnc_getText)]];
                _pInv lbSetData [(lbSize _pInv)-1,(_x select 0)];
            } else {
                _pInv lbAdd format["[%2] - (%3) %1",(getText(configFile >> _section >> (_x select 0) >> "displayName")),(_x select 1),(_x select 2)];
                _pInv lbSetTooltip [lbSize(_pInv)-1,format ["%1 - %4: %2 - %5: %3",(getText(configFile >> _section >> (_x select 0) >> "displayName")),(_x select 1),(_x select 2),(["Amount"] call cat_Lockergang_fnc_getText),(["AmmoCount"] call cat_Lockergang_fnc_getText)]];
                _pInv lbSetData [(lbSize _pInv)-1,format ["%1,%2",(_x select 0),(_x select 2)]];
            };
            _pInv lbSetValue [(lbSize _pInv)-1,(_x select 1)];
			_icon = (getText(configFile >> _section >> (_x select 0) >> "picture"));
            if (!(_icon isEqualTo "")) then {
                _pInv lbSetPicture [(lbSize _pInv)-1,_icon];
            };
        } forEach _items;
    } else {
        (_display displayCtrl 50041) ctrlSetText format["%1 (%2/%3)",["PlayerInventory"] call cat_Lockergang_fnc_getText,husky_carryWeight,husky_maxWeight];
        if ((getNumber(missionConfigFile >> "Cation_Lockergang" >> "version")) > 3) then {
            _items = ("true" configClasses (missionConfigFile >> "VirtualItems"));
        } else {
            _items = husky_inv_items;
        };
        {
            private _val = 0;
            if ((getNumber(missionConfigFile >> "Cation_Lockergang" >> "version")) > 3) then {
                _val = missionNamespace getVariable [format["husky_inv_%1",(getText(missionConfigFile >> "VirtualItems" >> (configName _x) >> "variable"))],0];
            } else {
                _val = missionNamespace getVariable [_x,0];
            };
            if (_val > 0) then {
                private _name = "";
                private _icon = "";
                private _var = "";
                if ((getNumber(missionConfigFile >> "Cation_Lockergang" >> "version")) > 3) then {
                    _name = getText(_x >> "displayName");
                    _name = localize _name;
                    _icon = getText(_x >> "icon");
                    _var = configName _x;
                } else {
                    _name = [_x] call husky_fnc_varToStr;
                    _var = [_x,1] call husky_fnc_varHandle;
                };
                _pInv lbAdd format["[%1] - %2",_val,_name];
                _pInv lbSetData [(lbSize _pInv)-1,_var];
                _pInv lbSetTooltip [lbSize(_pInv)-1,format ["%1 - %3: %2",_name,_val,(["Amount"] call cat_Lockergang_fnc_getText)]];
                if (!(_icon isEqualTo "")) then {
                    _pInv lbSetPicture [(lbSize _pInv)-1,_icon];
                };
                _pInv lbSetValue [(lbSize _pInv)-1,_val];
            };
        } forEach _items;
    };
} else {
    ctrlShow[5013,true];
    ctrlShow[5014,true];
    ctrlShow[5034,true];
    ctrlShow[5015,false];
    ctrlShow[5016,false];
    ctrlShow[5036,false];
    ctrlShow[5017,false];
    ctrlShow[5018,false];
    ctrlShow[5038,false];
    ctrlShow[5019,false];
    ctrlShow[5020,false];
    ctrlShow[5040,false];
    if (_mode isEqualTo 1) then {
        (_display displayCtrl 50041) ctrlSetText format["%1 (%2/%3)",["VehicleInventory"] call cat_Lockergang_fnc_getText,(([cat_Lockergang_vehicle] call husky_fnc_vehicleWeight) select 1),(([cat_Lockergang_vehicle] call husky_fnc_vehicleWeight) select 0)];
            
        {
            private _val = (_x select 1);
            if (_val > 0) then {
                private _name = "";
                private _icon = "";
                if ((getNumber(missionConfigFile >> "Cation_Lockergang" >> "version")) > 3) then {
                    _name = getText(missionConfigFile >> "VirtualItems" >> (_x select 0) >> "displayName");
                    _name = localize _name;
                    _icon = getText(missionConfigFile >> "VirtualItems" >> (_x select 0) >> "icon");
                } else {
                    _name = [([(_x select 0),0] call husky_fnc_varHandle)] call husky_fnc_varToStr;
                };
                _pInv lbAdd format["[%1] - %2",_val,_name];
                _pInv lbSetData [(lbSize _pInv)-1,(_x select 0)];
                _pInv lbSetTooltip [lbSize(_pInv)-1,format ["%1 - %3: %2",_name,_val,(["Amount"] call cat_Lockergang_fnc_getText)]];
                if (!(_icon isEqualTo "")) then {
                    _pInv lbSetPicture [(lbSize _pInv)-1,_icon];
                };
                _pInv lbSetValue [(lbSize _pInv)-1,_val];
            };
        } forEach ((cat_Lockergang_vehicle getVariable ["Trunk",[]]) select 0);
    };
};
private _carryWeight = 0;
{
    private _val = (_x select 2);
    _carryWeight = _carryWeight + (([_x select 1,_x select 0] call cat_Lockergang_fnc_itemWeight) * _val);
    switch (_type) do {
        case 0: {
            if ((_x select 0) isEqualTo _type) then {
                if (_val > 0) then {
                    private _name = "";
                    private _icon = "";
                    if ((getNumber(missionConfigFile >> "Cation_Lockergang" >> "version")) > 3) then {
                        _name = getText(missionConfigFile >> "VirtualItems" >> (_x select 1) >> "displayName");
                        _name = localize _name;
                        _icon = getText(missionConfigFile >> "VirtualItems" >> (_x select 1) >> "icon");
                    } else {
                        _name = [([(_x select 1),0] call husky_fnc_varHandle)] call husky_fnc_varToStr;
                    };
                    _lInv lbAdd format["[%1] - %2",_val,_name];
                    _lInv lbSetData [(lbSize _lInv)-1,(_x select 1)];
                    _lInv lbSetTooltip [lbSize(_lInv)-1,format ["%1 - %3: %2",_name,_val,(["Amount"] call cat_Lockergang_fnc_getText)]];
                    if (!(_icon isEqualTo "")) then {
                        _lInv lbSetPicture [(lbSize _lInv)-1,_icon];
                    };
                    _lInv lbSetValue [(lbSize _lInv)-1,_val];
                };
            };
        };
        default {
            if ((_x select 0) isEqualTo _type) then {
                private _val = (_x select 2);
                if (_val > 0) then {
                    private _section = switch (true) do {
                        case (isClass(configFile >> "CfgMagazines" >> (_x select 1))): {"CfgMagazines"};
                        case (isClass(configFile >> "CfgWeapons" >> (_x select 1))): {"CfgWeapons"};
                        case (isClass(configFile >> "CfgVehicles" >> (_x select 1))): {"CfgVehicles"};
                        case (isClass(configFile >> "CfgGlasses" >> (_x select 1))): {"CfgGlasses"};
                        default {"CfgWeapons"};
                    };
                    private _name = (getText(configFile >> _section >> (_x select 1) >> "displayName"));
                    if (!(_section isEqualTo "CfgMagazines")) then {
                        _lInv lbAdd format["[%1] - %2",_val,_name];
                        _lInv lbSetData [(lbSize _lInv)-1,(_x select 1)];
                        _lInv lbSetTooltip [lbSize(_lInv)-1,format ["%1 - %3: %2",_name,_val,(["Amount"] call cat_Lockergang_fnc_getText)]];
                        _icon = (getText(configFile >> _section >> (_x select 1) >> "picture"));
                        if (!(_icon isEqualTo "")) then {
                            _lInv lbSetPicture [(lbSize _lInv)-1,_icon];
                        };
                        _lInv lbSetValue [(lbSize _lInv)-1,_val];
                    } else {
                        _lInv lbAdd format["[%1] - (%3) %2",_val,_name,(_x select 3)];
                        _lInv lbSetData [(lbSize _lInv)-1,format ["%1,%2",(_x select 1),(_x select 3)]];
                        _lInv lbSetTooltip [lbSize(_lInv)-1,format ["%1 - %4: %2 - %5: %3",_name,_val,(_x select 3),(["Amount"] call cat_Lockergang_fnc_getText),(["AmmoCount"] call cat_Lockergang_fnc_getText)]];
                        _icon = (getText(configFile >> _section >> (_x select 1) >> "picture"));
                        if (!(_icon isEqualTo "")) then {
                            _lInv lbSetPicture [(lbSize _lInv)-1,_icon];
                        };
                        _lInv lbSetValue [(lbSize _lInv)-1,(_x select 3)];
                    };
                };
            };
        };
    };
} forEach (group player getVariable "cat_Lockergang_trunk");
if (_mode isEqualTo 2) then {
    ctrlEnable[50051,false];
    ctrlEnable[50071,false];
    ctrlEnable[50081,false];
    ctrlShow[50091,false];
    ctrlShow[50101,false];
    ctrlShow[50271,true];
    (_display displayCtrl 50041) ctrlSetText format[["ChooseVehicle"] call cat_Lockergang_fnc_getText];
    (_display displayCtrl 50271) ctrlSetText format[["SelectVehicle"] call cat_Lockergang_fnc_getText];
    {
        if (((player distance _x) <  getNumber(missionConfigFile >> "Cation_Lockergang" >> "distanceVehicle")) && !(_x isKindOf "House_F")) then {
            _pInv lbAdd getText(configFile >> "CfgVehicles" >> (typeOf _x) >> "displayName");
            private _pic = getText(configFile >> "CfgVehicles" >> (typeOf _x) >> "picture");        
            if (_pic != "pictureStaticObject") then {
                _pInv lbSetPicture [(lbSize _pInv)-1,_pic];
            };
            _pInv lbSetData [(lbSize _pInv)-1,(netId _x)];
        };
    } forEach husky_vehicles;
} else {
    ctrlEnable[50051,true];
    ctrlEnable[50071,true];
    ctrlEnable[50081,true];
    ctrlShow[50091,true];
    ctrlShow[50101,true];
    ctrlShow[50271,false];
};
if ((lbSize _lInv) isEqualTo 0) then {
    _lInv lbAdd format [["NoItems"] call cat_Lockergang_fnc_getText];
    _lInv lbSetData [(lbSize _lInv)-1,"leer"];
    ctrlEnable[50071,false];
};
if ((lbSize _pInv) isEqualTo 0) then {    
    if (_mode isEqualTo 2) then {
        _pInv lbAdd format [["NoVehicles"] call cat_Lockergang_fnc_getText];
    } else {
        _pInv lbAdd format [["NoItems"] call cat_Lockergang_fnc_getText];
    };
    _pInv lbSetData [(lbSize _pInv)-1,"leer"];
    ctrlEnable[50101,false];
    ctrlEnable[50271,false];
} else {
    ctrlEnable[50101,true];
    ctrlEnable[50271,true];
};
if (_type isEqualTo 1) then {
    ctrlEnable[50081,false];
    (_display displayCtrl 50081) ctrlSetText "1";
} else {
    if (_mode isEqualTo 0) then {
        ctrlEnable[50081,true];
    };
};

(group player) setVariable ["cat_Lockergang_carryWeight",_carryWeight,true];
private _maxWeight = ((group player) getVariable "cat_Lockergang_maxWeight");
if (_maxWeight > 0) then {
    ((uiNamespace getVariable ["LockerMenuGang",displayNull]) displayCtrl 50021) progressSetPosition (_carryWeight / _maxWeight);
};
(_display displayCtrl 50251) ctrlSetText format[(["Weight"] call cat_Lockergang_fnc_getText)+ " %1/%2",[_carryWeight] call husky_fnc_numberText,[_maxWeight] call husky_fnc_numberText];

locker_in_use = false;