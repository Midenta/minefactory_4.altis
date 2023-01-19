#include "..\..\script_macros.hpp"
/*
    File: fn_initMedic.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Initializes the medic..

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
waitUntil {!(isNull (findDisplay 46))};


[] execVM "scripts\mrkrFilter\mrkrFilterInit.sqf";

setCurrentChannel 5;	//StandardChannel Direkt

// AGB
/*rulesok = false;
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


if (playerSide isEqualTo independent) then	{
	[] execVM "Scripts\IgiLoad\IgiLoadInit.sqf";//Igiload
};
if (playerSide isEqualTo independent) then	{
	[] execVM "Scripts\husky\auxslingloading.sqf";//Conatiner lift
};
/*
if (playerSide isEqualTo independent) then	{
	[] execVM "Scripts\husky\initTowing.sqf";
};
*/
/*
if (playerside in [west,independet] || license_civ_erstehilfe) then {
	null = allUnits execVM "Scripts\husky\H8_dragBody.sqf";
};*/


if ((FETCH_CONST(husky_medicLevel)) < 1 && (FETCH_CONST(husky_adminlevel) isEqualTo 0)) exitWith {
	player enableSimulation false;
    ["Notwhitelisted",false,true] call BIS_fnc_endMission;
    sleep 35;
};
/*
if (husky_blacklisted) exitWith {
	player enableSimulation false;
    ["Blacklisted",false,true] call BIS_fnc_endMission;
    sleep 30;
};
*/

if (str(player) in ["medic_1"]) then {
    if ((call husky_mediclevel) < 10 ) then {
		player enableSimulation false;
        ["falscherangmed1",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};
if (str(player) in ["medic_2"]) then {
    if ((call husky_mediclevel) < 9 ) then {
		player enableSimulation false;
        ["falscherangmed2",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};
if (str(player) in ["medic_3"]) then {
    if ((call husky_mediclevel) < 8 ) then {
		player enableSimulation false;
        ["falscherangmed3",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};

//////////////
///Slot Reservierung nach LVL und Public Slots
/////////////
/*
if (!(str(player) in ["medic_9","medic_10"])) then {
    if ((FETCH_CONST(husky_mediclevel) < 1) && (FETCH_CONST(husky_adminlevel) isEqualTo 0)) then {
        ["NotWhitelisted",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};

if (str(player) in ["medic_1"]) then {
    if ((call husky_mediclevel) < 10 ) then {
		player enableSimulation false;
        ["falscherangmed1",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};
if (str(player) in ["medic_2"]) then {
    if ((call husky_mediclevel) < 9 ) then {
		player enableSimulation false;
        ["falscherangmed2",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};
if (str(player) in ["medic_3"]) then {
    if ((call husky_mediclevel) < 8 ) then {
		player enableSimulation false;
        ["falscherangmed3",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};

*/
/*
[] spawn {
while {true} do
    {
        waitUntil {uniform player == "U_C_WorkerCoveralls"};
        player setObjectTextureGlobal [0,"textures\guer\feuerwehr_uniform.jpg"];
        waitUntil {uniform player != "U_C_WorkerCoveralls"};
    };
};
*/
player setVariable ["rankmed",(FETCH_CONST(husky_medicLevel)),true];
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



if (FETCH_CONST(husky_mediclevel) == 0) then { husky_paycheck = husky_paycheck + 0; };		//Nix
if (FETCH_CONST(husky_mediclevel) == 1) then { husky_paycheck = husky_paycheck + 20000; }; //Praktikant
if (FETCH_CONST(husky_mediclevel) == 2) then { husky_paycheck = husky_paycheck + 25000; };	//Feuerwehrmannanwärter
if (FETCH_CONST(husky_mediclevel) == 3) then { husky_paycheck = husky_paycheck + 30000; };	//Feuerwehrmann
if (FETCH_CONST(husky_mediclevel) == 4) then { husky_paycheck = husky_paycheck + 35000; };	//Oberfeuerwehrmann
if (FETCH_CONST(husky_mediclevel) == 5) then { husky_paycheck = husky_paycheck + 40000; };	//Hauptfeuerwehrmann
if (FETCH_CONST(husky_mediclevel) == 6) then { husky_paycheck = husky_paycheck + 45000; };	//Löschmeister
if (FETCH_CONST(husky_mediclevel) == 7) then { husky_paycheck = husky_paycheck + 50000; };	//Oberlöschmeister
if (FETCH_CONST(husky_mediclevel) == 8) then { husky_paycheck = husky_paycheck + 75000; };	//Brandmeister
if (FETCH_CONST(husky_mediclevel) == 9) then { husky_paycheck = husky_paycheck + 100000; };	//Oberbrandmeister
if (FETCH_CONST(husky_mediclevel) == 10) then { husky_paycheck = husky_paycheck + 150000; };	//Hauptbrandmeister
if (FETCH_CONST(husky_mediclevel) == 11) then { husky_paycheck = husky_paycheck + 150000; };	//Admin

if (license_med_zugfuehrer) then { husky_paycheck = husky_paycheck + 25000; };	//Zugführer
if (license_med_notarzt) then { husky_paycheck = husky_paycheck + 25000; };	//Notarzt 


0 call husky_fnc_medcallmanagement;
[] spawn husky_fnc_medicPlaceablesInit;
