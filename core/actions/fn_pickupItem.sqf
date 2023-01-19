#include "..\..\script_macros.hpp"
#define INUSE(ENTITY) ENTITY setVariable ["inUse",false,true]
/*
    File: fn_pickupItem.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Master handling for picking up an item.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!	
*/
private ["_itemInfo","_itemName","_illegal","_diff"];
if ((time - husky_action_delay) < 2) exitWith {hint localize "STR_NOTF_ActionDelay"; INUSE(_this);};
if (isNull _this || {player distance _this > 3}) exitWith {INUSE(_this);};

_itemInfo = _this getVariable ["item",[]]; if (count _itemInfo isEqualTo 0) exitWith {deleteVehicle _this;};
_illegal = ITEM_ILLEGAL(_itemInfo select 0);
_itemName = ITEM_NAME(_itemInfo select 0);
if (isLocalized _itemName) then {
    _itemName = (localize _itemName);
};

/*
if (playerSide isEqualTo west && _illegal isEqualTo 1) exitWith {
    titleText[format [localize "STR_NOTF_PickedEvidence",_itemName,[round(ITEM_SELLPRICE(_itemInfo select 0) / 2)] call husky_fnc_numberText],"PLAIN"];
    b126 = b126 + round(ITEM_SELLPRICE(_itemInfo select 0) / 2);
    deleteVehicle _this;
    [1] call SOCK_fnc_updatePartial;
    husky_action_delay = time;
};
*/


husky_action_delay = time;
_diff = [(_itemInfo select 0),(_itemInfo select 1),husky_carryWeight,husky_maxWeight] call husky_fnc_calWeightDiff;
if (_diff <= 0) exitWith {hint "Dein Inventar ist voll, du kannst nichts mehr abbauen/sammeln"; INUSE(_this);};

if (!(_diff isEqualTo (_itemInfo select 1))) then {
    if ([true,(_itemInfo select 0),_diff] call husky_fnc_handleInv) then {
        player playMove "AinvPknlMstpSlayWrflDnon";

        _this setVariable ["item",[(_itemInfo select 0),(_itemInfo select 1) - _diff],true];
        titleText[format [localize "STR_NOTF_Picked",_diff,_itemName],"PLAIN"];
        INUSE(_this);
    } else {
        INUSE(_this);
    };
} else {
    if ([true,(_itemInfo select 0),(_itemInfo select 1)] call husky_fnc_handleInv) then {
        deleteVehicle _this;
        //waitUntil{isNull _this};
        player playMove "AinvPknlMstpSlayWrflDnon";

        titleText[format [localize "STR_NOTF_Picked",_diff,_itemName],"PLAIN"];
    } else {
        INUSE(_this);
    };
};

[getPlayerUID player, "pickedUp", format ["%1 - %2 hat %3 %4 aufgehoben.",profileName,(getPlayerUID player),_diff,_itemName]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];


if (husky_SETTINGS(getNumber,"player_advancedLog") isEqualTo 1) then {
    if (husky_SETTINGS(getNumber,"battlEye_friendlyLogging") isEqualTo 1) then {
        advanced_log = format [localize "STR_DL_AL_pickedUp_BEF",_diff,_itemName];
    } else {
        advanced_log = format [localize "STR_DL_AL_pickedUp",profileName,(getPlayerUID player),_diff,_itemName];
    };
    publicVariableServer "advanced_log";
};
