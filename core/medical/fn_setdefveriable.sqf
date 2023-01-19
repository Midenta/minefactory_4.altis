
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

_unit setVariable ["Revive",true,true];		//Revive mit Request _unit setVariable ["Revive",true,true];		//Revive ohne Request _unit setVariable ["Revive",false,true];
_unit setVariable ["name",profileName,true]; //Set my name so they can say my name.
_unit setVariable ["restrained",false,true];
_unit setVariable ["Escorting",false,true];
_unit setVariable ["transporting",false,true];
_unit setVariable ["playerSurrender",false,true];
_unit setVariable ["steam64id",(getPlayerUID player),true]; //Set the UID.