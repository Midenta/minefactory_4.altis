/*
    File: fn_markers.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Unit markers.
*/
private ["_markers","_marker","_pos"];
_markers = [];
{    
    _marker = createMarkerLocal [format ["%1_marker",_x],visiblePosition _x];
    _marker setMarkerTypeLocal "mil_dot";
    _marker setMarkerTextLocal format ["%1", _x getVariable ["realname",name _x]];
    
	if ((side _x) isEqualTo independent) then {
    	_marker setMarkerColorLocal "ColorRed";
	};
	if ((side _x) isEqualTo west) then {
    	_marker setMarkerColorLocal "ColorBLUFOR";
	};
    _markers pushBack _marker;
} forEach cat_reporting_current_entries;

waitUntil{isNull (findDisplay 9800)};
{deleteMarkerLocal _x;} forEach _markers;