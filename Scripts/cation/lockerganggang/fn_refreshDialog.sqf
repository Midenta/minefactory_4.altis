/*
    File: fn_refreshDialog.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description: Used as a refresher for locker inventory.
*/
if(((group player) getVariable "gang_id") isEqualTo -1) exitWith {hint "Du bist in keiner Gang";};
if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed || husky_action_inUse) exitWith {closeDialog 0;};
if ((getNumber(missionConfigFile >> "Cation_Lockerganggang" >> "version")) > 4) then {
    if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {closeDialog 0;};
};
disableSerialization;

if (isNull (findDisplay 500012)) exitWith {};

private _display = findDisplay 500012;
private _lInv = _display displayCtrl 500512;
private _pInv = _display displayCtrl 500612;
lbClear _lInv;
lbClear _pInv;
private _level = ((group player) getVariable "cat_Lockerganggang_level");
private _sizePrice = (getArray(missionConfigFile >> "Cation_Lockerganggang" >> "locker_size_price"));

if (_level >= count _sizePrice) then {
    ctrlShow [501212,false];
};

private _type = _display getVariable ["type",0];
private _mode = _display getVariable ["mode",0];
if !(_mode isEqualTo 1) then {
    cat_Lockerganggang_vehicle = objNull;
} else {
    if (((player distance cat_Lockerganggang_vehicle) > getNumber(missionConfigFile >> "Cation_Lockerganggang" >> "distanceVehicle")) && {!isNull cat_Lockerganggang_vehicle}) then {
        hint format [["DistanceVehicle"] call cat_Lockerganggang_fnc_getText,getNumber(missionConfigFile >> "Cation_Lockerganggang" >> "distanceVehicle")];
        [0] call cat_Lockerganggang_fnc_switchDisplayMode;
    };
};

ctrlShow [502612,false];

