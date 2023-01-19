/*
    File: fn_switchDisplayType.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Switches item categories    
*/
params[["_type",-1,[0]]];

private _display = findDisplay 50001;
switch (_type) do {
    case 0: {
        ctrlShow[50341,true];
        ctrlShow[50361,false];
        ctrlShow[50381,false];
        ctrlShow[50401,false];
    };
    case 1: {
        ctrlShow[50341,false];
        ctrlShow[50361,true];
        ctrlShow[50381,false];
        ctrlShow[50401,false];
    };
    case 2: {
        ctrlShow[50341,false];
        ctrlShow[50361,false];
        ctrlShow[50381,true];
        ctrlShow[50401,false];
    };
    case 3: {
        ctrlShow[50341,false];
        ctrlShow[50361,false];
        ctrlShow[50381,false];
        ctrlShow[50401,true];
    };
};
_display setVariable ["type",_type];
[] call cat_Lockergang_fnc_refreshDialog;