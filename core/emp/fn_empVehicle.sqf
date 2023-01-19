#include "..\..\script_macros.hpp"
/*
	File: fn_empVehicle.sqf
	Author/Copyright: © 2014 nano2K - written for we-are-friendly.de
	Edited by: blackfisch for Native-Network
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_index","_vehicle","_maxTime1","_maxTime2","_time","_time","_uiDisp"];

disableSerialization;
if (!isNull (findDisplay 3494)) then {
	//if (husky_empInUse) exitWith {["Das EMP warnt grade schon ein Fahrzeug oder die Batterie muss sich erst wieder aufladen!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
	//husky_empInUse = true;
	_index = lbCurSel (2902);
	_vehicle = husky_last_vehicles select _index;
	//_timer = _uiDisp displayCtrl 38301;
	//_time = time + (8 * 60);
	if (isNull _vehicle) exitWith {};
	(vehicle player) say3D "empacsound";
	[_vehicle] remoteExec ["husky_fnc_vehicleEmpd",crew _vehicle];
	
	//["EMP aktiviert", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	
	/*
	_maxTime2 = time + (1 * 60);
	waitUntil {
		hint format {["Fahrzeug wird EMPt %1.",[(_maxTime2 - time),"MM:SS.MS"] call BIS_fnc_secondsToString];
		round(_maxTime2 - time) <= 0};
	};*/
	//hint "";
		//sleep (1 * 60);		//3 *  60 = 3 min
	//["EMP erfolgreich Ausgeführt!", "Information"] spawn husky_fnc_createNotification;

		//sleep (1 * 3);	
		
	//["EMP nicht verfügbar.", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	
	/*
	_maxTime1 = time + (8 * 60);
	waitUntil {
		hint format {["EMP verfügbar in %1.",[(_maxTime1 - time),"MM:SS.MS"] call BIS_fnc_secondsToString];
		round(_maxTime1 - time) <= 0};
	};*/
	//hint "";


	//sleep (8 * 60);		//3 *  60 = 3 min
	//["EMP verfügbar.", "Information"] spawn husky_fnc_createNotification;
	//husky_empInUse = false;
};
