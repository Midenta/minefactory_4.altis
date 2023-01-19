/* 
	Author: Demellion Dismal
	Description:
		Perks system time-critical tasks VM. Unscheduled only environment, usage of spawns and execVMs are not advised.
		Handles all event-based stuff.
*/

private _enableMedicalStates = [0,1] select true; // set to false if you want to disable medical states

// Weapons category
player addEventHandler ["FiredMan",{
	params ["","_weapon","_muzzle"];
	private _types = _weapon call BIS_fnc_itemType;
	_types params ['','_type'];
	private _data = switch (_type) do {
		case 'Handgun' : {["hg_recoil" call DT_fnc_perkData,"hg_sway" call DT_fnc_perkData,"hg_speed" call DT_fnc_perkData]};
		case 'SubmachineGun' : {["smg_recoil" call DT_fnc_perkData,"smg_sway" call DT_fnc_perkData,"smg_speed" call DT_fnc_perkData]};
		case 'AssaultRifle' : {["ar_recoil" call DT_fnc_perkData,"ar_sway" call DT_fnc_perkData,"ar_speed" call DT_fnc_perkData]};
		case 'Rifle' : {["r_recoil" call DT_fnc_perkData,"r_sway" call DT_fnc_perkData,"r_speed" call DT_fnc_perkData]};							
		case 'SniperRifle' : {["sr_recoil" call DT_fnc_perkData,"sr_sway" call DT_fnc_perkData,"sr_speed" call DT_fnc_perkData]}; 
		case 'MachineGun' : {["mg_recoil" call DT_fnc_perkData,"mg_sway" call DT_fnc_perkData,"mg_speed" call DT_fnc_perkData]};
		default {[]}
	};
	if (_data isEqualTo []) exitWith {};
	_data params ['_recoil','_sway','_speed'];
	(vehicle player) setUnitRecoilCoefficient (3 + _recoil);
	(vehicle player) setCustomAimCoef (3 + _sway);	
	(vehicle player) setWeaponReloadingTime [(vehicle player), _muzzle, (1 + _speed)];
}];

// Survival VM, processes medical states, bleeding, etc. Time-critical tasks only.
["PSSurvivalVM", "onEachFrame", {
	// Tick frame
	if (missionNamespace getVariable ['PSSurvivalTick',-1] < diag_tickTime) then {
		if (isNull player) exitWith {};
		params ['_enableMedicalStates'];
		missionNamespace setVariable ['PSSurvivalTick',diag_tickTime + 3];
		if (_enableMedicalStates isEqualTo 1) then {
			private _isFractured = false;
			if (player getHit "head" >= 0.25) then {
				addCamShake [random [8,10,12], 8, random [0.3,0.5,0.7]];
				_isFractured = true;
			};
			if (player getHit "legs" >= 0.5) then {
				if (speed player > 0) then {
					if !(stance player isEqualTo 'PRONE') then {
						if (random 1 > 0.25) exitWith {};
						playSound3D [format["a3\sounds_f\characters\human-sfx\P12\Burning_%1.wss",selectRandom [1,2,3]],player,false,getPosASL player,0.5,0.9];
						player playMoveNow "amovppnemstpsraswrfldnon";
					};
				};
				_isFractured = true;
			};
			if ((player getHit "hands" >= 0.5) AND {!(currentWeapon player isEqualTo '')} AND {!(weaponLowered player)}) then {
				addCamShake [random [0.25,0.5,0.75], 8, random[5,7,9]];
				if (random 1 < 0.50) then {
					player action ["WeaponOnBack",player];
					playSound3D [format["a3\sounds_f\characters\human-sfx\P12\Burning_%1.wss",selectRandom [1,2,3]],player,false,getPosASL player,0.5,0.9];
				};
				_isFractured = true;
			};
			private _healRatio = ['train_regen'] call DT_fnc_perkData;
			if (_healRatio > 0) then {
				{player setHitIndex [_forEachIndex,(_x - _healRatio) max 0]} forEach (getAllHitPointsDamage player select 2);
			};
			private _damagedParts = (getAllHitPointsDamage player select 2) select {_x >= 0.51};
			if ((count _damagedParts > 0) AND {!(player getVariable ['bleedingPatched',false])}) then {
				['med_bleed',true] call DT_fnc_triggerSkill;
				if !(player getVariable ['bleeding',false]) then {player setVariable ['PSBleeding',true,true]};
				{
					if (_x >= 0.5) then {
						player setHitIndex [_forEachIndex,(_x + 0.0025) min 1];
					};
				} forEach (getAllHitPointsDamage player select 2);
			} else {
				['med_bleed',true,false] call DT_fnc_triggerSkill;
				if (player getVariable ['bleeding',false]) then {player setVariable ['PSBleeding',false,true]};
			};
			if (_isFractured) then {
				['med_fracture',true] call DT_fnc_triggerSkill;
				if !(player getVariable ['fractured',false]) then {player setVariable ['PSFractured',true,true]};
			} else {
				if (player getVariable ['fractured',false]) then {player setVariable ['PSFractured',false,true]};
				['med_fracture',true,false] call DT_fnc_triggerSkill;

			};
		};
	};
},[_enableMedicalStates]] call BIS_fnc_addStackedEventHandler;		    		
			

