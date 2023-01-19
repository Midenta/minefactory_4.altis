scriptName "fn_addTriggerHandlers";
/*--------------------------------------------------------------------------
    Author:		Bytex Digital
    Website:	https://bytex.digital

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/
#define __filename "fn_addTriggerHandlers.sqf"

// Check wether we should be attackable
if ((str playerSide) in (getArray(missionConfigFile >> "Maverick_ConvoySidemission" >> "Config" >> "SidesNotAttackable"))) exitWith {};

// Add handlers
_objects = param[0,[],[[]]];

{
	_x addEventHandler ["Hit",{
		if (isNil "mav_convoy_attackme_scriptthread") then {
			[] spawn mav_convoy_fnc_attackMe;
		};
	}];
} forEach _objects;
