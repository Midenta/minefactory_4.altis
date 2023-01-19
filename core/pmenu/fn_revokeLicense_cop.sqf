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
_Btn10 = _display DisplayCtrl 51017;//Waffe geben
_Btn11 = _display DisplayCtrl 51007;//Waffe+ nehmen
_Btn12 = _display DisplayCtrl 51018;//Waffe+ geben
_Btn13 = _display DisplayCtrl 51008;//Jagd nehmen
_Btn14 = _display DisplayCtrl 51019;//Jagd geben
_Btn15 = _display DisplayCtrl 51009;//Alle nehmen
husky_pInact_curTarget = _curTarget;

//Führerschein Lizenz nehmen
_Btn1 buttonSetAction "[50] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//Führerschein Lizenz geb
_Btn2 buttonSetAction "[51] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//LKW Führerschein Lizenz nehmen
_Btn3 buttonSetAction "[52] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//LKW Führerschein Lizenz geben
_Btn4 buttonSetAction "[53] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//Pilotenschein Lizenz nehmen
_Btn5 buttonSetAction "[54] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//Pilotenschein Lizenz geben
_Btn6 buttonSetAction "[55] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//Bootsschein Lizenz nehmen
_Btn7 buttonSetAction "[56] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//Bootsschein Lizenz geben
_Btn8 buttonSetAction "[57] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//Waffenschein Lizenz nehmen
_Btn9 buttonSetAction "[58] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//Waffenschein Lizenz geben
_Btn10 buttonSetAction "[59] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//Taucher Lizenz nehmen
_Btn11 buttonSetAction "[60] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//Taucher Lizenz geben
_Btn12 buttonSetAction "[61] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//Flugzeugpilot Lizenz nehmen
_Btn13 buttonSetAction "[62] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
//Flugzeugpilot Lizenz geben
_Btn14 buttonSetAction "[63] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";

//Alle Lizenz nehmen
_Btn15 buttonSetAction "[64] remoteExecCall [""husky_fnc_removeLicenses"",husky_pInact_curTarget]; closeDialog 0;";
