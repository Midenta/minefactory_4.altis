
#include "..\..\script_macros.hpp"

private["_damage","_health"];

if (vehicle player != player) exitWith { hint "Du kannst kannst dir ein Morphin in einem Fahrzeug geben." };
if (husky_inv_morphine < 1) exitWith { hint "Du hast kein Morphin." };

closeDialog 0;
husky_action_inUse = true;
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
uiSleep 1.5;
waitUntil {animationState player != "ainvpknlmstpsnonwnondnon_medic_1"};
husky_action_inUse = false;

//hint ".";

sleep 3;
[false,"morphine",1] call husky_fnc_handleInv;
"radialBlur" ppEffectEnable true;
enableCamShake true;

for "_i" from 0 to 19 do
{  
	"radialBlur" ppEffectAdjust  [random 0.06,random 0.06,0.25,0.25];
	"radialBlur" ppEffectCommit 1;
	addcamShake[random 3, 1, random 3];
	sleep 1;
};

for "_health" from 0 to 29 do
{
	while {damage player > 0.1} do  {
		_damage = damage player;          
		_damage = _damage - 0.05;        
		player setDamage (_damage);       
		[] call husky_fnc_hudUpdate;      
		sleep 3;           
	};  
};

"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

"radialBlur" ppEffectEnable false;
resetCamShake;
