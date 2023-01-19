#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
	Diese Mission darf von keinem anderen genutzt werden au?er von Thieves-Gaming.de!
*/



_fnc_radDamage = {

	private _dist = 10;

	for "_i" from 0 to 1 step 0 do {
		uiSleep 30;

		if (!alive player) exitWith {player setVariable ["exitRad",true];};

		private _pos = getPos player;
		if ((husky_inv_uraniniterz >= 1) && (alive player) || (husky_inv_uraninitloesung >= 1) && (alive player) || (husky_inv_yellow_cake >= 1) && (alive player) || (husky_inv_rohes_uranylnitrat >= 1) && (alive player) || (husky_inv_reines_uranylnitrat >= 1) && (alive player) || (husky_inv_rohes_uran >= 1) && (alive player) || (husky_inv_reines_uran >= 1) && (alive player) || (husky_inv_plutonium >= 1) && (alive player)  ) then {
			//diag_log "Start Rad1";
			if (({ isPlayer _x } count (_pos nearEntities ["Man", _dist])) > 0) then {
				player setVariable ["exitRad",false];
				[player] call husky_fnc_radInv;
				//diag_log "Start Rad2";
			};
		}else{
			player setVariable ["exitRad",true];
			//diag_log "Ende Rad";
		};
	};
};


/*
if ((husky_inv_uraniniterz == 0) || (husky_inv_uraninitloesung == 0) || (husky_inv_yellow_cake == 0) || (husky_inv_rohes_uranylnitrat == 0) || (husky_inv_reines_uranylnitrat == 0) || (husky_inv_rohes_uran == 0) || (husky_inv_reines_uran == 0) || (husky_inv_plutonium == 0) || (!alive player)) then {
	player setVariable ["exitRad",true];
	diag_log "Ende Rad1";
};
*/
{
    if(_x >= 1 && (player getVariable "exitRad"))then {
	 [] spawn _fnc_radDamage;
	};
} forEach [husky_inv_uraniniterz,husky_inv_uraninitloesung,husky_inv_yellow_cake,husky_inv_rohes_uranylnitrat,husky_inv_rohes_uranylnitrat,husky_inv_reines_uranylnitrat,husky_inv_rohes_uran,husky_inv_reines_uran,husky_inv_plutonium];
/*
▼▼▼▼▼▼ BIST DU DEN DES WAHNISNSNNSUHFIAUSDHIGLHSDIGHÖOIHÖOGH ▼▼▼▼▼▼
*/
/*
if (husky_inv_uraniniterz >= 1 && (player getVariable "exitRad")) then {
	[] spawn _fnc_radDamage;
	//diag_log "Start Rad0";
};

if (husky_inv_uraninitloesung >= 1 && (player getVariable "exitRad")) then {
	[] spawn _fnc_radDamage;
	//diag_log "Start Rad1";
};

if (husky_inv_yellow_cake >= 1 && (player getVariable "exitRad")) then {
	[] spawn _fnc_radDamage;
	//diag_log "Start Rad1";
};

if (husky_inv_rohes_uranylnitrat >= 1 && (player getVariable "exitRad")) then {
	[] spawn _fnc_radDamage;
	//diag_log "Start Rad1";
};

if (husky_inv_reines_uranylnitrat >= 1 && (player getVariable "exitRad")) then {
	[] spawn _fnc_radDamage;
	//diag_log "Start Rad1";
};

if (husky_inv_rohes_uran >= 1 && (player getVariable "exitRad")) then {
	[] spawn _fnc_radDamage;
	//diag_log "Start Rad1";
};

if (husky_inv_reines_uran >= 1 && (player getVariable "exitRad")) then {
	[] spawn _fnc_radDamage;
	//diag_log "Start Rad1";
};

if (husky_inv_plutonium >= 1 && (player getVariable "exitRad")) then {
	[] spawn _fnc_radDamage;
	//diag_log "Start Rad1";
};
*/

/*
if (([true,"uraniniterz",1] call husky_fnc_handleInv)) then {[] spawn _fnc_radDamage};
if (([true,"uraninitloesung",1] call husky_fnc_handleInv)) then {[] spawn _fnc_radDamage};
if (([true,"yellow_cake",1] call husky_fnc_handleInv)) then {[] spawn _fnc_radDamage};
if (([true,"rohes_uranylnitrat",1] call husky_fnc_handleInv)) then {[] spawn _fnc_radDamage};
if (([true,"reines_uranylnitrat",1] call husky_fnc_handleInv)) then {[] spawn _fnc_radDamage};
if (([true,"rohes_uran",1] call husky_fnc_handleInv)) then {[] spawn _fnc_radDamage};
if (([true,"reines_uran",1] call husky_fnc_handleInv)) then {[] spawn _fnc_radDamage};
if (([true,"plutonium",1] call husky_fnc_handleInv)) then {[] spawn _fnc_radDamage};
*/
