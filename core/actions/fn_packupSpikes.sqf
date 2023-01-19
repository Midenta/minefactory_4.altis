/*
    File: fn_packupSpikes.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Packs up a deployed spike strip.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_spikes"];
_spikes = nearestObjects[getPos player,["Land_Razorwire_F"],8] select 0;
if (isNil "_spikes") exitWith {};
//if (vehicle player != player) exitWith { hint "Du kannst das nicht während du in einem Fahrzeug sitzt."};

if ([true,"spikeStrip",1] call husky_fnc_handleInv) then {
    titleText[localize "STR_NOTF_SpikeStrip","PLAIN"];
    player removeAction husky_action_spikeStripPickup;
    husky_action_spikeStripPickup = nil;
    deleteVehicle _spikes;
};