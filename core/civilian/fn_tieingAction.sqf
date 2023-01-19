/*
	File: fn_restrainAction.sqf


	Description:
	Retrains the target.
*/

private["_unit"];
_unit = cursorTarget;
/*
if(husky_inv_kabelbinder < 1) exitWith {
	hintSilent "Sie müssen Kabelbinder aus dem Markt kaufen, um das zu tun ..";
};

if((husky_action_inUse) || (player getVariable ["tied", false]) || (player getVariable ["restrained", false])) exitWith {
	hintSilent "Das kannst du nicht tun.";
};

if(!(_unit getVariable ["playerSurrender",false]) || animationState cursorObject == "Incapacitated") exitWith {
	hintSilent "Die Person muss sich ergeben!";
};
*/

if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable ["tied", false])) exitWith {};

if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
//Broadcast!

husky_inv_kabelbinder = husky_inv_kabelbinder - 1;

husky_action_inUse = true;
hintSilent "Du bist gefesselt!";
[_unit,"cuff"] remoteExec ["husky_fnc_say3D",RANY];

_randycunt = 3;
_num = 1;
_myposy = getPos player;
while {_randycunt > _num} do {
	_randycunt = _randycunt - 1;
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 1;
};

_unit setVariable["tied", true, true];
[player] remoteExecCall ["husky_fnc_tieing", _unit];

husky_action_inUse = false;
