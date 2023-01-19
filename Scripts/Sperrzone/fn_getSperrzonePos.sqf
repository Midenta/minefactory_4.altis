#include "..\..\script_macros.hpp"
/*
    Author : Yasar-S
    Details : Erlaubt den Polizisten eine Sperrzone zu errichten.
*/
_ort = ctrlText 5004;

if(_ort == "") exitWith
{
	//["<t color='#FF0000'>Fehler !</t><br/>Ich kann mit solchen Informationen <t color='#FF0000'>KEINE</t> Sperrzone einrichten !","error"] call husky_fnc_buildHint;

	hint parseText format ["<t color='#FF0000'>Fehler !</t><br/>Ich kann mit solchen Informationen <t color='#FF0000'>KEINE</t> Sperrzone einrichten !"];
};

//["Klick nun auf die Karte um die Sperrzone zu setzen !","info"] call husky_fnc_buildHint;
hint "Klick nun auf die Karte um die Sperrzone zu setzen !";

onMapSingleClick "[(_pos select 0),(_pos select 1)] spawn husky_fnc_placeSperrzone; true;";