/*
    File: fn_switchDisplayMode.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Switchs from player inventory to vehicle selection menu
*/
params[["_mode",-1,[0]]];

private _display = findDisplay 50001;
if ((_mode isEqualTo 1) && {isNull cat_Lockergang_vehicle}) then {
    _mode = 2;
};
if !(_mode isEqualTo 0) then {
    _display setVariable ["type",0];
};
switch (_mode) do {
    case 0: {
        ctrlShow[50421,true];
        ctrlShow[50441,false];
    };
    default {
        ctrlShow[50421,false];
        ctrlShow[50441,true];
    };
};
_display setVariable ["mode",_mode];
[] call cat_Lockergang_fnc_refreshDialog;