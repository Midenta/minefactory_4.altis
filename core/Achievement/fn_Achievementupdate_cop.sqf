#include "..\..\script_macros.hpp"
/*
    File: fn_Achievementupdate.sqf
    Author: Deathman

    Description:
    Updated das Achievement Menu
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
disableSerialization;

_lic = CONTROL(5000,5014);



{
	private _displayName = getText(_x >> "displayName");
	private _icon = getText(_x >> "icon");
	private _imBesitz = ACHIEVEMENT_VALUE(configName _x);
	private _Text = getText(_x >> "Text");

	private _id = _lic lnbAddRow [_displayName];
	_lic lnbSetPicture [[_id,0], _icon];
	_lic lnbSetPicture [[_id,1], if !(_imBesitz) then {"icons\icon_nichtimbesitz.paa"} else {"icons\icon_imbesitz.paa"}];
	_lic lnbsetText [[_id,2], _Text];

} forEach ("true" configClasses (missionConfigFile >> "Achievement_cop"));
