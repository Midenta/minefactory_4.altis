#include "..\..\script_macros.hpp"
/*
    File: fn_removeItem.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Removes the selected item & amount to remove from the players
    virtual inventory.
*/
private ["_data","_value","_obj"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;



if (_data isEqualTo "") exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast nichts zum Entsorgen ausgewählt.</t>";};
if (!([_value] call TON_fnc_isnumber)) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast keine echte Zahl eingegeben.</t>";};
if (parseNumber(_value) <= 0) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du musst einen tatsächlichen Wert eigeben, um diese löschen zu können.</t>";};
if (ITEM_ILLEGAL(_data) isEqualTo 1 && ([west,visiblePosition player,100] call husky_fnc_nearUnits)) exitWith {titleText[localize "STR_NOTF_illegalItemCannotDispose","PLAIN"]};
if !(isNull objectParent player) exitWith {titleText[localize "STR_NOTF_cannotRemoveInVeh","PLAIN"]};
if (!([false,_data,(parseNumber _value)] call husky_fnc_handleInv)) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du konntest nicht so eine große Menge von diesem Gegenstand entsorgen. Hast du vielleicht nicht so viele davon?</t>";};

hint format [localize "STR_NOTF_removedFromInventory",(parseNumber _value),(localize ITEM_NAME(_data))];

[] call husky_fnc_p_updateMenu;

/*
private ["_data","_value","_obj"];
disableSerialization;
_data = lbData[2401,(lbCurSel 2401)];
_value = ctrlText 2410;

if (_data isEqualTo "") exitWith {hint localize "STR_NOTF_didNotSelectToRemove";};
if (!([_value] call TON_fnc_isnumber)) exitWith {hint localize "STR_NOTF_notNumberFormat";};
if (parseNumber(_value) <= 0) exitWith {hint localize "STR_NOTF_enterAmountRemove";};
if (ITEM_ILLEGAL(_data) isEqualTo 1 && ([west,visiblePosition player,100] call husky_fnc_nearUnits)) exitWith {titleText[localize "STR_NOTF_illegalItemCannotDispose","PLAIN"]};
if !(isNull objectParent player) exitWith {titleText[localize "STR_NOTF_cannotRemoveInVeh","PLAIN"]};
if (!([false,_data,(parseNumber _value)] call husky_fnc_handleInv)) exitWith {hint localize "STR_NOTF_couldNotRemoveThatMuch";};

hint format [localize "STR_NOTF_removedFromInventory",(parseNumber _value),(localize ITEM_NAME(_data))];

[] spawn GUI_fnc_updateinventar;
*/
