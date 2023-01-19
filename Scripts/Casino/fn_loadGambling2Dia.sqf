#include "..\..\script_macros.hpp"

/*
	Author : Yasar-S
	Descripton : Fragt den Server nach den Aktuellen Daten ab
	desclaimer : Das nutzen dieses Scriptes ohne diesen Header ist nicht erlaubt
*/

disableSerialization;


private _display = findDisplay 21350;
if(isNull _display) exitWith {};
private _betButton = _display displayCtrl 21354;

if(!(missionNamespace getVariable ["Gambling2_Input",true])) then {
    _betButton ctrlEnable false;
    _betButton ctrlSetText "Generierung...";
};

[] call husky_fnc_updateGambling2Datas;