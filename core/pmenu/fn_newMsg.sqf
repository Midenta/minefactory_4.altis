#include "..\..\script_macros.hpp"
/*
file: fn_newMsg.sqf	
Author: Silex	

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_to","_type","_playerData","_msg"];
disableSerialization;
_type = [_this,0,-1] call BIS_fnc_param;
_playerData = [_this,1,-1] call BIS_fnc_param;
_msg = [_this,2,"",[""]] call BIS_fnc_param;
_display = findDisplay 88888;
_cPlayerList = _display displayCtrl 88881;
_cMessageEdit = _display displayCtrl 88884;

switch(_type) do{	
 case 0:	{ 
	husky_smartphoneTarget = call compile format["%1",_playerData];
	ctrlSetText[88886, format["Nachricht: %1",name husky_smartphoneTarget]];
	if ((FETCH_CONST(husky_adminlevel) < 1)) then {
		ctrlShow[888897,false];
	};
 };
 
 //normal message	
 case 1:	{ 
	if (isNUll husky_smartphoneTarget) exitWith {hint format["Keine Person ausgewählt!"];
	};
		ctrlShow[88885, false];
	if (_msg == "") exitWith {hint "DU musst eine Nachricht eingeben!";
		ctrlShow[88885, true];
	};
		[husky_smartphoneTarget,_msg,player,0] remoteExec ["TON_fnc_handleMessages",2];
		hint format["Du hast %1 eine Nachricht gesendet: %2",name husky_smartphoneTarget,_msg];
		ctrlShow[88885, true];
		closeDialog 88883;
 };
 
 //copmessage	
 case 2:	{ if (({side _x == west} count playableUnits) == 0) exitWith {hint format["Die Polizei ist derzeit nicht erreichbar. Bitte versuche es später erneut."];
	};
	ctrlShow[888895,false];
	if (_msg == "") exitWith {hint "Sie müssen eine Nachricht eingeben, die gesendet werden soll!";
		ctrlShow[888895,true];
	};
		[ObjNull,_msg,player,1] remoteExec ["TON_fnc_handleMessages",2];
		_to = "Police";
		hint format["You sent %1 a message: %2",_to,_msg];
		ctrlShow[888895,true];
		closeDialog 887890;
 };
 
 //emsrequest	
 case 3:	{ if (({side _x == independent} count playableUnits) == 0) exitWith {hint format["Derzeit ist keine Feuerwehr im Dienst. Bitte versuche es später erneut."];
	};
	ctrlShow[888899,false];
	if (_msg == "") exitWith {hint "Sie müssen eine Nachricht eingeben, die gesendet werden soll!";
	ctrlShow[888899,true];
	};
	[ObjNull,_msg,player,3] remoteExec ["TON_fnc_handleMessages",2];
	hint format["Sie haben eine Nachricht an alle Feuerwehr-Einheiten gesendet.",_msg];
	ctrlShow[888899,true];
	closeDialog 887890;
 };
 
 //msgadmin	
 case 4:	{ ctrlShow[888896,false];
	if (_msg == "") exitWith {hint "Sie müssen eine Nachricht eingeben, die gesendet werden soll!";
		ctrlShow[888896,true];
	};
	[ObjNull,_msg,player,2] remoteExec ["TON_fnc_handleMessages",2];
	_to = "The Admins";
	hint format["You sent %1 a message: %2",_to,_msg];
	ctrlShow[888896,true];
	closeDialog 887890;
 };

 //adminToPerson	
 case 5:	{ if ((call husky_adminlevel) < 1) exitWith {hint "Sie sind keine Bürgermeister!";
	};
	if (isNULL husky_smartphoneTarget) exitWith {hint format["Keine Person ausgewählt!"];
	};
	if (_msg == "") exitWith {hint "Sie müssen eine Nachricht eingeben, die gesendet werden soll!";
	};
		[husky_smartphoneTarget,_msg,player,4] remoteExec ["TON_fnc_handleMessages",2];
		hint format["Adminnachricht an: %1 - Nachricht: %2",name husky_smartphoneTarget,_msg];
		closeDialog 88883;
 };
 
 //emergencyloading	
	case 6:	{ if ((FETCH_CONST(husky_adminlevel) < 1)) then {
		ctrlShow[888898,false];
		ctrlShow[888896,true];
	} else { 
		ctrlShow[888898,true];
		ctrlShow[888896,false];
	};
 };
 
 //adminMsgAll	
 case 7:	{ if ((FETCH_CONST(husky_adminlevel) < 1)) exitWith {hint "DU bist kein Bürgermeister!";
	};
	if (_msg == "") exitWith {hint "Sie müssen eine Nachricht eingeben, die gesendet werden soll!";
	};
		[ObjNull,_msg,player,5] remoteExec ["TON_fnc_handleMessages",2];
		hint format["Eine Nachricht an alle Admins gesendet: %1",_msg];
		closeDialog 887890;
	};
};