/*
    File: fn_switchDisplayType.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Switches item categories    
*/
params[["_type",-1,[0]]];

private _display = findDisplay 500012;
switch (_type) do {
    case 0: {
        ctrlShow[503412,true];
        ctrlShow[503612,false];
        ctrlShow[503812,false];
        ctrlShow[504012,false];
    };
    case 1: {
        ctrlShow[503412,false];
        ctrlShow[503612,true];
        ctrlShow[503812,false];
        ctrlShow[504012,false];
    };
    case 2: {
        ctrlShow[503412,false];
        ctrlShow[503612,false];
        ctrlShow[503812,true];
        ctrlShow[504012,false];
    };
    case 3: {
        ctrlShow[503412,false];
        ctrlShow[503612,false];
        ctrlShow[503812,false];
        ctrlShow[504012,true];
    };
};
_display setVariable ["type",_type];
[] call cat_Lockerganggang_fnc_refreshDialog;