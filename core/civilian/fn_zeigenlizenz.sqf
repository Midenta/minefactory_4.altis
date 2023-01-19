#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
case						script			wer
	[2] remoteExecCall ["husky_fnc_removeLicenses",_killer];
*/
private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8","_Btn9","_Btn10","_Btn11","_Btn12","_Btn13","_Btn14","_Btn15"];
createDialog "revokeLicense_Menu_cop";
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if (isNull _curTarget) exitWith {["Falsches Ziel!", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification; closeDialog 0;}; //Bad target
if (!isPlayer _curTarget && side _curTarget == west) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Nicht möglich!</t>"; closeDialog 0;}; //Bad side check?

_display = findDisplay 51000;
_Btn1 = _display displayCtrl 51002;	//Führerschein nehmen
_Btn2 = _display displayCtrl 51013;	//Führerschein geben
_Btn3 = _display displayCtrl 51003;	//LKW nehmen
_Btn4 = _display displayCtrl 51014;	//LKW geben
_Btn5 = _display displayCtrl 51004;	//Heli nehmen
_Btn6 = _display displayCtrl 51015;	//Heli geben
_Btn7 = _display DisplayCtrl 51005;	//Booten nehmen
_Btn8 = _display DisplayCtrl 51016;	//Boot geben
_Btn9 = _display DisplayCtrl 51006;	//Waffe nehmen
husky_pInact_curTarget = _curTarget;

//Führerschein Lizenz nehmen
_Btn1 buttonSetAction "[50] remoteExecCall [""husky_fnc_zeigenlizenz"",husky_pInact_curTarget]; closeDialog 0;";
//Führerschein Lizenz geb
_Btn2 buttonSetAction "[51] remoteExecCall [""husky_fnc_zeigenlizenz"",husky_pInact_curTarget]; closeDialog 0;";

//LKW Führerschein Lizenz nehmen
_Btn3 buttonSetAction "[52] remoteExecCall [""husky_fnc_zeigenlizenz"",husky_pInact_curTarget]; closeDialog 0;";
//LKW Führerschein Lizenz geben
_Btn4 buttonSetAction "[53] remoteExecCall [""husky_fnc_zeigenlizenz"",husky_pInact_curTarget]; closeDialog 0;";

//Pilotenschein Lizenz nehmen
_Btn5 buttonSetAction "[54] remoteExecCall [""husky_fnc_zeigenlizenz"",husky_pInact_curTarget]; closeDialog 0;";
//Pilotenschein Lizenz geben
_Btn6 buttonSetAction "[55] remoteExecCall [""husky_fnc_zeigenlizenz"",husky_pInact_curTarget]; closeDialog 0;";

//Bootsschein Lizenz nehmen
_Btn7 buttonSetAction "[56] remoteExecCall [""husky_fnc_zeigenlizenz"",husky_pInact_curTarget]; closeDialog 0;";
//Bootsschein Lizenz geben
_Btn8 buttonSetAction "[57] remoteExecCall [""husky_fnc_zeigenlizenz"",husky_pInact_curTarget]; closeDialog 0;";

//Waffenschein Lizenz nehmen
_Btn9 buttonSetAction "[58] remoteExecCall [""husky_fnc_zeigenlizenz"",husky_pInact_curTarget]; closeDialog 0;";





private "_state";
_state = param [0,1,[0]];

switch (_state) do {
    //Death while being wanted
    case 0: {
        missionNamespace setVariable [LICENSE_VARNAME("driver","civ"),false];
    };

};



