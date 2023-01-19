#include "..\..\script_macros.hpp"
/*
    File: fn_virt_update.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Update and fill the virtual shop menu.
*/
disableSerialization;
//private _index = (lbCurSel 38402);
//if (_index isEqualTo -1) exitWith {systemChat "Bad Data Filter"; closeDialog 0;};
//uiNamespace setVariable ["VitemShop_Shop_Filter",_index];
//Setup control vars.
private _item_list = CONTROL(38400,38403);
private _inv_list = CONTROL(38400,384444);

//Purge list
tvClear _item_list;
tvClear _inv_list;


if (!isClass(missionConfigFile >> "VirtualShops" >> husky_shop_type)) exitWith {closeDialog 0; hint localize "STR_NOTF_ConfigDoesNotExist";}; //Make sure the entry exists..
ctrlSetText[2403,localize (M_CONFIG(getText,"VirtualShops",husky_shop_type,"name"))];
private _listitems = ("true" configClasses (missionConfigFile >> "VirtualShops" >> husky_shop_type >> "Catogary"));
private "_treeid";
{
    private _catname = getText(_x >> "displaname");
    private _conditionss = getText(_x >> "conditions");
    if ([_conditionss] call husky_fnc_levelCheck) then {
    _treeid = _item_list tvAdd [[], _catname];
    };
    {
        private _item = _x;
        private _displayname = getText(missionConfigFile >> "VirtualItems" >> _item >> "displayName");
        private _buyprice = getnumber(missionConfigFile >> "VirtualItems" >> _item >> "buyPrice");
        private _pic = getText(missionConfigFile >> "VirtualItems" >> _item >> "icon");
        if (!(_buyprice isEqualTo -1)) then {
            private _text = format["%1 - %2€",(localize _displayname),[_buyprice] call husky_fnc_numberText];
            private _undertreeid = _item_list tvAdd [[_treeid], _text];
            _item_list tvSetData [ [_treeid,_undertreeid],_item];
            _item_list tvSetValue [ [_treeid,_undertreeid],_buyprice];
            private _newpath = [_treeid] + [_undertreeid];
            if (!(_pic isEqualTo "")) then {
                _item_list tvSetPicture  [_newpath,_pic];
            };
            if (_buyprice <= c126) then {
                _item_list tvSetColor [_newpath, [0.059,0.82,0.173,1]];
            } else {
                _item_list tvSetColor [_newpath, [0.82,0.122,0.059,1]];
            };
        };
    } forEach getArray (_x >> "items");
} forEach _listitems;
tvExpandAll _item_list;
private "_treeid2";
{
    private _catname1 = getText(_x >> "displaname");
    private _treeid2 = _inv_list tvAdd [[], _catname1];
    {
        private _displayname1 = getText(missionConfigFile >> "VirtualItems" >> _x >> "displayName");
        _val1 = ITEM_VALUE(_x);
        private _pic1 = getText(missionConfigFile >> "VirtualItems" >> _x >> "icon");
        if (_val1 > 0) then {
            private _text1 = format["%1 - [x%2]",(localize _displayname1),_val1];
            private _undertreeid1 = _inv_list tvAdd [[_treeid2], _text1];
            _inv_list tvSetData [ [_treeid2,_undertreeid1],_x];
            if (!(_pic1 isEqualTo "")) then {
                private _newpath1 = [_treeid2] + [_undertreeid1];
                _inv_list tvSetPicture  [_newpath1,_pic1];
            };
        };
    } forEach getArray (_x >> "items");
} forEach _listitems;
tvExpandAll _inv_list;
