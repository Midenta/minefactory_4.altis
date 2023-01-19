#include "..\..\script_macros.hpp"
/*
    File: fn_boltcutter.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Breaks the lock on a single door (Closet door to the player).

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_building","_door","_doors","_cpRate","_title","_progressBar","_titleText","_cp","_ui"];
_building = param [0,objNull,[objNull]];

private _vaultHouse = [[["Altis", "Land_Cargo40_yellow_F"], ["Tanoa", "Land_Cargo40_yellow_F"], ["Stratis", "Land_Cargo40_yellow_F"], ["Enoch", "Land_Cargo40_yellow_F"]]] call TON_fnc_terrainSort;
private _house = ["Land_Offices_01_V1_F","Land_FuelStation_01_shop_F"];
private _home = false;
private _ownerName = "";
private _altisArray = [9836.18,10303,1.85833];
private _tanoaArray = [11074.2,11501.5,0.00137329];
private _stratisArray = [4370.051,3816.454,2.349];
private _enochArray = [3160.714,12069.354,1.448];
private _pos = [[["Altis", _altisArray], ["Tanoa", _tanoaArray], ["Stratis", _stratisArray], ["Enoch", _enochArray]]] call TON_fnc_terrainSort;

if (isNull _building) exitWith {};
if !((_building isKindOf "House_F") || (_building isKindOf "THINGX")) exitWith {hint localize "STR_ISTR_Bolt_NotNear";};
if ((_building in (nearestObjects [_pos,_house,100]) || (nearestObject [_pos,_vaultHouse]) isEqualTo _building) && (west countSide playableUnits < (husky_SETTINGS(getNumber,"minimum_cops")))) exitWith {
    hint format [localize "STR_Civ_NotEnoughCops",(husky_SETTINGS(getNumber,"minimum_cops"))];
};


if ((typeOf _building) isEqualTo _vaultHouse && (nearestObject [[9813.02,10319.9,0],"Land_FuelStation_01_shop_F"]) getVariable ["locked",true]) exitWith {hint localize "STR_ISTR_Bolt_Exploit"};
if (isNil "husky_boltcutter_uses") then {husky_boltcutter_uses = 0;};


_doors = FETCH_CONFIG2(getNumber,"CfgVehicles",(typeOf _building),"numberOfDoors");
_door = 0;
//Find the nearest door
for "_i" from 1 to _doors do {
    _selPos = _building selectionPosition format ["Door_%1_trigger",_i];
    _worldSpace = _building modelToWorld _selPos;
        if (player distance _worldSpace < 2) exitWith {_door = _i;};
};
if (_door isEqualTo 0) exitWith {hint localize "STR_Cop_NotaDoor"}; //Not near a door to be broken into.
if ((_building getVariable [format ["bis_disabled_Door_%1",_door],0]) isEqualTo 0) exitWith {hint localize "STR_House_Raid_DoorUnlocked"};

if (_building in (nearestObjects [_pos,_house,100]) || (nearestObject [_pos,_vaultHouse]) isEqualTo _building) then {
    [[1,2],"STR_ISTR_Bolt_AlertFed",true,[]] remoteExecCall ["husky_fnc_broadcast",RCLIENT];
} else {
    [0,"STR_ISTR_Bolt_AlertHouse",true,[profileName]] remoteExecCall ["husky_fnc_broadcast",RCLIENT];
};


private _ownerUid = (_building getVariable ["house_owner",["",""]]) select 0;
if (_ownerUid != "") then {_home = true};
if (_home && (!([_ownerUid] call husky_fnc_isUIDActive))) exitWith {hint "Der Eigentümer ist nicht auf der Insel!"};
private _copsNeeded = husky_SETTINGS(getNumber,"copsHouseRaid");
if (({side _x == west} count playableUnits < _copsNeeded) && _home) exitWith {hint format[localize "STR_Civ_NotEnoughCops",_copsNeeded]};
husky_action_inUse = true;

if (_home) then {
	private _unitsToNotify = [];
	{
		if (_uid isEqualTo (getPlayerUID _x) /*|| side _x isEqualTo west*/) then {_unitsToNotify pushBack _x};
		if (_uid isEqualTo (getPlayerUID _x)) then {_ownerName = name _x};
    } forEach playableUnits;
    if (count _unitsToNotify isEqualTo 0) exitWith {};
    [1,[_building,60,"Mil_dot","HAUS EINBRUCH"]] remoteExec ["husky_fnc_markers",_unitsToNotify];
    [1,format["In %1s Haus wird eingebrochen!",_ownerName]] remoteExec ["husky_fnc_broadcast",_unitsToNotify];
};
//Setup the progress bar
disableSerialization;
_title = localize "STR_ISTR_Bolt_Process";
"progressBar" cutRsc ["husky_progress","PLAIN"];
_ui = uiNamespace getVariable "husky_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format ["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;

