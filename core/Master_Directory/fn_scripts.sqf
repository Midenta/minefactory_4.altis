#include "..\..\script_macros.hpp"
/*

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

*/


if ((playerSide in [independent,west]) || (license_civ_schwerlast)) then	{
	[] execVM "Scripts\IgiLoad\IgiLoadInit.sqf";//Igiload
};
if ((playerSide in [independent,west]) || (license_civ_towing)) then {
	[] execVM "Scripts\husky\initTowing.sqf";
};