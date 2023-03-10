#include "..\..\script_macros.hpp"
/*
    File: fn_restrain.sqf
    Author: Bryan "Tonic" Boardwine
    Description:
    Restrains the client.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_cop","_player","_vehicle"];
_cop = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_player = player;
_vehicle = vehicle player;
if (isNull _cop) exitWith {};
//Monitor excessive restrainment
if (side _cop isEqualTo west) then {
	[] spawn {
		private "_time";
		for "_i" from 0 to 1 step 0 do {
			_time = time;
			waitUntil {(time - _time) > (10 * 60)};
			if (!(player getVariable ["restrained",false])) exitWith {};
			if (!([west,getPos player,30] call husky_fnc_nearUnits) && (player getVariable ["restrained",false]) && isNull objectParent player) exitWith {
				player setVariable ["restrained",false,true];
				player setVariable ["Escorting",false,true];
				player setVariable ["transporting",false,true];
				detach player;
				titleText[localize "STR_Cop_ExcessiveRestrain","PLAIN"];
			};
		};
	};
};
if (side _cop isEqualTo civilian) then {
	[] spawn {
		private "_time";
		for "_i" from 0 to 1 step 0 do {
			_time = time;
			waitUntil {(time - _time) > (10 * 60)};
			if (!(player getVariable ["restrained",false])) exitWith {};
			if (!([civilian,getPos player,30] call husky_fnc_nearUnits) && !([west,getPos player,30] call husky_fnc_nearUnits) && (player getVariable ["restrained",false]) && isNull objectParent player) exitWith {
				player setVariable ["restrained",false,true];
				player setVariable ["Escorting",false,true];
				player setVariable ["transporting",false,true];
				detach player;
				titleText[localize "STR_Cop_ExcessiveRestrain","PLAIN"];
			};
		};
	};
};
titleText[format [localize "STR_Cop_Restrained",_cop getVariable ["realname",name _cop]],"PLAIN"];
husky_disable_getIn = true;
husky_disable_getOut = false;
//disableUserInput true;		//Geht nur man dreht sich die ganze zeit
//sleep 5;
//disableUserInput false;	
while {player getVariable  "restrained"} do {
    if (isNull objectParent player) then {
        player playMove "AmovPercMstpSnonWnonDnon_Ease";
    };
    _state = vehicle player;
    waitUntil {animationState player != "AmovPercMstpSnonWnonDnon_Ease" || !(player getVariable "restrained") || vehicle player != _state};
    if (!alive player) exitWith {
        player setVariable ["restrained",false,true];
        player setVariable ["Escorting",false,true];
        player setVariable ["transporting",false,true];
        detach _player;
    };
    if (!alive _cop) then {
        player setVariable ["Escorting",false,true];
        detach player;
    };
    if (vehicle player != player && husky_disable_getIn) then {
        player action["eject",vehicle player];
    };
    if ((vehicle player != player) && (vehicle player != _vehicle)) then {
        _vehicle = vehicle player;
    };
    if (isNull objectParent player && husky_disable_getOut) then {
        player moveInCargo _vehicle;
    };
    if ((vehicle player != player) && husky_disable_getOut && (driver (vehicle player) isEqualTo player)) then {
        player action["eject",vehicle player];
        player moveInCargo _vehicle;
    };
    if (vehicle player != player && husky_disable_getOut) then {
        _turrets = [[-1]] + allTurrets _vehicle;
        {
            if (_vehicle turretUnit [_x select 0] isEqualTo player) then {
                player action["eject",vehicle player];
                sleep 1;
                player moveInCargo _vehicle;
            };
        }forEach _turrets;
    };
};
sleep 3;
//disableUserInput false;		//Bewegen wenn gefesselt???
if (alive player) then {
	disableUserInput true;	
    player switchMove "AmovPercMstpSlowWrflDnon_SaluteIn";
	sleep 3;
	disableUserInput false;	
    player setVariable ["Escorting",false,true];
    player setVariable ["transporting",false,true];
    detach player;
};
