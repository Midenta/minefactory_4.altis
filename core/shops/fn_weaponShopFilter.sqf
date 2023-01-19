#include "..\..\script_macros.hpp"
/*
File: fn_weaponShopFilter.sqf
Author: Deathman / MrFrost

Description:
Setup the Menu for the Weapon Shop and added WeaponShop
*/

private _index = (lbCurSel 38402);
private _shop = uiNamespace getVariable ["Weapon_Shop",""];
if (_index isEqualTo -1 || {_shop isEqualTo ""}) exitWith {systemChat "Bad Data Filter"; closeDialog 0;}; //Bad data passing.

uiNamespace setVariable ["Weapon_Shop_Filter",_index];
//Setup List Control & Purge it.

private _priceTag = ((findDisplay 38400) displayCtrl 38404);
_priceTag ctrlSetStructuredText parseText "";

private _display = findDisplay 38400;
private _treelost = _display displayCtrl 38403;
tvClear _treelost;
private _wmalist = ("true" configClasses (missionConfigFile >> "WeaponShops" >> _shop >> "Catogary"));
private "_config";
private "_wmatreeidp";
switch (_index) do {

    case 0: {
        {
            ((findDisplay 38400) displayCtrl 38405) ctrlSetText localize "STR_Global_Buy";
            ((findDisplay 38400) displayCtrl 38505) ctrlSetText localize "STR_Global_BuyEC";
            private _catname = getText(_x >> "displayName");
            private _conditionss = getText(_x >> "conditions");
            if ([_conditionss] call husky_fnc_levelCheck) then {
            _wmatreeidp = _treelost tvAdd [[], _catname];
            };
            {
                _bool = [_x] call husky_fnc_levelCheck;
                if (_bool) then {
                    _wmainfo = [_x select 0] call husky_fnc_fetchCfgDetails;
                    _wmatext = format["%1",if (!((_x select 1) isEqualTo "")) then {_x select 1} else {_wmainfo select 1}];
                    _wmatreeidu = _treelost tvAdd [[_wmatreeidp], _wmatext];
                    _treelost tvSetData [[_wmatreeidp,_wmatreeidu], _wmainfo select 0];
                    _treelost tvSetValue [[_wmatreeidp,_wmatreeidu], _x select 2];
                    private _newpath = [_wmatreeidp] + [_wmatreeidu];
                    _treelost tvSetPicture [_newpath,_wmainfo select 2];
                    if ((_x select 2) <= c126) then {
                        _treelost tvSetColor [_newpath, [0.059,0.82,0.173,1]];
                    } else {
                        _treelost tvSetColor [_newpath, [0.82,0.122,0.059,1]];
                    };
                };
            } forEach getArray (_x >> "items");
        } forEach _wmalist;
    };

    case 1: {
        _config = [];
        private _listedItems = [];
        //Go through weapons
        if (primaryWeapon player != "") then {_config pushBack primaryWeapon player;};
        if (secondaryWeapon player != "") then {_config pushBack secondaryWeapon player;};
        if (handgunWeapon player != "") then {_config pushBack handgunWeapon player;};

        //Go through items
        _config = _config + primaryWeaponItems player;
        _config = _config + (assignedItems player);
        _config = _config + (uniformItems player);
        _config = _config + (vestItems player);
        _config = _config + (backpackItems player);

        ((findDisplay 38400) displayCtrl 38405) ctrlSetText localize "STR_Global_Sell";
        ((findDisplay 38400) displayCtrl 38505) ctrlSetText localize "STR_Global_SellEC";
        ctrlShow [38402,true];
        ctrlShow [38406,false];
        ctrlShow [38407,false];
        private "_wmatreeidp";
        private "_wmatreeidu";
        private "_sellprice";
        {
            private _catname = getText(_x >> "displayName");
             _wmatreeidp = _treelost tvAdd [[], _catname];
            {
                _y = [_x];
                {
                    if(!(_x in _listedItems) && _x !="") then {
                        _iS = [_x,_y] call TON_fnc_index;
                        if !(_iS isEqualTo -1) then {
                                _z = _y select _iS;
                                _sellprice = _z select 3;
                                if(!((_z) isEqualTo -1)) then {
                                    _bool = [_z] call husky_fnc_levelCheck;
                                    if (_bool) then {
                                        _itemInfo = [_x] call husky_fnc_fetchCfgDetails;
                                        _listedItems pushBack _x;

                                        _itemCount = {_x == (_itemInfo select 0)} count _config;
                                        if (_itemCount > 1) then {
                                            _wmatreeidu = _treelost tvAdd [[_wmatreeidp], format["[%2] %1",_itemInfo select 1,_itemCount]];
                                        } else {
                                            _wmatreeidu = _treelost tvAdd [[_wmatreeidp], format["%1",_itemInfo select 1]];
                                        };
                                        _treelost tvSetData [[_wmatreeidp,_wmatreeidu], _itemInfo select 0];
                                        _treelost tvSetValue [[_wmatreeidp,_wmatreeidu], _sellprice];
                                        private _newpath = [_wmatreeidp] + [_wmatreeidu];
                                        _treelost tvSetPicture [_newpath,_itemInfo select 2];
                                    };
                                };
                        };
                    };
                } count _config;
            } forEach getArray (_x >> "items");
        } forEach _wmalist;
    };
};
