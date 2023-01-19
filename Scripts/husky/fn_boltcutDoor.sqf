#include "..\..\script_macros.hpp"

/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

private["_curTarget","_unit","_victim","_crime","_target","_revivable","_targetName","_ui","_progressBar","_titleText","_cP","_title"];
_building = param [0,objNull,[objNull]];

_curTarget = cursorTarget;
_target = cursorTarget;
_chance = round (random 100);
_chance;
_doors = FETCH_CONFIG2(getNumber,"CfgVehicles",(typeOf _building),"numberOfDoors");
_door = 0;

if (husky_inv_boltcutter > 0) then {

	husky_action_inUse = true;
	_upp = "Schloss aufbrechen ... (4m)";
	//Setup our progress bar.
	disableSerialization;
	"progressBar" cutRsc ["husky_progress","PLAIN"];
	_ui = uiNamespace getVariable "husky_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format ["%2 (1%1)...","%",_upp];
	_progress progressSetPosition 0.01;
	_cP = 0.0000001;

	for "_i" from 0 to 1 step 0 do {
		if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
			[player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["husky_fnc_animSync",RCLIENT];
			player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
			player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		};
		uiSleep 0.09;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format ["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if (_cP >= 1 || !alive player) exitWith {};
		if (player distance _target > 4) exitWith { "progressBar" cutText ["","PLAIN"]; ["Du bist zuweit weg vom Tor.",true] call husky_fnc_show; };
		if (!alive player) exitWith {};
	};
	if (husky_istazed) exitWith {}; //Tazed
	if (husky_isknocked) exitWith {}; //Knocked
	if (husky_interrupted) exitWith {};
	if ((player getVariable["restrained",false])) exitWith {};
	if (player distance _target > 4) exitWith {["Du bist zuweit weg vom Tor.", true] call husky_fnc_show; "progressBar" cutText ["","PLAIN"];};
	if (_chance > 50) exitWith {husky_action_inUse = false; "progressBar" cutText ["","PLAIN"]; format["%1 hat versucht, in das Gef�ngnis einzubrechen.", profileName] remoteexec ["hint", west]; ["Das Schloss wurde aufgebrochen, es wurden auch die Sicherheitssysteme ausgel�st.", true] call husky_fnc_show; gate2 setVariable ["bis_disabled_Door_1",0,false]; gate1 setVariable ["bis_disabled_Door_1",0,false]; [player, "lockpick"] remoteExec ["husky_fnc_say3D", RANY]; gate1 animateSource ["Door_1_sound_source", 1]; gate2 animateSource ["Door_1_noSound_source", 1];};
	if (_cP >= 1) then {
		husky_action_inUse = false;
		"progressBar" cutText ["","PLAIN"];
		player playActionNow "stop";
   		gate2 setVariable ["bis_disabled_Door_1",0,true]; 
   		gate1 setVariable ["bis_disabled_Door_1",0,true];
		gate1 animateSource ["Door_1_sound_source", 1];
		gate2 animateSource ["Door_1_noSound_source", 1];
		[player, "lockpick"] remoteExec ["husky_fnc_say3D", RANY];
		["Das Tor ist jetzt offen.", true] call husky_fnc_show;
		[getPlayerUID player,profileName,"67"] remoteExecCall ["husky_fnc_wantedAdd",RSERV];
	};
};