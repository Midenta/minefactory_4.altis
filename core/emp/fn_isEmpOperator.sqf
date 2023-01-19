/*
	File: fn_isEmpOperator.sqf
	Author/Copyright: © 2014 nano2K - written for we-are-friendly.de
	Edited by: blackfisch for Native-Network
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
_player = _this select 0;
_slot = assignedVehicleRole player;
_vehicle = vehicle player;
_result = false;

if ((_vehicle != player) && playerSide in [west,independent,civilian]) then {
    if ((_vehicle getVariable ["nano_emp_enabled", false])) then {
        if (_slot select 0 == "Turret") then {
            if (_slot select 1 select 0 == 0) then {
                _result = true;
            };
        }
    };
};
_result;