#include "..\..\script_macros.hpp"
/*

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
	Diese Mission darf von keinem anderen genutzt werden au?er von Thieves-Gaming.de!
*/
private ["_gangName","_unit"];

_unit = [_this,0] call BIS_fnc_param;

_gangName = group player getVariable ["gang_name","KeineGang"];
/*
if (_gangName == "Audi" || (FETCH_CONST(husky_adminlevel) >= 6)) then {
	license_civ_baum = true;
}else{
	license_civ_baum = false;
};

if (_gangName == "VAIPHY" || (FETCH_CONST(husky_adminlevel) >= 6)) then {
	license_civ_vaiphy = true;
}else{
	license_civ_vaiphy = false;
};

if (_gangName == "La Familia" || (FETCH_CONST(husky_adminlevel) >= 6)) then {
	license_civ_lafamilia = true;
}else{
	license_civ_lafamilia = false;
};
*/
if (_gangName == "Personenschutz Altis") then {
	license_civ_psa = true;
}else{
	license_civ_psa = false;
};
if (_gangName == "HausRecht") then {
	license_civ_HausRecht = true;
}else{
	license_civ_HausRecht = false;
};
if (_gangName == "Security of Altis") then {
	license_civ_soa = true;
}else{
	license_civ_soa = false;
};
if (_gangName == "Umbrella Corps") then {
	license_civ_UmbrellaCorps = true;
}else{
	license_civ_UmbrellaCorps = false;
};




