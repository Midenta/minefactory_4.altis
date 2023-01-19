#include "..\..\script_macros.hpp"
/*
    File: fn_civInteractionMenu.sqf (fn_copInteractionMenu.sqf)
    Author: Bryan "Tonic" Boardwine
		Edited by Felix von Studinske
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

private ["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8","_Btn9","_Btn10","_Btn11"];

disableSerialization;
_curTarget = param [0,objNull,[objNull]];
if (isNull _curTarget) then {if (!isNull cursorTarget) then {_curTarget = cursorTarget;} else {if (!isNull cursorObject) then {_curTarget = cursorObject;} else {_curTarget = objNull;};};};
if (isNull _curTarget) exitWith {hint "Kein Ziel im Visier";};
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
//Set Unrestrain Button
if (!(_curtarget getVariable ["restrained",false])) then {
    _Btn1 ctrlSetText localize "STR_pInAct_Restrain";
    _Btn1 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_restrainAction; closeDialog 0;";
	if (!(license_civ_restrain)) then {_btn1 ctrlEnable false;};

	//if (!(license_civ_escort)) then {_btn2 ctrlEnable false;};
	//if (!(license_civ_PullOut)) then {_btn3 ctrlEnable false;};

	_Btn2 ctrlShow false;
	_Btn3 ctrlShow false;
	_Btn4 ctrlShow false;
	_Btn5 ctrlShow false;
} else {
    _Btn1 ctrlSetText localize "STR_pInAct_Unrestrain";
    _Btn1 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_unrestrain; closeDialog 0;";
	if (!(license_civ_restrain)) then {_btn1 ctrlEnable false;};
	if (!(license_civ_escort)) then {_btn2 ctrlEnable false;};
	if (!(license_civ_PullOut)) then {_btn3 ctrlEnable false;};
};

//Set Escort Button
if (player getVariable ["isEscorting",false]) then {
    _Btn2 ctrlSetText localize "STR_pInAct_StopEscort";
    _Btn2 buttonSetAction "[] call husky_fnc_stopEscorting; closeDialog 0;";
	if (!(license_civ_restrain)) then {_btn1 ctrlEnable false;};
	if (!(license_civ_escort)) then {_btn2 ctrlEnable false;};
	
} else {
    if (!(_curTarget getVariable ["restrained",false])) then {
		_Btn4 ctrlShow false;
		_Btn5 ctrlShow false;
    } else {
        _Btn3 ctrlSetText localize "STR_pInAct_Escort";
        _Btn3 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_escortAction; closeDialog 0;";
		if (!(license_civ_restrain)) then {_btn1 ctrlEnable false;};
		if (!(license_civ_escort)) then {_btn3 ctrlEnable false;};
    };
};


_Btn3 ctrlSetText localize "STR_pInAct_PutInCar";
_Btn3 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_putInCar; closeDialog 0;";

_Btn4 ctrlSetText "Hinsetzten";
_Btn4 buttonSetAction "[player] remoteExecCall [""husky_fnc_copSit"",husky_pInact_curTarget]; closeDialog 0;";

_Btn5 ctrlSetText "Aufstehen";
_Btn5 buttonSetAction "[player] remoteExecCall [""husky_fnc_copStand"",husky_pInact_curTarget]; closeDialog 0;";

*/

//Set Unrestrain Button
if (!(_curtarget getVariable ["restrained",false])) then {
    _Btn1 ctrlSetText localize "STR_pInAct_Restrain";
    _Btn1 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_restrainAction; closeDialog 0;";
	if (!(license_civ_restrain)) then {_btn1 ctrlEnable false;};
	if (!(license_civ_escort)) then {_btn2 ctrlEnable false;};
	if (!(license_civ_PullOut)) then {_btn3 ctrlEnable false;};
	if (!(license_civ_Loot)) then {_Btn8 ctrlEnable false;};
} else {
    _Btn1 ctrlSetText localize "STR_pInAct_Unrestrain";
    _Btn1 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_unrestrain; closeDialog 0;";
};

/*
if (!(_curTarget getVariable ["tied", false])) then {
    _Btn1 ctrlSetText localize "STR_pInAct_Restrain";
    _Btn1 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_tieingAction; closeDialog 0;";
    if (!(license_civ_restrain)) then {_btn1 ctrlEnable false;};
	if (!(license_civ_escort)) then {_btn2 ctrlEnable false;};
	if (!(license_civ_PullOut)) then {_btn3 ctrlEnable false;};
} else {
    _Btn1 ctrlSetText localize "STR_pInAct_Unrestrain";
    _Btn1 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_untie; closeDialog 0;";
};
*/
if (player getVariable ["isEscorting",false]) exitWith {
	_Btn2 ctrlShow true;
	_Btn2 ctrlSetText localize "STR_pInAct_StopEscort";
	_Btn2 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_stopEscorting; closeDialog 0;";
	_Btn3 ctrlSetText localize "STR_pInAct_PutInCar";
	_Btn3 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_putInCar; closeDialog 0;";
	//{ _x ctrlShow false; } forEach [_Btn3,_Btn4,_Btn5,_Btn6,_Btn7,_Btn8,_Btn9,_Btn10];
	if (!(license_civ_restrain)) then {_btn1 ctrlEnable false;};
	if (!(license_civ_escort)) then {_btn2 ctrlEnable false;};
	if (!(license_civ_PullOut)) then {_btn3 ctrlEnable false;};
	if (!(license_civ_Loot)) then {_Btn10 ctrlEnable false;};
	if (!(license_civ_folter)) then {_Btn8 ctrlEnable false;};
	if (!(license_civ_folter)) then {_Btn9 ctrlEnable false;};
	
	_Btn1 ctrlShow true;		//Restarin
	_Btn2 ctrlShow true;		//Escorting
	_Btn3 ctrlShow true;		//Ins Fahrzeug
	_Btn4 ctrlShow false;		//Gefangenen hinsetzten lassen
	_Btn5 ctrlShow false;		//Gefangenen aufstehen lassen
	_Btn6 ctrlShow false;		//NIX
	_Btn7 ctrlShow false;		//NIX
	_Btn8 ctrlShow false;		//NIX
	_Btn9 ctrlShow false;		//NIX
	_Btn10 ctrlShow false;		//NIX
	_Btn11 ctrlShow false;		//NIX
};

