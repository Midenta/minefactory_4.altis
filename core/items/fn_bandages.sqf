#include "..\..\script_macros.hpp"

private["_damage","_health"];
if (vehicle player != player) exitWith { hint "Du kannst dich nicht in einem Fahrzeug verbinden.";};
if (husky_inv_bandages < 1) exitWith { hint "Du hast keine Bandagen."; };

closeDialog 0;
husky_action_inUse = true;
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
uiSleep 1.5;
waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};
husky_action_inUse = false;

//hint ".";
sleep 3;
[false,"bandages",1] call husky_fnc_handleInv;
enableCamShake true;

for "_health" from 0 to 29 do
{
	while {damage player > 0.1} do  {
		_damage = damage player;          
		_damage = _damage - 0.05;        
		player setDamage (_damage);       
		[] call husky_fnc_hudUpdate;      
		sleep 12;           
	};  
};

resetCamShake;