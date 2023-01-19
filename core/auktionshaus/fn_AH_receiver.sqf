#include "..\..\script_macros.hpp"
/*
	File: fn_ah_receiver.sqf
	Author: Ryan. Edited by Fresqo for our auction house
	## Modified by powerafro2 ##
*/
params [
	["_mode",-1,[0]]
	,["_info",[],[[]]]
];
if (_info isEqualTo []) exitWith {diag_log format ["ah Error reciever: %1", getPlayerUID player]};
switch (_mode) do {
	case 0:	{
		_item = _info select 0;
		_price = _info select 1;
		_seller = _info select 2;
		hint format["Du hast den Gegenstand von %1 für $%2 gekauft.",_seller,[_price]call husky_fnc_numberText];
		closeDialog 0;
	};
		case 1:
	{
		_seller = _info select 0;
		_price = _info select 1;
		hint parseText format
		[
			"%1 hat im Auktionshaus einen deiner Gegenstände <br/> im Wert von <t color='#228B22'>%3%2</t>gekauft.", name _seller,[_price]call husky_fnc_numberText,"$"
		];
		b126 = b126 + _price;
	};
};

