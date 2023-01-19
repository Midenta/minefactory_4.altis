#include "..\..\script_macros.hpp"
/*
    File: fn_onFired.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Handles various different ammo types being fired.
*/
private ["_ammoType","_projectile"];
_ammoType = _this select 4;
_projectile = _this select 6;

if (_ammoType in ["GrenadeHand_stone"]) then {
    _projectile spawn {
        private "_position";
        while {!isNull _this} do {
            _position = ASLtoATL (visiblePositionASL _this);
            sleep 0.1;
        };
        [_position] remoteExec ["husky_fnc_flashbang",RCLIENT];
    };
};

if(_ammoType in ["G_40mm_SmokeYellow","SmokeShellYellow","3Rnd_SmokeYellow_Grenade_shell","32Rnd_40mm_G_belt","96Rnd_40mm_G_belt"]) then {
	_projectile spawn {
		private["_position"];
		waitUntil {(speed _this < 1)};
		sleep 2;
		waitUntil {(speed _this < 1)};
		_position = getPosATL _this;
		[_position] remoteExec ["husky_fnc_teargas",allPlayers select {_x distance _position <= 70}];
	};
};


//if (_weapon in ["hgun_P07_snds_F","hgun_P07_F","hgun_P07_blk_Snds_F","hgun_P07_blk_F"] ) then {_delayTime = 0.1;/*} else {_delayTime = 0.75;*/};
/*
if(_weapon in ["hgun_P07_snds_F","hgun_P07_F","hgun_P07_blk_Snds_F","hgun_P07_blk_F"]) then {
    [] spawn {
        _time = time;
        while {time - _time < 0.5} do {
            player setWeaponReloadingTime [player, currentWeapon player, 0.10];
		};
	};
};
*/