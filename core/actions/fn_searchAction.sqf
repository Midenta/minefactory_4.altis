/*
    File: fn_searchAction.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Starts the searching process.
	[cursorTarget,0] call husky_fnc_searchAction;
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
params [
    ["_unit",objNull,[objNull]]
];
if (isNull _unit) exitWith {};
hint localize "STR_NOTF_Searching";
sleep 2;
if (player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint localize "STR_NOTF_CannotSearchPerson"};
[player] remoteExec ["husky_fnc_searchClient",_unit];
husky_action_inUse = true;





/*
#include "..\..\script_macros.hpp"
#define IDC 59000
_unit = [_this, 0,objNull, [objNull]] call BIS_fnc_param;
_type = [_this, 1, -1] call bis_fnc_param;
if (_type isEqualTo -1) exitWIth {};
if (_type isEqualTo 2) exitWith {
	[player,"ALL"] remoteExec ["husky_fnc_searchClient",_unit];
};
if (_type isEqualTo 3) exitWith {
	if ((lbCurSel IDC) isEqualTo -1) exitWith {hint 'Du musst zuerst etwas auswählen'};
	_data = lbData[IDC,(lbSize IDC)-1];
	if (!(_data isEqualTO "")) then {
		[player,_data] remoteExec ["husky_fnc_searchClient",_unit];
	};
};
if (_type isEqualTo 0) exitWith {
	if (isNull _unit) exitWith {};
	if (player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint localize "STR_NOTF_CannotSearchPerson"};
	[player] remoteExec ["husky_fnc_searchClient",_unit];
};
closeDialog 0;
createDialog "beschlagnahmen";
lbclear IDC;
_inv = [_this, 2, []] call bis_Fnc_param;
{
	_var = _x select 0;
	_val = _x select 1;
	_price = ITEM_SELLPRICE(_var)*_val;
	lbAdd [IDC,format["%1 x %2 (%3)",_val,localize ITEM_NAME(_var),floor(_price)]];
	lbSetData[IDC,(lbSize IDC)-1,_var];
} forEach _inv;
//_bool = [_this, 1,false] call BIS_fnc_param;

/*if (!_bool) then {
	if (isNull _unit) exitWith {};
	hint localize "STR_NOTF_Searching";
	sleep 2;
	if (player distance _unit > 5 || !alive player || !alive _unit) exitWith {hint localize "STR_NOTF_CannotSearchPerson"};
	[player] remoteExec ["husky_fnc_searchClient",_unit];
	husky_action_inUse = true;
} else {*/

//};
