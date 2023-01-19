#include "..\..\..\script_macros.hpp"
/*
	author: Risk
	description: opens some nasty menu
	returns: nothing
*/
disableSerialization;

//Setup control vars.
private _item_list = CONTROL(90700,97001);
ctrlShow [90704,false];
ctrlShow [90705,false];
ctrlShow [90706,false];
ctrlShow [90707,false];
ctrlShow [90708,false];
ctrlShow [90709,false];
ctrlShow [90710,false];
ctrlShow [90711,false];
ctrlShow [90712,false];

//Purge list
lbClear _item_list;
if (!isClass(missionConfigFile >> "husky_market" >> "marketList")) exitWith {closeDialog 0; hint localize "STR_NOTF_ConfigDoesNotExist";};
private _shopItems = M_CONFIG(getArray,"husky_market","marketList","items");

{
    private _displayName = M_CONFIG(getText,"VirtualItems",_x,"displayName");
		_item_list lbAdd format ["%1",(localize _displayName)];
        _item_list lbSetData [(lbSize _item_list)-1,_x];
        _icon = M_CONFIG(getText,"VirtualItems",_x,"icon");
        if (!(_icon isEqualTo "")) then {
            _item_list lbSetPicture [(lbSize _item_list)-1,_icon];
        };
} forEach _shopItems;
if (husky_SETTINGS(getNumber,"isSorting") isEqualTo 1) then{
    lbSort _item_list;
};