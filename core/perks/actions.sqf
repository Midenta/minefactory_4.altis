/* 
	Author: Demellion Dismal
	Description:
		Perks system actions VM. Unscheduled only environment, usage of spawns and execVMs are not advised.
		Most actions are based on modified BIS_fnc_holdActionAdd, for more details turn to module developer.
*/

// Friend or foe
player addAction ["", {true}, "", 0, false, true, "DefaultAction","!(isNull cursorObject) AND {cursorObject isKindOf 'CAManBase'} AND {cursorObject in (units group player)} AND {('util_lowering' call DT_fnc_perkData) > 0}"];

// Healing perks
private _healItem = "Medikit"; // Item classname (weapon or magazine, case sensitive)
[
	player,
	"First Aid", // localize that if you want
	"\A3\Ui_f\data\IGUI\Cfg\HoldActions\holdAction_revive_ca.paa",
	"\A3\Ui_f\data\IGUI\Cfg\HoldActions\holdAction_revive_ca.paa",
	format["
		(player distance cursorObject < 4)
	AND {('med_firstaid' call DT_fnc_perkData) > 0}
	AND {cursorObject isKindOf 'CAManBase'}
	AND {alive cursorObject}
	AND {'%1' in ((items player) + (magazines player))} 
	AND {!(cameraView isEqualTo 'GUNNER')}
	AND {!((getAllHitPointsDamage cursorObject) isEqualTo [])}
	AND {count ((getAllHitPointsDamage cursorObject select 2) select {_x >= 0.1}) > 0}
	",_healItem],     
	"(!isNull cursorObject) AND {count ((getAllHitPointsDamage cursorObject select 2) select {_x >= 0.1}) > 0}",
	{
		if (!weaponLowered player) then {player action ["SWITCHWEAPON",player,player,-1]};
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		[player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["husky_fnc_animSync",-2];
	},
	{},
	{
		private _realname = _object getVariable ['realname',name _object];
		hint format ["Success! You healed %1!",_realname];
		private _percent = 'med_firstaid' call DT_fnc_perkData;
		['firstaid',[_percent]] remoteExec ["DT_fnc_healMe",_object];
	},
	{
		hint "Healing canceled!";
	},
	[],
	{10 - (10 * ('med_exam' call DT_fnc_perkData))},
	100,
	false,
	false
] call DT_fnc_holdActionAdd;
[
	player,
	"Human Patcher", // localize that if you want
	"\A3\Ui_f\data\IGUI\Cfg\HoldActions\holdAction_revive_ca.paa",
	"\A3\Ui_f\data\IGUI\Cfg\HoldActions\holdAction_revive_ca.paa",
	format["
		(player distance cursorObject < 4)
	AND {('med_bleed' call DT_fnc_perkData) > 0}
	AND {cursorObject isKindOf 'CAManBase'}
	AND {alive cursorObject}
	AND {'%1' in ((items player) + (magazines player))} 
	AND {!(cameraView isEqualTo 'GUNNER')}
	AND {cursorObject getVariable ['PSBleeding',false]}
	",_healItem],     
	"(!isNull cursorObject) AND {cursorObject getVariable ['PSBleeding',false]}",
	{
		if (!weaponLowered player) then {player action ["SWITCHWEAPON",player,player,-1]};
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		[player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["husky_fnc_animSync",-2];
	},
	{},
	{
		private _realname = _object getVariable ['realname',name _object];
		private _chance = 'med_bleed' call DT_fnc_perkData;
		if (random 1 > _chance) exitWith {hint "Healing failed!"};
		hint format ["Success! You stopped %1 bleeding!",_realname];
		['bleeding'] remoteExec ["DT_fnc_healMe",_object];
	},
	{
		hint "Healing canceled!";
	},
	[],
	{10 - (10 * ('med_exam' call DT_fnc_perkData))},
	100,
	false,
	false
] call DT_fnc_holdActionAdd;
[
	player,
	"Chiropractor", // localize that if you want
	"\A3\Ui_f\data\IGUI\Cfg\HoldActions\holdAction_revive_ca.paa",
	"\A3\Ui_f\data\IGUI\Cfg\HoldActions\holdAction_revive_ca.paa",
	format["
		(player distance cursorObject < 4)
	AND {('med_bleed' call DT_fnc_perkData) > 0}
	AND {cursorObject isKindOf 'CAManBase'}
	AND {alive cursorObject}
	AND {'%1' in ((items player) + (magazines player))} 
	AND {!(cameraView isEqualTo 'GUNNER')}
	AND {cursorObject getVariable ['PSFractured',false]}
	",_healItem],     
	"(!isNull cursorObject) AND {cursorObject getVariable ['PSFractured',false]}",
	{
		if (!weaponLowered player) then {player action ["SWITCHWEAPON",player,player,-1]};
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		[player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["husky_fnc_animSync",-2];
	},
	{},
	{
		private _realname = _object getVariable ['realname',name _object];
		private _chance = 'med_fracture' call DT_fnc_perkData;
		if (random 1 > _chance) exitWith {hint "Healing failed!"};
		hint format ["Success! You healed %1s bones!",_realname];
		['fracture'] remoteExec ["DT_fnc_healMe",_object];
	},
	{
		hint "Healing canceled!";
	},
	[],
	{10 - (10 * ('med_exam' call DT_fnc_perkData))},
	100,
	false,
	false
] call DT_fnc_holdActionAdd;

// Lockpicking
private _lockpickItem = 'ToolKit'; // Item classname (weapon or magazine, case sensitive)
[
	player,
	"Lockpick", // localize that if you want
	"\A3\Ui_f\data\IGUI\Cfg\HoldActions\holdAction_unbind_ca.paa",
	"\A3\Ui_f\data\IGUI\Cfg\HoldActions\holdAction_unbind_ca.paa",
	format ["
		(player distance cursorObject < 6)
	AND {('util_thief' call DT_fnc_perkData) > 0}
	AND {(cursorObject isKindOf 'LandVehicle') OR (cursorObject isKindOf 'Ship') OR (cursorObject isKindOf 'Air')}
	AND {'%1' in ((items player) + (magazines player))} 
	AND {alive cursorObject}
	AND {!(cameraView isEqualTo 'GUNNER')}
	AND {!(locked cursorObject isEqualTo 0)}
	",_lockpickItem],
	"(!isNull cursorObject) AND {!(locked cursorObject isEqualTo 0)}",
	{
		if (!weaponLowered player) then {player action ["SWITCHWEAPON",player,player,-1]};
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		[player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["husky_fnc_animSync",-2];
	},
	{},
	{
		private _chance = 'util_thief' call DT_fnc_perkData;
		if (random 1 < _chance) then {
			_object lock 0;
			if (!isNil {husky_vehicles}) then {husky_vehicles pushBackUnique _object};
			hint 'Lockpicking successful!';
		} else {
			hint 'Lockpicking failed!';
		};
	},
	{
		hint "Lockpicking canceled!";
	},
	[],
	10,
	100,
	false,
	false
] call DT_fnc_holdActionAdd;

// Saboteur
private _remotesConfigs = '
	((getText (configFile >> "CfgAmmo" >> getText (_x >> "ammo") >> "mineTrigger")) isEqualTo "RemoteTrigger")
	AND ((getNumber (configFile >> "CfgAmmo" >> getText (_x >> "ammo") >> "indirectHit")) > 1)
' configClasses (configFile >> "CfgMagazines");
private _remotes = _remotesConfigs apply {configName _x}; // Picks every remote charges in assets.
missionNamespace setVariable ['PSRemoteMines',_remotes];
[
	player,
	"Sabogtage Vehicle", // localize that if you want
	"\A3\Ui_f\data\IGUI\Cfg\HoldActions\holdAction_forceRespawn_ca.paa",
	"\A3\Ui_f\data\IGUI\Cfg\HoldActions\holdAction_forceRespawn_ca.paa",
	"
		(player distance cursorObject < 4)
	AND {('util_sabo' call DT_fnc_perkData) > 0}
	AND {(cursorObject isKindOf 'LandVehicle') OR (cursorObject isKindOf 'Ship') OR (cursorObject isKindOf 'Air')}
	AND {alive cursorObject}
	AND {!(cameraView isEqualTo 'GUNNER')}
	AND {(cursorObject getVariable ['PSSabotageItem','']) isEqualTo ''}
	AND {count ((magazines player) arrayIntersect (missionNamespace getVariable ['PSRemoteMines',[]])) > 0}
	",
	"(!isNull cursorObject) AND {(cursorObject getVariable ['PSSabotageItem','']) isEqualTo ''}",
	{
		if (!weaponLowered player) then {player action ["SWITCHWEAPON",player,player,-1]};
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		[player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["husky_fnc_animSync",-2];
	},
	{},
	{
		private _remotesToTake = (magazines player) arrayIntersect (missionNamespace getVariable ['PSRemoteMines',[]]);
		if (_remotesToTake isEqualTo []) exitWith {hint 'No remote charge to attach!'};
		private _chance = 'util_sabo' call DT_fnc_perkData;
		if (random 1 < _chance) then {
			private _itemTaken = _remotesToTake select 0;
			_object setVariable ['PSSabotageItem',_itemTaken,true];
			player removeMagazine _itemTaken;
			hint 'Sabotage successful!';
		} else {
			hint 'Sabotage failed!';
		};
	},
	{
		hint "Sabotage canceled!";
	},
	[],
	10,
	100,
	false,
	false
] call DT_fnc_holdActionAdd;

// Auto-repair vehicles
[
	player,
	"Attempt to Launch Engine", // localize that if you want
	"\A3\Ui_f\data\IGUI\Cfg\HoldActions\holdAction_takeOff2_ca.paa",
	"\A3\Ui_f\data\IGUI\Cfg\HoldActions\holdAction_takeOff2_ca.paa",
	"
		!(isNull objectParent player)
	AND {((objectParent player) getHitPointDamage 'hitengine') >= 0.9}
	AND {
		((((objectParent player) isKindOf 'LandVehicle') AND ('util_engine' call DT_fnc_perkData) > 0))
		OR ((((objectParent player) isKindOf 'Air') AND ('util_hengine' call DT_fnc_perkData) > 0))
		OR ((((objectParent player) isKindOf 'Ship') AND ('util_engine' call DT_fnc_perkData) > 0))
	}
	AND {alive (objectParent player)}
	AND {driver (objectParent player) isEqualTo player}
	",
	"(!isNull (objectParent player)) AND {((objectParent player) getHitPointDamage 'hitengine') >= 0.9} ",
	{},
	{},
	{
		private _vehicle = objectParent player;
		private _hitEngine = _vehicle getHitPointDamage "hitengine";
		if (_hitEngine >= 0.9) exitWith {
			private _success = switch (true) do {
				case (_vehicle isKindOf "LandVehicle"): {
					private _chance = 'util_engine' call DT_fnc_perkData;
					if (_chance isEqualTo 0) exitWith {false};
					random 1 < _chance
				};					
				case (_vehicle isKindOf "Air"): {
					private _chance = 'util_hengine' call DT_fnc_perkData;
					if (_chance isEqualTo 0) exitWith {false};
					random 1 < _chance
				};
				default {
					private _chance = 'util_engine' call DT_fnc_perkData;
					if (_chance isEqualTo 0) exitWith {false};
					random 1 < _chance					
				};
			};
			if (_success) then {
				_vehicle setHitPointDamage ['hitengine',0.85];
				_vehicle engineOn true;
				systemChat "Engine had started!";
			} else {
				systemChat "Attempt to launch engine had failed!";
			};
		};
	},
	{
		hint "Attempt canceled!";
	},
	[],
	1,
	100,
	false,
	false
] call DT_fnc_holdActionAdd;