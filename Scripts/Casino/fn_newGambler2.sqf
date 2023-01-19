#include "..\..\script_macros.hpp"

/*
    Author : Yasar-S
	Descripton : Gambling Geld setzen
	desclaimer : Das nutzen dieses Scriptes ohne diesen Header ist nicht erlaubt
*/
params [
    ["_gamblerName","",[""]],
    ["_gamblerBet",0,[0]]
];

systemChat format["CASINO >>> %1 hat jetzt %2$ gesetzt",_gamblerName,[_gamblerBet] call husky_fnc_numberText];