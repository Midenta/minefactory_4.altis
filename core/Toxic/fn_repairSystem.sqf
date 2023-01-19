#include "..\..\script_macros.hpp"
/*

	File: fn_repairSystem.sqf
	Author: ToxicRageTv

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

*/
[] spawn {

	if !(vehicle player isEqualTo player) exitWith {hint "Raus aus deinem Fahrzeug";};

	private _dammagedObjects = 0;
	private _payout = 0;

	private _side = switch (playerSide) do {
		case west: {"Cop"};
		case independent: {"Medic"};
		default {"Civilian"};
	};

	private _repairReward = getNumber(missionConfigFile >> "Toxic_Repair_Config" >> _side >> "Repair_Reward");
	private _cooldown = getNumber(missionConfigFile >> "Toxic_Repair_Config" >> _side >> "Cooldown");
	private _cooldownTime = getNumber(missionConfigFile >> "Toxic_Repair_Config" >> _side >> "Cooldown_Time");

	if (husky_cannotRepair) exitWith {hint format ["Du kannst nur alle %1 Sekunden reparieren",_cooldownTime];};

	husky_action_inUse = true;
	_displayName = "Nearby Objects";
	_upp = format [localize "STR_NOTF_Repairing",_displayName];

	//Setup our progress bar.
	disableSerialization;
	"progressBar" cutRsc ["husky_progress","PLAIN"];
	_ui = uiNamespace getVariable "husky_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format ["%2 (1%1)...","%",_upp];
	_progress progressSetPosition 0.01;
	_cP = 0.01;

	for "_i" from 0 to 1 step 0 do {
		if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
			[player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["husky_fnc_animSync",RCLIENT];
			player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
			player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		};

		uiSleep 0.27;
		_cP = _cP + 0.03;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format ["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if (_cP >= 1) exitWith {};
		if (!alive player) exitWith {};
		if !(isNull objectParent player) exitWith {};
		if (husky_interrupted) exitWith {};
	};

	husky_action_inUse = false;
	"progressBar" cutText ["","PLAIN"];
	player playActionNow "stop";
	if (husky_interrupted) exitWith {husky_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; husky_action_inUse = false;};
	_nearestObject = nearestObjects [player, [], 10];
	{
		_damage = getDammage _x;
		if ((_damage > 0.1) && !(_x isKindOf "Man") && !(_x isKindOf "Car") && !(_x isKindOf "Tank") && !(_x isKindOf "Air") && !(_x isKindOf "Ship")) then {
			_x setDamage 0;
			_dammagedObjects = _dammagedObjects + 1;
		};
	} forEach _nearestObject;
	_payout = _dammagedObjects * _repairReward;
	c126 = c126 + _payout;
	hint format ["Du hast %1 € für das Reparieren von %2 -Objekten erhalten",_payout,_dammagedObjects];
	[0] call SOCK_fnc_updatePartial;
	if (_cooldown isEqualTo 1) then {
		husky_cannotRepair = true;
		while {_cooldownTime > 0} do {
			sleep 1;
			_cooldownTime = _cooldownTime - 1;
		};
		waitUntil {_cooldownTime <= 0};
		husky_cannotRepair = false;
	};
};
[] call husky_fnc_hudUpdate;
