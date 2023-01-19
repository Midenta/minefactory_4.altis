scriptName "fn_addVehicleToChain";
/*--------------------------------------------------------------------------
    Author:		Bytex Digital
    Website:	https://bytex.digital

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/
#define __filename "fn_addVehicleToChain.sqf"

_vehicle = param[0, objNull, [objNull]];

if (isNull _vehicle) exitWith {};
if (isDedicated) exitWith {};

husky_vehicles pushBack _vehicle;