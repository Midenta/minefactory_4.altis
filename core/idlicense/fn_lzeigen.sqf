#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

	hint parseText format ["<t size='2.5'>--------------------</t><br/><img size='13' color='#FFFFFF' image='textures\menus\Death.paa'/><br/><br/><t size='2.5'>%1</t></t>",name player];

*/

if(isServer)exitWith{};
private["_msg"];
_msg = _this select 1;
hintSilent parseText _msg;