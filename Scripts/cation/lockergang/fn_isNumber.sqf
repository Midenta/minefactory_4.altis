/*
    File: fn_isNumber.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    Checks if given value is a number.
    Copied from husky_server/functions.sqf from the ArmA husky Framework
*/
private ["_valid","_array"];
_valid = ["0","1","2","3","4","5","6","7","8","9"];
_array = [_this select 0] call cat_Lockergang_fnc_StrToArray;
_return = true;
{
    if (!(_x in _valid)) exitWith {
        _return = false;
    };
} forEach _array;
_return;