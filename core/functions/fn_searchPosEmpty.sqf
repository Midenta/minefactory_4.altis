/*
    File: fn_searchPosEmpty.sqf
    Author: R3F_Team

    Description:
    Return a clear position in the sky.

    Parameter(s):
    0: (Optional) offset 3D cube in which to look for a location (default [0,0,0])

    Returns:
    Array (Position)

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_offset", "_nb_tirages", "_position_degagee"];

//_offset = if (count _this > 0) then {_this select 0} else {[5000,5000,3000]};
_offset = [0, 0, 10000];

// Find an open position (sphere of radius 50 m) into the sky.
for [
    {
        _position_degagee = [random 3000, random 3000, 10000 + (random 20000)] vectorAdd _offset;
        _nb_tirages = 1;
    },
    {
        !isNull (nearestObject _position_degagee) && _nb_tirages < 25
    },
    {
        _position_degagee = [random 3000, random 3000, 10000 + (random 20000)] vectorAdd _offset;
        _nb_tirages = _nb_tirages+1;
    }
] do {};

_position_degagee
