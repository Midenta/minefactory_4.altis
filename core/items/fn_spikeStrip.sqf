#include "..\..\script_macros.hpp"
/*
    File: fn_spikeStrip.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Creates a spike strip and preps it.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_spikeStrip"];
//if (!isNil "husky_action_spikeStripPickup") exitWith {hint localize "STR_ISTR_SpikesDeployment"};    // avoid conflicts with addactions allowing duplication.
/*if (count husky_nagelband_placey >= husky_nagelband_limit) exitWith { 
	hint localize "STR_ISTR_SpikesDeployment"; 
};*/
_spikeStrip = "Land_Razorwire_F" createVehicle [0,0,0];
_spikeStrip attachTo[player,[0,5.5,0]];
_spikeStrip setDir 90;
_spikeStrip setVariable ["item","spikeDeployed",true];

husky_action_spikeStripDeploy = player addAction[localize "STR_ISTR_Spike_Place",{if (!isNull husky_spikestrip) then {detach husky_spikeStrip; husky_spikeStrip = objNull;}; player removeAction husky_action_spikeStripDeploy; husky_action_spikeStripDeploy = nil;},"",999,false,false,"",'!isNull husky_spikestrip'];
husky_spikestrip = _spikeStrip;
waitUntil {isNull husky_spikeStrip};

if (!isNil "husky_action_spikeStripDeploy") then {player removeAction husky_action_spikeStripDeploy;};
if (isNull _spikeStrip) exitWith {husky_spikestrip = objNull;};

_spikeStrip setPos [(getPos _spikeStrip select 0),(getPos _spikeStrip select 1),0];
_spikeStrip setDamage 1;

husky_action_spikeStripPickup = player addAction[localize "STR_ISTR_Spike_Pack",husky_fnc_packupSpikes,"",0,false,false,"",' _spikes = nearestObjects[getPos player,["Land_Razorwire_F"],1] select 0; !isNil "_spikes" && !isNil {(_spikes getVariable "item")}'];

if (husky_HC_isActive) then {
    [_spikeStrip] remoteExec ["HC_fnc_spikeStrip",HC_husky]; //Send it to the HeadlessClient for monitoring.
} else {
    [_spikeStrip] remoteExec ["TON_fnc_spikeStrip",RSERV]; //Send it to the server for monitoring.
};
