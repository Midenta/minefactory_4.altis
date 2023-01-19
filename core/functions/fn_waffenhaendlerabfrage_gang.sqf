#include "..\..\script_macros.hpp"
/*

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

*/

if !(husky_w_time >= 240) then  {
	_resttime = 240 - husky_w_time;hint parseText format["<t size='1.25' font='PuristaBold' color='#fc3503'>Information</t><br/><t size='1.0' font='PuristaBold' color='#ede9e8'>Du darfst dir erst eine Waffe Kaufen wenn du 4 Stunden Spielzeit ereicht hast</t><br/><br/><t size='1.0' font='PuristaBold' color='#f28435'>Restzeit: %1 min</t>",_resttime];
	
}else{
	["gang","gang","gang","gang"] spawn husky_fnc_weaponShopMenu;
	
};

//this addAction ["Schusswaffen",husky_fnc_waffenhaendlerabfrage_gang, "",0,false,false,"","",4];