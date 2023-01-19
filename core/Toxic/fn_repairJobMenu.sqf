#include "..\..\script_macros.hpp"
/*
?
	File: fn_jobMenu.sq?f
	Author: ToxicRageTv?
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

*/
if (dialog || !alive player) exitWith {};
if !(playerSide isEqualTo civilian) exitWith {};

private ["_display","_curTarget","_seizeRank","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8","_Btn9","_Btn10"];

disableSerialization;

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

{ _x ctrlShow false; } forEach [_Btn2,_Btn3,_Btn4,_Btn5,_Btn6,_Btn7,_Btn8,_Btn9,_Btn10];

if (player getVariable "husky_repairMan") then {
	_Btn1 ctrlSetText "Leave Job";
	_Btn1 buttonSetAction "		
		hint 'You Left You Job';
		player setVariable ['husky_repairMan',false,true];
		closeDialog 0;
	";
} else {
	_Btn1 ctrlSetText "Become Repair Man";
	_Btn1 buttonSetAction "
		hint 'You Have Become A Repair Man, You Can Now Go Around The Map Repairing Objects';
		player setVariable ['husky_repairMan',true];
		closeDialog 0;
	";	
};