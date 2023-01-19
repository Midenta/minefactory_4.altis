/*
    File: fn_atmMarkers.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Marks all ATMs on the Map
*/

if (!isServer) exitWith {};

// atms from mission
if ((getNumber(missionConfigFile >> "Cation_Atm" >> "onlyDefault")) isEqualTo 0) then {
    _atms = [];
    {
        if(["atm_",str(_x)] call BIS_fnc_inString) then {
        _atms pushBack _x;
        };
    } forEach allMissionObjects "";
    {
        if (typeof _x in ["Land_Atm_01_F","Land_Atm_02_F"]) then {
            _marker = createMarker [format["%1_marker",_x],visiblePosition _x];
            _marker setMarkerColor "ColorGreen";
            _marker setMarkerType "loc_Tourism";
        };
    } foreach _atms;
};

// default atms on map
_atms = [];
{
    if(["atm_",str(_x)] call BIS_fnc_inString) then {
        _atms pushBack _x;
    };
} foreach nearestTerrainObjects [[0,0,0],["HIDE"],30000];
{
    _marker = createMarker [format["%1_marker",_x],visiblePosition _x];
    _marker setMarkerColor "ColorGreen";
    _marker setMarkerType "loc_Tourism";
} foreach _atms;