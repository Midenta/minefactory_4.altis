#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
_item = "";
_rad = round(random 1);

		switch(true) do
		{
			case (_rad == 0) : {
               _item = "fell";
            };
			case (_rad == 1) : {
               _item = "rtierleder";
            };
		};
		
if (_item == "") exitWith {};
		_div = [_item,1,husky_carryWeight,husky_maxWeight] call husky_fnc_calWeightDiff;

if (_div <= 0) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Dein Inventar ist voll!</t>";};
	//_itemName = [([_item,0] call husky_fnc_varHandle)] call husky_fnc_varToStr;
		
if (([true,_item,1] call husky_fnc_handleInv)) then {
	//[format["Du hast %1 erhalten.",(localize _item)], "Information"] spawn husky_fnc_createNotification;
	//hint format["Du hast etwas erhalten"];
	hint parseText format ["<t underline='true' size='1.8' color='#7cff00'>Information</t><br /><t size='1.5' color='#ffffff'>Du hast 1x %1 erhalten.</t>", (localize _item)];
};
/*
if (_item == "") exitWith {};
	_div = [_item,1,husky_carryWeight,husky_maxWeight] call husky_fnc_calWeightDiff;
	
	if (_div <= 0) exitWith {["Dein Inventar ist voll!", [0, 0, 0, 1], [1,0.647058823529412,0,1], "Fehler"] spawn husky_fnc_createNotification;};
	//_itemName = [([_item,0] call husky_fnc_varHandle)] call husky_fnc_varToStr;
	
if (([true,_item,1] call husky_fnc_handleInv)) then{
	[format["Du hast %1 erhalten.",(localize _itemName)], [0, 0, 0, 1], [0,0.501960,0,1], "Information"] spawn husky_fnc_createNotification;
	//hint format["Du hast etwas erhalten"];
};
*/