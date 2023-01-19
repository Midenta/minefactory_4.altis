#include "..\..\..\script_macros.hpp"
/*
	author: Risk
	description: opens some nasty menu
	returns: nothing
*/
disableSerialization;

//Setup control vars.
private _license_list = CONTROL(80700,87001);
ctrlShow [80704,false];
ctrlShow [80705,false];
ctrlShow [80706,false];
ctrlShow [80707,false];
ctrlShow [80708,false];
ctrlShow [80709,false];
ctrlShow [80710,false];
ctrlShow [80711,false];
ctrlShow [80712,false];

//Purge list
lbClear _license_list;
if (!isClass(missionConfigFile >> "husky_license" >> "licenseList")) exitWith {closeDialog 0; hint localize "STR_NOTF_ConfigDoesNotExist";};
ctrlSetText[87003,M_CONFIG(getText,"husky_license","licenseList","name")];
private _licenseItems = M_CONFIG(getArray,"husky_license","licenseList","items");

{
    private _iLegal = M_CONFIG(getText,"Licenses",_x,"illegal");
    private _displayName = M_CONFIG(getText,"Licenses",_x,"displayName");
		_license_list lbAdd format ["%1",(localize _displayName)];
        _license_list lbSetData [(lbSize _license_list)-1,_x];
        _icon = M_CONFIG(getText,"VirtualItems",_x,"icon");
        if (!(_icon isEqualTo "")) then {
            _license_list lbSetPicture [(lbSize _license_list)-1,_icon];
        };
} forEach _licenseItems;

if (husky_SETTINGS(getNumber,"isSorting") isEqualTo 1) then{
    lbSort _license_list;
};