// Player-to-Vehicle handling
player addEventHandler ["GetInMan", {
	params ["_unit", "_role", "_vehicle", "_turret"];
	// Swift Measures
	if !(_vehicle getVariable ['IncomingMissile',false]) then {
		_vehicle setVariable ['IncomingMissile',true];
		_vehicle addEventHandler ["IncomingMissile", {
			params ["_vehicle", "_ammo", "_attackerVeh", "_instigator"];
			if !(driver _vehicle isEqualTo player) exitWith {};
			if (('util_counter' call DT_fnc_perkData) < 1) exitWith {};
			private _weapons = weapons _vehicle;
			{
				private _types = _x call BIS_fnc_itemType;
				_types params ['_category','_type'];
				if (_type in ['CounterMeasuresLauncher']) exitWith {
					private _modes = getArray (configFile >> "CfgWeapons" >> _x >> "modes");
					if ("Burst" in _modes) then {
						(driver _vehicle) forceWeaponFire [_x,"Burst"];
						_x spawn {
							uiSleep 0.25;
							(driver (objectParent player)) forceWeaponFire [_this,"Burst"];
						};
					} else {
						_x spawn {
							uiSleep 0.25;
							(driver (objectParent player)) forceWeaponFire [_this,"Single"];
						};
					};
				};
			} forEach _weapons;	
		}];
	};
	// Saboteur and other utility perks
	if !(_vehicle getVariable ['Engine',false]) then {
		_vehicle setVariable ['Engine',true];
		_vehicle addEventHandler ['Engine',{
			params ['_vehicle','_state'];
			if (_state) then {
				private _sabotageItem = _vehicle getVariable ['PSSabotageItem',''];
				if !(_sabotageItem isEqualTo '') then {
					private _sabotageItemAmmo = getText (configFile >> "CfgMagazines" >> _sabotageItem >> "ammo");
					_sabotageItemAmmo = _sabotageItemAmmo createVehicle (position _vehicle);
					_sabotageItemAmmo setPos (getPos _vehicle);
					_sabotageItemAmmo setDamage 1;
				};
			};
		}];
	};
	if !(_vehicle getVariable ['PSSabotageItem',''] isEqualTo '') then {
		private _chance = 'util_sabo' call DT_fnc_perkData;
		if (random 1 < _chance) then {
			hint parseText "<t color='#FF0000' size='1.2'>You've detected some interference with this vehicle starter.<br/> It might be sabotaged</t>";
			if !(_vehicle getVariable ['sabotageActionAdded',false]) then {
				_vehicle setVariable ['sabotageActionAdded',true];
				private _actionID = _vehicle addAction ['Remove Charge (Saboteur)',{
					private _originalTarget = _this select 0;
					private _sabotageItem = _originalTarget getVariable ['PSSabotageItem',''];
					_originalTarget setVariable ['PSSabotageItem','',true];
					_originalTarget setVariable ['sabotageActionAdded',false];
					_originalTarget removeAction (_originalTarget getVariable ['actionID',-1]);
					_originalTarget addItemCargoGlobal [_sabotageItem,1];
				},[],1000,true,true,'',"('util_sabo' call DT_fnc_perkData) > 0",8];
				_vehicle setVariable ['actionID',_actionID]
			};
		};
	};

}];

// Perception (use the code snippet below to delete markers if you need)
player addEventHandler ["FiredNear", {
	params ["_unit", "_firer", "_distance", "_weapon", "_muzzle", "_mode", "_ammo", "_gunner"];
	if (_unit isEqualTo _firer) exitWith {};
	private _skillRange = ['train_spy'] call DT_fnc_perkData;
	if (_distance > _skillRange) exitWith {};
	private _shot = createMarkerLocal [format['shot_%1',diag_tickTime],getPos _firer];
	_shot setMarkerShapeLocal "ICON";
	_shot setMarkerTypeLocal "mil_dot";
	_shot setMarkerColorLocal "ColorRed";
}];
// {deleteMarker _x} forEach (allMapMarkers select {_x find "shot_" > -1})

if (_enableMedicalStates isEqualTo 1) then {
	// Cognitive stability
	player addEventHandler ['Explosion',{
		params ["_unit", "_damage"];
		private _chance = 'util_stabilize' call DT_fnc_perkData;
		if (huskyState _unit isEqualTo "INCAPACITATED") exitWith {};
		if (_chance > random 1) exitWith {
			player playMoveNow "amovppnemstpsraswrfldnon";
		};			
		if (_damage > 0) then {
			player setUnconscious true;
			5 spawn {
				uiSleep _this;
				player setUnconscious false;
				player playMoveNow "amovppnemstpsraswrfldnon";
			};
		};
	}];	
};
