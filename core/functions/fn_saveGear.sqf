#include "..\..\script_macros.hpp"
/*
    File: fn_saveGear.sqf
    Author: Bryan "Tonic" Boardwine
    Full Gear/Y-Menu Save by Vampire
    Edited: Itsyuka

    Description:
    Saves the players gear for syncing to the database for persistence..
*/
private ["_return","_uItems","_bItems","_vItems","_pItems","_hItems","_yItems","_uMags","_vMags","_bMags","_pMag","_hMag","_uni","_ves","_bag","_handled","_savedVirtualItems","_savedVirtualItemsCop","_savedVirtualItemsMed"];
_return = [];
_savedVirtualItems = husky_SETTINGS(getArray,"saved_virtualItems");
_savedVirtualItemsCop = husky_SETTINGS(getArray,"saved_virtualItemsCop");
_savedVirtualItemsMed = husky_SETTINGS(getArray,"saved_virtualItemsMed");
_gFund = GANG_FUNDS;
_playervehicle = getText (configFile >> "cfgVehicles" >> typeOf vehicle player >> "displayName");

_return pushBack uniform player;
_return pushBack vest player;
_return pushBack backpack player;
_return pushBack goggles player;
_return pushBack headgear player;
_return pushBack assignedITems player;
if (playerSide isEqualTo west || playerSide isEqualTo civilian && {husky_SETTINGS(getNumber,"save_civilian_weapons") isEqualTo 1}) then {
    _return pushBack primaryWeapon player;
    _return pushBack handgunWeapon player;
} else {
    _return pushBack [];
    _return pushBack [];
};

_uItems = [];
_uMags  = [];
_bItems = [];
_bMags  = [];
_vItems = [];
_vMags  = [];
_pItems = [];
_hItems = [];
_yItems = [];
_uni = [];
_ves = [];
_bag = [];

if (!(uniform player isEqualTo "")) then {
    {
        if (_x in (magazines player)) then {
            _uMags pushBack _x;
        } else {
            _uItems pushBack _x;
        };
    } forEach (uniformItems player);
};

if (!(backpack player isEqualTo "")) then {
    {
        if (_x in (magazines player)) then {
            _bMags pushBack _x;
        } else {
            _bItems pushBack _x;
        };
    } forEach (backpackItems player);
};

if (!(vest player isEqualTo "")) then {
    {
        if (_x in (magazines player)) then {
            _vMags pushBack _x;
        } else {
            _vItems pushBack _x;
        };
    } forEach (vestItems player);
};

if (count (primaryWeaponMagazine player) > 0 && alive player) then {
    _pMag = ((primaryWeaponMagazine player) select 0);

    if (!(_pMag isEqualTo "")) then {
        _uni = player canAddItemToUniform _pMag;
        _ves = player canAddItemToVest _pMag;
        _bag = player canAddItemToBackpack _pMag;
        _handled = false;

        if (_ves) then {
            _vMags pushBack _pMag;
            _handled = true;
        };

        if (_uni && !_handled) then {
            _uMags pushBack _pMag;
            _handled = true;
        };

        if (_bag && !_handled) then {
            _bMags pushBack _pMag;
            _handled = true;
        };
    };
};

if (count (handgunMagazine player) > 0 && alive player) then {
    _hMag = ((handgunMagazine player) select 0);

    if (!(_hMag isEqualTo "")) then {
        _uni = player canAddItemToUniform _hMag;
        _ves = player canAddItemToVest _hMag;
        _bag = player canAddItemToBackpack _hMag;
        _handled = false;

        if (_ves) then {
            _vMags pushBack _hMag;
            _handled = true;
        };

        if (_uni && !_handled) then {
            _uMags pushBack _hMag;
            _handled = true;
        };

        if (_bag && !_handled) then {
            _bMags pushBack _hMag;
            _handled = true;
        };
    };
};

if (count (primaryWeaponItems player) > 0) then {
    {
        _pItems pushBack _x;
    } forEach (primaryWeaponItems player);
};

if (count (handgunItems player) > 0) then {
    {
        _hItems pushBack _x;
    } forEach (handGunItems player);
};

if (playerSide isEqualTo civilian) then {	
	{
		_val = ITEM_VALUE(_x);
		if (_val > 0) then {
			_yItems pushBack [_x,_val];
		};
	} forEach _savedVirtualItems;
};

if (playerSide isEqualTo west) then {	
	{
		_val = ITEM_VALUE(_x);
		if (_val > 0) then {
			_yItems pushBack [_x,_val];
		};
	} forEach _savedVirtualItemsCop;
};

if (playerSide isEqualTo independent) then {	
	{
		_val = ITEM_VALUE(_x);
		if (_val > 0) then {
			_yItems pushBack [_x,_val];
		};
	} forEach _savedVirtualItemsMed;
};

_return pushBack _uItems;
_return pushBack _uMags;
_return pushBack _bItems;
_return pushBack _bMags;
_return pushBack _vItems;
_return pushBack _vMags;
_return pushBack _pItems;
_return pushBack _hItems;
if (husky_SETTINGS(getNumber,"save_virtualItems") isEqualTo 1) then {
    _return pushBack _yItems;
} else {
    _return pushBack [];
};

husky_gear = _return;

private _pos = []; 
private "_number"; 
private _postion = position player; 
_number = ((_postion select 0)toFixed 0); 
_pos set[0,_number]; 
_number = ((_postion select 1)toFixed 0); 
_pos set[1,_number]; 
_number = ((_postion select 2)toFixed 1); 
_pos set[2,_number]; 


[getPlayerUID player, "save Gear", format ["%1 - %2 hat Bargeld: %4 € Bankkonto: %5 € Coins: %6 € Gangkonto: %7 € Pos: %9 Fahrzeug: %8 Gear: %3",profileName,(getPlayerUID player),_return,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText,[_gFund] call husky_fnc_numberText,_playervehicle,_pos]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
