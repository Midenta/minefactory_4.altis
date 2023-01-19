#include "..\..\script_macros.hpp"
/*
    File: fn_farmboost.sqf
    Author: Alex Smith

    Description:

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
    -
*/

params [
["_result",[],[]]
];
//diag_log (_result select 3);
if!(isNil {fed_bank getVariable "Farmboost_Number"}) exitWith {[1,"Farmboost ist noch Aktiv"] remoteExecCall ["husky_fnc_broadcast",player];};
fed_bank setVariable ["Farmboost_Number",(_result select 3),true];
private _time = getNumber(missionConfigFile >> "Master_FarmBoost" >> (_result select 3) >> "time");
private _text = getText(missionConfigFile >> "Master_FarmBoost" >> (_result select 3) >> "text");
private _title = getText(missionConfigFile >> "Master_FarmBoost" >> (_result select 3) >> "titel");

timeline = time + (_time * 60);
//diag_log timeline;
private _marker1 = createMarker [(_result select 3), [1000.85,24999.6,-2.19804]];
(_result select 3) setMarkerType "mil_warning";
for "_i" from 0 to timeline do {
      if(round(timeline - time) < 1) exitWith {};
      (_result select 3) setMarkerText format["%2: %1 | Aktiv",[(timeline - time),"MM:SS"] call BIS_fnc_secondsToString,_title];
      sleep 0.1;
};
(_result select 3) setMarkerText format["%1: 00:00 | Deaktiviert",_title];
uisleep 5;
deleteMarker (_result select 3);
fed_bank setVariable ["Farmboost_Number",nil];
fed_bank setVariable ["Farmboost",false,true];
/*
params [
["(_result select 3)",[],[]]
];
//diag_log (_result select 3);
//[getPlayerUID player, "Farmcodes2", format ["hat den Code %1 eingelöst.",_code]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];		//Wird in farmboostquerry schon abgefragt, kp ob da auch hier gänge :D

//arma is scheiße

private _darray = _code select 0;
private _selarray = _darray select 3;


A= 250%		Abbauen/Verarbieter/Verkaufen
B= 100%		Abbauen/Verarbieter/Verkaufen
C= 50%		Abbauen/Verarbieter/Verkaufen
D= 250%		Abbauen/Verarbeiten
E= 100%		Abbauen/Verarbeiten
F= 50%		Abbauen/Verarbeiten
G= 250%		Abbauen/Verkaufen
H= 100%		Abbauen/Verkaufen
I= 50%		Abbauen/Verkaufen
J= 250%		Verarbieter/Verkaufen
K= 100%		Verarbieter/Verkaufen
L= 50%		Verarbieter/Verkaufen
M= 250%		Abbauen
N= 100%		Abbauen
O= 50%		Abbauen
P= 250%		Verarbeiten
Q= 100%		Verarbeiten
R= 50%		Verarbeiten
S= 250%		Verkaufen
T= 100%		Verkaufen
U= 50%		Verkaufen

ZZZ= 0%		Reset Boost

Abbauen = 15 Coins
Verarbeiten = 25 Coins

Verkaufen = 50 Coins


Stufe 50% = x1
Stufe 150% = x2
Stufe 250% = x3
*/

