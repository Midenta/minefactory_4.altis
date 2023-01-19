#include "..\..\..\script_macros.hpp"
/*
	author: Risk
	description: opens some nasty menu
	returns: nothing
*/
disableSerialization;
//Setup control vars.
private _help_list = CONTROL(60700,67001);
ctrlShow [60704,false];
ctrlShow [60708,false];
ctrlShow [60709,false];

//Purge list
lbClear _help_list;

if (!isClass(missionConfigFile >> "husky_help_Menu" >> "husky_help")) exitWith {closeDialog 0; hint localize "STR_NOTF_ConfigDoesNotExist";};
private _helpText = M_CONFIG(getArray,"husky_help_Menu","husky_help","texts");

{
    private _displayName = M_CONFIG(getText,"husky_help_text",_x,"displayName");
		_help_list lbAdd format ["%1",_displayName];
        _help_list lbSetData [(lbSize _help_list)-1,_x];
        _icon = M_CONFIG(getText,"husky_help_text",_x,"icon");
        if (!(_icon isEqualTo "")) then {
            _help_list lbSetPicture [(lbSize _help_list)-1,_icon];
        };        
} forEach _helpText;
if (husky_SETTINGS(getNumber,"isSorting") isEqualTo 1) then{
    lbSort _help_list;
};