#include "..\..\script_macros.hpp"
/*
	Author : Yasar-S
	Descripton : Gibt den Zeitrahmen zum nächsten Roulette an.
	desclaimer : Das nutzen dieses Scriptes ohne diesen Header ist nicht erlaubt
*/

disableSerialization;
private["_display","_progressNextRoulette","_infoNextRoulette"];

_display = findDisplay 1350;
if(isNull _display) exitWith {};

_progressNextRoulette = _display displayCtrl 1355;
_infoNextRoulette = _display displayCtrl 1359;

for "_i" from 0 to 1 step 0 do {
    _progressNextRoulette progressSetPosition 1;
    _infoNextRoulette ctrlSetText "---";
    
    waitUntil {
        (!((missionNamespace getVariable ["Gambling_TimerGlobal",[]]) isEqualTo []) && (count (missionNamespace getVariable ["Gambling_TimerGlobal",[]])) isEqualTo 2) || isNull _display
    };
    if(isNull _display) exitWith {};
    
    private _timeData = [];
    _timeData = missionNamespace getVariable ["Gambling_TimerGlobal",[]];
    
    waitUntil {
        _progressNextRoulette progressSetPosition (((((_timeData select 1) - (_timeData select 0)) * 100) / (_timeData select 1)) / 100);
        _infoNextRoulette ctrlSetStructuredText parseText format["<t color='#FF0000'>%1 Sek.</t>",[round((_timeData select 1) - (_timeData select 0))] call husky_fnc_numberText];
        uiSleep 0.1;
        _infoNextRoulette ctrlSetStructuredText parseText format["%1 Sek.",[round((_timeData select 1) - (_timeData select 0))] call husky_fnc_numberText];
        uiSleep 0.9;
        _timeData = missionNamespace getVariable ["Gambling_TimerGlobal",[]];
        (missionNamespace getVariable ["Gambling_TimerGlobal",[]]) isEqualTo [] || (count (missionNamespace getVariable ["Gambling_TimerGlobal",[]])) < 2 || isNull _display
    };
    if(isNull _display) exitWith {};
};