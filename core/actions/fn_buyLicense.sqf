#include "..\..\script_macros.hpp"
/*
    File: fn_buyLicense.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Called when purchasing a license. May need to be revised.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private _type = _this select 3;

if (!isClass (missionConfigFile >> "Licenses" >> _type)) exitWith {}; //Bad entry?
private _varName = M_CONFIG(getText,"Licenses",_type,"variable");
private _displayName = M_CONFIG(getText,"Licenses",_type,"displayName");
private _price = M_CONFIG(getNumber,"Licenses",_type,"price");
private _sideFlag = M_CONFIG(getText,"Licenses",_type,"side");
_varName = LICENSE_VARNAME(_varName,_sideFlag);

if (c126 < _price) exitWith {hint format[localize "STR_NOTF_NE_1",[_price] call husky_fnc_numberText,localize _displayName];[getPlayerUID player, "Keine Lizenz kaufen", format ["%1 - %2 konnte %4 für %3 € nicht gekauft. Bargeld: %5 € Bankkonto: %6 €",profileName,(getPlayerUID player),[_price] call husky_fnc_numberText,localize _displayName,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];};

c126 = c126 - _price;

titleText[format[localize "STR_NOTF_B_1", localize _displayName,[_price] call husky_fnc_numberText],"PLAIN"];
[getPlayerUID player, "Lizenz kaufen", format ["%1 - %2 hat einen %4 für %3 € gekauft. Bargeld: %5 € Bankkonto: %6 €",profileName,(getPlayerUID player),[_price] call husky_fnc_numberText,localize _displayName,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
missionNamespace setVariable [_varName,true];

[] spawn The_programmer_Duty_fnc_initPlayerLicensesCheck;

/*
if (license_civ_schwerlast) then	{
	 [] execVM "Scripts\IgiLoad\IgiLoadInit.sqf";//Igiload
};
if (license_civ_towing) then {
	 [] execVM "Scripts\husky\initTowing.sqf";
};
*/
