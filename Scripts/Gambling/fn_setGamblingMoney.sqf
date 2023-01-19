#include "..\..\script_macros.hpp"

/*
	Author : Yasar-S
	Descripton : Setzt den angegebenen Betrag
	desclaimer : Das nutzen dieses Scriptes ohne diesen Header ist nicht erlaubt
*/

private["_numberS","_numberS","_display","_editBox","_uid","_myName"];
disableSerialization;
if(!(missionNamespace getVariable ["Gambling_Input",true])) exitWith {};
_display = findDisplay 1350;
_editBox = _display displayCtrl 1353;
_gFund = GANG_FUNDS;
_numberS = ctrlText _editBox;

_uid = getPlayerUID player;
_myName = player getVariable ["realname",name player];

if(!([_numberS] call TON_fnc_isnumber)) exitWith {
  hint parseText localize "STR_Shop_Virt_NoNum";
};

_number = parseNumber _numberS;

if(!(typeName _number isEqualTo "SCALAR")) exitWith {
  hint parseText localize "STR_Shop_Virt_NoNum";
};

if(_number < 5000 || _number > 2500000) exitWith {
  hint parseText "Nicht weniger als 5,000 $ und nicht höher als 2,500,000 $";
};

if(b126 < _number) exitWith {
  hint parseText "Du hast nicht genug Geld auf der Bank !";
};

if((diag_tickTime - (player getVariable ["gamblingSleeper",0])) < 5) exitWith {
  hint parseText format["Warte noch %1 Sekunden bis du nochmal setzen kannst !",[5 - (diag_tickTime - (player getVariable ["gamblingSleeper",0]))] call husky_fnc_numberText]
};
player setVariable ["gamblingSleeper",diag_tickTime];

b126 = b126 - _number;
call SOCK_fnc_updateRequest;

[_uid,_number,_myName,player] remoteExec ["TON_fnc_newBet",RSERV];

[getPlayerUID player, "Gambling Set", format ["%1 - %2 hat %3 gesetzt. Gangkonto: %4 €  Bankkonto: %5 €  Bargeld: %6 €",profileName,(getPlayerUID player),[_number] call husky_fnc_numberText,[_gFund] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
