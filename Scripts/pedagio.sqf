#include "..\script_macros.hpp"
/*
    File: pedagio.sqf
    Author: GhostsBR

    Description: Script toll V1.0 EN-US
*/

if (side player == civilian) then {
	if (c126 > 11) then {
		call action_pagar;
	};
	if (c126 < 9) exitWith {hint "Das Parkticket beträgt 10 €!"};
};

if (side player == west) then {
	call action_prioridade;
};

if (side player == independent) then {
	call action_prioridade;
};


action_prioridade = {
	_porta = nearestObject [player, "Land_BarGate_F"];
	hint "Öffentliche Dienste müssen keine Parktickets bezahlen!";
	_porta animate ["Door_1_rot", 1];
	_porta animate ["Door_2_rot", 1];
	sleep 7;
	call action_acabou;
};

action_pagar = {
	_pagamento = 10;
	_porta = nearestObject [player, "Land_BarGate_F"];
	c126 = c126 - _pagamento;
	hint "Du hast 10 € bezahlt!";
	_porta animate ["Door_1_rot", 1];
	_porta animate ["Door_2_rot", 1];
	sleep 7;
	call action_acabou;
};

action_acabou = {
	_porta = nearestObject [player, "Land_BarGate_F"];
	_porta animate ["Door_1_rot", 0];
	_porta animate ["Door_2_rot", 0];
};