if (_curTarget getVariable ["restrained",false]) then {
	//Set Unrestrain Button
	_Btn1 ctrlSetText localize "STR_pInAct_Unrestrain";
	_Btn1 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_unrestrain; closeDialog 0;";
	if !(player getVariable ["isEscorting",false]) then {
		_Btn2 ctrlSetText localize "STR_pInAct_Escort";
		_Btn2 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_escortAction; closeDialog 0;";
	};
	_Btn3 ctrlSetText localize "STR_pInAct_PutInCar";
	_Btn3 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_putInCar; closeDialog 0;";
	//{ _x ctrlShow false; } forEach [_Btn4,_Btn5,_Btn6,_Btn7,_Btn8,_Btn9,_Btn10];
	if (!(license_civ_restrain)) then {_btn1 ctrlEnable false;};
	if (!(license_civ_escort)) then {_btn2 ctrlEnable false;};
	if (!(license_civ_PullOut)) then {_btn3 ctrlEnable false;};
	if (!(license_civ_Loot)) then {_Btn10 ctrlEnable false;};
	if (!(license_civ_folter)) then {_Btn8 ctrlEnable false;};
	if (!(license_civ_folter)) then {_Btn9 ctrlEnable false;};
	
	
	_Btn1 ctrlShow true;		//Restrain
	_Btn2 ctrlShow true;		//Escorting
	_Btn3 ctrlShow true;		//Ins Fahrzeug
	_Btn4 ctrlShow false;		//Gefangenen hinsetzten lassen
	_Btn5 ctrlShow false;		//Gefangenen aufstehen lassen
	_Btn6 ctrlShow true;		//NIX
	_Btn7 ctrlShow true;		//NIX
	_Btn8 ctrlShow true;		//NIX
	_Btn9 ctrlShow true;		//NIX
	_Btn10 ctrlShow true;		//NIX
	_Btn11 ctrlShow true;		//NIX
};

/*
if ((_curTarget getVariable ["blindfolded", false])) then {
    _Btn4 ctrlSetText "Augenbinde ab";
    _Btn4 buttonSetAction "[] call husky_fnc_untieb; closeDialog 0;";
} else {
    _Btn4 ctrlSetText "Augenbinde";
    _Btn4 buttonSetAction "[] call husky_fnc_tieingActionb; closeDialog 0;";
};
if ((_curTarget getVariable ["gagged", false])) then {
    _Btn5 ctrlSetText "Knebel ab";
    _Btn5 buttonSetAction "[] call husky_fnc_removeGagAction; closeDialog 0;";
} else {
    _Btn5 ctrlSetText "Knebel";
    _Btn5 buttonSetAction "[] call husky_fnc_gagAction; closeDialog 0;";
};
*/

_Btn6 ctrlSetText "Hinsetzten";
_Btn6 buttonSetAction "[player] remoteExecCall [""husky_fnc_copSit"",husky_pInact_curTarget]; closeDialog 0;";

_Btn7 ctrlSetText "Aufstehen";
_Btn7 buttonSetAction "[player] remoteExecCall [""husky_fnc_copStand"",husky_pInact_curTarget]; closeDialog 0;";


if ((_curTarget getVariable ["blindfolded", false])) then {
    _Btn8 ctrlSetText "Augenbinde entfernen";
    _Btn8 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_untieb; closeDialog 0;";
} else {
    _Btn8 ctrlSetText "Augenbinde anlegen";
	_Btn8 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_tieingActionb; closeDialog 0;";
};
if ((_curTarget getVariable ["gagged", false])) then {
    _Btn9 ctrlSetText "Knebel entfernen";
    _Btn9 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_removeGagAction; closeDialog 0;";
} else {
    _Btn9 ctrlSetText "Knebel anlegen";
    _Btn9 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_gagAction; closeDialog 0;";
};


_Btn10 ctrlSetText "Inventar";
_Btn10 buttonSetAction "[husky_pInact_curTarget] spawn husky_fnc_zip_civ_viewinventory; closeDialog 0;";

_Btn11 ctrlSetText localize "STR_pAct_RobPerson";
_Btn11 buttonSetAction "[husky_pInact_curTarget] call husky_fnc_robAction; closeDialog 0;";



_Btn1 ctrlShow true;		//Escorting
_Btn2 ctrlShow true;		//Freilassen
_Btn3 ctrlShow true;		//Ins Fahrzeug
_Btn4 ctrlShow false;		//Augenbinde
_Btn5 ctrlShow false;		//Knebel
//_Btn6 ctrlShow true;		//Gefangenen hinsetztenlassen
//_Btn7 ctrlShow true;		//aufstehen lassen
//_Btn8 ctrlShow true;		//Inventar
//_Btn9 ctrlShow true;		//Ausrauben
//_Btn10 ctrlShow true;		//NIX
//_Btn11 ctrlShow true;		//NIX