scriptName "fn_removal";
/*--------------------------------------------------------------------------
    Author:		Bytex Digital
    Website:	https://bytex.digital

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/
#define __filename "fn_removal.sqf"

_sleep = param[0,0,[0]];

// Wait
sleep _sleep;

// Tell main script to create new convoy
mav_convoy_currentsessiondone = true;

// Delete all vehicles
{
	if (!isNull _x) then {
		deleteVehicle _x;
	};
} forEach mav_convoy_allMissionObjects;

// Clean vehicle array
mav_convoy_vehicles = [];

// Display messages?
if ((getNumber(missionConfigFile >> "Maverick_ConvoySidemission" >> "ConvoyConfigurationsPool" >> mav_convoy_class >> "Messages" >> "enabled")) == 1) then {
	_header = getText(missionConfigFile >> "Maverick_ConvoySidemission" >> "ConvoyConfigurationsPool" >> mav_convoy_class >> "Messages" >> "endAnnouncementHeader");
	_text = getText(missionConfigFile >> "Maverick_ConvoySidemission" >> "ConvoyConfigurationsPool" >> mav_convoy_class >> "Messages" >> "endAnnouncementDescription");
	(parseText format ["<t color='#ff0000' size='1.4' shadow='2' align='center'>%1</t><br/><br/>%2", _header, _text]) remoteExec ["hint", -2];
};

// Remove Weapons at Death
		_man addEventHandler ["Killed", {
			_unit = _this select 0;
			_unit removeWeapon (primaryWeapon _unit);
			_unit removeWeapon (handgunWeapon _unit);
			_unit removeWeapon (secondaryWeapon _unit);
			removeAllWeapons _unit;
		}];