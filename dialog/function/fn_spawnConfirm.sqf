#include "..\..\script_macros.hpp"
/*
    File: fn_spawnConfirm.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Spawns the player where he selected.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
_gFund = GANG_FUNDS;
private ["_spCfg","_sp","_spawnPos"];
closeDialog 0;
cutText ["","BLACK IN"];
if (husky_spawn_point isEqualTo []) then {
    private ["_sp","_spCfg"];
    _spCfg = [playerSide] call husky_fnc_spawnPointCfg;
    _sp = _spCfg select 0;

    if (playerSide isEqualTo civilian) then {
        if (isNil {(call compile format ["%1",_sp select 0])}) then {
            player setPos (getMarkerPos (_sp select 0));
        } else {
            _spawnPos = (call compile format ["%1",_sp select 0]) call BIS_fnc_selectRandom;
            _spawnPos = _spawnPos buildingPos 0;
            player setPos _spawnPos;
        };
		
    } else {
        player setPos (getMarkerPos (_sp select 0));
		
    };
	
    titleText[format ["%2 %1",_sp select 1,localize "STR_Spawn_Spawned"],"BLACK IN"];
	[getPlayerUID player, "Spawn 2", format ["%1 - %2 ist in %3 %4 gespawnt.  Bargeld: %5 € Bankkonto: %6 € Gangkonto: %7 €",profileName,(getPlayerUID player),_sp,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[_gFund] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
 
} else {
    if (playerSide isEqualTo civilian) then {
        if (isNil {(call compile format ["%1",husky_spawn_point select 0])}) then {
            if (["house",husky_spawn_point select 0] call BIS_fnc_inString) then {
                private ["_bPos","_house","_pos"];
                _house = nearestObjects [getMarkerPos (husky_spawn_point select 0),["House_F"],10] select 0;
                _bPos = [_house] call husky_fnc_getBuildingPositions;

                if (_bPos isEqualTo []) exitWith {
                    player setPos (getMarkerPos (husky_spawn_point select 0));
                };

                {_bPos = _bPos - [(_house buildingPos _x)];} forEach (_house getVariable ["slots",[]]);
                _pos = _bPos call BIS_fnc_selectRandom;
                player setPosATL _pos;
				
            } else {
                player setPos (getMarkerPos (husky_spawn_point select 0));
				
            };
        } else {
            _spawnPos = (call compile format ["%1", husky_spawn_point select 0]) call BIS_fnc_selectRandom;
            _spawnPos = _spawnPos buildingPos 0;
            player setPos _spawnPos;
			
        };
    } else {
        player setPos (getMarkerPos (husky_spawn_point select 0));
		
    };

    titleText[format ["%2 %1",husky_spawn_point select 1,localize "STR_Spawn_Spawned"],"BLACK IN"];
	[getPlayerUID player, "Spawn", format ["%1 - %2 ist in %3 %4 gespawnt.  Bargeld: %5 € Bankkonto: %6 € Gangkonto: %7 €",profileName,(getPlayerUID player),husky_spawn_point select 1,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[_gFund] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
 
};


if (husky_firstSpawn) then {
    [] spawn {
		cutText ["","BLACK IN"];
		[] execVM "core\functions\fn_introcam.sqf";
        [] call husky_fnc_spawn_musik;
		husky_firstSpawn = false;
	};
    
	
	//[] call husky_fnc_rankinfo;
	//[] call husky_fnc_welcomeNotification;		//Introcam
	
};


 
[] call husky_fnc_saveGear;
[player, uniform player] call husky_fnc_playerSkins;
[] call husky_fnc_hudSetup; 
[player] call husky_fnc_gangcheck;