#include "..\..\..\script_macros.hpp"
/*
	author: Risk
	description: Ändert jedes mal den Text jenachdem was man auswählt.
	returns: nothing
*/
params[
    "_licenseControl",
    "_licenseIndex"
];
//Fetch some information.
private _licenseName = _licenseControl lbData _licenseIndex;

private _licenseDisplayName = M_CONFIG(getText,"Licenses",_licenseName,"displayName");
private _licenseBuyPrice = M_CONFIG(getNumber,"Licenses",_licenseName,"price");
private _licenseIlegal = M_CONFIG(getText,"Licenses",_licenseName,"illegal");
private _licenseSide = M_CONFIG(getText,"Licenses",_licenseName,"side");
private _licenseDescription = M_CONFIG(getText,"Licenses",_licenseName,"description");

ctrlShow [80704,true];
ctrlShow [80705,true];
ctrlShow [80706,true];
ctrlShow [80707,true];
ctrlShow [80708,true];
ctrlShow [80709,true];
ctrlShow [80710,true];
ctrlShow [80711,true];
ctrlShow [80712,true];
ctrlSetText [80704, localize _licenseDisplayName];
if (_licenseIlegal isEqualTo false)then{
	ctrlSetText [80710,"Legal"];
};
if (_licenseIlegal isEqualTo true)then{
    ctrlSetText [80710,"Illegal"];
};


if (!(_licenseBuyPrice isEqualTo -1)) then {
    ctrlSetText [80712,format ["%1€",[_licenseBuyPrice] call husky_fnc_numberText]];
} else {
    ctrlSetText [80712, "N/A"];
};
if (_licenseSide isEqualTo "civ")then{
    ctrlSetText [80711,"für Zivilisten"];
};
if (_licenseSide isEqualTo "cop")then{
    ctrlSetText [80711,"für Polizisten"];
};
if (_licenseSide isEqualTo "med")then{
    ctrlSetText [80711,"für Ärzte"];
};

(CONTROL(80700,80709)) ctrlSetStructuredText parseText format["%1",_licenseDescription];
