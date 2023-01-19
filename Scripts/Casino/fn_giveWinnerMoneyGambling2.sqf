#include "..\..\script_macros.hpp"

/*
	Author : Yasar-S
	Descripton : Durch eine Random Auswahl wird der Gewinner gewählt
	desclaimer : Das nutzen dieses Scriptes ohne diesen Header ist nicht erlaubt
*/

params [
    ["_myInput",0,[0]],
    ["_myName","",[""]],
    ["_chance",0,[0]],
    ["_wonMoney",0,[0]],
    ["_wonMoneyS",0,[0]]
];

_wonMoneySx = _wonMoneyS - _myInput;

hint parseText format["<t size='1.5' color='#AEB404'>Casino</t><br/><br/><t size='1.2' color='#CECEF6'>Herzlichen Glückwunsch !</t><br/>%1, du hast diese Runde das Casino gewonnen !<br/>Gewinn Brutto : <t color='#00FF00'>+%2</t><br/>Gewinn Netto : <t color='#00FF00'>+%6</t><br/>Chance : %3%4<br/>Input : %5",_myName,[_wonMoney] call husky_fnc_numberText,[_chance] call husky_fnc_numberText,"%",[_myInput] call husky_fnc_numberText,[_wonMoneySx] call husky_fnc_numberText];

[getPlayerUID player, "Casino Winner", format ["%1, du hast diese Runde das Casino gewonnen !Gewinn Brutto : +%2 € Gewinn Netto : +%6 € Chance : %3%4 Input : %5 € b126konto: %6 €  Bargeld: %7 €",_myName,[_wonMoney] call husky_fnc_numberText,[_chance] call husky_fnc_numberText,"%",[_myInput] call husky_fnc_numberText,[_wonMoneySx] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];


b126 = b126 + _wonMoneyS;