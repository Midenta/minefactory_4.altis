#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

private["_display","_listbox","_shortname","_longname","_price","_hasLicense","_displayname"];
_buyables = _this select 3; //called from action => select 3rd argument
if (!dialog) then {
  if (!(createDialog "LicenseShop")) exitWith {};
};
disableSerialization;
_display = findDisplay 5546;
if (isNull _display) exitWith {};
_listbox = _display displayCtrl 55126;
_mylic = _display displayCtrl 55131;
_struct = "";
{
  _shortname = _x;
  _displayName = M_CONFIG(getText,"Licenses",_shortname,"displayName");
  _displayName = localize _displayName;
  _price = M_CONFIG(getNumber,"Licenses",_shortname,"price");
  _sideFlag = M_CONFIG(getText,"Licenses",_shortname,"side");
  _hasLicense = (LICENSE_VALUE(_shortname,_sideFlag));
  if (!_hasLicense) then {
	_listbox lbAdd format["%1 (%2 €)", _displayname, [_price] call husky_fnc_numberText]; 
	_listbox lbSetData [(lbSize _listbox) - 1, _shortname];
  } else {
	_mylic lbAdd format["%1", _displayname];
	_mylic lbSetData [(lbSize _mylic) - 1, _shortname];
  };
}foreach _buyables;
/* NPC code
  this allowDamage false; this enableSimulation false; this addAction["Lizenzen",husky_fnc_licenses,["driver","boat","pilot","trucking","home","gun"],0,true,true,"",' playerSide == civilian '];
*/