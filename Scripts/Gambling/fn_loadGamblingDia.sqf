#include "..\..\script_macros.hpp"

/*
	Author : Yasar-S
	Descripton : Fragt den Server nach den Aktuellen Daten ab
	desclaimer : Das nutzen dieses Scriptes ohne diesen Header ist nicht erlaubt
*/

disableSerialization;
private["_display","_betButton","_expLevel"];


_display = findDisplay 1350;
if(isNull _display) exitWith {};
_betButton = _display displayCtrl 1354;

if(!(missionNamespace getVariable ["Gambling_Input",true])) then {
    _betButton ctrlEnable false;
    _betButton ctrlSetText "Generierung...";
};

[] call husky_fnc_updateGamblingDatas;