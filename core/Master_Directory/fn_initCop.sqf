#include "..\..\script_macros.hpp"
/*
    File: fn_initCop.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Cop Initialization file.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
waitUntil {!(isNull (findDisplay 46))};

[] execVM "scripts\mrkrFilter\mrkrFilterInit.sqf";

setCurrentChannel 5;	//StandardChannel Direkt

/*
// AGB
rulesok = false;
if (!createDialog "agb") exitWith {};
waitUntil{!isNull (findDisplay 32154)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 32154)}; //Wait for the spawn selection to be done.
if (!rulesok)then {
 player enableSimulation false;
 ["agb",false,true] call BIS_fnc_endMission;
 sleep 35;
};
rulesok = nil;
*/

/*
if (playerSide isEqualTo west) then	{
	[] execVM "Scripts\IgiLoad\IgiLoadInit.sqf";//Igiload
};
if (playerSide isEqualTo west) then	{
	[] execVM "Scripts\husky\initTowing.sqf";
};
*/

/*
if (playerside in [west,independet] || license_civ_erstehilfe) then {
	null = allUnits execVM "Scripts\husky\H8_dragBody.sqf";
};*/


if (husky_blacklisted) exitWith {
	player enableSimulation false;
    ["Blacklisted",false,true] call BIS_fnc_endMission;
    sleep 30;
};

if ((FETCH_CONST(husky_coplevel) < 1) && (FETCH_CONST(husky_adminlevel) isEqualTo 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
	sleep 35;
};

if (str(player) in ["cop_1"]) then {
	if ((call husky_coplevel) < 19 ) then {
		player enableSimulation false;
        ["falscherangcop1",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};
if (str(player) in ["cop_2"]) then {
	if ((call husky_coplevel) < 18 ) then {
		player enableSimulation false;
        ["falscherangcop2",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};
if (str(player) in ["cop_3"]) then {
    if ((call husky_coplevel) < 17 ) then {
		player enableSimulation false;
        ["falscherangcop3",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};

//Jetzt in Hudupdate, damit der wechselnde drogen dealer auch aktuallisiert/verborgen wird
/*
_illegalmarkers = ["marker_274","marker_276","marker_278","marker_68","marker_71","marker_73","dealer_11","dealer_8","dealer_9","Zuckerrohrfeld_1","verarbeitung_13","verarbeitung_18","Cannabisfeld_1","verarbeitung_15","dealer_26","dealer_21","dealer_24","FroschSumpf_1","verarbeitung_14","ChemischeElemente_1","verarbeitung_4","Ephedrinfeld_1","verarbeitung_29","Schwarzpulver_1","verarbeitung_25","händler_20","ChemischeElemente_1","verarbeitung_4","händler_4","marker_7","marker_8","marker_42","marker_43","marker_57","marker_251","marker_287","chop_shop_6","chop_shop_4","chop_shop_5","marker_281","drug_dealer"];

if (playerSide == west) then {

{ deleteMarkerLocal _x; } forEach _illegalmarkers;

};
*/

player setVariable ["rank",(FETCH_CONST(husky_coplevel)),true];

if (husky_side_noidcard) then {
	createDialog "aapps_idcard";
	//Abort can't be closeDialog in loadingscreen -> endmission
	((findDisplay 4689200) displayCtrl 4689213) ctrlSetEventHandler
	[
		"ButtonDown",
		"
			endmission ""END1"";
		"
	];
	(findDisplay 4689200) displaySetEventHandler ["keyDown","_this call husky_fnc_displayHandler"];
	waitUntil{!(husky_idcard_data isEqualTo [])};
};
_12 = 0 call husky_fnc_idcard_NameCheck;
waitUntil {_12};

/*[] call cat_spawn_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.*/


//Nix
if (FETCH_CONST(husky_coplevel) == 0) then {husky_paycheck = husky_paycheck + 0;};//nix
if (FETCH_CONST(husky_coplevel) == 1) then {husky_paycheck = husky_paycheck + 25000;};//Praktikant
if (FETCH_CONST(husky_coplevel) == 2) then {husky_paycheck = husky_paycheck + 50000;};//Polizeimeisteranwärter
if (FETCH_CONST(husky_coplevel) == 3) then {husky_paycheck = husky_paycheck + 70000;};//Polizeimeister
if (FETCH_CONST(husky_coplevel) == 4) then {husky_paycheck = husky_paycheck + 80000;};//Polizeiobermeister
if (FETCH_CONST(husky_coplevel) == 5) then {husky_paycheck = husky_paycheck + 100000;};//Polizeihauptmeister
if (FETCH_CONST(husky_coplevel) == 6) then {husky_paycheck = husky_paycheck + 110000;};//Polizeihauptmeister mZ
if (FETCH_CONST(husky_coplevel) == 7) then {husky_paycheck = husky_paycheck + 120000;};//Polizeikommissarsanwärter
if (FETCH_CONST(husky_coplevel) == 8) then {husky_paycheck = husky_paycheck + 130000;};//Polizeikommissar
if (FETCH_CONST(husky_coplevel) == 9) then {husky_paycheck = husky_paycheck + 140000;};//Polizeioberkommissar
if (FETCH_CONST(husky_coplevel) == 10) then {husky_paycheck = husky_paycheck + 150000;};//Polizeihauptkommissar
if (FETCH_CONST(husky_coplevel) == 11) then {husky_paycheck = husky_paycheck + 160000;};//Polizeihauptkommissar A12
if (FETCH_CONST(husky_coplevel) == 12) then {husky_paycheck = husky_paycheck + 170000;};//Erster Polizeihauptkommissar
if (FETCH_CONST(husky_coplevel) == 13) then {husky_paycheck = husky_paycheck + 180000;};//PolizPolizeiratsanwärtereirat
if (FETCH_CONST(husky_coplevel) == 14) then {husky_paycheck = husky_paycheck + 200000;};//Polizeirat
if (FETCH_CONST(husky_coplevel) == 15) then {husky_paycheck = husky_paycheck + 250000;};//Polizeioberrat
if (FETCH_CONST(husky_coplevel) == 16) then {husky_paycheck = husky_paycheck + 290000;};//Polizeidirektor
if (FETCH_CONST(husky_coplevel) == 17) then {husky_paycheck = husky_paycheck + 300000;};//Leitender Polizeidirektor
if (FETCH_CONST(husky_coplevel) == 18) then {husky_paycheck = husky_paycheck + 350000;};//Stv. Polizeipräsident
if (FETCH_CONST(husky_coplevel) == 19) then {husky_paycheck = husky_paycheck + 350000;};//Polizeipräsident
if (FETCH_CONST(husky_coplevel) == 20) then {husky_paycheck = husky_paycheck + 350000;};//Admin

if (license_cop_copsek) then {husky_paycheck = husky_paycheck + 50000;};//SEK Lizens
if (license_cop_copausbilder) then {husky_paycheck = husky_paycheck + 50000;};//Ausbilder Lizens


0 call husky_fnc_copcallmanagement;
[] spawn husky_fnc_placeablesInit;