if (_mode isEqualTo 0) then {
    ctrlShow[501312,true];
    ctrlShow[501412,true];
    ctrlShow[501512,true];
    ctrlShow[501612,true];
    ctrlShow[501712,true];
    ctrlShow[501812,true];
    ctrlShow[501912,true];
    ctrlShow[502012,true];
    private _items = [];
    if !(_type isEqualTo 0) then {
        (_display displayCtrl 500412) ctrlSetText format["%1",["PlayerInventory"] call cat_Lockerganggang_fnc_getText];
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
                        ctrlShow [502612,true];
                        (_display displayCtrl 502612) ctrlSetText format[["WarningClothing"] call cat_Lockerganggang_fnc_getText];
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
                    ctrlShow [502612,true];
                    (_display displayCtrl 502612) ctrlSetText format[["WarningWeapon"] call cat_Lockerganggang_fnc_getText];
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
                            private _index = [_x select 0,_items,-1,-1] call cat_Lockerganggang_fnc_index;
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
                        private _index = [_x select 0,_items,2,_x select 2] call cat_Lockerganggang_fnc_index;
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
                                private _index = [_x select 0,_items,-1,-1] call cat_Lockerganggang_fnc_index;
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
                        private _index = [_x select 0,_items,-1,-1] call cat_Lockerganggang_fnc_index;
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
                _pInv lbSetTooltip [lbSize(_pInv)-1,format ["%1 - %3: %2",(getText(configFile >> _section >> (_x select 0) >> "displayName")),(_x select 1),(["Amount"] call cat_Lockerganggang_fnc_getText)]];
                _pInv lbSetData [(lbSize _pInv)-1,(_x select 0)];
            } else {
                _pInv lbAdd format["[%2] - (%3) %1",(getText(configFile >> _section >> (_x select 0) >> "displayName")),(_x select 1),(_x select 2)];
                _pInv lbSetTooltip [lbSize(_pInv)-1,format ["%1 - %4: %2 - %5: %3",(getText(configFile >> _section >> (_x select 0) >> "displayName")),(_x select 1),(_x select 2),(["Amount"] call cat_Lockerganggang_fnc_getText),(["AmmoCount"] call cat_Lockerganggang_fnc_getText)]];
                _pInv lbSetData [(lbSize _pInv)-1,format ["%1,%2",(_x select 0),(_x select 2)]];
            };
            _pInv lbSetValue [(lbSize _pInv)-1,(_x select 1)];
			_icon = (getText(configFile >> _section >> (_x select 0) >> "picture"));
            if (!(_icon isEqualTo "")) then {
                _pInv lbSetPicture [(lbSize _pInv)-1,_icon];
            };
        } forEach _items;
    } else {
        (_display displayCtrl 500412) ctrlSetText format["%1 (%2/%3)",["PlayerInventory"] call cat_Lockerganggang_fnc_getText,husky_carryWeight,husky_maxWeight];
        if ((getNumber(missionConfigFile >> "Cation_Lockerganggang" >> "version")) > 3) then {
            _items = ("true" configClasses (missionConfigFile >> "VirtualItems"));
        } else {
            _items = husky_inv_items;
        };
        {
            private _val = 0;
            if ((getNumber(missionConfigFile >> "Cation_Lockerganggang" >> "version")) > 3) then {
                _val = missionNamespace getVariable [format["husky_inv_%1",(getText(missionConfigFile >> "VirtualItems" >> (configName _x) >> "variable"))],0];
            } else {
                _val = missionNamespace getVariable [_x,0];
            };
            if (_val > 0) then {
                private _name = "";
                private _icon = "";
                private _var = "";
                if ((getNumber(missionConfigFile >> "Cation_Lockerganggang" >> "version")) > 3) then {
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
                _pInv lbSetTooltip [lbSize(_pInv)-1,format ["%1 - %3: %2",_name,_val,(["Amount"] call cat_Lockerganggang_fnc_getText)]];
                if (!(_icon isEqualTo "")) then {
                    _pInv lbSetPicture [(lbSize _pInv)-1,_icon];
                };
                _pInv lbSetValue [(lbSize _pInv)-1,_val];
            };
        } forEach _items;
    };
} else {
    ctrlShow[501312,true];
    ctrlShow[501412,true];
    ctrlShow[503412,true];
    ctrlShow[501512,false];
    ctrlShow[501612,false];
    ctrlShow[503612,false];
    ctrlShow[501712,false];
    ctrlShow[501812,false];
    ctrlShow[503812,false];
    ctrlShow[501912,false];
    ctrlShow[502012,false];
    ctrlShow[504012,false];
    if (_mode isEqualTo 1) then {
        (_display displayCtrl 500412) ctrlSetText format["%1 (%2/%3)",["VehicleInventory"] call cat_Lockerganggang_fnc_getText,(([cat_Lockerganggang_vehicle] call husky_fnc_vehicleWeight) select 1),(([cat_Lockerganggang_vehicle] call husky_fnc_vehicleWeight) select 0)];
            
        {
            private _val = (_x select 1);
            if (_val > 0) then {
                private _name = "";
                private _icon = "";
                if ((getNumber(missionConfigFile >> "Cation_Lockerganggang" >> "version")) > 3) then {
                    _name = getText(missionConfigFile >> "VirtualItems" >> (_x select 0) >> "displayName");
                    _name = localize _name;
                    _icon = getText(missionConfigFile >> "VirtualItems" >> (_x select 0) >> "icon");
                } else {
                    _name = [([(_x select 0),0] call husky_fnc_varHandle)] call husky_fnc_varToStr;
                };
                _pInv lbAdd format["[%1] - %2",_val,_name];
                _pInv lbSetData [(lbSize _pInv)-1,(_x select 0)];
                _pInv lbSetTooltip [lbSize(_pInv)-1,format ["%1 - %3: %2",_name,_val,(["Amount"] call cat_Lockerganggang_fnc_getText)]];
                if (!(_icon isEqualTo "")) then {
                    _pInv lbSetPicture [(lbSize _pInv)-1,_icon];
                };
                _pInv lbSetValue [(lbSize _pInv)-1,_val];
            };
        } forEach ((cat_Lockerganggang_vehicle getVariable ["Trunk",[]]) select 0);
    };
};
private _carryWeight = 0;
{
    private _val = (_x select 2);
    _carryWeight = _carryWeight + (([_x select 1,_x select 0] call cat_Lockerganggang_fnc_itemWeight) * _val);
    switch (_type) do {
        case 0: {
            if ((_x select 0) isEqualTo _type) then {
                if (_val > 0) then {
                    private _name = "";
                    private _icon = "";
                    if ((getNumber(missionConfigFile >> "Cation_Lockerganggang" >> "version")) > 3) then {
                        _name = getText(missionConfigFile >> "VirtualItems" >> (_x select 1) >> "displayName");
                        _name = localize _name;
                        _icon = getText(missionConfigFile >> "VirtualItems" >> (_x select 1) >> "icon");
                    } else {
                        _name = [([(_x select 1),0] call husky_fnc_varHandle)] call husky_fnc_varToStr;
                    };
                    _lInv lbAdd format["[%1] - %2",_val,_name];
                    _lInv lbSetData [(lbSize _lInv)-1,(_x select 1)];
                    _lInv lbSetTooltip [lbSize(_lInv)-1,format ["%1 - %3: %2",_name,_val,(["Amount"] call cat_Lockerganggang_fnc_getText)]];
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
                        _lInv lbSetTooltip [lbSize(_lInv)-1,format ["%1 - %3: %2",_name,_val,(["Amount"] call cat_Lockerganggang_fnc_getText)]];
                        _icon = (getText(configFile >> _section >> (_x select 1) >> "picture"));
                        if (!(_icon isEqualTo "")) then {
                            _lInv lbSetPicture [(lbSize _lInv)-1,_icon];
                        };
                        _lInv lbSetValue [(lbSize _lInv)-1,_val];
                    } else {
                        _lInv lbAdd format["[%1] - (%3) %2",_val,_name,(_x select 3)];
                        _lInv lbSetData [(lbSize _lInv)-1,format ["%1,%2",(_x select 1),(_x select 3)]];
                        _lInv lbSetTooltip [lbSize(_lInv)-1,format ["%1 - %4: %2 - %5: %3",_name,_val,(_x select 3),(["Amount"] call cat_Lockerganggang_fnc_getText),(["AmmoCount"] call cat_Lockerganggang_fnc_getText)]];
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
} forEach (group player getVariable "cat_Lockerganggang_trunk");
if (_mode isEqualTo 2) then {
    ctrlEnable[500512,false];
    ctrlEnable[500712,false];
    ctrlEnable[500812,false];
    ctrlShow[500912,false];
    ctrlShow[501012,false];
    ctrlShow[502712,true];
    (_display displayCtrl 500412) ctrlSetText format[["ChooseVehicle"] call cat_Lockerganggang_fnc_getText];
    (_display displayCtrl 502712) ctrlSetText format[["SelectVehicle"] call cat_Lockerganggang_fnc_getText];
    {
        if (((player distance _x) <  getNumber(missionConfigFile >> "Cation_Lockerganggang" >> "distanceVehicle")) && !(_x isKindOf "House_F")) then {
            _pInv lbAdd getText(configFile >> "CfgVehicles" >> (typeOf _x) >> "displayName");
            private _pic = getText(configFile >> "CfgVehicles" >> (typeOf _x) >> "picture");        
            if (_pic != "pictureStaticObject") then {
                _pInv lbSetPicture [(lbSize _pInv)-1,_pic];
            };
            _pInv lbSetData [(lbSize _pInv)-1,(netId _x)];
        };
    } forEach husky_vehicles;
} else {
    ctrlEnable[500512,true];
    ctrlEnable[500712,true];
    ctrlEnable[500812,true];
    ctrlShow[500912,true];
    ctrlShow[501012,true];
    ctrlShow[502712,false];
};
if ((lbSize _lInv) isEqualTo 0) then {
    _lInv lbAdd format [["NoItems"] call cat_Lockerganggang_fnc_getText];
    _lInv lbSetData [(lbSize _lInv)-1,"leer"];
    ctrlEnable[500712,false];
};
if ((lbSize _pInv) isEqualTo 0) then {    
    if (_mode isEqualTo 2) then {
        _pInv lbAdd format [["NoVehicles"] call cat_Lockerganggang_fnc_getText];
    } else {
        _pInv lbAdd format [["NoItems"] call cat_Lockerganggang_fnc_getText];
    };
    _pInv lbSetData [(lbSize _pInv)-1,"leer"];
    ctrlEnable[501012,false];
    ctrlEnable[502712,false];
} else {
    ctrlEnable[501012,true];
    ctrlEnable[502712,true];
};
if (_type isEqualTo 1) then {
    ctrlEnable[500812,false];
    (_display displayCtrl 500812) ctrlSetText "1";
} else {
    if (_mode isEqualTo 0) then {
        ctrlEnable[500812,true];
    };
};

(group player) setVariable ["cat_Lockerganggang_carryWeight",_carryWeight,true];
private _maxWeight = ((group player) getVariable "cat_Lockerganggang_maxWeight");
if (_maxWeight > 0) then {
    ((uiNamespace getVariable ["LockerMenuGanggang",displayNull]) displayCtrl 500212) progressSetPosition (_carryWeight / _maxWeight);
};
(_display displayCtrl 502512) ctrlSetText format[(["Weight"] call cat_Lockerganggang_fnc_getText)+ " %1/%2",[_carryWeight] call husky_fnc_numberText,[_maxWeight] call husky_fnc_numberText];

locker_in_use = false;