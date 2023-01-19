#include "..\..\script_macros.hpp"
/*
    File: init.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Master client initialization file

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

private ["_handle","_timeStamp","_extDB_notLoaded"];
husky_firstSpawn = true;
husky_session_completed = false;
0 cutText[localize "STR_Init_ClientSetup","BLACK FADED"];
//[] call mav_introcam_fnc_startCinematicCam;
//[0, "STR_Init_ClientSetup"] call mav_introcam_fnc_updateCinematicStatus;

0 cutFadeOut 9999999;
_timeStamp = diag_tickTime;
_extDB_notLoaded = "";
diag_log "----------------------------------------------------------------------------------------------------";
diag_log "--------------------------------- husky made by HG/minefactory.eu 2021 ---------------------------------";
//diag_log "------------------------------------------ Version 5.0.0 -------------------------------------------";
diag_log "----------------------------------------------------------------------------------------------------";
waitUntil {!isNull player && player == player}; //Wait till the player is ready
// [] call compile preprocessFileLineNumbers "core\Master_Directory\clientValidator.sqf";
enableSentences false;

//Setup initial client core functions
//diag_log "::husky Client:: Initialization Variables";
[] call compile preprocessFileLineNumbers "core\Master_Directory\configuration.sqf";

//diag_log "::husky Client:: Variables initialized";
//diag_log "::husky Client:: Setting up Eventhandlers";
[] call husky_fnc_setupEVH;


//_handle = [] spawn compile PreprocessFileLineNumbers "core\speedtrap\functions.sqf";
[] spawn compile PreprocessFileLineNumbers "core\speedtrap\functions.sqf";
//diag_log "::husky Client:: Initialization Functions speedtrap";
//waitUntil {scriptDone _handle};


//diag_log "::husky Client:: Eventhandlers completed";
//diag_log "::husky Client:: Setting up user actions";
[] call husky_fnc_setupActions;

[] call husky_fnc_cellPhoneCheck;



//diag_log "::husky Client:: User actions completed";
//diag_log "::husky Client:: Waiting for server functions to transfer..";
waitUntil {(!isNil "TON_fnc_clientGangLeader")};

//diag_log "::husky Client:: Received server functions.";
0 cutText [localize "STR_Init_ServerReady","BLACK FADED"];
//[0, "STR_Init_ServerReady"] call mav_introcam_fnc_updateCinematicStatus;

0 cutFadeOut 99999999;

//diag_log "::husky Client:: Waiting for the server to be ready..";
waitUntil {!isNil "husky_server_isReady"};
waitUntil {!isNil "husky_HC_isActive" && {!isNil "husky_server_extDB_notLoaded"}};

if (husky_server_extDB_notLoaded) exitWith {
    999999 cutText [localize "STR_Init_ExtdbFail","BLACK FADED"];
    999999 cutFadeOut 99999999;
};

waitUntil {husky_server_isReady};
[] call SOCK_fnc_dataQuery;
waitUntil {husky_session_completed};
0 cutText[localize "STR_Init_ClientFinish","BLACK FADED"];
//[1, "Drücke Leertaste zum Überspringen"] call mav_introcam_fnc_updateCinematicStatus;
//waitUntil {mav_introcam_continue};

diag_log "----------------------------------------------------------------------------------------------------";
diag_log "------------------------------------- www.Minefactory.eu ------------------------------------";
diag_log "----------------------------------------------------------------------------------------------------";
diag_log "------------------------------------- minefactory -------------------------------------";
diag_log "----------------------------------------------------------------------------------------------------";

0 cutFadeOut 9999999;

//diag_log "::husky Client:: Group Base Execution";
[] spawn husky_fnc_escInterupt;

//Set bank amount for new players
switch (playerSide) do {
    case west: {
        husky_paycheck = husky_SETTINGS(getNumber,"paycheck_cop");
		//husky_paycheckcoins = husky_SETTINGS(getNumber,"paycheckuccoins");
    };
    case civilian: {
        husky_paycheck = husky_SETTINGS(getNumber,"paycheck_civ");
		//husky_paycheckcoins = husky_SETTINGS(getNumber,"paycheckuccoins");
    };
    case independent: {
        husky_paycheck = husky_SETTINGS(getNumber,"paycheck_med");
		//husky_paycheckcoins = husky_SETTINGS(getNumber,"paycheckuccoins");
    };
};



switch (playerSide) do {
    case west: {
        _handle = [] spawn husky_fnc_initCop;
        waitUntil {scriptDone _handle};
    };
    case civilian: {
        //Initialize Civilian Settings
        _handle = [] spawn husky_fnc_initCiv;
        waitUntil {scriptDone _handle};
    };
    case independent: {
        //Initialize Medics and blah
        _handle = [] spawn husky_fnc_initMedic;
        waitUntil {scriptDone _handle};
    };
};

player setVariable ["husky_leitungimdienst", false, true];
player setVariable ["husky_adminimdienst", false, true];
player setVariable ["husky_entwicklerimdienst", false, true];
player setVariable ["husky_teamimdienst", false, true];

player setVariable ["restrained",false,true];
player setVariable ["Escorting",false,true];
player setVariable ["transporting",false,true];
player setVariable ["playerSurrender",false,true];
//player setVariable["missingOrgan",false,true];
//player setVariable["hasOrgan",false,true];
player setVariable ["exitRad",true];
player setVariable ["realname", profileName, true];

//diag_log "Past Settings Init";


//diag_log "Executing client.fsm";
waitUntil {!(isNull (findDisplay 46))};

//diag_log "Display 46 Found";
if (isNil "The_programmer_initialised") then { (findDisplay 46) displayAddEventHandler ["KeyDown", "_this call husky_fnc_keyHandler"];};


[player,husky_SETTINGS_enableSidechannel,playerSide] remoteExecCall ["TON_fnc_manageSC",RSERV];
0 cutText ["","BLACK IN"];
[] call husky_fnc_hudSetup;

/* Set up frame-by-frame handlers */
//HUSKY_ID_PlayerTags = ["husky_PlayerTags","onEachFrame","husky_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
HUSKY_ID_RevealObjects = ["husky_RevealObjects","onEachFrame","husky_fnc_revealObjects"] call BIS_fnc_addStackedEventHandler;
addMissionEventHandler ["EachFrame", husky_fnc_playerTags];
addMissionEventHandler ["EachFrame", husky_fnc_revealObjects];

