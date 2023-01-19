#include "..\..\script_macros.hpp"
/*
    Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

haus_blacklist = [
	[3072.6,12175.2,0.095602]
];

//-------------------------------------------------------------------------------
_blacklistedHouses = "count (getArray (_x >> 'garageBlacklists')) > 0" configClasses (missionconfigFile >> "Housing" >> worldName);
_blacklistedHouses = _blacklistedHouses apply {configName _x};

_className = "Land_i_Shed_Ind_F";
//_positions = getArray(missionConfigFile >> "Housing" >> worldName >> _className >> "garageBlacklists");
	
{
/*
_trg=createTrigger["EmptyDetector",_x];
_trg setTriggerArea[5,5,0,false];
_trg setTriggerActivation["NONE","PRESENT",false];
_trg setTriggerStatements["true", "{if (_x isKindOf 'Land_fs_feed_F') then {_x enableSimulation false; _x allowDamage false; _x setFuelCargo 0}} forEach nearestObjects [thisTrigger,[],10]", ""]; 
*/
	_obj = nearestObject [_x,_className];
	if (isNull _obj) then {
		_obj setVariable ["blacklistedGarage",true,true];
		diag_log _obj;
	};

} foreach haus_blacklist;