#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_rad"];
_item = "";
_rad = round(random 45);	//35
//diag_log _rad;

	switch(true) do {
		case (_rad == 1) : {
            _item = "donuts";
        };
		case (_rad == 25) : {
           _item = "redgull";
        };
		case (_rad == 28) : {
           _item = "BP_Waffe_MkII";
        };
		case (_rad == 44) : {
           _item = "BP_Waffe_MkI";
        };
		case (_rad == 18) : {
           _item = "BP_Waffe_MkIII";
        };
		case (_rad == 33) : {
           _item = "BP_Suit_MkIII";
        };
		case (_rad == 13) : {
           _item = "BP_Weste_MkI";
        };
		case (_rad == 2) : {
           _item = "BP_Weste_MkII";
        };
		case (_rad == 9) : {
           _item = "BP_Weste_MkIII";
        };
		case (_rad == 20) : {
           _item = "BP_Suit_MkII";
        };
		case (_rad == 32) : {
           _item = "BP_Zubehoer_MkIII";
        };
		case (_rad == 37) : {
           _item = "BP_Zubehoer_MkII";
        };
		case (_rad == 19) : {
           _item = "BP_Zubehoer_MkI";
        };
		case (_rad == 3) : {
           _item = "waterBottle";
        };
		case (_rad == 4) : {
            _item = "coffee";
        };
		case (_rad == 30) : {
            _item = "schmerzmittel";				
        };
		case (_rad == 10) : {
            _item = "banane";				
        };
		case (_rad == 15) : {
            _item = "kokosnuss";				
        };
		case (_rad == 5) : {
            _item = "rabbit";				
        };
		case (_rad == 6) : {
            _item = "coffee";
        };
		case (_rad == 22) : {
            _item = "lootboxepic";
        };
		case (_rad == 23) : {
            _item = "BP_Zubehoer_MkIV";
        };
		case (_rad == 31) : {
            _item = "bausatz_zamak_fuel_1";
        };
		case (_rad == 45) : {
            _item = "bausatz_zamak_2";
        };
		case (_rad == 16) : {
            _item = "bausatz_zamak_fuel_2";
        };
		case (_rad == 35) : {
            _item = "bausatz_zamak_1";
        };
		//diag_log _rad;
		//diag_log _item;
	};
	
if (_item == "") exitWith {};

	_div = [_item,1,husky_carryWeight,husky_maxWeight] call husky_fnc_calWeightDiff;

if (_div <= 0) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Dein Inventar ist voll!</t>";};
	_itemName = M_CONFIG(getText, "VirtualItems", _item, "displayName");

if (([true,_item,1] call husky_fnc_handleInv)) then {
	//[format["Du hast %1 erhalten.",(localize _item)], "Information"] spawn husky_fnc_createNotification;
	//hint format["Du hast etwas erhalten"];
	hint parseText format ["<t underline='true' size='1.8' color='#7cff00'>Information</t><br /><t size='1.5' color='#ffffff'>Du hast 1x %1 erhalten.</t>",(localize _itemName)];
	[getPlayerUID player, "DP Item", format ["%1 - %2 hat einen %3 erhalten. Bargeld: %4 � Bankkonto: %5 �",profileName,(getPlayerUID player),(localize _itemName),[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

};