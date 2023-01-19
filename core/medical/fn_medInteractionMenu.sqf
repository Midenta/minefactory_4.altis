#include "..\..\script_macros.hpp"
/*
 File: fn_civInteractionMenu.sqf
 Author: John 'Hannibal' Smith

 Description:
 Setzt ein Interaktionsmen� für die Zivilisten

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
#define Btn1 37450
#define Btn2 37451
#define Btn3 37452
#define Btn4 37453
#define Btn5 37454
#define Btn6 37455
#define Btn7 37456
#define Btn8 37457
#define Btn9 37458
#define Btn10 37459
#define Btn11 37460
#define Title 37401

private ["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8","_Btn9","_Btn10","_Btn11"];

disableSerialization;
_curTarget = param [0,objNull,[objNull]];
_seizeRank = husky_SETTINGS(getNumber,"seize_minimum_rank");

if (player getVariable ["Escorting", false]) then {
    if (isNull _curTarget) exitWith {closeDialog 0;}; //Bad target
    if (!isPlayer _curTarget && side _curTarget isEqualTo civilian) exitWith {closeDialog 0;}; //Bad side check?
    if (player distance _curTarget > 4 ) exitWith {closeDialog 0;}; // Prevents menu accessing from far distances.
};

if (!dialog) then {
    createDialog "pInteraction_Menu";
};

_display = findDisplay 37400;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;
_Btn4 = _display displayCtrl Btn4;
_Btn5 = _display displayCtrl Btn5;
_Btn6 = _display displayCtrl Btn6;
_Btn7 = _display displayCtrl Btn7;
_Btn8 = _display displayCtrl Btn8;
_Btn9 = _display displayCtrl Btn9;
_Btn10 = _display displayCtrl Btn10;
_Btn11 = _display displayCtrl Btn11;
husky_pInact_curTarget = _curTarget;

if (player getVariable ["isEscorting",false]) then {
    { _x ctrlShow false; } forEach [_Btn1,_Btn2,_Btn3,_Btn4,_Btn5,_Btn6,_Btn7,_Btn8,_Btn9,_Btn10,_Btn11];
};

//Set Unrestrain Button

if (!(_curtarget getVariable ["restrained",false])) then {
    _Btn1 ctrlSetText localize "STR_pInAct_Restrain";
    _Btn1 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_restrainAction; closeDialog 0;";
	_Btn2 ctrlShow false;
	_Btn6 ctrlShow false;
	_Btn7 ctrlShow false;
	_Btn3 ctrlShow false;
} else {
    _Btn1 ctrlSetText localize "STR_pInAct_Unrestrain";
    _Btn1 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_unrestrain; closeDialog 0;";
};
/*
if (!(_curTarget getVariable ["restrained", false])) then {
    _Btn1 ctrlSetText localize "STR_pInAct_Restrain";
    _Btn1 buttonSetAction "[] call husky_fnc_tieingAction; closeDialog 0;";
    _Btn2 ctrlShow false;
	_Btn6 ctrlShow false;
	_Btn7 ctrlShow false;
	_Btn3 ctrlShow false;
} else {
    _Btn1 ctrlSetText localize "STR_pInAct_Unrestrain";
    _Btn1 buttonSetAction "[] call husky_fnc_untie; closeDialog 0;";
};
*/
//Set Escort Button
if (player getVariable ["isEscorting",false]) then {
    _Btn2 ctrlSetText localize "STR_pInAct_StopEscort";
    _Btn2 buttonSetAction "[] call husky_fnc_stopEscorting; closeDialog 0;";
} else {
    if (!(_curTarget getVariable ["restrained",false])) then {
		_Btn6 ctrlShow false;
		_Btn7 ctrlShow false;
    } else {
        _Btn2 ctrlSetText localize "STR_pInAct_Escort";
        _Btn2 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_escortAction; closeDialog 0;";
    };
};

//In Fahrzeug
_Btn3 ctrlSetText localize "STR_pInAct_PutInCar";
_Btn3 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_putInCar; closeDialog 0;";

//Set Ticket Button
_Btn4 ctrlSetText localize "STR_pInAct_Ticket_medBtn";
_Btn4 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_ticketAction;";	//husky_fnc_ticketAction_med

//Button 5
//_Btn5 ctrlSetText "Person voll heilen";
//_Btn5 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_ehk;";

//Button 6
//_Btn6 ctrlSetText "Selbst heilen";
//_Btn6 buttonSetAction "[player] remoteExecCall [""husky_fnc_cannabis"",husky_pInact_curTarget]; closeDialog 0;";

_Btn7 ctrlSetText "Hinsetzten";
_Btn7 buttonSetAction "[player] remoteExecCall [""husky_fnc_copSit"",husky_pInact_curTarget]; closeDialog 0;";

_Btn8 ctrlSetText "Aufstehen";
_Btn8 buttonSetAction "[player] remoteExecCall [""husky_fnc_copStand"",husky_pInact_curTarget]; closeDialog 0;";

//Button 9
_Btn9 ctrlSetText "Ephedrin verabreichen";
_Btn9 buttonSetAction "[player] remoteExecCall [""husky_fnc_heroine"",husky_pInact_curTarget]; closeDialog 0;[getPlayerUID player, ""Ephedrin verabreichen"", format [""%1 - %2 hat %3 Ephedrin verabreichen"",profileName,(getPlayerUID player),_curTarget]] remoteExec [""HC_fnc_AdvancedLog"",2];";

//Button 10
_Btn10 ctrlSetText "Marijuana verabreichen";
_Btn10 buttonSetAction "[player] remoteExecCall [""husky_fnc_cannabis"",husky_pInact_curTarget]; closeDialog 0;[getPlayerUID player, ""Marijuana verabreichen"", format [""%1 - %2 hat %3 ein Marijuana verabreichen."",profileName,(getPlayerUID player),_curTarget]] remoteExec [""HC_fnc_AdvancedLog"",2];";


_Btn11 ctrlSetText "Lizenzen Feuerwehr";
_Btn11 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_revokeLicense_med;";
if (!(license_med_ausbildermed)) then {_btn11 ctrlEnable false;};


//SETZE false AUF true WENN DU DEN BUTTON ANGEZEIGT HABEN WILLST!
_Btn1 ctrlShow true;		//Festnehmen
_Btn2 ctrlShow true;		//Escorting
_Btn3 ctrlShow true;		//Ins Fahrzeug
_Btn4 ctrlShow true;		//Rechnung
_Btn5 ctrlShow false;		//Heilen 50%
_Btn6 ctrlShow false;		//Heilen 100%
_Btn7 ctrlShow true;		//Aufstehen
_Btn8 ctrlShow true;		//Marijuana verabreichen
_Btn9 ctrlShow true;		//Ephedrin verabreichen
_Btn10 ctrlShow true;		//LSD verabreichen	aus
_Btn11 ctrlShow true;		//Lizenzen Feuerwehr