/*  //DEAKTIVIERT ZWECKS TESTEN
husky_SETTINGS_tagson = true;
profileNamespace setVariable ["husky_SETTINGS_tagson",true];
HUSKY_ID_PlayerTags = ["husky_PlayerTags","onEachFrame","husky_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
*/


/*
_group = group player;
_tag = _group getVariable ["gang_tag",""];
_tag = if (!(_tag isEqualto "")) then {format["[%1]",_tag]} else {_tag};

husky_SETTINGS_tagson = true;
profileNamespace setVariable ["husky_SETTINGS_tagson",true];
HUSKY_ID_PlayerTags = ["husky_PlayerTags","onEachFrame","husky_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;

//realname Setter

_realName = switch (true) do {
	//case (isNil (group player getVariable "gang_name")): {format ["[%1] %2", group player getVariable "gang_name",profileName]};
	case (isNil (group player getVariable "gang_name")): {format ["%1 %2", _tag,profileName]};	//group player getVariable "gang_name"   statt case (isNil (group player getVariable "gang_name")): {format ["%1 %2", _tag,profileName]};
	case (playerSide isEqualTo west): {
		switch (call husky_coplevel) do{
			case 1: { format ["[Polizei-Praktikant] %1", profileName];};
            case 2: { format ["[Polizei-Anwärter] %1", profileName]; };
            case 3: { format ["[Polizist] %1", profileName]; };
            case 4: { format ["[Polizei-Meister] %1", profileName]; };
            case 5: { format ["[Polizei-Meister] %1", profileName]; };
            case 6: { format ["[Polizei-Meister] %1", profileName]; };
            case 7: { format ["[Polizei-Kommissar] %1", profileName]; };
            case 8: { format ["[Polizei-Kommissar] %1", profileName]; };
            case 9: { format ["[Polizei-Kommissar] %1", profileName]; };
            case 10: { format ["[Polizei-Kommissar] %1", profileName]; };
            case 11: { format ["[Polizei-Kommissar] %1",profileName]; };
            case 12: { format ["[Polizeirat] %1", profileName]; };
            case 13: { format ["[SEK-Anwärter] %1", profileName]; };
            case 14: { format ["[SEK-Beamter] %1", profileName]; };
            case 15: { format ["[Polizeirat] %1", profileName]; };
            case 16: { format ["[Polizeirat] %1", profileName]; };
            case 17: { format ["[Polizei-Ausbilder] %1", profileName]; };
            case 18: { format ["[Polizei-Ausbilder] %1", profileName]; };
            case 19: { format ["[Polizei-Ausbilder] %1", profileName]; };
            case 20: { format ["[Polizei-Direktor] %1", profileName]; };
			default { format ["[Polizei] %1", profileName]; };
		};
	};
	case (playerSide isEqualTo independent): {
		switch (call husky_mediclevel) do{
			case 1: { format ["[Rettungsdienst-1] %1", profileName];};
			case 2: { format ["[Rettungsdienst-2] %1", profileName];};
			case 3: { format ["[Rettungsdienst-3] %1", profileName];};
			case 4: { format ["[Rettungsdienst-4] %1", profileName];};
			case 5: { format ["[Rettungsdienst-5] %1", profileName];};
			case 6: { format ["[Rettungsdienst-6] %1", profileName];};
			case 7: { format ["[Rettungsdienst-7] %1", profileName];};
			default { format ["[Rettungsdienst] %1", profileName]; };
		};
	};
	default {profileName};
};


player setVariable ["realname",_realName,true];

player setVariable ["steam64id",getPlayerUID player,true];	//new
//player setVariable ["steam64ID",getPlayerUID player];	//alt
//player setVariable ["realname",profileName,true];

*/
husky_fnc_moveIn = compileFinal
"
    husky_disable_getIn = false;
    player moveInCargo (_this select 0);
    husky_disable_getOut = true;
