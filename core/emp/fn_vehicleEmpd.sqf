#include "..\..\script_macros.hpp"
/*
	File: fn_vehicleEmpd.sqf
	Author/Copyright: © 2014 nano2K - written for we-are-friendly.de
	Edited by: blackfisch for Native-Network
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_vehicle","_time","_times"];
_vehicle =  [_this,0,Objnull,[Objnull]] call BIS_fnc_param;
if (isNull _vehicle) exitWith {};
if ((_vehicle getVariable ["nano_empd", false])) exitWith {};
_gFund = GANG_FUNDS;
_vehicle setVariable["nano_empd",true,true];
if (_vehicle isKindOf "Car" || _vehicle isKindOf "Tank") then {
	_vehicle say3D "empwarn";
	sleep 3.35;
	_vehicle say3D "empwarn";
	sleep 3.35;
	//["Das Fahrzeug ist in 1 Minuten EMP´t", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;

	/*
	_time = (1 * 60);
	
	hint format ["EMP verfügbar in %1.", [(_time - time), "MM:SS.MS"]] call BIS_fnc_secondsToString;
	*/
	//["EMP aktiviert", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	
	if (local _vehicle) then {
		_vehicle setHit [getText(configFile >> "cfgVehicles" >> typeOf _vehicle >> "HitPoints" >> "HitEngine" >> "name"), 1];
		[getPlayerUID player, "EMP erfolgreich Car", format ["%1 - %2 hat %3 empt. Bargeld: %4 € Bankkonto: %5 € Coins: %6 € Gangkonto: %7 € ",profileName,(getPlayerUID player),_vehicle,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText,[_gFund] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
	
		sleep (1 * 60);		//3 *  60 = 3 min

		_vehicle setHit [getText(configFile >> "cfgVehicles" >> typeOf _vehicle >> "HitPoints" >> "HitEngine" >> "name"), 0];
	};
	//["EMP erfolgreich Ausgeführt!", "Information"] spawn husky_fnc_createNotification;
};
if (_vehicle isKindOf "Air") then {
	_vehicle say3D "empwarn";
	sleep 3.35;
	_vehicle say3D "empwarn";
	sleep 3.35;
	_vehicle say3D "empwarn";
	sleep 3.35;
	//["Das Fahrzeug ist in 2 Minuten EMP´t", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;

	/*
	_time = (2 * 60);
	
	hint format ["EMP verfügbar in %1.", [(_time - time), "MM:SS.MS"]] call BIS_fnc_secondsToString;
	*/
	
	//["EMP aktiviert", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	
	if (local _vehicle) then {
		_vehicle setHit [getText(configFile >> "cfgVehicles" >> typeOf _vehicle >> "HitPoints" >> "HitEngine" >> "name"), 1];
		[getPlayerUID player, "EMP erfolgreich Air", format ["%1 - %2 hat %3  empt gewant. Bargeld: %4 € Bankkonto: %5 € Coins: %6 € Gangkonto: %7 € ",profileName,(getPlayerUID player),_vehicle,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText,[_gFund] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
		sleep (1 * 60);		//3 *  60 = 3 min
		
		_vehicle setHit [getText(configFile >> "cfgVehicles" >> typeOf _vehicle >> "HitPoints" >> "HitEngine" >> "name"), 0];
	};
	//["EMP erfolgreich Ausgeführt!", "Information"] spawn husky_fnc_createNotification;
};
if (_vehicle isKindOf "Ship") then {
	_vehicle say3D "empwarn";
	sleep 3.35;
	//["Das Fahrzeug ist in 1 Minuten EMP´t", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	
	/*
	_time = (1 * 60);
	
	hint format ["EMP verfügbar in %1.", [(_time - time), "MM:SS.MS"]] call BIS_fnc_secondsToString;
	*/
	//["EMP aktiviert", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	
	if (local _vehicle) then {
		_vehicle setHit [getText(configFile >> "cfgVehicles" >> typeOf _vehicle >> "HitPoints" >> "HitEngine" >> "name"), 1];
		[getPlayerUID player, "EMP erfolgreich Ship", format ["%1 - %2 hat %3  empt gewant. Bargeld: %4 € Bankkonto: %5 € Coins: %6 € Gangkonto: %7 € ",profileName,(getPlayerUID player),_vehicle,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText,[_gFund] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
	
		sleep (1 * 60);		//3 *  60 = 3 min
		
		_vehicle setHit [getText(configFile >> "cfgVehicles" >> typeOf _vehicle >> "HitPoints" >> "HitEngine" >> "name"), 0];
	};
	//["EMP erfolgreich Ausgeführt!", "Information"] spawn husky_fnc_createNotification;
};
_vehicle setVariable["nano_empd",false,true];