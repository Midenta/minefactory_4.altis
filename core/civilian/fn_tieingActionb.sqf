#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

if (!([false,"Augenbinde",1] call husky_fnc_handleInv)) exitWith {hintSilent "Du hast keine Augenbinde!";};

private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable ["blindfolded", false])) exitWith {};

if((husky_action_inUse) || (player getVariable ["tied", false]) || (player getVariable ["restrained", false])) exitWith { 
	hintSilent "Das kannst du nicht tun.";
}; 

if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
//Broadcast!

/*
if(husky_inv_Augenbinde < 1) exitWith {
	hintSilent "Du musst eine Augenbinde aus dem Markt kaufen, um das zu tun ..";
};

husky_inv_Augenbinde = husky_inv_Augenbinde - 1;
*/


hintSilent "Du hast die Augen verbunden...";
_cme = 1;
_myposy = getPos player;

while {true} do {
husky_action_inUse = true;
	if( player distance _myposy > 2.5 ) exitwith { 
			hint "Zu weit entfernt";
	};
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	_cme = _cme + 1;
	if(_cme > 120) exitwith {
		cursorTarget setVariable["blindfolded", true, true];
		[player] remoteExecCall ["husky_fnc_tieingb", cursorTarget];
	};
};
husky_action_inUse = false;

