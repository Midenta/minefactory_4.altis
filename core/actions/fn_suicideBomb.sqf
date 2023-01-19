#include "..\..\script_macros.hpp"
/*
    ALAH SNACKBAR! 
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_boom", "_list"];
_player = player;
if (vest player != "V_HarnessOGL_gry") exitWith {};
if (husky_isSuicide) exitWith {};
husky_isSuiciding = true;

_player say3D "akbar";
sleep 8;


if (vest player != "V_HarnessOGL_gry") exitWith {husky_isSuiciding = false;};
if ((player getVariable "restrained")) exitWith {husky_isSuiciding = false;}; //He's restrained.
if ((player getVariable "zipted")) exitWith {husky_isSuiciding = false;}; //He's restrained.

//BOOM    
removeVest player;
removeAllWeapons player;
removeAllAssignedItems player;
_boom = "Bo_Mk82" createVehicle [0,0,9999];
_boom setPos (getPos player);
_boom setVelocity [100,0,0];

if (alive player) then {player setDamage 1;};

husky_isSuicide = false;

player setVariable["zipted", false, true];
player setVariable["restrained", false, true];
[] call SOCK_fnc_updateRequest;

//[0,format["BREAKING NEWS: A suicide vest was detonated by %1!",profileName]] remoteExec ["husky_fnc_broadcast",0];