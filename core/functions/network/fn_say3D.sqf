/*
    File: fn_say3D.sqf
    Author: Bryan "Tonic" Boardwine

    Description: Pass your sounds that you want everyone nearby to hear through here.

    Example:   [_veh,"unlock"] remoteExec ["husky_fnc_say3D",RANY];
	
	 Example:   [_veh,"unlock",50,1] remoteExec ["husky_fnc_say3D",0];
*/
params [
    ["_object",objNull,[objNull]],
    ["_sound","",[""]],
    ["_distance",100,[0]],
    ["_pitch",1,[0]]
];

if (isNull _object || {_sound isEqualTo ""}) exitWith {};
if (_distance < 0) then {_distance = 100};
_object say3D [_sound,_distance,_pitch];

/*
private ["_object","_sound"];
_object = [_this,0,objNull,[objNull]] call BIS_fnc_param;
_sound = [_this,1,"",[""]] call BIS_fnc_param;

if (isNull _object || _sound isEqualTo "") exitWith {};
_object say3D _sound;
*/