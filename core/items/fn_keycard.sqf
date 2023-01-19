/*
Author: Max
Keycard-Script

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
	//if (isNull (objectParent player)) then {
		if ((missionNamespace getVariable ["husky_inv_keycard",0]) isEqualTo 0 ) exitWith {hint "Du Retardo di Caprio hast keine KeyCard.";};
		_door = [_this, 0, objNull] call bis_fnc_param;
	//};

	_animdoor = compileFinal '
		if ((typeOf _this) isEqualTo "Land_BarGate_F") then {
			if (_this animationPhase "Door_1_rot" isEqualTo 1) then {
				_this animate ["Door_1_rot", 0];
			} else {
				_this animate ["Door_1_rot", 1];
			};
		} else {
			if (_this animationPhase "Door_1_move" isEqualTo 1) then {
				_this animate ["Door_1_move", 0];
			} else {
				_this animate ["Door_1_move", 1];
			};

		};
	';

	if (playerSide isEqualTo WEST) then {
		if (isNull (objectParent player)) then {
			// Zu Fuß
			if (isNull _door) exitWith {/*["Du schaust die Tür nicht an", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;*/};
			_door call _animdoor;
		} else {
			// Im Fahrzeug
			_doors = ["Land_ConcreteWall_01_l_gate_F","Land_PipeFence_01_m_gate_v1_F","Land_BarGate_F","Land_ConcreteWall_01_m_gate_F", "Land_BackAlley_01_l_gate_F"];
			_door = nearestObjects[player,_doors,25];

			{
				_x call _animdoor;
			} forEach _door;
		};
	};

	if (playerSide isEqualTo independent) then {
		if (isNull (objectParent player)) then {
			// Zu Fuß
			if (isNull _door) exitWith {/*["Du schaust die Tür nicht an", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;*/};
			_door call _animdoor;
		} else {
			// Im Fahrzeug
			_doors = ["Land_ConcreteWall_01_l_gate_F","Land_PipeFence_01_m_gate_v1_F","Land_BarGate_F","Land_ConcreteWall_01_m_gate_F", "Land_BackAlley_01_l_gate_F"];
			_door = nearestObjects[player,_doors,25];

			{
				_x call _animdoor;
			} forEach _door;
		};
	};

	if (playerSide isEqualTo civilian) then {
		if (isNull (objectParent player)) then {
		// Zu Fuß
			if (isNull _door) exitWith {/*["Du schaust die Tür nicht an", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;*/};
			_door call _animdoor;
			//[getPlayerUID player,profileName,"50"] remoteExec ["husky_fnc_wantedAdd",2];

		} else {
			// Im Fahrzeug
			_doors = ["Land_ConcreteWall_01_l_gate_F","Land_PipeFence_01_m_gate_v1_F","Land_BarGate_F","Land_ConcreteWall_01_m_gate_F", "Land_BackAlley_01_l_gate_F"];
			_door = nearestObjects[player,_doors,25];
			//[getPlayerUID player,profileName,"50"] remoteExec ["husky_fnc_wantedAdd",2];

			{
				_x call _animdoor;
			} forEach _door;
		};

		if (!license_civ_sm) then {
			[getPlayerUID player,profileName,"50"] remoteExec ["husky_fnc_wantedAdd",2];
		};
	};


/*
this addAction ["Tür aufsperren", {(_this select 0) setVariable ['bis_disabled_Door_1',0,true]},nil,1.5,true,true,"","playerSide isEqualTo WEST"];
this addAction ["Tür zusperren", {(_this select 0) setVariable ['bis_disabled_Door_1',1,true]},nil,1.5,true,true,"","playerSide isEqualTo WEST"];

this setVariable ['bis_disabled_Door_1',1,true]; this setVariable ['bis_disabled_Door_2',1,true]; this setVariable ['bis_disabled_Door_1',1,true];
*/
