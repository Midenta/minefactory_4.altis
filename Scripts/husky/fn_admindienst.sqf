#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

switch(FETCH_CONST(husky_adminlevel)) do {
	case 0: {

	};
	case 1: {

	};
	case 2: {
	["SUPPORTER"] spawn husky_fnc_admin;
	};
	case 4: {
	["ADMIN"] spawn husky_fnc_admin;
	};
	case 5: {
	["PROJEKTLEITER"] spawn husky_fnc_admin;
	};
	case 6: {
	["ENTWICKLER"] spawn husky_fnc_admin;
	};

};



/*
//Save old inventory
	husky_save_gear = getUnitLoadout player;
	
	
	player allowDamage false;
	
	husky_hunger = husky_hunger + 100;
	husky_thirst = husky_thirst + 100;
	
	removeBackpack player;
	removeVest player;
	removeUniform player;
	
	uiSleep 0.1;
	
	player forceAddUniform "U_O_Protagonist_VR";
	player addBackpack "B_LegStrapBag_coyote_F";
	
	[getPlayerUID player, "Adminmode on", format ["%1 - %2 hat den Adminmode aktiviert",profileName,(getPlayerUID player)]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

*/