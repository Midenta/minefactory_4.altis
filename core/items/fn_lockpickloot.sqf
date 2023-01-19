#include "..\..\script_macros.hpp"
/*
    File: fn_lockpick.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Main functionality for lock-picking.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_curTarget","_distance","_isVehicle","_title","_progressBar","_cP","_titleText","_dice","_badDistance"];
_curTarget = cursorObject;
husky_interrupted = false;

if (license_civ_lootbox) then	{

	if (husky_action_inUse) exitWith {};
	if (isNull _curTarget) exitWith {}; //Bad type
	_distance = ((boundingBox _curTarget select 1) select 0) + 2;
	if (player distance _curTarget > _distance) exitWith {}; //Too far
	
	_isVehicle = if ((_curTarget isKindOf "Land_PlasticCase_01_small_gray_F")) then {true} else {false};
	if (_isVehicle && _curTarget in husky_vehicles) exitWith {hint localize "STR_ISTR_Lock_AlreadyHave"};
	
	//More error checks
	if (!_isVehicle && !isPlayer _curTarget) exitWith {};
	if (!_isVehicle && !(_curTarget getVariable ["restrained",false])) exitWith {};
	if (_curTarget getVariable "NPC") exitWith {hint localize "STR_NPC_Protected"};
	
	_title = format [localize "STR_ISTR_Lock_Process",if (!_isVehicle) then {"Handcuffs"} else {getText(configFile >> "CfgVehicles" >> (typeOf _curTarget) >> "displayName")}];
	husky_action_inUse = true; //Lock out other actions
	
	//Setup the progress bar
	disableSerialization;
	"progressBar" cutRsc ["husky_progress","PLAIN"];
	_ui = uiNamespace getVariable "husky_progress";
	_progressBar = _ui displayCtrl 38201;
	_titleText = _ui displayCtrl 38202;
	//_titleText ctrlSetText format ["%2 (1%1)...","%",_title];
	_titleText ctrlSetText format ["Knacle Lootbox (1%1)...","%"];
	_progressBar progressSetPosition 0.01;
	_cP = 0.01;
	
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
		_cP = _cP + 0.01;
		_progressBar progressSetPosition _cP;
		//_titleText ctrlSetText format ["%3 (%1%2)...",round(_cP * 100),"%",_title];
		_titleText ctrlSetText format ["Knacke Lootbox (%1%2)...",round(_cP * 100),"%"];
	
		if (_cP >= 1 || !alive player) exitWith {};
		if (husky_istazed) exitWith {}; //Tazed
		if (husky_isknocked) exitWith {}; //Knocked
		if (husky_interrupted) exitWith {};
		if (player getVariable ["restrained",false]) exitWith {};
		if (player distance _curTarget > _distance) exitWith {_badDistance = true;};
	};
	
	//Kill the UI display and check for various states
	"progressBar" cutText ["","PLAIN"];
	player playActionNow "stop";
	
	if (!alive player || husky_istazed || husky_isknocked) exitWith {husky_action_inUse = false;};
	if (player getVariable ["restrained",false]) exitWith {husky_action_inUse = false;};
	if (!isNil "_badDistance") exitWith {titleText[localize "STR_ISTR_Lock_TooFar","PLAIN"]; husky_action_inUse = false;};
	if (husky_interrupted) exitWith {husky_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; husky_action_inUse = false;};
	if (!([false,"lockpickLOOT",1] call husky_fnc_handleInv)) exitWith {husky_action_inUse = false;};
	
	husky_action_inUse = false;
	
	if (!_isVehicle) then {
		_curTarget setVariable ["restrained",false,true];
		_curTarget setVariable ["Escorting",false,true];
		_curTarget setVariable ["transporting",false,true];
	} else {
		_dice = random(100);
		if (_dice < 30) then {
			titleText[localize "STR_ISTR_Lock_Success","PLAIN"];
			husky_vehicles pushBack _curTarget;
	
			if (husky_HC_isActive) then {
				[getPlayerUID player,profileName,"12"] remoteExecCall ["HC_fnc_wantedAdd",HC_husky];
			} else {
				[getPlayerUID player,profileName,"12"] remoteExecCall ["husky_fnc_wantedAdd",RSERV];
			};
	
		} else {
	
			if (husky_HC_isActive) then {
				[getPlayerUID player,profileName,"11"] remoteExecCall ["HC_fnc_wantedAdd",HC_husky];
			} else {
				[getPlayerUID player,profileName,"11"] remoteExecCall ["husky_fnc_wantedAdd",RSERV];
			};
	
			//[_curTarget,"CarAlarm",120,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];
	
			[0,"STR_ISTR_Lock_FailedNOTF",true,[profileName]] remoteExecCall ["husky_fnc_broadcast",west];
			titleText[localize "STR_ISTR_Lock_Failed","PLAIN"];
		};
	
	};

}else{
	
	hint "Du hast nicht das Training zum knacken von Lootboxen!";

};