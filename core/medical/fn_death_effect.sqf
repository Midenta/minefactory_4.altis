#include "..\..\script_macros.hpp"

"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [5];
"dynamicBlur" ppEffectCommit 0;
"dynamicBlur" ppEffectAdjust [2];
"dynamicBlur" ppEffectCommit 3;

while {true} do {
	if !(death_effect) exitWith {"dynamicBlur" ppEffectEnable false;};	//NEU TESTEN
	//if (!(player getVariable["Revive",true,true])) exitWith {};
	[] spawn {
		titleCut ["", "BLACK Out", 6];
		playsound "jhmedsys_heartbeat";
	};

	uisleep 11.5;
	//if (!(player getVariable["Revive",true,true])) exitWith {};
	if !(death_effect) exitWith {"dynamicBlur" ppEffectEnable false;};	//NEU TESTEN
	cutText ["","Black In",6];
	uisleep 6;
};

//"dynamicBlur" ppEffectEnable false;
