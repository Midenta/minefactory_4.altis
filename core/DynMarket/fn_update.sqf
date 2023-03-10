#include "..\..\script_macros.hpp"
/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/
_mode = _this select 0;
_itemArray = [_this,1,[]] call BIS_fnc_param;
_itemArrayST = [_this,2,[]] call BIS_fnc_param;
_txt1 = DYNMARKET_UserNotification_Text select 0;
_txt2 = DYNMARKET_UserNotification_Text select 1;
if (isNil "DYNAMICMARKET_boughtItems") then {DYNAMICMARKET_boughtItems=[];};

switch (_mode) do {
	case 0:
	{
		[DYNAMICMARKET_boughtItems] remoteExec ["TON_fnc_getUpdate",RSERV];
		if (DYNMARKET_UserNotification) then {
			//hint _txt2;
			hint parseText "<t underline='true' size='1.8' color='#7cff00'>Information</t><br /><t size='1.5' color='#ffffff'>Die Markt Preise wurden Aktualisiert</t>";
		};
		DYNAMICMARKET_boughtItems = [];
	};
	case 1:
	{
		_needToUpdate = false;
		if (!isNil "DYNMARKET_prices") then {DYNMARKET_pricesOld = DYNMARKET_prices;} else {_needToUpdate=true;};
		sell_array = _itemArray;
		DYNMARKET_prices = _itemArray;
		DYNMARKET_ST = _itemArrayST;
		if (DYNMARKET_UserNotification) then {
			//hint _txt1;
			hint parseText "<t underline='true' size='1.8' color='#7cff00'>Information</t><br /><t size='1.5' color='#ffffff'>Die Markt Preise wurden Aktualisiert</t>";
		};
		if (_needToUpdate) then {DYNMARKET_pricesOld = DYNMARKET_prices;};
	};
};
