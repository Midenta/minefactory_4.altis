#include "..\..\script_macros.hpp"
/*
    File: fn_spawnPointCfg.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Master configuration for available spawn points depending on the units side.

    Return:
    [Spawn Marker,Spawn Name,Image Path]
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

params [["_side",civilian,[civilian]]];

_side = switch (_side) do {
    case west: {"Cop"};
    case independent: {"Med"};
    default {"Civilian"};
};

private _return = [];

private _spawnCfg = missionConfigFile >> "CfgSpawnPoints" >> worldName >> _side;

for "_i" from 0 to count(_spawnCfg)-1 do {

    private _tempConfig = [];
    private _curConfig = (_spawnCfg select _i);
    private _conditions = getText(_curConfig >> "conditions");

    private _flag = [_conditions] call husky_fnc_levelCheck;

    if (_flag) then {
        _tempConfig pushBack getText(_curConfig >> "spawnMarker");
        _tempConfig pushBack getText(_curConfig >> "displayName");
        _tempConfig pushBack getText(_curConfig >> "icon");
        _return pushBack _tempConfig;
    };
};

if (playerSide isEqualTo civilian) then {
	_grp = group player;
	_hq = _grp getVariable ["gang_hq",objNull];
	if (!(isNull _hq)) then {
		_permission = husky_gangdata select 1;
		_playerpermission = [];
		_permissions = _grp getVariable ["gang_permissions",[]];
		{
			if ((_x select 0) isEqualTo _permission) exitWith {
				_playerpermission = _x;
			};
		} forEach _permissions;
		_playerpermission = _playerpermission select 2;
		if ("HQSPAWN" in _playerpermission) then {
			_atlpos = getposAtl _hq;
			_badtonicpos = [str _atlpos];
			if (!(_badtonicpos in husky_houses)) then {
				if ((markerColor "gang_hq") isEqualTo "") then {
					createMarkerLocal ["gang_hq", _atlpos];
					"gang_hq" setMarkerColorLocal "ColorBlue";
					"gang_hq" setMarkerTypeLocal "mil_flag";
					"gang_hq" setMarkerTextLocal " Gang HQ";
					husky_vehicles pushBackUnique _hq;
				};
				_return pushBack ["gang_hq","Gang HQ","\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
			};
		};
	};
  if (count husky_houses > 0) then {
    {
      _pos = call compile format ["%1",(_x select 0)];
      _house = nearestObject [_pos, "House"];
      _houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
      _return pushBack [format ["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
      
      true
    } count husky_houses;
  };
};

_return;
