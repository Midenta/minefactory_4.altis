#include "..\..\script_macros.hpp"
/*
	File: fn_physicalPhone.sqf
	Author: Timo
	Description: With no radio cant use Cellphone

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

if ("ItemRadio" in assignedItems player  || (FETCH_CONST(husky_adminlevel) >= 1)) then {
	createDialog "husky_cell_phone";
} else {
	//hint parseText format ["<t size=1.30' font='puristaMedium' align='center' color='#0D82DF'>Kein Handy!</t><br/><br/> <t size='0.90 'font='puristaLight' align='left'>Du brauchst ein Handy (GPS), um dies zu nutzen. Du kannst Handy in einem Gemischtwarenladen kaufen.</t><br/&gt"];
	hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du brauchst ein Handy, um dies zu nutzen. Du kannst ein Handy in einem Gemischtwarenladen kaufen.</t>";
};
