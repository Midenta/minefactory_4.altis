#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
	Diese Mission darf von keinem anderen genutzt werden au?er von Thieves-Gaming.de!
*/
waituntil{!(player getVariable "exitRad")};
private _damage = getDammage player;
private _uniform = uniform player;
private _backpack = backpack player;
private _goggles = goggles player;
private _vest = vest player;
private _rad1 = ppEffectCreate ["ChromAberration",200];
private _rad2 = ppEffectCreate ["DynamicBlur",500];
private _rad3 = ppEffectCreate ["FilmGrain",2000];

if(!alive player || (player getVariable "exitRad")) exitWith {
	player setVariable ["exitRad",true];
	_rad1 ppEffectEnable false;
	_rad1 ppEffectAdjust [0,0,true];
	_rad1 ppEffectCommit 1;
	_rad2 ppEffectEnable false;
	_rad2 ppEffectAdjust [0];
	_rad2 ppEffectCommit 1;
	_rad3 ppEffectEnable false;
	_rad3 ppEffectAdjust [0,0,0,0,0,true];
	_rad3 ppEffectCommit 1;
};
playsound "Geigerdynamisch";
while {!(player getVariable "exitRad")} do {
	if(player getVariable "exitRad")exitWith {
		8 fadeSound 0;
		_rad1 ppEffectEnable false;
		_rad1 ppEffectAdjust [0,0,true];
		_rad1 ppEffectCommit 1;
		_rad2 ppEffectEnable false;
		_rad2 ppEffectAdjust [0];
		_rad2 ppEffectCommit 1;
		_rad3 ppEffectEnable false;
		_rad3 ppEffectAdjust [0,0,0,0,0,true];
		_rad3 ppEffectCommit 1;
	};
	if ((_uniform isEqualTo "U_C_CBRN_Suit_01_White_F") && (_backpack isEqualTo "B_CombinationUnitRespirator_01_F") && (_goggles isEqualTo "G_AirPurifyingRespirator_01_F") || (_uniform isEqualTo "U_C_WorkerCoveralls") && (_vest isEqualTo "V_RebreatherIR")) then {
		0 fadeSound 8;
		_rad1 ppEffectEnable true;
		_rad1 ppEffectAdjust [-0.02,0,true];
		_rad1 ppEffectCommit 1;
		_rad2 ppEffectEnable true;
		_rad2 ppEffectAdjust [0.03];
		_rad2 ppEffectCommit 1;
		_rad3 ppEffectEnable true;
		_rad3 ppEffectAdjust [0.12,1.52,3.54,2,2,true];
		_rad3 ppEffectCommit 1;
	} else {
		0 fadeSound 8;
		_rad1 ppEffectEnable true;
		_rad1 ppEffectAdjust [-0.02,0,true];
		_rad1 ppEffectCommit 1;
		_rad2 ppEffectEnable true;
		_rad2 ppEffectAdjust [0.03];
		_rad2 ppEffectCommit 1;
		_rad3 ppEffectEnable true;
		_rad3 ppEffectAdjust [0.12,1.52,3.54,2,2,true];
		_rad3 ppEffectCommit 1;
		
		player setDamage (getDammage player + 0.05);
	};
	uisleep 4;
};

waituntil{(player getVariable "exitRad")};
8 fadeSound 0;
player setVariable ["exitRad",true];
_rad1 ppEffectEnable false;
_rad1 ppEffectAdjust [0,0,true];
_rad1 ppEffectCommit 1;
_rad2 ppEffectEnable false;
_rad2 ppEffectAdjust [0];
_rad2 ppEffectCommit 1;
_rad3 ppEffectEnable false;
_rad3 ppEffectAdjust [0,0,0,0,0,true];
_rad3 ppEffectCommit 1;
[] spawn husky_fnc_RadArea;
/* _player = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_damage = getDammage _player;
_uniform = uniform _player;
_backpack = backpack _player;
_goggles = goggles _player;
_rad1 = ppEffectCreate ["ChromAberration",200];
_rad2 = ppEffectCreate ["DynamicBlur",500];
_rad3 = ppEffectCreate ["FilmGrain",2000];

if (!alive _player || (_damage == 1) || (_player getVariable ["exitRad",true])) exitWith {

	_player setVariable ["exitRad",true];
	_rad1 ppEffectEnable false;
	_rad1 ppEffectAdjust [0,0,true];
	_rad1 ppEffectCommit 1;
	_rad2 ppEffectEnable false;
	_rad2 ppEffectAdjust [0];
	_rad2 ppEffectCommit 1;
	_rad3 ppEffectEnable false;
	_rad3 ppEffectAdjust [0,0,0,0,0,true];
	_rad3 ppEffectCommit 1;
};

// this is the check to see if they are wearing protective clothing
if ((_uniform isEqualTo "U_C_CBRN_Suit_01_White_F") && (_backpack isEqualTo "B_CombinationUnitRespirator_01_F") && (_goggles isEqualTo "G_AirPurifyingRespirator_01_F") || (_uniform isEqualTo "U_C_WorkerCoveralls") && (_vest isEqualTo "V_RebreatherIR")) then {


//rad sound
	//_player say2d "radiation";
	//[player,"radiation",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];
	playSound "Geigerdynamisch";

// edit this for the length of the effect
	for "_i" from 0 to 4 do {
		_rad1 ppEffectEnable true;
		_rad1 ppEffectAdjust [-0.02,0,true];
		_rad1 ppEffectCommit 1;
		_rad2 ppEffectEnable true;
		_rad2 ppEffectAdjust [0.03];
		_rad2 ppEffectCommit 1;
		_rad3 ppEffectEnable true;
		_rad3 ppEffectAdjust [0.12,1.52,3.54,2,2,true];
		_rad3 ppEffectCommit 1;
	};
	sleep 5;

//loops the script until they exit
	[_player] remoteExec ["husky_fnc_radArea",_player];

} else {

//rad sound
	playSound "Geigerdynamisch";

// edit this for the length of the effect
	for "_i" from 0 to 4 do {
		_rad1 ppEffectEnable true;
		_rad1 ppEffectAdjust [-0.02,0,true];
		_rad1 ppEffectCommit 1;
		_rad2 ppEffectEnable true;
		_rad2 ppEffectAdjust [0.03];
		_rad2 ppEffectCommit 1;
		_rad3 ppEffectEnable true;
		_rad3 ppEffectAdjust [0.12,1.52,3.54,2,2,true];
		_rad3 ppEffectCommit 1;
	};
	sleep 5;

//set the damage to player
	_player setDamage (_damage + 0.05);

//loops the script until they exit
	[_player] remoteExec ["husky_fnc_radArea",_player];
}; */