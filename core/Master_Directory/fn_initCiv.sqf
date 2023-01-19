#include "..\..\script_macros.hpp"
/*
    File: fn_initCiv.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Initializes the civilian.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
/*
private _altisArray = ["Land_i_Shop_01_V1_F","Land_i_Shop_01_V2_F","Land_i_Shop_01_V3_F","Land_i_Shop_02_V1_F","Land_i_Shop_02_V2_F","Land_i_Shop_02_V3_F"];
private _tanoaArray = ["Land_House_Small_01_F"];
private _spawnBuildings = [[["Altis", _altisArray], ["Tanoa", _tanoaArray]]] call TON_fnc_terrainSort;

civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", _spawnBuildings,350];
civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", _spawnBuildings,350];
civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", _spawnBuildings,350];
civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", _spawnBuildings,350];
*/
waitUntil {!(isNull (findDisplay 46))};

[] execVM "scripts\mrkrFilter\mrkrFilterInit.sqf";

[] spawn husky_fnc_initHouses;

setCurrentChannel 5;	//StandardChannel Direkt

if !(isNil "The_programmer_initialised") exitWith {};

//[] spawn husky_fnc_blacklisthaus;

if (license_civ_schwerlast) then	{
	[] execVM "Scripts\IgiLoad\IgiLoadInit.sqf";//Igiload
};
if (license_civ_schwerlastplus) then	{
	[] execVM "Scripts\husky\auxslingloading.sqf";//Conatiner lift
};
if (license_civ_towing) then {
	[] execVM "Scripts\husky\initTowing.sqf";
};

/*
if (playerside in [west,independet] || license_civ_erstehilfe) then {
	null = allUnits execVM "Scripts\husky\H8_dragBody.sqf";
};*/

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

if (str(player) in ["civ_93"]) then {
    if ((call husky_donorlevel) < 2 ) then {
		player enableSimulation false;
        ["NotPremium",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};

if (str(player) in ["civ_94"]) then {
    if ((call husky_donorlevel) < 2 ) then {
		player enableSimulation false;
        ["NotPremium",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};

if (str(player) in ["civ_95"]) then {
    if ((call husky_donorlevel) < 2 ) then {
		player enableSimulation false;
        ["NotPremium",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};

if (str(player) in ["civ_96"]) then {
    if ((call husky_donorlevel) < 2 ) then {
		player enableSimulation false;
        ["NotPremium",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};

if (str(player) in ["civ_97"]) then {
    if ((call husky_donorlevel) < 2 ) then {
		player enableSimulation false;
        ["NotPremium",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};

if (str(player) in ["civ_98"]) then {
    if ((call husky_adminlevel) < 2 ) then {
		player enableSimulation false;
        ["Notadmin",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};

if (str(player) in ["civ_99"]) then {
    if ((call husky_adminlevel) < 2 ) then {
		player enableSimulation false;
        ["Notadmin",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};

if (str(player) in ["civ_100"]) then {
    if ((call husky_adminlevel) < 2 ) then {
		player enableSimulation false;
        ["Notadmin",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};

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

if (husky_is_alive && !husky_is_arrested) then {
    /* Spawn at our last position */
    player setVehiclePosition [husky_civ_position, [], 0, "CAN_COLLIDE"];
} else {
    if (!husky_is_alive && !husky_is_arrested) then {
        if (husky_SETTINGS(getNumber,"save_civilian_positionStrict") isEqualTo 1) then {
            _handle = [] spawn husky_fnc_civLoadout;
            waitUntil {scriptDone _handle};
            c126 = 0;
            [0] call SOCK_fnc_updatePartial;
        };
		waitUntil {player getVariable ["gang_init_done", false]};
        [] call cat_spawn_fnc_spawnMenu;
        waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
        waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.
    } else {
        if (husky_is_arrested) then {
            husky_is_arrested = false;
            [player,true] spawn husky_fnc_jail;
        };
    };
};
husky_is_alive = true;



if (FETCH_CONST(husky_donorlevel) == 1) then {
	//husky_paycheckcoins = husky_paycheckcoins * 1.5;
	husky_paycheck = husky_paycheck * 1.5;
	//
};
if (FETCH_CONST(husky_donorlevel) == 2) then {
	//husky_paycheckcoins = husky_paycheckcoins * 2;
	husky_paycheck = husky_paycheck *2 ;
	//
};
if (FETCH_CONST(husky_donorlevel) == 3) then {
	//husky_paycheckcoins = husky_paycheckcoins * 3;
	husky_paycheck = husky_paycheck * 3;
	//
};
if (FETCH_CONST(husky_donorlevel) == 4) then {
	//husky_paycheckcoins = husky_paycheckcoins * 4;
	husky_paycheck = husky_paycheck * 4;
	//
};
if (FETCH_CONST(husky_donorlevel) == 5) then {
	//husky_paycheckcoins = husky_paycheckcoins * 5;
	husky_paycheck = husky_paycheck * 5;
	//
};
if (license_civ_th111) then {
	husky_paycheck = husky_paycheck + 15000;
};
if (license_civ_soraya) then {
	husky_paycheck = husky_paycheck + 50000;
};
if (license_civ_alice) then {
	husky_coins = husky_coins + 10;
};
