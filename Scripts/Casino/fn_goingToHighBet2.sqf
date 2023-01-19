#include "..\..\script_macros.hpp"

/*
    Author : Yasar-S
	Descripton : Gibt die Aktuellen Daten an
	desclaimer : Das nutzen dieses Scriptes ohne diesen Header ist nicht erlaubt
*/

params [
    ["_maxBet",0,[0]],
    ["_moneyToGetBack",0,[0]]
];

hint parseText format["Du kannst nicht mehr als %1 $ setzen",[_maxBet] call husky_fnc_numberText];

b126 = b126 + _moneyToGetBack;
