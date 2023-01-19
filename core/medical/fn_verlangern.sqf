#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
params [
    ["_unit",objNull,[objNull]]
];

	diag_log format ["%1 %2 unit und time1",(_this select 0), _maxTime];
	//while {true} do {
	waitUntil {
		diag_log "Start 2";
		sleep 60;
		if ((_this select 0) getVariable "addtime") then {
			diag_log "Start 3";
			_maxTime = _maxTime + (2*60);
			(_this select 0) setVariable["addtime",false,true];
			diag_log format ["%1 %2 unit und time2",(_this select 0), _maxTime];
		};
	};
	diag_log "Start 4";
