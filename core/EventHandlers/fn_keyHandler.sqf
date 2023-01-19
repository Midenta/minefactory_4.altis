#include "..\..\script_macros.hpp"
/*
*    File: fn_keyHandler.sqf
*    Author: Bryan "Tonic" Boardwine
*
*    Description:
*    Main key handler for event 'keyDown'.
*
*	https://native-network.net/forum/thread/23-keyhandler-case-nummern/
*
*	 https://community.bistudio.com/wiki/DIK_KeyCodes
*
*	Thieves
*
*	Thieves-Gaming.de
*
*	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
*	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_handled","_shift","_alt","_code","_ctrl","_alt","_ctrlKey","_veh","_locked","_interactionKey","_mapKey","_interruptionKeys"];
_ctrl = _this select 0;
_code = _this select 1;
_shift = _this select 2;
_ctrlKey = _this select 3;
_alt = _this select 4;
_speed = speed cursorObject;
_handled = false;

_interactionKey = if (count (actionKeys "User10") isEqualTo 0) then {219} else {(actionKeys "User10") select 0};
_mapKey = (actionKeys "ShowMap" select 0);
//hint str _code;
_interruptionKeys = [17,30,31,32]; //A,S,W,D

if (_code isEqualTo 183) exitWith {
    true;
};

//Vault handling...
if ((_code in (actionKeys "GetOver") || _code in (actionKeys "salute") || _code in (actionKeys "SitDown") || _code in (actionKeys "Throw") || _code in (actionKeys "GetIn") || _code in (actionKeys "GetOut") || _code in (actionKeys "Fire") || _code in (actionKeys "ReloadMagazine") || _code in [16,18]) && ((player getVariable ["restrained",false]) || (player getVariable ["playerSurrender",false]) || husky_isknocked || husky_istazed)) exitWith {
    true;
};

if (husky_action_inUse) exitWith {
    if (!husky_interrupted && _code in _interruptionKeys) then {husky_interrupted = true;};
    _handled;
};

//Hotfix for Interaction key not being able to be bound on some operation systems.
if (!(count (actionKeys "User10") isEqualTo 0) && {(inputAction "User10" > 0)}) exitWith {
    //Interaction key (default is Left Windows, can be mapped via Controls -> Custom -> User Action 10)
    if (!husky_action_inUse) then {
        [] spawn {
            private "_handle";
            _handle = [] spawn husky_fnc_actionKeyHandler;
            waitUntil {scriptDone _handle};
            husky_action_inUse = false;
        };
    };
    true;
};

if (husky_container_active) exitwith {
    //ignore movement actions
    private _allowedMoves = [
        "MoveForward",
        "MoveBack",
        "TurnLeft",
        "TurnRight",
        "MoveFastForward",
        "MoveSlowForward",
        "turbo",
        "TurboToggle",
        "MoveLeft",
        "MoveRight",
        "WalkRunTemp",
        "WalkRunToggle",
        "AdjustUp",
        "AdjustDown",
        "AdjustLeft",
        "AdjustRight",
        "Stand",
        "Crouch",
        "Prone",
        "MoveUp",
        "MoveDown",
        "LeanLeft",
        "LeanLeftToggle",
        "LeanRight",
        "LeanRightToggle"
    ];
    if (({_code in (actionKeys _x)} count _allowedMoves) > 0) exitwith {
        false;
    };
	
    //handle other keys
    if (_code isEqualTo 57) then {	//space key -> place
        husky_storagePlacing = 0 spawn husky_fnc_placestorage;
    } else { //other keys -> abort
        if (!isNull husky_storagePlacing) exitWith {}; //already placing down a box
        if (!isNull husky_container_activeObj) then {
            deleteVehicle husky_container_activeObj;
            titleText [localize "STR_NOTF_PlaceContainerAbort", "PLAIN"]; titleFadeOut 2;
        };
        husky_container_active = false;
    };
    true;
};

switch (_code) do {
	// -- Disable commander/tactical view
    //if (husky_SETTINGS(getNumber,"disableCommanderView") isEqualTo 1) then {
        private _CommandMode = actionKeys "tacticalView";

        if (_code in _CommandMode) then {
			//["Befehlshaber-Übersicht deaktiviert!", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
            //hint localize "STR_NOTF_CommanderView";
            _handled = true;
        };

    //};
	// Shift -> Chip tuning boost		STRG-key	16
    case 29: {
		private _vehicle = vehicle player;

        if ( _vehicle != player && { local _vehicle } && { isEngineOn _vehicle } && { _vehicle getVariable["chip.enabled", true] } ) then {
            [_vehicle] call husky_fnc_chipboost;
        };
    };

	case _interactionKey: {
        if (!husky_action_inUse) then {
            [] spawn  {
                private "_handle";
                _handle = [] spawn husky_fnc_actionKeyHandler;
                waitUntil {scriptDone _handle};
                husky_action_inUse = false;
            };
        };
    };

	//Map Key
    case _mapKey: {
        switch (playerSide) do {
            case west: {if (!visibleMap) then {[] spawn husky_fnc_copMarkers;}};
            case independent: {if (!visibleMap) then {[] spawn husky_fnc_medicMarkers;}};
            case civilian: {if (!visibleMap) then {[] spawn husky_fnc_civMarkers;}};
        };
    };

    //Space key for Jumping
    case 57: {
		if (!_shift && (player getVariable["husky_barrier_active",false])) then {
			0 spawn husky_fnc_placeablesPlaceComplete;
		};
        if (isNil "jumpActionTime") then {jumpActionTime = 0;};
        if (_shift && {!(animationState player isEqualTo "AovrPercMrunSrasWrflDf")} && {isTouchingGround player} && {stance player isEqualTo "STAND"} && {speed player > 2} && {!husky_is_arrested} && {((velocity player) select 2) < 2.5} && {time - jumpActionTime > 1.5}) then {
            jumpActionTime = time; //Update the time.
            [player] remoteExec ["husky_fnc_jumpFnc",RANY]; //Global execution
            _handled = true;
        };
	};

	//Z Player Menu
    case 21: {
	if (!_alt && {!_ctrlKey} && {!dialog} && {!husky_action_inUse} && {!(player getVariable ["restrained",false])} && {!(player getVariable ["playerSurrender",false])} && {!(player getVariable ["isEscorting",false])} && {!husky_isknocked} && {!husky_istazed} || (FETCH_CONST(husky_adminlevel) >= 3)) then {
            [] call husky_fnc_p_openMenu;
        };
    };

	//Takwondo(Traditional Martial arts in korea)(Shift + Num 1)
	case 79: {
		if (_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then {
			cutText [format["Taekwondo"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exerciseKata";
		};
	};

	//Kniebeugen(Shift + Num 2)
	case 80: {
		if (_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then {
			cutText [format["Kniebeugen"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendA";
		};
	};

	//Schnelle Kniebeugen(Shift + Num 3)
	case 81: {
		if (_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then {
			cutText [format["Schnelle Kniebeugen"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exercisekneeBendB";
		};
	};

	//Liegestütz(Shift + Num 4)
	case 75: {
		if (_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then {
			cutText [format["Liegestütz"], "PLAIN DOWN"];
			player playMove "AmovPercMstpSnonWnonDnon_exercisePushup";
		};
	};

	//Pinkeln(Shift + Num 5)
	case 76: {
		if (_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then {
			cutText [format["Pinkeln"], "PLAIN DOWN"];
			player playMove "Acts_AidlPercMstpSlowWrflDnon_pissing";
		};
	};

	//Hi(Shift + Num 6)
	case 77: {
		if (_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then {
			cutText [format["Hi"], "PLAIN DOWN"];
			player playactionnow 'GestureHi';
		};
	};

	//Kopfnicken(Shift + Num 7)
	case 71: {
		if (_shift) then {_handled = true;};
		if ((_shift) && (vehicle player == player)) then {
			cutText [format["Kopfnicken"], "PLAIN DOWN"];
			player playactionnow 'gestureNod';
		};
	};

	//Animation: Mittelfinger (Shift + Num 8)
	case 72: {
		if (_shift) then {_handled = true;};
			if (_shift) then {
				if ((_shift) && (vehicle player == player)) then {
					0 spawn{
					0 spawn{
					inanimation = true;
					_time=time;
					sleep 2;
					waitUntil {time isEqualTo _time+15 || animationState player != "acts_briefing_sb_in" || !inanimation};
					inanimation = false;
				};

				_dir=direction player;
				player setDir _dir+300;
				player playMoveNow "acts_briefing_sb_in";
				sleep 7;

					if (animationState player isEqualTo "acts_briefing_sb_in")then{
					player switchmove "amovpercmstpsraswrfldnon";
					player setDir _dir;

					};
				};
			};
		};
	};

	//F10
	case 68: {
		if (!(husky_idcard_data isEqualto []) && cursorObject distance player < 3) then {
			if (!isnull cursorTarget) then {
				if (alive cursorTarget) then {
					if (cursorTarget isKindOf "Man") then {
						[husky_idcard_data,getplayeruid player,player] remoteExec ["husky_fnc_show_idcard",cursorTarget];
						hint format[localize "STR_capps_cur_error_success",name cursorTarget];
					} else {
						[husky_idcard_data,getplayeruid player,player] spawn husky_fnc_show_idcard;
						hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du zeigst auf keine Person...</t>";
					};
				} else {
					[husky_idcard_data,getplayeruid player,player] spawn husky_fnc_show_idcard;
					hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du zeigst auf keine lebende Person...</t>";
				};
			} else {
				[husky_idcard_data,getplayeruid player,player] spawn husky_fnc_show_idcard;
				hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du zeigst auf keine Person...</t>";
			};
		} else {
			hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast keinen Ausweis oder du bist zu weit von der Person entfernt! Du musst zuerst einen beantragen...</t>";
		};
	};

    //Holster / recall weapon. (Shift + H)
    case 35: {
        if (_shift && !_ctrlKey && !(currentWeapon player isEqualTo "")) then {
            husky_curWep_h = currentWeapon player;
            player action ["SwitchWeapon", player, player, 100];
            player switchCamera cameraView;
        };

        if (!_shift && _ctrlKey && !isNil "husky_curWep_h" && {!(husky_curWep_h isEqualTo "")}) then {
            if (husky_curWep_h in [primaryWeapon player,secondaryWeapon player,handgunWeapon player]) then {
                player selectWeapon husky_curWep_h;
            };
        };
		if (!_shift && !_ctrlKey) then {
			if (playerSide isEqualTo independent) then {
				[] call husky_fnc_medico;
			};
	    };
    };

	//Surrender (Shift + B)
    case 48: {
        if (_shift) then {
            if (player getVariable ["playerSurrender",false]) then {
                player setVariable ["playerSurrender",false,true];
            } else {
                [] spawn husky_fnc_surrender;
            };
            _handled = true;
        };
		if (_ctrlKey) then {
			abcdefghijklmnopqrstuvwxy = TRUE;
		};
    };

	//Knock out, this is experimental and yeah... (Shift + G)
    case 34: {
        if (_shift) then {_handled = true;};
        if (_shift && (playerSide in ([west,independent,civilian])) && !isNull cursorObject && cursorObject isKindOf "Man" && isPlayer cursorObject && alive cursorObject && cursorObject distance player < 4 && speed cursorObject < 1) then {
            if ((animationState cursorObject) != "Incapacitated" && (currentWeapon player == primaryWeapon player || currentWeapon player == handgunWeapon player) && currentWeapon player != "" && !husky_knockout && !(player getVariable ["restrained",false]) && !husky_istazed && !husky_isknocked) then {
                [cursorObject] spawn husky_fnc_knockoutAction;

				if ("ItemRadio" in assignedItems cursorTarget) then {
					cursorTarget removeweapon "ItemRadio";
					hint parseText "<t underline='true' size='1.8' color='#7cff00'>Information</t><br /><t size='1.5' color='#ffffff'>Das Mobiltelefon der Person wurde auf den Boden gelegt.</t>";
					_defenceplace1 = "ItemRadio" createVehicle (player modelToWorld [0,0,0]);
				} else {
					hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Die Person, die du ausknockst, hat kein Handy!</t>";
				};
			};
        };
    };

	//Restraining (Shift + R)
    case 19: {
        if (_shift) then {_handled = true;};
       /* if (_shift && (playerSide in ([west])) && {!isNull cursorObject} && {cursorObject isKindOf "Man"} && {(isPlayer cursorObject)} && {(side cursorObject in [civilian,independent,west])} && {alive cursorObject} && {cursorObject distance player < 3.5} && {!(cursorObject getVariable "Escorting")} && {!(cursorObject getVariable "restrained")} && {speed cursorObject < 1}) then {
            [] call husky_fnc_restrainAction;
        } else {*/
        if (_shift && (playerSide in ([west,independent])) && {!isNull cursorObject} && {cursorObject isKindOf "Man"} && {(isPlayer cursorObject)} && {(side cursorObject in [civilian,west,independent])} && {alive cursorObject} && {cursorObject distance player < 3.5} && {!(cursorObject getVariable "Escorting")} && {!(cursorObject getVariable "restrained")} /*&& {!(cursorObject getVariable ["playerSurrender",false])}*/ && {!husky_isknocked} && {!husky_istazed} && {speed cursorObject < 1}) then {
            if (husky_inv_kabelbinder > 0) then {
                if ([false,"kabelbinder",1] call husky_fnc_handleInv) then {
                    [] call husky_fnc_restrainAction;
          hint parseText "<t underline='true' size='1.8' color='#7cff00'>Information</t><br /><t size='1.5' color='#ffffff'>Benutze die Action 10-Taste, um weitere Aktionen anzuzeigen.</t>";
                } else {
          hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du besitzt keine Kabelbinder!</t>";
				};
			};
        } else {
			if (_shift && (playerSide in ([civilian])) && (license_civ_restrain) && {!isNull cursorObject} && {cursorObject isKindOf "Man"} && {(isPlayer cursorObject)} && {(side cursorObject in [civilian,west,independent])} && {alive cursorObject} && {cursorObject distance player < 3.5} && {!(cursorObject getVariable "Escorting")} && {!(cursorObject getVariable "restrained")} /*&& {!(cursorObject getVariable ["playerSurrender",false])}*/ && {!husky_isknocked} && {!husky_istazed} && {speed cursorObject < 1}) then {
				if (husky_inv_kabelbinder > 0) then {
					if ([false,"kabelbinder",1] call husky_fnc_handleInv) then {
						[] call husky_fnc_restrainAction;
						hint parseText "<t underline='true' size='1.8' color='#7cff00'>Information</t><br /><t size='1.5' color='#ffffff'>Benutze die Action 10-Taste, um weitere Aktionen anzuzeigen.</t>";
					} else {
					       hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du besitzt keine Kabelbinder!</t>";
					};
				};
			};
		};
    };

	//T Key (Trunk)
    case 20: {
        if (!_alt && {!_ctrlKey} && {!dialog} && {!husky_action_inUse} && {!(player getVariable ["playerSurrender",false])} && {!(player getVariable ["restrained",false])} && {!(player getVariable ["tied",false])} && {!husky_isknocked} && {!husky_istazed}) then {
            if (!(isNull objectParent player) && alive vehicle player) then {
                if ((vehicle player) in husky_vehicles) then {
                    [vehicle player] spawn husky_fnc_openInventory;
                };
            } else {
                private "_list";
                _list = ((ASLtoATL (getPosASL player)) nearEntities [["Box_IND_Grenades_F", "B_supplyCrate_F", "Land_PlasticCase_01_large_CBRN_F", "Land_MetalBarrel_F", "HazmatBag_01_F", "Land_WaterBarrel_F", "Land_WaterTank_F", "Land_PaperBox_closed_F", "CargoNet_01_barrels_F", "Box_East_Wps_Special_F", "Box_East_AmmoVeh_F", "O_CargoNet_01_ammo_F", "C_IDAP_CargoNet_01_supplies_F", "Land_PlasticCase_01_small_F"/*, "Land_Cargo10_grey_F", "Land_PlasticCase_01_large_gray_F", "Land_PlasticCase_01_medium_gray_F", "Land_ShelvesWooden_blue_F", "Land_Metal_wooden_rack_F", "Land_CargoBox_V1_F", "Land_Cargo20_white_F", "Land_Cargo20_red_F", "Land_Cargo20_blue_F", "Land_Cargo20_military_green_F", "Land_Cargo20_yellow_F", "Land_Cargo20_IDAP_F", "CargoNet_01_box_F"*/], 2.5]) select 0;
                if(cursorObject isEqualTo husky_airdopObj) then {
					[husky_airdopObj]spawn husky_fnc_airOpen;
				};
				if (!(isNil "_list")) then {
                    _house = nearestObject [(ASLtoATL (getPosASL _list)), "House"];
                    if (_house getVariable ["locked", false]) then {
                        hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du bist nicht berechtigt, auf diesen Container zuzugreifen, ohne dass der Besitzer ihn aufgeschlossen hat.</t>";
                    } else {
                        [_list] spawn husky_fnc_openInventory;
                    };
                } else {
                    _list = ["landVehicle","Air","Ship","Box_NATO_AmmoVeh_F","Land_Cargo20_white_F","Land_Cargo20_red_F","Land_Cargo20_blue_F","Land_Cargo20_military_green_F","Land_Cargo20_yellow_F","Land_Cargo20_IDAP_F","B_Slingload_01_Fuel_F","Land_Pod_Heli_Transport_04_fuel_F","Land_Device_slingloadable_F","Land_Device_assembled_F","Land_PlasticCase_01_small_gray_F"];
                    if (KINDOF_ARRAY(cursorObject,_list) && {player distance cursorObject < 9} && {isNull objectParent player} && {alive cursorObject} && {!husky_action_inUse}) then {
                        if (cursorObject in husky_vehicles || {locked cursorObject isEqualTo 0}) then {
                            [cursorObject] spawn husky_fnc_openInventory;
							//[_list] spawn husky_fnc_openInventory;	//In der else muss der code drüber rein, sonst können keien fahjrzeug geöffnet werden
						}else{
							hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du bist nicht berechtigt, auf diesen Container zuzugreifen, ohne dass der Besitzer ihn aufgeschlossen hat!</t>";
						};
                    };
                };
            };
        };
    };
	
	//Sitdown Script
        if (_code in (actionKeys "MoveForward")) then
	{
		if (!isNull husky_sitting) then
		{
			[] execVM "Scripts\Chair\standup.sqf";
			_handled = true;
		};
	};

	//K EMP
	case 37: {
		if (!_shift && !_alt && !_ctrlKey && playerSide in [west,independent,civilian] && {((driver vehicle player) == player) || ((vehicle player unitTurret player) isEqualTo [0])} && (vehicle player != player && (typeOf vehicle player) in ["I_Heli_light_03_unarmed_F"])) then {
			[] call husky_fnc_openEmpMenu; [_this] call husky_fnc_isEmpOperator;
		};
	};


	//shift + 46 c Key
	case 46: {
		if (_shift) then {
			if (playerSide in [civilian,west,independent] && {vehicle player != player} && {((driver vehicle player) == player)}) then {
				[] spawn husky_fnc_boothupe;
			};
		};
	};

	//Ö	keycard
	case 39: {
		  if (!_shift && !_ctrlKey) then {
			   if (isNull (objectParent player)) then {
				    [cursorTarget] call husky_fnc_keycard;
			   } else {
    		    [] call husky_fnc_keycard;
			   };
		  };
    };

	//Shift+POS 1	//Töröffner
	case 199: {
		if (_shift && !_alt && !_ctrlKey && (playerSide in [west,independent,east]) && (vehicle player != player)) then {
			[] call husky_fnc_Opener;
		};
	};

	//ENTF-Key			platziertes entfernen
    case 211: {
        if ((playerSide in [west,independent,east]) && ((typeOf cursorTarget) in husky_definePlaceables)) then {
			deleteVehicle cursorTarget;
      hint parseText "<t underline='true' size='1.8' color='#7cff00'>Information</t><br /><t size='1.5' color='#ffffff'>Die Absperrung wurde entfernt.</t>";
			//hintSilent "Die Absperrung wurde entfernt";
        };
    };

	// shift+K
	case 37: {
		if (_shift) then {
			if(playerSide in [west,independent,civilian]) then {
				if((player getVariable "surrender") || (player getVariable "restrained") || (player getVariable "tied"))exitWith{};
				if(husky_sos_cooldown) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Bitte warte noch kurz bevor du den Knopf betätigst</t>";};
				if([false,"sos",1] call husky_fnc_handleInv) then {
					     [] spawn husky_fnc_copbackup;
				};
			};
		};
	};

	//shift + L
	case 38: {	
		if (_shift && vehicle player == player && playerside in [civilian,west,independent]) then {
				[vehicle player] call husky_fnc_useFlashlight;
		};
	};

	//ENDE		//24 O Key
    case 207: {
        //if (!_shift && !_alt && !_ctrlKey) then {
		if (playerSide in [west,independent,civilian]) then {
            if (isNil "husky_soundlevel")then{husky_soundlevel = 1};
			switch (husky_soundlevel) do {
				case 1: {
					0.7 call {
						1 fadeSound _this;
						husky_soundlevel = _this;
						hintSilent ("Neue Lautstärke: " + str(_this * 100) + "%");
					};
				};
				case 0.7: {
					0.4 call {
						1 fadeSound _this;
						husky_soundlevel = _this;
						hintSilent ("Neue Lautstärke: " + str(_this * 100) + "%");
					};
				};
				case 0.4: {
					0.1 call {
						1 fadeSound _this;
						husky_soundlevel = _this;
						hintSilent ("Neue Lautstärke: " + str(_this * 100) + "%");
					};
				};
				case 0.1: {
					0.01 call {
						1 fadeSound _this;
						husky_soundlevel = _this;
						hintSilent ("Neue Lautstärke: " + str(_this * 100) + "%");
					};
				};
				case 0.01: {
					1 call {
						1 fadeSound _this;
						husky_soundlevel = _this;
						hintSilent ("Neue Lautstärke: " + str(_this * 100) + "%");
					};
				};
				
			};
        };
    };

	//U Key
    case 22: {
        if (!_alt && !_ctrlKey) then {
            private _veh = if (isNull objectParent player) then {
                cursorObject;
            } else {
                vehicle player;
            };

            if (_veh isKindOf "House_F" && {playerSide isEqualTo civilian}) then {
                if (_veh in husky_vehicles && {player distance _veh < 20}) then {
                    private _door = [_veh] call husky_fnc_nearestDoor;
                    if (_door isEqualTo 0) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Keine Tür in der Nähe!</t>";};
                    private _locked = _veh getVariable [format ["bis_disabled_Door_%1",_door],0];

                    if (_locked isEqualTo 0) then {
                        _veh setVariable [format ["bis_disabled_Door_%1",_door],1,true];
                        _veh animateSource [format ["Door_%1_source", _door], 0];
                        systemChat localize "STR_House_Door_Lock";
                    } else {
                        _veh setVariable [format ["bis_disabled_Door_%1",_door],0,true];
                        _veh animateSource [format ["Door_%1_source", _door], 1];
                        systemChat localize "STR_House_Door_Unlock";
                    };
                };
            } else {
                private _locked = locked _veh;
                if (_veh in husky_vehicles && {player distance _veh < 10}) then {
                    if (_locked isEqualTo 2) then {
                        if (local _veh) then {
                            _veh lock 0;

                            // BI
                           /* _veh animateDoor ["door_back_R",1];
                            _veh animateDoor ["door_back_L",1];
                            _veh animateDoor ['door_R',1];
                            _veh animateDoor ['door_L',1];
                            _veh animateDoor ['Door_L_source',1];
                            _veh animateDoor ['Door_rear',1];
                            _veh animateDoor ['Door_rear_source',1];
                            _veh animateDoor ['Door_1_source',1];
                            _veh animateDoor ['Door_2_source',1];
                            _veh animateDoor ['Door_3_source',1];
                            _veh animateDoor ['Door_LM',1];
                            _veh animateDoor ['Door_RM',1];
                            _veh animateDoor ['Door_LF',1];
                            _veh animateDoor ['Door_RF',1];
                            _veh animateDoor ['Door_LB',1];
                            _veh animateDoor ['Door_RB',1];
                            _veh animateDoor ['DoorL_Front_Open',1];
                            _veh animateDoor ['DoorR_Front_Open',1];
                            _veh animateDoor ['DoorL_Back_Open',1];
                            _veh animateDoor ['DoorR_Back_Open ',1];*/
                        } else {
                            [_veh,0] remoteExecCall ["husky_fnc_lockVehicle",_veh];

                           /* _veh animateDoor ["door_back_R",1];
                            _veh animateDoor ["door_back_L",1];
                            _veh animateDoor ['door_R',1];
                            _veh animateDoor ['door_L',1];
                            _veh animateDoor ['Door_L_source',1];
                            _veh animateDoor ['Door_rear',1];
                            _veh animateDoor ['Door_rear_source',1];
                            _veh animateDoor ['Door_1_source',1];
                            _veh animateDoor ['Door_2_source',1];
                            _veh animateDoor ['Door_3_source',1];
                            _veh animateDoor ['Door_LM',1];
                            _veh animateDoor ['Door_RM',1];
                            _veh animateDoor ['Door_LF',1];
                            _veh animateDoor ['Door_RF',1];
                            _veh animateDoor ['Door_LB',1];
                            _veh animateDoor ['Door_RB',1];
                            _veh animateDoor ['DoorL_Front_Open',1];
                            _veh animateDoor ['DoorR_Front_Open',1];
                            _veh animateDoor ['DoorL_Back_Open',1];
                            _veh animateDoor ['DoorR_Back_Open ',1];*/
                        };
                        systemChat localize "STR_MISC_VehUnlock";
                        [_veh,"unlockCarSound",50,1] remoteExec ["husky_fnc_say3D",RANY];
						            //hintSilent parseText "<img size='1' color='#FFFFFF' image='icons\unlock.paa'/><t size='1'> Sie haben Ihr Fahrzeug aufgeschlossen.</t>";
                        hint parseText "<img size='1' color='#FFFFFF' image='icons\unlock.paa'/><t size='1'> <t underline='true' size='1.8' color='#7cff00'>Fahrzeug offen</t><br /><t size='1.5' color='#ffffff'>Du hast dein Fahrzeug aufgeschlossen.</t>";
                    } else {
                        if (local _veh) then {
                            _veh lock 2;

                            /*_veh animateDoor ["door_back_R",0];
                            _veh animateDoor ["door_back_L",0];
                            _veh animateDoor ['door_R',0];
                            _veh animateDoor ['door_L',0];
                            _veh animateDoor ['Door_L_source',0];
                            _veh animateDoor ['Door_rear',0];
                            _veh animateDoor ['Door_rear_source',0];
                            _veh animateDoor ['Door_1_source',0];
                            _veh animateDoor ['Door_2_source',0];
                            _veh animateDoor ['Door_3_source',0];
                            _veh animateDoor ['Door_LM',0];
                            _veh animateDoor ['Door_RM',0];
                            _veh animateDoor ['Door_LF',0];
                            _veh animateDoor ['Door_RF',0];
                            _veh animateDoor ['Door_LB',0];
                            _veh animateDoor ['Door_RB',0];
                            _veh animateDoor ['DoorL_Front_Open',0];
                            _veh animateDoor ['DoorR_Front_Open',0];
                            _veh animateDoor ['DoorL_Back_Open',0];
                            _veh animateDoor ['DoorR_Back_Open ',0];*/
                        } else {
                            [_veh,2] remoteExecCall ["husky_fnc_lockVehicle",_veh];

                           /* _veh animateDoor ["door_back_R",0];
                            _veh animateDoor ["door_back_L",0];
                            _veh animateDoor ['door_R',0];
                            _veh animateDoor ['door_L',0];
                            _veh animateDoor ['Door_L_source',0];
                            _veh animateDoor ['Door_rear',0];
                            _veh animateDoor ['Door_rear_source',0];
                            _veh animateDoor ['Door_1_source',0];
                            _veh animateDoor ['Door_2_source',0];
                            _veh animateDoor ['Door_3_source',0];
                            _veh animateDoor ['Door_LM',0];
                            _veh animateDoor ['Door_RM',0];
                            _veh animateDoor ['Door_LF',0];
                            _veh animateDoor ['Door_RF',0];
                            _veh animateDoor ['Door_LB',0];
                            _veh animateDoor ['Door_RB',0];
                            _veh animateDoor ['DoorL_Front_Open',0];
                            _veh animateDoor ['DoorR_Front_Open',0];
                            _veh animateDoor ['DoorL_Back_Open',0];
                            _veh animateDoor ['DoorR_Back_Open ',0];*/
                        };
                        systemChat localize "STR_MISC_VehLock";
                        [_veh,"lockCarSound",50,1] remoteExec ["husky_fnc_say3D",RANY];
						            //hintSilent parseText "<img size='1' color='#FFFFFF' image='icons\lock.paa'/><t size='1'> Sie haben Ihr Fahrzeug abgesperrt.</t>";
                        hint parseText "<img size='1' color='#ff0000' image='icons\lock.paa'/><t size='1'> <t underline='true' size='1.8' color='#7cff00'>Fahrzeug abgesperrt</t><br /><t size='1.5' color='#ffffff'>Du hast dein Fahrzeug abgesperrt.</t>";
                    };
                };
            };
        };
	};

	//Alt+F4
	if (_alt && _code isEqualTo 62 && isNil "alt_f4") then {
		hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Diese Funktion ist verboten!</t>";
		cutText["Funktion verboten!","BLACK FADED"];
		player say3D "flashbang";
		[] spawn SOCK_fnc_updateRequest;
		alt_f4 = true;[] spawn {uiSleep 5; alt_f4 = nil;};
		_handled = true;
		[getPlayerUID player, "Alt+F4", format ["%1 - %2 hat ALT+F4 genutz.",profileName,(getPlayerUID player)]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
	};

	//Sidechat
	if((_code in (actionKeys "PushToTalk") || _code in (actionKeys "PushToTalkSide") || _code in (actionKeys "PushToTalkAll") || _code in (actionKeys "PushToTalkDirect") || _code in (actionKeys "VoiceOverNet"))) exitWith {
		if (currentChannel in [husky_radio_civ,7]) then {
			setCurrentChannel 5;
      hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du musst auf Direkt Kommunikation sein, damit man dich hören kann</t>";
		};
	};

	//9-Key			//33 Key	F
    case 10: {
        if (playerSide in [west,independent] && {vehicle player != player} && {!husky_siren_active} && {((driver vehicle player) == player)}) then {

			[] spawn {
                husky_siren_active = true;
                sleep 5;
                husky_siren_active = false;
            };

            _veh = vehicle player;
            if (isNil {_veh getVariable "siren"}) then {_veh setVariable ["siren",false,true];};
            if ((_veh getVariable "siren")) then {
                titleText [localize "STR_MISC_SirensOFF","PLAIN",2];titleFadeOut 2;
                _veh setVariable ["siren",false,true];
                if !(isNil {(_veh getVariable "sirenJIP")}) then {
                    private _jip = _veh getVariable "sirenJIP";
                    _veh setVariable ["sirenJIP",nil,true];
                    remoteExec ["",_jip]; //remove from JIP queue
                };
            } else {
                titleText [localize "STR_MISC_SirensON","PLAIN",2];titleFadeOut 2;
                _veh setVariable ["siren",true,true];
                private "_jip";
                if (playerSide isEqualTo west) then {
                    _jip = [_veh] remoteExec ["husky_fnc_copSiren",RCLIENT,true];
                } else {
                    _jip = [_veh] remoteExec ["husky_fnc_medicSiren",RCLIENT,true];
                };
                _veh setVariable ["sirenJIP",_jip,true];
            };

		}else{
			
			[] spawn husky_fnc_ClanHorn;

        };
	};	


	//ALLE Ende

	// COP MED only Keys XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
	if (playerSide in [west,independent]) then {

	//Shift + Ä-Key	
    case 40: {
		if (_shift) then {
			if(playerside isEqualTo west) then {
				[]spawn husky_fnc_SperrInit;
			};
			/* if (playerSide in [west,independent]) then {
				createDialog "husky_sperrzonen_dialog";
			}; */
		};
	};

	//0-Key		38	L Key?
    case 11: {
        //If cop run checks for turning lights on.
		if (playerSide in [west,independent]) then {
			if (vehicle player != player && (((typeOf vehicle player) in husky_cop_veh) or ((typeOf vehicle player) in husky_medic_veh))) then {
				if (!isNil {vehicle player getVariable "lights"}) then {
					if (playerSide == west) then {
						[vehicle player] call husky_fnc_sirenLights;
					} else {
						[vehicle player] call husky_fnc_medicSirenLights;
					};
				_handled = true;
				};
			};
		};
	};


	//F11
	case 87: {
		if (!(playerSide isEqualto CIVILIAN) && cursorObject distance player < 3) then {
			if (!(husky_idcard_data isEqualto [])) then {
				if (!isnull cursorTarget) then {
					if (alive cursorTarget) then {
						if (cursorTarget isKindOf "Man") then {
							[husky_idcard_data,getplayeruid player,player,playerSide,(call husky_coplevel) + (call husky_mediclevel)] remoteExec ["husky_fnc_show_idcard",cursorTarget];
							hint format[localize "STR_capps_cur_error_success_card",name cursorTarget];
						} else {
							[husky_idcard_data,getplayeruid player,player,playerSide,(call husky_coplevel) + (call husky_mediclevel)] spawn husky_fnc_show_idcard;
							hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du zeigst auf keine Person...</t>";
						};
					} else {
						[husky_idcard_data,getplayeruid player,player,playerSide,(call husky_coplevel) + (call husky_mediclevel)] spawn husky_fnc_show_idcard;
						hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du zeigst auf keine lebende Person...</t>";
					};
				} else {
					[husky_idcard_data,getplayeruid player,player,playerSide,(call husky_coplevel) + (call husky_mediclevel)] spawn husky_fnc_show_idcard;
					hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du zeigst auf keine Person...</t>";
				};
			} else {
				hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast keinen Ausweis oder du bist zu weit von der Person entfernt! Du musst zuerst einen beantragen...</t>";
			};
		};
	};

	};//COP MED Ende

	// ZIV only Keys XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
	if (playerSide in [civilian]) then {

	//Farmingsystem öffnen mit "NUM 0"
    case 82: {
        createdialog "Ermen_EasyFarmingDialog";
    };
	
	};//ZIV Ende

	// COP only Keys XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
	if (playerSide in [west]) then {

	//38	L Key			Radar
    case 38: {
		if (_shift) then {
			[] call husky_fnc_mobradar;
		};
	};
	
	//Aufsteckblaulich	SHIFT+L;STRG+L		cop //oder lizenz sec
	case 11: {
	private _veh = vehicle player;
	if (_ctrlKey && {!_shift} && {!isNull objectParent player} && {(driver _veh) isEqualTo player} && {playerSide in [west]}) then {	// || {license_civ_sec = true}
		call husky_fnc_lights;
		_handled = true;
	};

	if (_shift && {!_ctrlKey} && {!isNull objectParent player} && {(driver _veh) isEqualTo player} && {playerSide in [west]}  ) then {	// || {license_civ_sec = true}
		if (!isNull (_veh getVariable ["lightObj",objNull])) then {
			if (_veh getVariable ["lights",false]) then {
				_veh setVariable ["lights",false,true];
			} else {
				_veh setVariable ["lights",true,true];
				[_veh] remoteExec ["husky_fnc_lightsOn",0];
			};
		} else {
			if ((typeOf _veh) in ["Wraithlu_civ_noir","MrShounka_audia8_limo_Rework_p_noir_f","RS7lu_civ_noir","MrShounka_audiq7_Rework_noir_f","MrShounka_bmwm6_Rework_noir_f","zorak_bmw_x6m_police","ML63lu_civ_noir","Urbanized_G65_black"]) then {
				if (!isNil {_veh getVariable "lights"}) then {
					if (playerSide in [west] ) then {		//|| {license_civ_sec = true}
						[_veh] call husky_fnc_sirenLights;
					} else {
						if (playerSide in [independent]) then {
							[_veh] call husky_fnc_medicSirenLights;
						};
					};
					_handled = true;
				};
			};
		};
	_handled = true;
	  };
	};

	//8-Key			//46 c Key
	case 9: {
		if (playerSide in [west] && {vehicle player != player} /*&& {!husky_siren_active}*/ && {((driver vehicle player) == player)}) then {

			[] spawn husky_fnc_copsiren2;
				/*}else{
          hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du bist in keinem Fahrzeug!</t>";
          */
				//Hintsilent "Du bist in keinem Fahrzeug!"

			/*[] spawn {
				husky_siren_active = true;
				titleText ["Warnung AN","PLAIN"];titleFadeOut 2;
				sleep 5;
				husky_siren_active = false;
				titleText ["Warnung AUS","PLAIN"];titleFadeOut 2;
			};

			_veh = vehicle player;
			if (isNil {_veh getVariable "siren2"}) then {_veh setVariable ["siren2",false,true];};

			if ((_veh getVariable "siren2")) then {
				_veh setVariable ["siren2",false,true];

			} else {
				_veh setVariable ["siren2",true,true];

				//titleText ["Warnung AN","PLAIN"];titleFadeOut 2;

				if (playerSide isEqualTo west) then {
					//[_veh] remoteExec ["husky_fnc_copSiren2",RCLIENT];
					[_veh,"warnshortsiren"] remoteExec ["husky_fnc_say3D",RANY];
				} else {
					[_veh] remoteExec ["husky_fnc_medicSiren",RCLIENT];
				};
			};*/
		};
	};
	//7-Key			//46 c Key
	case 8: {
		if (playerSide in [west] && {vehicle player != player} /*&& {!husky_siren_active}*/ && {((driver vehicle player) == player)}) then {

			[] spawn husky_fnc_copsiren3;
				/*}else{
			hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du bist in keinem Fahrzeug!</t>";
			*/
		};
	};

	//6-Key			//46 c Key
	case 7: {
		if (playerSide in [west] && {vehicle player != player} /*&& {!husky_siren_active}*/ && {((driver vehicle player) == player)}) then {

			[] spawn husky_fnc_copsiren4;
			/*	}else{
			hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du bist in keinem Fahrzeug!</t>";
      */
		};
	};


	//5-Key			//46 c Key
	case 6: {
		if (playerSide in [west] && (FETCH_CONST(husky_coplevel) >= 14 ) && {vehicle player != player} /*&& {!husky_siren_active}*/ && {((driver vehicle player) == player)}) then {
			[] spawn husky_fnc_copsiren5;
			/*	}else{
			hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du bist in keinem Fahrzeug!</t>";
      */
		};
	};

	//SHIFT + F
	case 33: {
		if (_shift) then {
			if (playerSide in [west] && {vehicle player != player} && {((driver vehicle player) == player)}) then {
				createDialog "siren_menu";
				/*	}else{
				hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du bist in keinem Fahrzeug!</t>";
        */
			};
		},
	};

	//Shift+O Taste		copcomputer
	case 24: {
		if (_shift) then {
			if (playerSide in [west])then{
				createdialog "PolizeiStartbild";
			//[] call husky_fnc_wantedMenu;
			};
		};
	};
	

	};//COP Ende

	// MED only Keys XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
	if (playerSide in [independent]) then {

	//shift + H-Key			//46 c Key
	case 35: {
		if (_shift) then {
			if (playerSide in [independent] && {vehicle player != player} && {((driver vehicle player) == player)}) then {
				[] spawn husky_fnc_medicSirenbob;
			};
		};
	};
	
	//Shift+O Taste		medcomputer
	case 24: {
		if (_shift) then {
			if (playerSide in [independent])then{
				createdialog "PolizeiStartbild_med";
			};
		};
	};

	};//MED Ende

};
_handled;