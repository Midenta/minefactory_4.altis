#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_speedtrap", "_status"];

_speedtrap = cursorTarget;
if (isNull _speedtrap) exitwith {};

if (_speedtrap getVariable ["speedtrap_status", false, true]) exitWith {hint "Der Blitzer ist bereits repariert!";};

_speedtrappos = getpos _speedtrap;
//diag_log _speedtrappos;
	
	husky_action_inUse = true;
	
	//[1,format["ALARM! - Eine Blitzer wird gehackt!"]] remoteExec ["husky_fnc_broadcast",west];
	
	//Setup the progress bar
	disableSerialization;
	_title = localize "STR_ISTR_blitzer_repair";
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
		_cP = _cP + 0.008;	//0.0008
		_progressBar progressSetPosition _cP;
		_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
		if(_cP >= 1 || !alive player) exitWith {};
		if(husky_istazed) exitWith {}; //Tazed
		if(husky_isknocked) exitWith {}; //Knocked
		if(husky_interrupted) exitWith {};
	};
	//Kill the UI display and check for various states
	5 cutText ["","PLAIN"];
	player playActionNow "stop";
	if(!alive player || husky_istazed || husky_isknocked) exitWith {husky_action_inUse = false;};
	if((player getVariable ["restrained",false])) exitWith {husky_action_inUse = false;};
	if(husky_interrupted) exitWith {husky_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; husky_action_inUse = false;};
	/*husky_boltcutgate_uses = husky_boltcutgate_uses + 1;
	husky_action_inUse = false;
	if(husky_boltcutgate_uses >= 5) then {
		[false,"boltcuttergate",1] call husky_fnc_handleInv;
		husky_boltcutgate_uses = 0;
	};*/
	
	hintSilent "Der Blitzer ist nun repariert!";
	
	[getPlayerUID player, "Blitzer repariert", format ["%1 - %2 hat ein Blitzer gehackt. %3 ",profileName,(getPlayerUID player),_speedtrappos]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
	
	
	//_speedtrap setVariable ["speedtrap_active", false, true];
	_speedtrap setVariable ["speedtrap_status", false, true];
