#include "..\..\script_macros.hpp"
/*
    File: fn_adminDebugCon.sqf
    Author: ColinM9991

    Description:
    Opens the Debug Console.
*/
if (FETCH_CONST(husky_adminlevel) < 5) exitWith {closeDialog 0; hint localize "STR_NOTF_adminDebugCon";};
husky_admin_debug = true;

createDialog "RscDisplayDebugPublic";
[0,format [localize "STR_NOTF_adminHasOpenedDebug",profileName]] remoteExecCall ["husky_fnc_broadcast",RCLIENT];
