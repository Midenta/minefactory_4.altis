#include "..\..\script_macros.hpp"
/*
    File: fn_importentdocumentinteraction.sqf
    Author: Deathman

    Description:
    Replaces the mass addactions for various cop actions towards another player.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!s
*/
disableSerialization;
params [
	["_curTarget",objNull,[objNull]]
];

if!(playerside isEqualTo civilian) exitWith {hint "Du bist kein Zivilist"};
if(vehicle player != player)exitWith {hint "Hey du bist noch im Fahrzeug"};
if!(alive player)exitWith {hint "Ich glaube du bist Tot"};
if(isNull _curTarget)exitWith {hint "Das ist doch kein Spieler"};
if!(alive _curTarget)exitWith {hint "Ich glaube die Person ist Tot"};

if (!dialog) then {
    createDialog "ausweisezeigen";
};

private _display = findDisplay 85000;
private _Btn1 = _display displayCtrl 85001;
private _Btn2 = _display displayCtrl 85002;
private _Btn3 = _display displayCtrl 85003;
private _Btn4 = _display displayCtrl 85004;
private _Btn5 = _display displayCtrl 85005;
private _Btn6 = _display displayCtrl 85006;
private _Btn7 = _display displayCtrl 85007;
private _Btn8 = _display displayCtrl 85008;
private _Btn9 = _display displayCtrl 85009;
private _Btn10 = _display displayCtrl 850010;
husky_linteract_target = _curTarget;
husky_linteract_player = player;

//_Btn1 ctrlSetText "textures\Menus\importentdocuments\";
if(husky_linteract_target isKindOf "Man") then {
	_Btn1 ctrlSetText "textures\Menus\importentdocuments\Button_Ausweis.paa";
	_Btn1 ctrlSetTooltip "Ausweis";
	_Btn1 ctrlEnable true;
	_Btn1 buttonSetAction "[husky_idcard_data,getplayeruid husky_linteract_player,player] remoteExec [""husky_fnc_show_idcard"",husky_linteract_target]";
}else{
	_Btn1 ctrlSetText "textures\Menus\importentdocuments\Button_Ausweis.paa";
	_Btn1 ctrlSetTooltip "Ausweis";
	_Btn1 ctrlEnable false;
};

if(license_civ_driver) then {
	_Btn2 ctrlSetText "textures\Menus\importentdocuments\Button_licences_driver.paa";
	_Btn2 ctrlSetTooltip "Führerschein";
	_Btn2 ctrlEnable true;
	_Btn2 buttonSetAction "[""Führerschein"",husky_idcard_data,getplayeruid husky_linteract_player] remoteExec [""husky_fnc_documents_show"",husky_linteract_target]";
} else {
	_Btn2 ctrlSetText "textures\Menus\importentdocuments\Button_licences_driver.paa";
	_Btn2 ctrlSetTooltip "Führerschein";
	_Btn2 ctrlEnable false;
};

if(license_civ_trucking) then {
	_Btn3 ctrlSetText "textures\Menus\importentdocuments\Button_licences_lkw.paa";
	_Btn3 ctrlSetTooltip "LKW-Führerschein";
	_Btn3 ctrlEnable true;
	_Btn3 buttonSetAction "[""LKW-Führerschein"",husky_idcard_data,getplayeruid husky_linteract_player] remoteExec [""husky_fnc_documents_show"",husky_linteract_target]";
} else {
	_Btn3 ctrlSetText "textures\Menus\importentdocuments\Button_licences_lkw.paa";
	_Btn3 ctrlSetTooltip "LKW-Führerschein";
	_Btn3 ctrlEnable false;
};

if(license_civ_truckingplus) then {
	_Btn4 ctrlSetText "textures\Menus\importentdocuments\Button_licences_lkw_erweiterung.paa";
	_Btn4 ctrlSetTooltip "LKW-Führerschein-Plus";
	_Btn4 ctrlEnable true;
	_Btn4 buttonSetAction "[""LKW-Führerschein-Plus"",husky_idcard_data,getplayeruid husky_linteract_player] remoteExec [""husky_fnc_documents_show"",husky_linteract_target]";
} else {
	_Btn4 ctrlSetText "textures\Menus\importentdocuments\Button_licences_lkw_erweiterung.paa";
	_Btn4 ctrlSetTooltip "LKW-Führerschein-Plus";
	_Btn4 ctrlEnable false;
};

