#include "..\..\script_macros.hpp"
/*
    File: fn_buyHouse.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Buys the house?
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
	
	Gesetztes Haus, init
	this setVariable ["blacklistedGarage",true,true];
	
	Objekt bearbeitung -> Objektinitalisierung
	_this setVariable ["blacklistedGarage",true,true];
*/
private ["_house","_uid","_action","_houseCfg"];
_house = param [0,objNull,[objNull]];
_uid = getPlayerUID player;
/*
_blacklistedHouses = husky_SETTINGS(getArray,"balacklisthouses");

_className = "Land_i_Shed_Ind_F";
_pos = getPos player; 

*/
//_pod = [3072.6,12175.2,0.095602];
//_search = nearestObjects[_pos,[_className],50];
//_search = nearestObjects[getPos [3072.6,12175.2,0.095602], ["Land_i_Shed_Ind_F"],50];
//_search = (nearestObjects[getMarkerPos "marker_556",["Land_i_Shed_Ind_F"],50]);

//diag_log _blacklistedHouses;
//diag_log _pos;
//diag_log _className;
//diag_log _search;

if (isNull _house) exitWith {};
if (!(_house isKindOf "House_F")) exitWith {};
if (_house getVariable ["house_owned",false]) exitWith {hint localize "STR_House_alreadyOwned";};
if (!isNil {(_house getVariable "house_sold")}) exitWith {hint localize "STR_House_Sell_Process"};
if (!license_civ_home) exitWith {hint localize "STR_House_License"};
if (_house getVariable "blacklistedGarage") exitWith {hint "Das Haus ist nicht kaufbar";};
//if ( (player distance (getMarkerPos "marker_556") > 50) && (nearestObjects [player, ["House"],50]) ) exitWith {hint "Objekt ist nicht kaufbar";};
//if ((player distance (getMarkerPos "marker_556") > 50) && (nearestObject [player, "Land_i_Shed_Ind_F"];) ) exitWith {hint "Objekt ist nicht kaufbar";};
//if (count _search isEqualTo 0) exitWith {hint "Objekt ist nicht kaufbar";};

//diag_log _search;


/*
if (!license_cop_homec) exitWith {hint localize "STR_House_License"};
if (!license_med_homem) exitWith {hint localize "STR_House_License"};
*/
if (count husky_houses >= (husky_SETTINGS(getNumber,"house_limit"))) exitWith {hint format [localize "STR_House_Max_House",husky_SETTINGS(getNumber,"house_limit")]};
closeDialog 0;

_houseCfg = [(typeOf _house)] call husky_fnc_houseConfig;
if (count _houseCfg isEqualTo 0) exitWith {};

_action = [
    format [localize "STR_House_BuyMSG",
    [(_houseCfg select 0)] call husky_fnc_numberText,
    (_houseCfg select 1)],localize "STR_House_Purchase",localize "STR_Global_Buy",localize "STR_Global_Cancel"
] call BIS_fnc_guiMessage;

if (_action) then {
    if (b126 < (_houseCfg select 0)) exitWith {hint format [localize "STR_House_NotEnough"]};
    b126 = b126 - (_houseCfg select 0);
    [1] call SOCK_fnc_updatePartial;

    if (husky_HC_isActive) then {
        [_uid,_house,name player] remoteExec ["HC_fnc_addHouse",HC_husky];
    } else {
        [_uid,_house,name player] remoteExec ["TON_fnc_addHouse",RSERV];
    };

	[getPlayerUID player, "boughtHouse", format ["%1 - %2 hat sich ein Haus für %3 € gekauft. Bankkonto: %4 €  Bargeld: %5 €",profileName,(getPlayerUID player),[(_houseCfg select 0)] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
	
    if (husky_SETTINGS(getNumber,"player_advancedLog") isEqualTo 1) then {
        if (husky_SETTINGS(getNumber,"battlEye_friendlyLogging") isEqualTo 1) then {
            advanced_log = format [localize "STR_DL_AL_boughtHouse_BEF",[(_houseCfg select 0)] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText];
        } else {
            advanced_log = format [localize "STR_DL_AL_boughtHouse",profileName,(getPlayerUID player),[(_houseCfg select 0)] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText];
        };
        publicVariableServer "advanced_log";
    };

    _house setVariable ["house_owner",[_uid,profileName],true];
    _house setVariable ["locked",true,true];
    _house setVariable ["containers",[],true];
    _house setVariable ["uid",floor(random 99999),true];

    husky_vehicles pushBack _house;
    husky_houses pushBack [str(getPosATL _house),[]];
    _marker = createMarkerLocal [format ["house_%1",(_house getVariable "uid")],getPosATL _house];
    _houseName = FETCH_CONFIG2(getText,"CfgVehicles",(typeOf _house), "displayName");
    _marker setMarkerTextLocal _houseName;
    _marker setMarkerColorLocal "ColorBlue";
    _marker setMarkerTypeLocal "loc_Lighthouse";
    _numOfDoors = FETCH_CONFIG2(getNumber,"CfgVehicles",(typeOf _house),"numberOfDoors");
    for "_i" from 1 to _numOfDoors do {
        _house setVariable [format ["bis_disabled_Door_%1",_i],1,true];
    };
};
