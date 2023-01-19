// Made by Apex
#include "..\..\script_macros.hpp"



/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

private["_curTarget","_unit","_victim","_crime","_target","_revivable","_targetName","_ui","_progressBar","_titleText","_cP","_title"];
_building = param [0,objNull,[objNull]];
//_object = "Land_ConcreteWall_01_l_gate_F";
//_pos = [[16211.9,17005.4,0], [15939.1,16992.5,0.00199986]];

_curTarget = cursorTarget;
_target = cursorTarget;
_doors = FETCH_CONFIG2(getNumber,"CfgVehicles",(typeOf _building),"numberOfDoors");
_door = 1;

/*
_animdoor = compileFinal '
	if ((typeOf _this) isEqualTo "Land_BarGate_F") then {
		if (_this animationPhase "Door_1_rot" isEqualTo 1) then {
			_this animate ["Door_1_rot", 0];
		} else {
			_this animate ["Door_1_rot", 1];
		}
	} else {
		if (_this animationPhase "Door_1_move" isEqualTo 1) then {
			_this animate ["Door_1_move", 0];
		} else {
			_this animate ["Door_1_move", 1];
		};
	};
';

_doors = ["Land_ConcreteWall_01_l_gate_F","Land_PipeFence_01_m_gate_v1_F","Land_BarGate_F","Land_ConcreteWall_01_m_gate_F"];
_door = nearestObjects[player,_doors,10];
*/

if (playerSide isEqualTo west) then 
{
	if (alive player) then
	{
		husky_action_inUse = true;
		_upp = "Das Tor reparieren und schlie�en... (4m)";
		//Setup our progress bar.
		disableSerialization;
		"progressBar" cutRsc ["husky_progress","PLAIN"];
		_ui = uiNamespace getVariable "husky_progress";
		_progress = _ui displayCtrl 38201;
		_pgText = _ui displayCtrl 38202;
		_pgText ctrlSetText format ["%2 (1%1)...","%",_upp];
		_progress progressSetPosition 0.01;
		_cP = 0.0000001;

		for "_i" from 0 to 1 step 0 do 
		{
			if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then 
			{
				[player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["husky_fnc_animSync",RCLIENT];
				player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
				player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
			};
			uiSleep 0.09;
			_cP = _cP + 0.01;
			_progress progressSetPosition _cP;
			_pgText ctrlSetText format ["%3 (%1%2)...",round(_cP * 100),"%",_upp];
			if (_cP >= 1 || !alive player) exitWith {};
			if (player distance _target > 4) exitWith { "progressBar" cutText ["","PLAIN"];["Du hast dich zuweit vom Tor entfernt.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
			if (!alive player) exitWith {};
		};
		if (husky_istazed) exitWith {}; //Tazed
		if (husky_isknocked) exitWith {}; //Knocked
		if (husky_interrupted) exitWith {};
		if((player getVariable["restrained",false])) exitWith {};
		if(player distance _target > 4) exitWith {["Du hast dich zuweit vom Tor entfernt.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification; "progressBar" cutText ["","PLAIN"];};
		if (_cP >= 1) then 
		{
			husky_action_inUse = false;
			"progressBar" cutText ["","PLAIN"];
			player playActionNow "stop";
			gate1 animateSource ["Door_1_sound_source", 0];
			gate2 animateSource ["Door_1_noSound_source", 0];
			gate2 setVariable ["bis_disabled_Door_1",1,true];
			gate1 setVariable ["bis_disabled_Door_1",1,true];
			//_door call _animdoor;
		};
	};
};
