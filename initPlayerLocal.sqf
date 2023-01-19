#include "script_macros.hpp"
/*
    File: initPlayerLocal.sqf
    Author:

    Description:
    Starts the initialization of the player.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
//Sperrzonensystem initialisieren
//"scripts\sperrzonensystem\" execVM "scripts\sperrzonensystem\main.sqf";
//"scripts\gefahrenzonensystem\" execVM "scripts\gefahrenzonensystem\main.sqf";

if (!hasInterface && !isServer) exitWith {
    [] call compile preprocessFileLineNumbers "\husky_hc\initHC.sqf";
}; //This is a headless client.

//["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups; // Initializes the player/client side Dynamic Groups framework and registers the player group
/*
if (hasInterface) then {
	player addEventHandler ["GetOutMan", {
		husky_seatbelt = false;
		//[] call husky_fnc_hudUpdate; 
		player addaction [("<t color=""#ED2744"">") + ("Paradrop") + "</t>", "scripts\husky\Paradrop.sqf", "", 1, false, true,"", "((vehicle player) iskindof ""Air"") && (((position player) select 2) > 20))"];
	}];
};
if (hasInterface) then {
	player addEventHandler ["GetInMan", {
	husky_seatbelt = false;
 //[] call husky_fnc_hudUpdate; //--Aktivier das wenn du eine Hud Option aktiviert hast wenn man ein Anschnallgurt angelegt hat.
	}];
};
*/

/*
if (!isDedicated) then {
	waitUntil {!isNull player};
	player addeventhandler ["Respawn", {
		player addaction [("<t color=""#ED2744"">") + ("Paradrop") + "</t>", "husky_fnc_Paradrop", "", 7, false, true,"", "((vehicle player) iskindof ""Air"") && (((position player) select 2) > 20) && (player != driver (vehicle player))"];
	}];
	player addaction [("<t color=""#ED2744"">") + ("Paradrop") + "</t>", "husky_fnc_Paradrop", "", 7, false, true,"", "((vehicle player) iskindof ""Air"") && (((position player) select 2) > 20) && (player != driver (vehicle player))"];
};
*/

#define CONST(var1,var2) var1 = compileFinal (if (var2 isEqualType "") then {var2} else {str(var2)})
#define husky_SETTINGS(TYPE,SETTING) TYPE(missionConfigFile >> "husky_SETTINGS" >> SETTING)

[] execVM "core\Master_Directory\init.sqf"; 
/*
[] spawn  {
	while{true} do
	{
		waitUntil {(player getVariable "missingOrgan")};
		husky_max_health = .70;
		while{(player getVariable "missingOrgan")} do {
			husky_thirst =  70;
			husky_hunger =  70;
			if(damage player < (1 - husky_max_health)) then {player setDamage (1 - husky_max_health);};
			"dynamicBlur" ppEffectEnable true;
			"dynamicBlur" ppEffectAdjust [2];
			"dynamicBlur" ppEffectCommit 1;
			sleep 5;
		};
		"dynamicBlur" ppEffectEnable false;
		husky_max_health = 1;
	};
};
*/

[] spawn {
    _adjustLight = {
        CHBN_adjustBrightness = CHBN_adjustBrightness max 0 min 1;
        _brightness = if (CHBN_adjustBrightness > 0) then {200 * abs (1 - (2 ^ CHBN_adjustBrightness))} else {0};
        CHBN_light setLightAttenuation [10e10,(30000 / (_brightness max 10e-10)),4.31918e-005,4.31918e-005];
        CHBN_light setLightAmbient CHBN_adjustColor;
    };
    
    waitUntil {time > 0};
    if (missionNamespace getVariable ["CHBN_running",false]) exitWith {systemChat "CHBN script is running. Addon disabled."};
    CHBN_running = true;
    
    CHBN_adjustBrightness = missionNamespace getVariable ["CHBN_adjustBrightness",0.7]; // edit the level of brightness here, set to 1, can be 0.1 to however high you want it
    CHBN_adjustColor = missionNamespace getVariable ["CHBN_adjustColor",[0.5,0.7,1]];

    if (!isNil "CHBN_light") then {deleteVehicle CHBN_light};
    CHBN_light = "#lightpoint" createVehicleLocal [0,0,0];
    CHBN_light setLightBrightness 1;
    CHBN_light setLightDayLight false;
    call _adjustLight;

    for "_i" from 0 to 1 step 0 do {
        _adjustBrightness = CHBN_adjustBrightness;
        _adjustColor = CHBN_adjustColor;
        waitUntil {!(_adjustBrightness isEqualTo CHBN_adjustBrightness) || !(_adjustColor isEqualTo CHBN_adjustColor)};
        call _adjustLight;
    };
};