if(license_civ_schwerlast) then {
	_Btn5 ctrlSetText "textures\Menus\importentdocuments\Button_licences_Schwerlast.paa";
	_Btn5 ctrlSetTooltip "Schwerlast";
	_Btn5 ctrlEnable true;
	_Btn5 buttonSetAction "[""Schwerlast"",husky_idcard_data,getplayeruid husky_linteract_player] remoteExec [""husky_fnc_documents_show"",husky_linteract_target]";
} else {
	_Btn5 ctrlSetText "textures\Menus\importentdocuments\Button_licences_Schwerlast.paa";
	_Btn5 ctrlSetTooltip "Schwerlast";
	_Btn5 ctrlEnable false;
};

if(license_civ_anwaltslizenz) then {
	_Btn6 ctrlSetText "textures\Menus\importentdocuments\Button_licences_Anwalt.paa";
	_Btn6 ctrlSetTooltip "Anwalt";
	_Btn6 ctrlEnable true;
	_Btn6 buttonSetAction "[""Anwalt"",husky_idcard_data,getplayeruid husky_linteract_player] remoteExec [""husky_fnc_documents_show"",husky_linteract_target]";
} else {
	_Btn6 ctrlSetText "textures\Menus\importentdocuments\Button_licences_Anwalt.paa";
	_Btn6 ctrlSetTooltip "Anwalt";
	_Btn6 ctrlEnable false;
};

if(license_civ_pilot) then {
	_Btn7 ctrlSetText "textures\Menus\importentdocuments\Button_licences_helicopter.paa";
	_Btn7 ctrlSetTooltip "Pilotenschein";
	_Btn7 ctrlEnable true;
	_Btn7 buttonSetAction "[""Pilotenschein"",husky_idcard_data,getplayeruid husky_linteract_player] remoteExec [""husky_fnc_documents_show"",husky_linteract_target]";
} else {
	_Btn7 ctrlSetText "textures\Menus\importentdocuments\Button_licences_helicopter.paa";
	_Btn7 ctrlSetTooltip "Pilotenschein";
	_Btn7 ctrlEnable false;
};

if(license_civ_Flugzeugpilot) then {
	_Btn8 ctrlSetText "textures\Menus\importentdocuments\Button_licences_flugzeug.paa";
	_Btn8 ctrlSetTooltip "Flugzeugschein";
	_Btn8 ctrlEnable true;
	_Btn8 buttonSetAction "[""Flugzeugschein"",husky_idcard_data,getplayeruid husky_linteract_player] remoteExec [""husky_fnc_documents_show"",husky_linteract_target]";
} else {
	_Btn8 ctrlSetText "textures\Menus\importentdocuments\Button_licences_flugzeug.paa";
	_Btn8 ctrlSetTooltip "Flugzeugschein";
	_Btn8 ctrlEnable false;
};

if(license_civ_gun) then {
	_Btn9 ctrlSetText "textures\Menus\importentdocuments\Button_licences_Weapon.paa";
	_Btn9 ctrlSetTooltip "Waffenschein";
	_Btn9 ctrlEnable true;
	_Btn9 buttonSetAction "[""Waffenschein"",husky_idcard_data,getplayeruid husky_linteract_player] remoteExec [""husky_fnc_documents_show"",husky_linteract_target]";
} else {
	_Btn9 ctrlSetText "textures\Menus\importentdocuments\Button_licences_Weapon.paa";
	_Btn9 ctrlSetTooltip "Waffenschein";
	_Btn9 ctrlEnable false;
};

if(license_civ_gunplus) then {
	_Btn10 ctrlSetText "textures\Menus\importentdocuments\Button_licences_Weapon_Plus.paa";
	_Btn10 ctrlSetTooltip "Waffenschein-Plus";
	_Btn10 ctrlEnable true;
	_Btn10 buttonSetAction "[""Waffenschein-Plus"",husky_idcard_data,getplayeruid husky_linteract_player] remoteExec [""husky_fnc_documents_show"",husky_linteract_target]";
} else {
	_Btn10 ctrlSetText "textures\Menus\importentdocuments\Button_licences_Weapon_Plus.paa";
	_Btn10 ctrlSetTooltip "Waffenschein-Plus";
	_Btn10 ctrlEnable false;
};

