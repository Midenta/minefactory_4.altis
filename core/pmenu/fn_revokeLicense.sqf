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
private["_display","_curTarget","_Btn1","_Btn2","_Btn3","_Btn4","_Btn5","_Btn6","_Btn7","_Btn8","_Btn9","_Btn10","_Btn11","_Btn12","_Btn13","_Btn14","_Btn15"];
createDialog "revokeLicense_Menu";
disableSerialization;
_curTarget = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if (isNull _curTarget) exitWith {["Falsches Ziel!", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification; closeDialog 0;}; //Bad target
if (!isPlayer _curTarget && side _curTarget == civilian) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Nicht möglich!</t>"; closeDialog 0;}; //Bad side check?

_display = findDisplay 41000;
_Btn1 = _display displayCtrl 41002;	//Führerschein nehmen
_Btn2 = _display displayCtrl 41013;	//Führerschein geben
_Btn3 = _display displayCtrl 41003;	//LKW nehmen
_Btn4 = _display displayCtrl 41014;	//LKW geben
_Btn5 = _display displayCtrl 41004;	//Heli nehmen
_Btn6 = _display displayCtrl 41015;	//Heli geben
_Btn7 = _display DisplayCtrl 41005;	//Booten nehmen
_Btn8 = _display DisplayCtrl 41016;	//Boot geben
_Btn9 = _display DisplayCtrl 41006;	//Waffe nehmen
_Btn10 = _display DisplayCtrl 41017;//Waffe geben
_Btn11 = _display DisplayCtrl 41007;//Waffe+ nehmen
_Btn12 = _display DisplayCtrl 41018;//Waffe+ geben
_Btn13 = _display DisplayCtrl 41008;//Jagd nehmen
_Btn14 = _display DisplayCtrl 41019;//Jagd geben
_Btn15 = _display DisplayCtrl 41009;//Alle nehmen
husky_pInact_curTarget = _curTarget;

//Führerschein Lizenz nehmen
_Btn1 buttonSetAction "[10] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//Führerschein Lizenz geb
_Btn2 buttonSetAction "[11] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//LKW Führerschein Lizenz nehmen
_Btn3 buttonSetAction "[12] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//LKW Führerschein Lizenz geben
_Btn4 buttonSetAction "[13] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//Pilotenschein Lizenz nehmen
_Btn5 buttonSetAction "[14] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//Pilotenschein Lizenz geben
_Btn6 buttonSetAction "[15] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//Bootsschein Lizenz nehmen
_Btn7 buttonSetAction "[16] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//Bootsschein Lizenz geben
_Btn8 buttonSetAction "[17] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//Waffenschein Lizenz nehmen
_Btn9 buttonSetAction "[18] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//Waffenschein Lizenz geben
_Btn10 buttonSetAction "[19] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//Taucher Lizenz nehmen
_Btn11 buttonSetAction "[20] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//Taucher Lizenz geben
_Btn12 buttonSetAction "[21] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//Flugzeugpilot Lizenz nehmen
_Btn13 buttonSetAction "[22] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//Flugzeugpilot Lizenz geben
_Btn14 buttonSetAction "[23] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//Alle Lizenz nehmen
_Btn15 buttonSetAction "[24] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