/*

if (_selarray == "A") then {
	hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (250% Farmen, 250% Verarbeiten, 250% Verkaufen) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
	 [[3],format ["<t size='1.65' color='#00CD00'>HGPD-Fahndungsliste</t><br/><br/><t size='1.1' align='center'>=<br/>Eine Person wurde zur<br/>Fahndung ausgeschrieben<br/>=</t><br/><br/><br/><t size='0.95' align='left' color='#79CdCd'>Person:</t><t size='1.05' align='right'><br/>%1</t><br/><br/><t size='0.95' align='left' color='#79CDCD'>Ausgeschrieben von:</t><t size='1.05' align='right'><br/>%2</t>",_unit getVariable["realname",name _unit],profileName],false] remoteExecCall ["husky_fnc_broadcast",RCLIENT];
    husky_farmboost_A = true;
    publicVariable "husky_farmboost_A";
};
if (_selarray == "B") then {
  hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (150% Farmen, 150% Verarbeiten, 150% Verkaufen) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_B = true;
    publicVariable "husky_farmboost_B";
};
if (_selarray == "C") then {
  hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (50% Farmen, 50% Verarbeiten, 50% Verkaufen) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_C = true;
    publicVariable "husky_farmboost_C";
};

if (_selarray == "D") then {
  hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (250% Farmen, 250% Verarbeiten) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_D = true;
    publicVariable "husky_farmboost_D";
};

if (_selarray == "E") then {
  hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (150% Farmen, 150% Verarbeiten) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_E = true;
    publicVariable "husky_farmboost_E";
};

if (_selarray == "F") then {
  hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (50% Farmen, 50% Verarbeiten) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_F = true;
    publicVariable "husky_farmboost_F";
};

if (_selarray == "G") then {
  hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (250% Farmen, 250% Verkaufen) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_G = true;
    publicVariable "husky_farmboost_G";
};

if (_selarray == "H") then {
  hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (150% Farmen, 150% Verkaufen) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_H = true;
    publicVariable "husky_farmboost_H";
};

if (_selarray == "I") then {
  hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (50% Farmen, 50% Verkaufen) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_I = true;
    publicVariable "husky_farmboost_I";
};

if (_selarray == "J") then {
  hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (250% Verarbeiten, 250% Verkaufen) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_J = true;
    publicVariable "husky_farmboost_J";
};

if (_selarray == "K") then {
  hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (150% Verarbeiten, 150% Verkaufen) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_K = true;
    publicVariable "husky_farmboost_K";
};

if (_selarray == "L") then {
  hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (50% Verarbeiten, 50% Verkaufen) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_L = true;
    publicVariable "husky_farmboost_L";
};

if (_selarray == "M") then {
  hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (250% Farmen) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_M = true;
    publicVariable "husky_farmboost_M";
};

if (_selarray == "N") then {
  hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (150% Farmen) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_N = true;
    publicVariable "husky_farmboost_N";
};

if (_selarray == "O") then {
  hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (50% Farmen) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_O = true;
    publicVariable "husky_farmboost_O";
};

if (_selarray == "P") then {
  hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (250% Verarbeiten) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_P = true;
    publicVariable "husky_farmboost_P";
};

if (_selarray == "Q") then {
  hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (150% Verarbeiten) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_Q = true;
    publicVariable "husky_farmboost_Q";
};

if (_selarray == "R") then {
  hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (50% Verarbeiten) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_R = true;
    publicVariable "husky_farmboost_R";
};

if (_selarray == "S") then {
  hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (250% Verkaufen) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_S = true;
    publicVariable "husky_farmboost_S";
};

if (_selarray == "T") then {
  hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (150% Verkaufen) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_T = true;
    publicVariable "husky_farmboost_T";
};

if (_selarray == "U") then {
  hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (50% Verkaufen) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_U = true;
    publicVariable "husky_farmboost_U";
};

if (_selarray == "ZZZ") then {
    hint parseText "<t underline='true' size='1.8' color='#7cff00'>Code erfolgreich aktiviert</t><br /><t size='1.5' color='#ffffff'>Der Farmboost (Reset) wurde erfolgreich eingelöst! Du kannst den Code nichtmehr benutzen!</t>";
    husky_farmboost_ZZZ = true;
    publicVariable "husky_farmboost_ZZZ";
};


husky_farmboost = true;
publicVariable "husky_farmboost";


if(!husky_farmboost) then {
    //hint "Ein schwerwiegender Fehler ist aufgetreten! Bitte kontaktiere schnellstm�glich einen Admin!";
    hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Ein schwerwiegender Fehler ist aufgetreten! Bitte kontaktiere schnellstmöglich einen Admin!</t>";
};

*/