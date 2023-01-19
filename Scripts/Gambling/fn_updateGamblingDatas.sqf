#include "..\..\script_macros.hpp"
/*
	Author : Yasar-S
	Descripton : Aktualisiert alle Daten im Fenster
	desclaimer : Das nutzen dieses Scriptes ohne diesen Header ist nicht erlaubt
*/

disableSerialization;
private["_display","_betPlayerList","_winnerSList","_textBoxChance","_textBoxMoneyToWin","_textBoxYourInput","_chance","_userInput","_gamblingInput","_nextRoulette","_winnerS","_betDatas","_betButton"];


_display = findDisplay 1350;
if(isNull _display) exitWith {};

_allInformations = [] call husky_fnc_getGamblingInfo;

_chance = (_allInformations select 0);
_userInput = (_allInformations select 1);
_gamblingInput = (_allInformations select 2);

_winnerS = (missionNamespace getVariable ["Gambling_AllWinners",[]]);
_betDatas = (missionNamespace getVariable ["Gambling_AllDatas",[]]);

_betPlayerList = _display displayCtrl 1351;
_winnerSList = _display displayCtrl 1352;
_textBoxChance = _display displayCtrl 1357;
_textBoxMoneyToWin = _display displayCtrl 1358;
_textBoxYourInput = _display displayCtrl 1356;
_betButton = _display displayCtrl 1354;

if(missionNamespace getVariable ["Gambling_Input",true]) then {
    _betButton ctrlEnable true;
    _betButton ctrlSetText "Setzen";
} else {
    _betButton ctrlEnable false;
    _betButton ctrlSetText "Generierung...";
};

lbClear _winnerSList;
lbClear _betPlayerList;

{
    _winnerSList lbAdd format["%1 - %2$",(_x select 0),[(_x select 1)] call husky_fnc_numberText];
}forEach _winnerS;

_winnerSList lbAdd "--- Du kannst der naechste sein ! ---";

{
    _betPlayerList lbAdd format["%1 - %2%3",(_x select 2),[(_x select 1)] call husky_fnc_numberText,"$"];
}forEach _betDatas;

_textBoxChance ctrlSetText format["Deine Chance: %1%2",[_chance] call husky_fnc_numberText,"%"];
_textBoxMoneyToWin ctrlSetText format["Betrag zu gewinnen: %1 %2",[_gamblingInput] call husky_fnc_numberText,"$"];
_textBoxYourInput ctrlSetText format["Dein Einsatz: %1 %2",[_userInput] call husky_fnc_numberText,"$"];