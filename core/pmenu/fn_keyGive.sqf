#include "..\..\script_macros.hpp"
/*
    File: fn_keyGive.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Gives a copy of the key for the selected vehicle to the selected player.
    Player must be within range.
*/
private ["_dialog","_list","_plist","_sel","_vehicle","_owners","_index","_unit","_uid"];
disableSerialization;

_dialog = findDisplay 2001;
_list = _dialog displayCtrl 2701;
_plist = _dialog displayCtrl 2702;
_gFund = GANG_FUNDS;

_sel = lbCurSel _list;
if ((_list lbData _sel) isEqualTo "") exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast kein Fahrzeug ausgewählt.</t>";};
_vehicle = _list lbData _sel;
_vehicle = husky_vehicles select parseNumber(_vehicle);

if ((lbCurSel 2702) isEqualTo -1) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast keinen Spieler ausgewählt.</t>";};
_sel = lbCurSel _plist;
_unit = _plist lbData _sel;
_unit = call compile format ["%1", _unit];
if (isNull _unit || isNil "_unit") exitWith {};
if (_unit == player) exitWith {};

_uid = getPlayerUID _unit;
_owners = _vehicle getVariable "vehicle_info_owners";
_index = [_uid,_owners] call TON_fnc_index;
if (_index isEqualTo -1) then  {
    _owners pushBack [_uid,_unit getVariable ["realname",name _unit]];
	//_owners pushBack [_uid,_unit getVariable ["steam64id",name _unit]];
    _vehicle setVariable ["vehicle_info_owners",_owners,true];
};

hint format [localize "STR_NOTF_givenKeysTo",_unit getVariable ["realname",name _unit],typeOf _vehicle];
//hint format [localize "STR_NOTF_givenKeysTo",_unit getVariable ["steam64id",name _unit],typeOf _vehicle];
[_vehicle,_unit,profileName] remoteExecCAll ["TON_fnc_clientGetKey",_unit];

[getPlayerUID player, "give Key", format ["%1 - %2 hat %3 den Schluessel für %4 gegeben. Bargeld: %6 Bankkonto: %5 Gangkonto: %7 €",profileName,(getPlayerUID player),name _unit,_vehicle,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText,[_gFund] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
