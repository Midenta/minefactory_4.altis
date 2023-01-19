#include "..\..\script_macros.hpp"

/*
    File: fn_giveItem.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Gives the selected item & amount to the selected player and
    removes the item & amount of it from the players virtual
    inventory.
*/

ctrlShow [2002,false];

call {
    private _value = ctrlText 2010;

    if ((lbCurSel 2023) isEqualTo -1) exitWith {
        hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Niemand wurde ausgewählt!</t>";
    };

    if ((lbCurSel 2005) isEqualTo -1) exitWith {
        hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast keinen Gegenstand ausgewählt, um diesen weitergeben zu können.</t>";
    };


    private _unit = lbData [2023, lbCurSel 2023];
    _unit = call compile format ["%1",_unit];

    if (isNil "_unit") exitWith {
        hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Der ausgewählte Spieler ist nicht in Reichweite.</t>";
    };
    if (isNull _unit || {_unit isEqualTo player}) exitWith {};

    private _item = lbData [2005, lbCurSel 2005];

    if !([_value] call TON_fnc_isnumber) exitWith {
        hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast keine echte Zahl eingegeben.</t>";
    };
    if (parseNumber _value <= 0) exitWith {
        hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du musst einen tatsächlichen Wert eingeben, um diesen weitergeben zu können.</t>";
    };
    if !([false,_item, parseNumber _value] call husky_fnc_handleInv) exitWith {
        hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du konntest nicht so eine große Menge von diesem Gegenstand weitergeben. Hast du vielleicht nicht genug davon?</t>";
    };

    [_unit, _value, _item, player] remoteExecCall ["husky_fnc_receiveItem", _unit];
    private _type = M_CONFIG(getText,"VirtualItems",_item,"displayName");
    hint format [localize "STR_NOTF_youGaveItem", _unit getVariable ["realname", name _unit], _value, localize _type];
	//hint format [localize "STR_NOTF_youGaveItem",_unit getVariable ["steam64id",name _unit], _value, localize _type];

	[getPlayerUID player, "GaveItem", format ["%4 hat %1 %2 %3 gegeben.", name _unit, _value, localize _type, profileName]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

    [] call husky_fnc_p_updateMenu;
    [3] call SOCK_fnc_updatePartial;
};

ctrlShow[2002,true];
