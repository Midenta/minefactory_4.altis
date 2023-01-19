#include "..\..\script_macros.hpp"
/*
    File: fn_copInteractionMenu.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Replaces the mass addactions for various cop actions towards another player.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
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

private ["_display","_curTarget","_seizeRank","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8","_Btn9","_Btn10","_Btn11"];

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

/*
if (player getVariable ["isEscorting",false]) then {
    { _x ctrlShow false; } forEach [_Btn1,_Btn2,_Btn3,_Btn5,_Btn6,_Btn7,_Btn8,_Btn9,_Btn10,_Btn11];
};
*/

//Set Unrestrain Button

if (!(_curtarget getVariable ["restrained",false])) then {
    _Btn1 ctrlSetText localize "STR_pInAct_Restrain";
    _Btn1 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_restrainAction; closeDialog 0;";
	_Btn3 ctrlShow false;
	_Btn5 ctrlShow true;
	_Btn6 ctrlShow true;
    _Btn7 ctrlShow true;
	_Btn8 ctrlShow true;
	_Btn9 ctrlShow true;
	_Btn10 ctrlShow true;
    _Btn11 ctrlShow true;
} else {
    _Btn1 ctrlSetText localize "STR_pInAct_Unrestrain";
    _Btn1 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_unrestrain; closeDialog 0;";
	_Btn3 ctrlShow true;
	_Btn5 ctrlShow true;
	_Btn6 ctrlShow true;
    _Btn7 ctrlShow true;
	_Btn8 ctrlShow true;
	_Btn9 ctrlShow true;
	_Btn10 ctrlShow true;
    _Btn11 ctrlShow true;
};
/*
if (!(_curTarget getVariable ["restrained", false])) then {
    _Btn1 ctrlSetText localize "STR_pInAct_Restrain";
    _Btn1 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_tieingAction; closeDialog 0;";
    _Btn5 ctrlShow false;
	_Btn6 ctrlShow false;
	_Btn8 ctrlShow false;
	_Btn9 ctrlShow false;
	_Btn10 ctrlShow false;
} else {
    _Btn1 ctrlSetText localize "STR_pInAct_Unrestrain";
    _Btn1 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_untie; closeDialog 0;";
	_Btn5 ctrlShow true;
	_Btn6 ctrlShow true;
	_Btn8 ctrlShow true;
	_Btn9 ctrlShow true;
	_Btn10 ctrlShow true;
};
*/
/*
//Set Check Licenses Button
_Btn2 ctrlSetText localize "STR_pInAct_checkLicenses";
_Btn2 buttonSetAction "[player] remoteExecCall [""husky_fnc_licenseCheck"",husky_pInact_curTarget]; closeDialog 0;";
*/
//Set Search Button
_Btn2 ctrlSetText localize "STR_pInAct_SearchPlayer";
_Btn2 buttonSetAction "[husky_pInact_curTarget] spawn husky_fnc_searchAction; closeDialog 0;";

//Set Escort Button
/*if (player getVariable ["isEscorting",false]) then {
    _Btn3 ctrlSetText localize "STR_pInAct_StopEscort";
    _Btn3 buttonSetAction "[] call husky_fnc_stopEscorting; closeDialog 0;";
} else {
    if (!(_curTarget getVariable ["restrained",false])) then {
		_Btn8 ctrlShow false;
		_Btn9 ctrlShow false;
		_Btn10 ctrlShow false;
    } else {
        _Btn3 ctrlSetText localize "STR_pInAct_Escort";
        _Btn3 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_escortAction; closeDialog 0;";
    };
};
*/
if (player getVariable ["isEscorting",false]) then {
    _Btn2 ctrlSetText localize "STR_pInAct_StopEscort";
    _Btn2 buttonSetAction "[] call husky_fnc_stopEscorting; closeDialog 0;";	
} else {
    if (!(_curTarget getVariable ["restrained",false])) then {
		_Btn8 ctrlShow false;
		_Btn9 ctrlShow false;
		_Btn10 ctrlShow false;
    } else {
        _Btn3 ctrlSetText localize "STR_pInAct_Escort";
        _Btn3 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_escortAction; closeDialog 0;";
    };
};

//Set Ticket Button
_Btn4 ctrlSetText localize "STR_pInAct_TicketBtn";
_Btn4 buttonSetAction "[husky_pInact_curTarget] spawn husky_fnc_ticketAction;";

_Btn5 ctrlSetText localize "STR_pInAct_Arrest";
_Btn5 buttonSetAction "closeDialog 0; [] call husky_fnc_showArrestDialog;";
_Btn5 ctrlEnable false;

_Btn6 ctrlSetText localize "STR_pInAct_PutInCar";
_Btn6 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_putInCar; closeDialog 0;";

//SeizeWeapons Button
//_Btn7 ctrlSetText localize "STR_pInAct_Seize";
//_Btn7 buttonSetAction "[husky_pInact_curTarget] spawn husky_fnc_seizePlayerAction; closeDialog 0;";

/*
//Lizens Menü
_Btn7 ctrlSetText localize "STR_pInAct_lizensmenu";
_Btn7 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_revokeLicense;";
//if (!(license_cop_copausbilder)) then {_btn8 ctrlEnable false;};
*/
_Btn7 ctrlSetText "Hinsetzten";
_Btn7 buttonSetAction "[player] remoteExecCall [""husky_fnc_copSit"",husky_pInact_curTarget]; closeDialog 0;";

_Btn8 ctrlSetText "Aufstehen";
_Btn8 buttonSetAction "[player] remoteExecCall [""husky_fnc_copStand"",husky_pInact_curTarget]; closeDialog 0;"; 


if ((_curTarget getVariable ["blindfolded", false])) then {
    _Btn9 ctrlSetText "Augenbinde entfernen";
    _Btn9 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_untieb; closeDialog 0;";
} else {
    _Btn9 ctrlSetText "Augenbinde anlegen";
	_Btn9 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_tieingActionb; closeDialog 0;";
};
if ((_curTarget getVariable ["gagged", false])) then {
    _Btn10 ctrlSetText "Knebel entfernen";
    _Btn10 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_removeGagAction; closeDialog 0;";
} else {
    _Btn10 ctrlSetText "Knebel anlegen";
    _Btn10 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_gagAction; closeDialog 0;";
};


_Btn11 ctrlSetText "Inventar";
_Btn11 buttonSetAction "[husky_pInact_curTarget] spawn husky_fnc_zip_viewinventory; closeDialog 0;";

/*
_Btn11 ctrlSetText "Lizensen Polizei";
_Btn11 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_revokeLicense_cop;";
if (!(license_cop_copausbilder)) then {_btn11 ctrlEnable false;};
*/
/*
_Btn11 ctrlSetText localize "STR_pAct_RobPerson";
_Btn11 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_robAction; closeDialog 0;";
*/

//if (FETCH_CONST(husky_coplevel) < _seizeRank) then {_Btn10 ctrlEnable false;};

{
    if ((player distance (getMarkerPos _x) <50)) exitWith { _Btn5 ctrlEnable true;};
} forEach husky_SETTINGS(getArray,"sendtoJail_locations");


//_Btn1 ctrlShow true;
_Btn2 ctrlShow true;
//_Btn3 ctrlShow true;
_Btn4 ctrlShow true;
//_Btn5 ctrlShow true;
//_Btn6 ctrlShow true;
//_Btn7 ctrlShow false;
//_Btn8 ctrlShow true;
//_Btn9 ctrlShow true;
//_Btn10 ctrlShow true;
_Btn11 ctrlShow true;


