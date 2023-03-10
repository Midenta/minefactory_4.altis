#include "..\..\script_macros.hpp"
/*
    File: fn_keyMenu.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Initializes the key menu
    Will be revised.
*/
private ["_display","_vehicles","_plist","_near_units","_pic","_name","_text","_color","_index"];
disableSerialization;

waitUntil {!isNull (findDisplay 2001)};
_display = findDisplay 2001;
_vehicles = _display displayCtrl 2701;
lbClear _vehicles;
_plist = _display displayCtrl 2702;
lbClear _plist;
_near_units = [];

{ if (player distance _x < 10) then {_near_units pushBack _x};} forEach playableUnits;		//player distance _x < 20

for "_i" from 0 to (count husky_vehicles)-1 do {
    _veh = husky_vehicles select _i;
    if (!isNull _veh && alive _veh) then {
        _color = ((M_CONFIG(getArray,"huskyCfgVehicles",(typeOf _veh),"textures") select (_veh getVariable "husky_VEH_color")) select 0);
        if (isNil "_color") then {_color = ""};
        _text = format ["(%1)",_color];
        if (_text == "()") then {
            _text = "";
        };

        _name = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "displayName");
        _pic = getText(configFile >> "CfgVehicles" >> (typeOf _veh) >> "picture");
        _vehicles lbAdd format ["%1 %3",_name,round(player distance _veh),_text];		//["%1 %3 - [Distance: %2m]
        if (_pic != "pictureStaticObject") then {
            _vehicles lbSetPicture [(lbSize _vehicles)-1,_pic];
        };
        _vehicles lbSetData [(lbSize _vehicles)-1,str(_i)];
    };
};

{
    if (!isNull _x && alive _x && player distance _x < 10 && !(_x isEqualTo player)) then {		//player distance _x < 20
        //_plist lbAdd format ["%1 - %2",_x getVariable ["steam64id",name _x], side _x];
		_plist lbAdd format ["%1 - %2",_x getVariable ["realname",name _x], side _x];
        _plist lbSetData [(lbSize _plist)-1,str(_x)];
    };
} forEach _near_units;

if (((lbSize _vehicles)-1) isEqualTo -1) then {
    _vehicles lbAdd localize "STR_NOTF_noVehOwned";
    _vehicles lbSetData [(lbSize _vehicles)-1,""];
};
