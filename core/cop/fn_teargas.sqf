if (!hasInterface) exitwith {};
params[
	["_pos", [], [[]]],
	"_startTime",
	"_handle"
];

_startTime = time;
while {(player distance _pos) > 11} do {
	if ((time - _startTime) > 40) exitWith {};
	sleep 1;
};

if (player distance _pos > 11 || (time - _startTime) > 40 || headgear player in ["H_CrewHelmetHeli_B"] || goggles player in ["G_AirPurifyingRespirator_01_F","G_AirPurifyingRespirator_02_Black_F"] || !isNull objectParent player || player getVariable ["isTeared",false]) exitWith {}; //Bad again.
hint "Ahhh Tränengas, meine Augen brennen.";
player setVariable ["isTeared", true]; 
_handle = ppEffectCreate ["DynamicBlur", 403]; 
_handle ppEffectForceInNVG true;
_handle ppEffectEnable true; 
_handle ppEffectAdjust [20]; 
_handle ppEffectCommit 1; 
10 fadeSound 0.1;
enableCamShake true;     // enables camera shake
addCamShake [10, 85, 10];    // sets shakevalues
sleep 41;
_handle ppEffectAdjust [0]; 
_handle ppEffectCommit 20; 
sleep 5;
waitUntil {ppEffectCommitted _handle}; 
_handle ppEffectEnable false;
ppEffectDestroy _handle;
player setVariable ["isTeared", false];