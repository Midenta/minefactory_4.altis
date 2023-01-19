/*
    File: fn_StrToArray.sqf
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description:
    function copied from KRON_Strings.sqf from Kronzky
*/
private ["_in","_i","_arr","_out"];
_in=_this select 0;
_arr = toArray(_in);
_out=[];
for "_i" from 0 to (count _arr)-1 do {
    _out=_out+[toString([_arr select _i])];
};
_out;