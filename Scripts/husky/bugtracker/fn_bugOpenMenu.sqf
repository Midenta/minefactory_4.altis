#include "..\..\..\script_macros.hpp"
/*
	author: Risk
	description: handles things for the Bugtracker
	returns: nothing
*/
//closeDialog 0;
call husky_fnc_vehicleShopEnd3DPreview;
_uid    = getPlayerUID player;
_name   = profileName;
_diag   = findDisplay 50800;
createDialog "bugtracker";

if (!dialog)then{createDialog "bugtracker";};

CONTROL(50800,50805) ctrlSetStructuredText parseText format["%1", _name];
CONTROL(50800,50806) ctrlSetStructuredText parseText format["%1", _uid];