";

husky_fnc_RequestClientId = player;
publicVariableServer "husky_fnc_RequestClientId"; //Variable OwnerID for HeadlessClient

[] spawn husky_fnc_survival;

0 call husky_fnc_aapps_sellObject;

//0 call husky_fnc_locker_inoutfunctions;

[] spawn {
    for "_i" from 0 to 1 step 0 do {
        waitUntil {(!isNull (findDisplay 49)) && {(!isNull (findDisplay 602))}}; // Check if Inventory and ESC dialogs are open
        (findDisplay 49) closeDisplay 2; // Close ESC dialog
        (findDisplay 602) closeDisplay 2; // Close Inventory dialog
    };
};

husky_paycheck = compile (if (husky_paycheck isEqualType "") then { husky_paycheck} else {str(husky_paycheck)});
 //Make the paycheck static.
//CONSTVAR(husky_paycheckcoins); //Make the paycheck static.
if (husky_SETTINGS(getNumber,"enable_fatigue") isEqualTo 0) then {
    player enableFatigue false;
};


if (husky_SETTINGS(getNumber,"pump_service") isEqualTo 1) then {
	[] execVM "core\Master_Directory\fn_setupStationService.sqf";
	[] execVM "core\Master_Directory\fn_nofuelaltisstandard.sqf";
};
//Solange pumpsystem deaktiviert ist, wird es hier noc hgecallt
[] execVM "core\Master_Directory\fn_nofuelaltisstandard.sqf";

/*
    https://feedback.bistudio.com/T117205 - disableChannels settings cease to work when leaving/rejoining mission
    Universal workaround for usage in a preInit function. - AgentRev
    Remove if Bohemia actually fixes the issue.
*/
/*
{
    _x params [["_chan",-1,[0]], ["_noText","false",[""]], ["_noVoice","false",[""]]];

    _noText = [false,true] select ((["false","true"] find toLower _noText) max 0);
    _noVoice = [false,true] select ((["false","true"] find toLower _noVoice) max 0);

    _chan enableChannel [!_noText, !_noVoice];

} forEach getArray (missionConfigFile >> "disableChannels");*/

if (husky_HC_isActive) then {
    [getPlayerUID player,player getVariable ["realname",name player]] remoteExec ["HC_fnc_wantedProfUpdate",HC_husky];
} else {
    [getPlayerUID player,player getVariable ["realname",name player]] remoteExec ["husky_fnc_wantedProfUpdate",RSERV];
};

husky_hideoutBuildings = [];
{
    private _building = nearestBuilding getMarkerPos _x;
    husky_hideoutBuildings pushBack _building;
    false
} count ["gang_area_1","gang_area_2"];


//DynMarket
	DYNAMICMARKET_boughtItems = [];
	[player] remoteExec ["TON_fnc_playerLogged",RSERV];


//AufsteckBlaulicht
emergLight_vehicles = [];
{
 emergLight_vehicles pushBack (configName _x);
} forEach ("true" configClasses (missionConfigFile >> "emergLightVehicles"));


[] spawn husky_fnc_autoSaveInv;

0 call husky_fnc_gang_initFunctions; //gangsystem

[] spawn cat_perm_fnc_initPerm;
if(playerside isEqualTo civilian) then {
    [] spawn cat_lockergang_fnc_query;
    [] spawn cat_lockerganggang_fnc_query;
};
[] spawn husky_fnc_RadArea;
[] spawn husky_fnc_SperrZoneActivation;
//diag_log "Restart time Start";
"RM_DISPLAYTEXT_PUBVAR" addPublicVariableEventHandler {(_this select 1) spawn BIS_fnc_dynamicText;};
//diag_log "Restart time End";

//Auktionshaus
waitUntil {!isNil "AH_loaded"};
private["_total","_uid","_toDel"];
_total = 0;
_toDel = [];
_uid = getPlayerUID player;
{if ((_x select 5 IsEqualto _uid) && (_x select 7 IsEqualto 2)) then {_total = _total + (_x select 4);_toDel pushBack (_x select 0)};}forEach all_ah_items;

if (_total > 0) then {
    {[1,_x] remoteExec ["TON_fnc_AH_update",RSERV];}forEach _toDel;
    [0,format["Während du geschlafen hast hast du Gegenstände im Wert von $%1 über das Auktionshaus verkauft.",[_total]call husky_fnc_numberText]] remoteExec ["husky_fnc_broadcast",player];
    b126 = b126 + _total;
};

[] spawn theprogrammer_core_fnc_clientInit;
[] spawn The_programmer_Duty_fnc_init_Service;



diag_log "----------------------------------------------------------------------------------------------------";
diag_log "          End of husky Client by HG/Minefactory.eu Init :: Total Execution Time 0.001 seconds ";
diag_log "----------------------------------------------------------------------------------------------------";
