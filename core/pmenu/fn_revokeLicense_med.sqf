/*
 File: fn_revokeLicense.sqf
 Author: Michael Francis
 Description:
 Allows cops to revoke individual licenses, or all licenses. Vehicle related only.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8","_Btn9","_Btn10","_Btn11","_Btn12","_Btn13","_Btn14","_Btn15","_Btn16","_Btn17","_Btn18","_Btn19","_Btn20","_Btn21","_Btn22","_Btn23","_Btn24","_Btn25"];
createDialog "revokeLicense_Menu_med";
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if (isNull _curTarget) exitWith {["Falsches Ziel!", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification; closeDialog 0;}; //Bad target
if (!isPlayer _curTarget && side _curTarget == independent) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Nicht möglich!</t>"; closeDialog 0;}; //Bad side check?

_display = findDisplay 71000;
_Btn1 = _display displayCtrl 71002;	//Führerschein nehmen
_Btn2 = _display displayCtrl 71013;	//Führerschein geben
_Btn3 = _display displayCtrl 71003;	//LKW nehmen
_Btn4 = _display displayCtrl 71014;	//LKW geben
_Btn5 = _display displayCtrl 71004;	//Heli nehmen
_Btn6 = _display displayCtrl 71015;	//Heli geben
_Btn7 = _display DisplayCtrl 71005;	//Booten nehmen
_Btn8 = _display DisplayCtrl 71016;	//Boot geben
_Btn9 = _display DisplayCtrl 71006;	//Waffe nehmen
_Btn10 = _display DisplayCtrl 71017;//Waffe geben
_Btn11 = _display DisplayCtrl 71007;//Waffe+ nehmen
_Btn12 = _display DisplayCtrl 71018;//Waffe+ geben
_Btn13 = _display DisplayCtrl 71008;//Jagd nehmen
_Btn14 = _display DisplayCtrl 71019;//Jagd geben
_Btn15 = _display DisplayCtrl 71009;//Alle nehmen
_Btn16 = _display DisplayCtrl 71020;	//L�schfahrzeug
_Btn17 = _display DisplayCtrl 71021;	//Bergrettung
_Btn18 = _display DisplayCtrl 71022;	//Ausbilder
_Btn19 = _display DisplayCtrl 71023;	//Kathastropenschutz
_Btn20 = _display DisplayCtrl 71024;	//Bauer
_Btn21 = _display DisplayCtrl 71025;	//L�schfahrzeug
_Btn22 = _display DisplayCtrl 71026;	//Bergrettung
_Btn23 = _display DisplayCtrl 71027;	//Ausbilder
_Btn24 = _display DisplayCtrl 71028;	//Kathastropenschutz
_Btn25 = _display DisplayCtrl 71029;	//Bauer
husky_pInact_curTarget = _curTarget;

//Führerschein Lizenz nehmen
_Btn1 buttonSetAction "[70] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//Führerschein Lizenz geb
_Btn2 buttonSetAction "[71] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//LKW Führerschein Lizenz nehmen
_Btn3 buttonSetAction "[72] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//LKW Führerschein Lizenz geben
_Btn4 buttonSetAction "[73] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//Pilotenschein Lizenz nehmen
_Btn5 buttonSetAction "[74] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//Pilotenschein Lizenz geben
_Btn6 buttonSetAction "[75] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//Bootsschein Lizenz nehmen
_Btn7 buttonSetAction "[76] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//Bootsschein Lizenz geben
_Btn8 buttonSetAction "[77] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//Waffenschein Lizenz nehmen
_Btn9 buttonSetAction "[78] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//Waffenschein Lizenz geben
_Btn10 buttonSetAction "[79] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//Taucher Lizenz nehmen
_Btn11 buttonSetAction "[80] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//Taucher Lizenz geben
_Btn12 buttonSetAction "[81] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//Flugzeugpilot Lizenz nehmen
_Btn13 buttonSetAction "[82] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//Flugzeugpilot Lizenz geben
_Btn14 buttonSetAction "[83] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//Alle Lizenz nehmen
_Btn15 buttonSetAction "[84] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

_Btn16 buttonSetAction "[85] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

_Btn17 buttonSetAction "[86] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

_Btn18 buttonSetAction "[87] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

_Btn19 buttonSetAction "[88] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

_Btn20 buttonSetAction "[89] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

_Btn21 buttonSetAction "[90] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

_Btn22 buttonSetAction "[91] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

_Btn23 buttonSetAction "[92] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

_Btn24 buttonSetAction "[93] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

_Btn25 buttonSetAction "[94] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