switch (typeOf _building) do {
    case "Land_FuelStation_01_shop_F": {_cpRate = 0.003;};	//0.003
	//case "Land_ConcreteWall_01_I_gate_F": {_cpRate = 0.003;};
	//case "Land_BackAlley_01_I_gate_F": {_cpRate = 0.003;};
    case "Land_Medevac_house_V1_F";
    case "Land_Research_house_V1_F": {_cpRate = 0.0015;};	//0.0015
    default {_cpRate = 0.008;}; //Häuser 
};


for "_i" from 0 to 1 step 0 do {
    if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
        [player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["husky_fnc_animSync",RCLIENT];
        player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
        player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
    };
    uiSleep 0.26;
    if (isNull _ui) then {
        "progressBar" cutRsc ["husky_progress","PLAIN"];
        _ui = uiNamespace getVariable "husky_progress";
        _progressBar = _ui displayCtrl 38201;
        _titleText = _ui displayCtrl 38202;
    };
    _cP = _cP + _cpRate;
    _progressBar progressSetPosition _cP;
    _titleText ctrlSetText format ["%3 (%1%2)...",round(_cP * 100),"%",_title];
    if (_cP >= 1 || !alive player) exitWith {};
    if (husky_istazed) exitWith {}; //Tazed
    if (husky_isknocked) exitWith {}; //Knocked
    if (husky_interrupted) exitWith {};
};

//Kill the UI display and check for various states
"progressBar" cutText ["","PLAIN"];
player playActionNow "stop";
if (!alive player || husky_istazed || husky_isknocked) exitWith {husky_action_inUse = false;};
if (player getVariable ["restrained",false]) exitWith {husky_action_inUse = false;};
if (husky_interrupted) exitWith {husky_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; husky_action_inUse = false;};
husky_boltcutter_uses = husky_boltcutter_uses + 1;
husky_action_inUse = false;

if (husky_boltcutter_uses >= 5) then {
    [false,"boltcutter",1] call husky_fnc_handleInv;
    husky_boltcutter_uses = 0;
};


[getPlayerUID player, "Bolzenschneider", format ["%1 - %2 hat ein Bolzenschneider benutzt. %3 Bankkonto: %4 €  Bargeld: %5 € ",profileName,(getPlayerUID player),_building,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];


_building setVariable [format ["bis_disabled_Door_%1",_door],0,true]; //Unlock the door.
_building setVariable ["locked",false,true];

if (husky_HC_isActive) then {
    [getPlayerUID player,profileName,"67"] remoteExecCall ["HC_fnc_wantedAdd",HC_husky];
} else {
    [getPlayerUID player,profileName,"67"] remoteExecCall ["husky_fnc_wantedAdd",RSERV];
};

//[getPlayerUID player, "Bolzenschneider", format ["%1 - %2 hat ein Bolzenschneider benutzt.",profileName,(getPlayerUID player)]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];