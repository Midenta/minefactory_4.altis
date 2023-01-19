scriptName "fn_initTuningClient";
/*--------------------------------------------------------------------
	Author: Maverick (ofpectag: MAV)
    File: fn_initTuningClient.sqf

	<Maverick Applications>
    Written by Maverick Applications (www.maverick-apps.de)
    You're not allowed to use this file without permission from the author!
--------------------------------------------------------------------*/
#define __filename "fn_initTuningClient.sqf"

[] spawn {
	waitUntil {!isNull player};
	waitUntil {!isNull (findDisplay 46)};

	sleep 20;
	//diag_log "fn_initTuningClient Aufruf!";

	mav_tuning_light_toofast = -999;
	mav_tuning_nitroCooldownShort = 0;
	mav_tuning_nitroActive = false;
	mav_tuning_nitro_handler = (findDisplay 46) displayAddEventHandler ["KeyDown", {
		_handled = false;

		if (vehicle player != player AND (driver vehicle player) == player) then {

			// Nitro effect Shift (W)
			if ((_this select 2) AND (_this select 1) == 17 AND (vehicle player != player)) then {
				if ((speed vehicle player) < 100 && ((vehicle player) isKindOf "LandVehicle")) then {
					if (diag_tickTime - mav_tuning_nitroCooldownShort >= 0.2) then {
						mav_tuning_nitroCooldownShort = diag_tickTime;
						if (mav_tuning_nitroActive) then {
							_vehicle = vehicle player;
							_vel = velocity _vehicle;
							//_velsp = limitSpeed  _vehicle;
							_dir = direction _vehicle;
							_speed = 3;		//0.75
							_vehicle setVelocity [
								(_vel select 0) + (sin _dir * _speed),
								(_vel select 1) + (cos _dir * _speed),
								(_vel select 2)
							];
						};
					};
				};
			};

			// Activate nitro
			if ((_this select 1) == 33) then {
				if (!mav_tuning_nitroActive) then {
					if ((((vehicle player) getVariable ["mav_tuning",[0,0,0,0,0]]) select 3) > 0) then {
						mav_tuning_nitroActive = true;
						_curValue = (((vehicle player) getVariable ["mav_tuning",[0,0,0,0,0]]));
						_curValue set [3, (_curValue select 3) - 1];
						(vehicle player) setVariable ["mav_tuning", _curValue, true];

						[format["<t size='1' align='center' shadow='2' font='PuristaMedium' color='#12FE00'>Sie haben die Nitro aktiviert, damit das Auto 60 Sekunden schneller beschleunigt wird<br/> Es sind % 1 Nitroboosts in diesem Fahrzeug vorhanden</t>",_curValue select 3]] spawn mav_tuning_fnc_displayText;

						[] spawn {
							sleep 60;
							mav_tuning_nitroActive = false;

							["<t size='1' align='center' shadow='2' font='PuristaMedium' color='#12FE00'>Der Nitro-Boost ist aufgebraucht</t>"] spawn mav_tuning_fnc_displayText;
						};
					} else {
						["<t size='1' align='center' shadow='2' font='PuristaMedium' color='#ff0000'>Dieses Fahrzeug hat keine Nitroboosts übrig</t>"] spawn mav_tuning_fnc_displayText;
					};
				} else {
					["<t size='1' align='center' shadow='2' font='PuristaMedium' color='#ff0000'>Nitro ist bereits aktiv</t>"] spawn mav_tuning_fnc_displayText;
				};
			};

			// Shift L (Underglow)
			if ((_this select 2) AND (_this select 1) == 38) then {
				if !((((vehicle player) getVariable ["mav_tuning",[0,0,0,0,[-1,-1,-1]]]) select 4) isEqualTo [-1,-1,-1]) then {
					if ((diag_tickTime - mav_tuning_light_toofast) < 1) exitWith {};
					mav_tuning_light_toofast = diag_tickTime;

					if (isNull ((vehicle player) getVariable ["mav_tuning_light",objNull])) then {
						[(vehicle player)] remoteExec ["mav_tuning_fnc_enableLight"];
						["<t size='1' align='center' shadow='2' font='PuristaMedium' color='#12FE00'>Unterleuchtung aktiviert</t>"] spawn mav_tuning_fnc_displayText;
						_handled = true;
					} else {
						[(vehicle player)] remoteExec ["mav_tuning_fnc_disableLight"];
						["<t size='1' align='center' shadow='2' font='PuristaMedium' color='#ff0000'>Unterleuchtung deaktiviert</t>"] spawn mav_tuning_fnc_displayText;
						_handled = true;
					};
				};
			};
		};

		// Return false
		_handled
	}];

	// Adjust skins manually
	_allVehicles = allMissionObjects "LandVehicle";
	{
		if (!isNil {_x getVariable "vehicleID"} AND !isNil {_x getVariable "mav_tuning"}) then {
			[_x getVariable "mav_tuning", _x, 3] spawn mav_tuning_fnc_loadVehicleModification;
		};
	} forEach _allVehicles;

	// Give all NPCs their addaction
	{
		_npcNameString = format["npc_tuning_%1", _x];
		_npc = missionNamespace getVariable [_npcNameString, objNull];
		if (!isNull _npc) then {
			player addAction ["Tuningshop betreten", {[vehicle player] spawn mav_tuning_fnc_start}, nil, 50, true, false, "", format["(%1 distance2d player) < 10", _npcNameString]];
		};
	} forEach [1,2,3,4,5,6,7,8,9,10];

	player addEventHandler ["Respawn", {
		[] spawn {
			sleep 10;
			{
				_npcNameString = format["npc_tuning_%1", _x];
				_npc = missionNamespace getVariable [_npcNameString, objNull];
				if (!isNull _npc) then {
					player addAction ["Tuningshop betreten", {[vehicle player] spawn mav_tuning_fnc_start}, nil, 50, true, false, "", format["(%1 distance2d player) < 10", _npcNameString]];
				};
			} forEach [1,2,3,4,5,6,7,8,9,10];
		};
	}];
};