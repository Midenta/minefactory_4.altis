#include "..\..\script_macros.hpp"
/*
    File: fn_medico.sqf
    Author: GhostsBR

    Description: script de maca para o samu.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

_ambulancia = nearestObject [player, "C_Van_02_medevac_F"];
_heli = nearestObject [player, "B_Heli_Light_01_F"];

if (side player isEqualto civilian) exitWith {hint "";};
if (side player isEqualto west) exitWith {hint "";};
if (vehicle player != player) exitWith {["Du kannst das nicht in einem Fahrzeug!", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};

if (player distance _ambulancia < 5) then {
_obj = nearestObject [player, "Land_Stretcher_01_F"];

if (player distance _obj < 5) exitWith {["Da ist bereits eine Trage!", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};

_maca = "Land_Stretcher_01_F" createVehicle position player;

action_carregar = {
	_obj = nearestObject [player, "Land_Stretcher_01_F"];
	_obj attachTo [player, [0, 1.10, 0.60] ];
	_ambulancia = nearestObject [player, "C_Van_02_medevac_F"];
	soltar = player addAction ["Trage fallen lassen", {call action_soltar;}];
	_obj removeAction pegar;
	_ambulancia removeAction veiculo;
	veiculo = _ambulancia addAction ["Trage einladen", {call action_colocar;}];
	player removeAction levar;
};

action_levar = {
	_obj = nearestObject [player, "Land_Stretcher_01_F"];
	_fe = nearestObjects [player, ["C_man_1"], 5];
	_ferido = _fe select 0;
	_ferido attachTo [_obj, [0, 0.20, 0.25] ];
};

action_soltar = {
	_obj = nearestObject [player, "Land_Stretcher_01_F"];
	_ambulancia = nearestObject [player, "C_Van_02_medevac_F"];
	_obj = nearestObject [player, "Land_Stretcher_01_F"];
	detach _obj;
	ativo = false;
	pegar = _obj addAction ["Trage nehmen", {call action_carregar;}];
	levar = player addAction ["Spieler platzieren", {call action_levar;}];
	_ambulancia removeAction veiculo;
	player removeAction soltar;
};

action_colocar = {
	_fe = nearestObjects [player, ["C_man_1"], 5];
	_ferido = _fe select 0;
	_obj = nearestObject [player, "Land_Stretcher_01_F"];
	_ambulancia = nearestObject [player, "C_Van_02_medevac_F"];
	_nearestVehicle = nearestObject [player, "C_Van_02_medevac_F"];
	player removeAction soltar;
	_obj removeAction pegar;
	_ambulancia removeAction veiculo;
	deleteVehicle _obj;
	[_nearestVehicle] remoteExecCall ["husky_fnc_moveIn",_ferido];
};

call action_carregar;

};

if (player distance _heli < 5) then {
	if (player distance _ambulancia > 3) then {
		_obj2 = nearestObject [player, "Land_Stretcher_01_olive_F"];
		
		if (player distance _obj2 < 5) exitWith {["Da ist bereits eine Trage!", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
		
		_maca = "Land_Stretcher_01_olive_F" createVehicle position player;
		
		action_carregar = {
			_obj = nearestObject [player, "Land_Stretcher_01_olive_F"];
			_obj attachTo [player, [0, 1.10, 0.60] ];
			_ambulancia = nearestObject [player, "B_Heli_Light_01_F"];
			soltar = player addAction ["Trage fallenlassen", {call action_soltar;}];
			_obj removeAction pegar;
			_ambulancia removeAction veiculo;
			veiculo = _ambulancia addAction ["Trage einladen", {call action_colocar;}];
			player removeAction levar;
		};

		action_levar = {
			_obj = nearestObject [player, "Land_Stretcher_01_olive_F"];
			_fe = nearestObjects [player, ["C_man_1"], 5];
			_ferido = _fe select 0;
			_ferido attachTo [_obj, [0, 0.20, 0.25] ];
		};

		action_soltar = {
			_obj = nearestObject [player, "Land_Stretcher_01_olive_F"];
			_ambulancia = nearestObject [player, "B_Heli_Light_01_F"];
			_obj = nearestObject [player, "Land_Stretcher_01_olive_F"];
			detach _obj;
			ativo = false;
			pegar = _obj addAction ["Trage nehmen", {call action_carregar;}];
			levar = player addAction ["Spieler platzieren", {call action_levar;}];
			_ambulancia removeAction veiculo;
			player removeAction soltar;
		};

		action_colocar = {
			_fe = nearestObjects [player, ["C_man_1"], 5];
			_ferido = _fe select 0;
			_obj = nearestObject [player, "Land_Stretcher_01_olive_F"];
			_ambulancia = nearestObject [player, "B_Heli_Light_01_F"];
			_nearestVehicle = nearestObject [player, "B_Heli_Light_01_F"];
			player removeAction soltar;
			_obj removeAction pegar;
			_ambulancia removeAction veiculo;
			deleteVehicle _obj;
			[_nearestVehicle] remoteExecCall ["husky_fnc_moveIn",_ferido];
		};

		call action_carregar;
	};
};