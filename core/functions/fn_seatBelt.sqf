#include "..\..\script_macros.hpp"
/*
//--By Repentz
//--Translated to german by Marius1773

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

/*
 fn_seatBelt.sqf
*/
//playSound "seatbelt"; //--Aktivier das wenn du ein Sound willst f�r deinen Anschnallgurt (nach belieben �ndern)

if (!husky_seatbelt) then {
	husky_seatbelt = true;
} else {
	husky_seatbelt = false;
};
//[] call husky_fnc_hudUpdate; //--Aktivier das wenn du eine Hud Option einf�gen m�chtest wenn der Anschnallgurt angelegt ist.