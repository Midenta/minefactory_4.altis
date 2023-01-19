#include "..\..\script_macros.hpp"
/*
    File: fn_atmMenu.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Opens and manages the bank menu.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

	[localize "STR_Shop_Virt_NoNum", "fast", "red"] spawn husky_fnc_message;
*/
private ["_units","_type"];

if (!husky_use_atm) exitWith {
    hint format [localize "STR_Shop_ATMRobbed",(husky_SETTINGS(getNumber,"noatm_timer"))];
};

if (!dialog) then {
    if (!(createDialog "husky_atm_management")) exitWith {};
};

disableSerialization;
_units = CONTROL(2700,2703);

lbClear _units;
CONTROL(2700,2701) ctrlSetStructuredText parseText format ["<img size='1.7' image='icons\ico_bank.paa'/> %1 €<br/><img size='1.6' image='icons\ico_money.paa'/> %2 €",[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText];
//CONTROL(2700,2701) ctrlSetStructuredText parseText format ["<br/><br/>%1 €<br/><br/><br/><br/>%2 €",[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText];

{
    _name = _x getVariable ["realname",name _x];
    if (alive _x && (!(_name isEqualTo profileName))) then {
        switch (side _x) do {
            case west: {_type = "Cop"};
            case civilian: {_type = "Civ"};
            case independent: {_type = "Med"};
        };
        _units lbAdd format ["%1 (%2)",_x getVariable ["realname",name _x],_type];
        _units lbSetData [(lbSize _units)-1,str(_x)];
    };
} forEach playableUnits;

lbSetCurSel [2703,0];

(CONTROL(2700,2705)) ctrlEnable false;
(CONTROL(2700,2706)) ctrlEnable false;
