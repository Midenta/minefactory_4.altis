#include "..\..\script_macros.hpp"

/*
	Author : Yasar-S
	Descripton : Setzt den angegebenen Betrag
	desclaimer : Das nutzen dieses Scriptes ohne diesen Header ist nicht erlaubt
*/

private["_numberS","_numberS","_display","_editBox","_uid","_myName"];
disableSerialization;
if(!(missionNamespace getVariable ["Gambling2_Input",true])) exitWith {};
_display = findDisplay 21350;
_editBox = _display displayCtrl 21353;
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

if(_number < 3000000 || _number > 50000000) exitWith {		//ERHÖHEN MIN 3 mio max 25mio
  hint parseText "Nicht weniger als 3,000,000 € und nicht höher als 50,000,000 €";
};

if(b126 < _number) exitWith {
  hint parseText "Du hast nicht genug Geld auf der Bank !";
};

if((diag_tickTime - (player getVariable ["gambling2Sleeper",0])) < 30) exitWith {
  hint parseText format["Warte noch %1 Sekunden bis du nochmal setzen kannst !",[30 - (diag_tickTime - (player getVariable ["gambling2Sleeper",0]))] call husky_fnc_numberText]
};
player setVariable ["gambling2Sleeper",diag_tickTime];

b126 = b126 - _number;
call SOCK_fnc_updateRequest;

[_uid,_number,_myName,player] remoteExec ["TON_fnc_newBet2",RSERV];

[getPlayerUID player, "Casino Set", format ["%1 - %2 hat %3 gesetzt. Gangkonto: %4 €  Bankkonto: %5 €  Bargeld: %6 €",profileName,(getPlayerUID player),[_number] call husky_fnc_numberText,[_gFund] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
