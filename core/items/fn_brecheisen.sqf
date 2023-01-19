#include "..\..\script_macros.hpp"
// Made by Apex
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
	
	this setVariable ['door_knack',true,true]; 

*/
private["_building","_door","_doors","_cpRate","_title","_progressBar","_titleText","_cp","_ui"];

_building = param [0,ObjNull,[ObjNull]];
if(isNull _building) exitWith {};
if (isNil "husky_brecheisen_uses") then {husky_brecheisen_uses = 0;};
//if ((_building getVariable [format ["bis_disabled_Door_%1",_door],0]) isEqualTo 0) exitWith {hint localize "STR_House_Raid_DoorUnlocked"};
if (_building getVariable "door_knack") exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Das Schloss ist nicht knackbar!</t>";};



_fnc_Gefangnis = {
	husky_action_inUse = true;
	_building = cursorObject;
	_buildingpos = position player;
	
	[1,format["ALARM! - Tor: %1 wird aufgebrochen!", _buildingpos]] remoteExec ["husky_fnc_broadcast",west];

	//Setup the progress bar
	disableSerialization;
	_title = localize "STR_ISTR_Bolt_Process";
	5 cutRsc ["husky_progress","PLAIN"];
	_ui = uiNamespace getVariable "husky_progress";
	_progressBar = _ui displayCtrl 38201;
	_titleText = _ui displayCtrl 38202;
	_titleText ctrlSetText format["%2 (1%1)...","%",_title];
	_progressBar progressSetPosition 0.01;
	_cP = 0.01;
	
	while {true} do {
		if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
			[player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["husky_fnc_animSync",RCLIENT];
			player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
			player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		};
		sleep 0.26;
		if(isNull _ui) then {
			5 cutRsc ["husky_progress","PLAIN"];
			_ui = uiNamespace getVariable "husky_progress";
			_progressBar = _ui displayCtrl 38201;
			_titleText = _ui displayCtrl 38202;
		};
		_cP = _cP + 0.0008;	//0.0008
		_progressBar progressSetPosition _cP;
		_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
		
		_Pos = position player; // by ehno: get player pos
		_marker = createMarker ["Marker300", _pos];
		"Marker300" setMarkerColor "ColorRed";
		"Marker300" setMarkerText "!ACHTUNG! Tor Alarm !ACHTUNG!";
		"Marker300" setMarkerType "mil_warning";
		
		if(_cP >= 1 || !alive player) exitWith {};
		if(husky_istazed) exitWith {}; //Tazed
		if(husky_isknocked) exitWith {}; //Knocked
		if(husky_interrupted) exitWith {};
	};
	//Kill the UI display and check for various states
	5 cutText ["","PLAIN"];
	player playActionNow "stop";
	if(!alive player || husky_istazed || husky_isknocked) exitWith {husky_action_inUse = false;deleteMarker "Marker300";};
	if((player getVariable ["restrained",false])) exitWith {husky_action_inUse = false;};
	if(husky_interrupted) exitWith {husky_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; husky_action_inUse = false;deleteMarker "Marker300";};
	husky_brecheisen_uses = husky_brecheisen_uses + 1;
	husky_action_inUse = false;
	if(husky_brecheisen_uses >= 5) then {
		[false,"brecheisen",1] call husky_fnc_handleInv;
		husky_brecheisen_uses = 0;
	};


	_building setVariable ['bis_disabled_Door_1',0,true]; //Unlock the door.
	
	[getPlayerUID player, "Bolzenschneider Tor", format ["%1 - %2 hat ein Bolzenschneider benutzt. %3 %4",profileName,(getPlayerUID player),_building,_buildingpos]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
	
	hintSilent "Das Tor ist nun offen!";
	
	deleteMarker "Marker300";

	if (husky_HC_isActive) then {
		[getPlayerUID player,profileName,"67"] remoteExecCall ["HC_fnc_wantedAdd",HC_husky];
	} else {
		[getPlayerUID player,profileName,"67"] remoteExecCall ["husky_fnc_wantedAdd",RSERV];
	};

};


if(typeOF(_building) in ["Land_ConcreteWall_01_l_gate_F","Land_ConcreteWall_01_m_gate_F"])then {[] spawn _fnc_Gefangnis};
if(!(_building isKindOf "House_F")) exitWith {hint "Du hast keine Tor im Visier."};

