#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

	player setUnitLoadout husky_save_gear;
	
	player allowDamage true;
	
	[getPlayerUID player, "Adminmode off", format ["%1 - %2 hat den Adminmode deaktiviert",profileName,(getPlayerUID player)]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];