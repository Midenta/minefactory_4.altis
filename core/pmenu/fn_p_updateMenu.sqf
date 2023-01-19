#include "..\..\script_macros.hpp"
/*
    File: fn_p_updateMenu.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Updates the player menu (Virtual Interaction Menu)

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_inv","_lic","_licenses","_near","_near_units","_mstatus","_shrt","_side","_struct"];
disableSerialization;

if (FETCH_CONST(husky_adminlevel) < 1) then {
    ctrlShow[2021,false];
};

_side = switch (playerSide) do {case west:{"cop"}; case civilian:{"civ"}; case independent:{"med"};};

_inv = CONTROL(2001,2005);
_lic = CONTROL(2001,2014);
_near = CONTROL(2001,2022);
_near_i = CONTROL(2001,2023);
_mstatus = CONTROL(2001,2015);
/*
_dialog = findDisplay 2001;
_lic = _dialog displayCtrl 2014;
*/
_struct = "";
lbClear _inv;
lbClear _near;
lbClear _near_i;
lbClear _lic;

//Near players
_near_units = [];
{ if (player distance _x < 10) then {_near_units pushBack _x};} forEach playableUnits;
{
    if (!isNull _x && alive _x && player distance _x < 10 && !(_x isEqualTo player)) then {
        _near lbAdd format ["%1 - %2",_x getVariable ["realname",name _x], side _x];
		//_near lbAdd format ["%1 - %2",_x getVariable ["steam64id",name _x], side _x];
        _near lbSetData [(lbSize _near)-1,str(_x)];
        _near_i lbAdd format ["%1 - %2",_x getVariable ["realname",name _x], side _x];
		//_near_i lbAdd format ["%1 - %2",_x getVariable ["steam64id",name _x], side _x];
        _near_i lbSetData [(lbSize _near)-1,str(_x)];
    };
} forEach _near_units;

//_mstatus ctrlSetStructuredText parseText format ["<t size='1' color='#ffa914' font='PuristaBold' align='center' >%1 �</t><br/><br/><t size='1' color='#ffa914' font='PuristaBold' align='center' >%2 �</t>",[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText];
//_mstatus ctrlSetStructuredText parseText format ["<img size='1.4' font='PuristaBold' image='icons\ico_bank.paa'/> <t size='1.2px'>%1€</t><br/><img size='1.4' font='PuristaBold' image='icons\ico_money.paa'/> <t size='1.2'>%2€</t>",[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText];
_mstatus ctrlSetStructuredText parseText format ["<img size='1.4' image='icons\ico_bank.paa'/> <t size='1.2px'>%1</t><br/><img size='1.4' image='icons\ico_money.paa'/> <t size='1.4'>%2</t><br/><img size='1.2' image='icons\uc-neu\huskycoin.paa'/> <t size='1.4'>%3</t>",[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText];
ctrlSetText[2009,format ["%1 / %2", husky_carryWeight, husky_maxWeight]];

{
    if (ITEM_VALUE(configName _x) > 0) then {
        _inv lbAdd format ["%2 [x%1]",ITEM_VALUE(configName _x),localize (getText(_x >> "displayName"))];
        _inv lbSetData [(lbSize _inv)-1,configName _x];
        _icon = M_CONFIG(getText,"VirtualItems",configName _x,"icon");
        if (!(_icon isEqualTo "")) then {
            _inv lbSetPicture [(lbSize _inv)-1,_icon];
        };
    };
} forEach ("true" configClasses (missionConfigFile >> "VirtualItems"));

{
 private _displayName = getText(_x >> "displayName");
 if (LICENSE_VALUE(configName _x,_side)) then {
     diag_log format ["X: %1 | Other: %2",_x,LICENSE_VALUE(configName _x,_side)];
    _lic lbAdd format ["%1",localize _displayName];
        if(getNumber (_x >> "illegal") isEqualTo 1) then {
            _lic lbSetColor[(lbSize _lic)-1,[1,0,0,1]];
        } else {
            _lic lbSetColor[(lbSize _lic)-1,[1,1,1,1]];
        };
 };
 false
} count (format ["getText(_x >> 'side') isEqualTo '%1'",_side] configClasses (missionConfigFile >> "Licenses"));
/* if (_struct isEqualTo "") then {
 _struct = "keine Lizenzen";
}; */

/* {
 private _displayName = getText(_x >> "displayName");
 if (LICENSE_VALUE(configName _x,_side)) then {
 private _color = if (getNumber (_x >> "illegal") isEqualTo 1) then {"#FF0000"} else {"#FFFFFF"};
	_struct = _struct + format ["<t color='%2'>%1</t><br/>",localize _displayName,_color];
 };
 false
} count (format ["getText(_x >> 'side') isEqualTo '%1'",_side] configClasses (missionConfigFile >> "Licenses"));
if (_struct isEqualTo "") then {
 _struct = "keine Lizenzen";
}; */

/* _lic ctrlSetStructuredText parseText format ["
<t size='0.9' font='PuristaLight'>
%1
</t>
",_struct];
 */
/*
private _ctrlPos = ctrlPosition _lic;
_ctrlPos set [3,(ctrltextheight _lic) min (safezoneH - (_ctrlPos select 1) + 0.13)];
_lic ctrlSetPosition _ctrlPos;
_lic ctrlCommit 0;
*/

/*
_lic ctrlSetStructuredText parseText format["<t size='0.8px'>%1</t>",_licTxt];
_lic ctrlSetPosition [0,0,0.1080105 * safezoneW,ctrlTextHeight _lic];
_lic ctrlCommit 0;
*/
/*
{
    _displayName = getText(_x >> "displayName");

    if (LICENSE_VALUE(configName _x,_side)) then {
        _struct = _struct + format ["%1<br/>",localize _displayName];
    };
} forEach (format ["getText(_x >> 'side') isEqualTo '%1'",_side] configClasses (missionConfigFile >> "Licenses"));

if (_struct isEqualTo "") then {
    _struct = "No Licenses";
};

_lic ctrlSetStructuredText parseText format ["
<t size='0.8px'>
%1
</t>
",_struct];*/
