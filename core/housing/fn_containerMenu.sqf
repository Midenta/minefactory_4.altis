#include "..\..\script_macros.hpp"
/*
    File: fn_containerMenu.sqf
    Author: NiiRoZz

    Description:
    Container interaction menu.

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
#define Title 37401

private ["_container","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8""_Btn9""_Btn10"];
disableSerialization;
_container = param [0,objNull,[objNull]];
if (isNull _container) exitWith {}; //Bad target

if (!dialog) then {
    createDialog "pInteraction_Menu";
};

_Btn1 = CONTROL(37400,Btn1);
_Btn2 = CONTROL(37400,Btn2);
_Btn3 = CONTROL(37400,Btn3);
_Btn4 = CONTROL(37400,Btn4);
_Btn5 = CONTROL(37400,Btn5);
_Btn6 = CONTROL(37400,Btn6);
_Btn7 = CONTROL(37400,Btn7);
_Btn8 = CONTROL(37400,Btn8);
_Btn9 = CONTROL(37400,Btn9);
_Btn10 = CONTROL(37400,Btn10);
{_x ctrlShow false;} forEach [_Btn1,_Btn2,_Btn3,_Btn4,_Btn5,_Btn6,_Btn7,_Btn8,_Btn9,_Btn10];

husky_pInact_container = _container;
if (playerSide isEqualTo west) then {
    _Btn1 ctrlSetText localize "STR_vInAct_SearchContainer";
    _Btn1 buttonSetAction "[husky_pInact_container] spawn husky_fnc_containerInvSearch; closeDialog 0;";
    _Btn1 ctrlShow true;
} else {
    _Btn1 ctrlSetText localize "STR_pInAct_RemoveContainer";
    _Btn1 buttonSetAction "[husky_pInact_container] spawn husky_fnc_removeContainer; closeDialog 0;";
    _Btn1 ctrlShow true;
};

/*_Btn1 ctrlShow true;*/
_Btn2 ctrlShow false;
_Btn3 ctrlShow false;
_Btn4 ctrlShow false;
_Btn5 ctrlShow false;
_Btn6 ctrlShow false;
_Btn7 ctrlShow false;
_Btn8 ctrlShow false;
_Btn9 ctrlShow false;	
_Btn10 ctrlShow false;	