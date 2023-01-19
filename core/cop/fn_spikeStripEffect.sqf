#include "..\..\script_macros.hpp"
/*
    File: fn_spikeStripEffect.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Doesn't work without the server-side effect but shifted part of it clientside
    so code can easily be changed. Ultimately it just pops the tires.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_vehicle"];
_vehicle = [_this,0,objNull,[objNull]] call BIS_fnc_param;
if (isNull _vehicle) exitWith {}; //Bad vehicle type

_vehicle setHitPointDamage["HitLFWheel",1];
_vehicle setHitPointDamage["HitRFWheel",1];

/*
_vehicle setHitPointDamage["HitLF2Wheel",1];
_vehicle setHitPointDamage["HitRF2Wheel",1];
_vehicle setHitPointDamage["HitLMWheel",1];
_vehicle setHitPointDamage["HitRMWheel",1];
_vehicle setHitPointDamage["HitLBWheel",1];
_vehicle setHitPointDamage["HitRBWheel",1];
*/

[_vehicle,"reifen_undicht",100,1] remoteExec ["husky_fnc_say3D",RANY];