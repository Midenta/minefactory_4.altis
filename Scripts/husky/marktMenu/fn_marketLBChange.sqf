#include "..\..\..\script_macros.hpp"
/*
	author: Risk
	description: Ändert jedes mal den Text jenachdem was man auswählt.
	returns: nothing
*/
params[
    "_itemControl",
    "_itemIndex"
];
//Fetch some information.
private _itemName = _itemControl lbData _itemIndex;


private _itemBuyPrice       = M_CONFIG(getNumber,"VirtualItems",_itemName,"buyPrice");
private _itemDisplayName    = M_CONFIG(getText,"VirtualItems",_itemName,"displayName");
private _itemSellPrice      = M_CONFIG(getNumber,"VirtualItems",_itemName,"sellPrice");
private _itemWeight         = M_CONFIG(getNumber,"VirtualItems",_itemName,"weight");
private _itemDescription    = M_CONFIG(getText,"VirtualItems",_itemName,"description");

ctrlShow [90704,true];
ctrlShow [90705,true];
ctrlShow [90706,true];
ctrlShow [90707,true];
ctrlShow [90708,true];
ctrlShow [90709,true];
ctrlShow [90710,true];
ctrlShow [90711,true];
ctrlShow [90712,true];
ctrlSetText [90704, localize _itemDisplayName];
ctrlSetText [90710,format ["%1",_itemWeight]];

if (!(_itemBuyPrice isEqualTo -1)) then {
    ctrlSetText [90712,format ["%1€",[_itemBuyPrice] call husky_fnc_numberText]];
} else {
    ctrlSetText [90712, "N/A"];
};
if (!(_itemSellPrice isEqualTo -1)) then {
    ctrlSetText [90711,format ["%1€",[_itemSellPrice] call husky_fnc_numberText]];
} else {
    ctrlSetText [90711, "N/A"];
};
(CONTROL(90700,90709)) ctrlSetStructuredText parseText format["%1",_itemDescription];
