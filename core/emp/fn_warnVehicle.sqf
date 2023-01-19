#include "..\..\script_macros.hpp"
/*
	File: fn_warnVehicles.sqf
	Author/Copyright: © 2014 nano2K - written for we-are-friendly.de
	Edited by: blackfisch for Native-Network
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_index","_vehicle","_time","_display"];
disableSerialization;
_gFund = GANG_FUNDS;
if (!isNull (findDisplay 3494)) then {
	//if (husky_empInUse) exitWith {["Das EMP warnt grade schon ein Fahrzeug!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification; };
	//husky_empInUse = true;
	
	//_display = findDisplay 3494;
	//_warnempbtn = _display displayCtrl 2070;	
	//_display ctrlEnable false;	
	
	hint "EMP warnt";
	//["EMP warnt", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	_index = lbCurSel (2902);
	_vehicle = husky_last_vehicles select _index;
	if (isNull _vehicle) exitWith {};
	[_vehicle] remoteExec ["husky_fnc_vehicleWarned",crew _vehicle];
	
	/*
	_maxTime1 = time + (1 * 10);
	waitUntil {
		hint format {["EMP verfügbar in %1.",[(_maxTime1 - time),"MM:SS.MS"] call BIS_fnc_secondsToString];
		round(_maxTime1 - time) <= 0};
	};*/
	hint "";
		sleep 10;	
	//["EMP erfolgreich gewarnt!", "Information"] spawn husky_fnc_createNotification;
	hint "EMP erfolgreich gewarnt!";
	[getPlayerUID player, "EMP erfolgreich gewarnt", format ["%1 - %2 hat %3  empt gewarnt. Bargeld: %4 € Bankkonto: %5 € Coins: %6 € Gangkonto: %7 € ",profileName,(getPlayerUID player),_vehicle,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText,[_gFund] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

	//_display ctrlEnable true;
	//husky_empInUse = false;
};