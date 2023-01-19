#include "..\..\script_macros.hpp"
/*
    File: fn_robPerson.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Robs a person.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
params [
    ["_robber",objNull,[objNull]]
];
if (isNull _robber) exitWith {}; //No one to return it to?

if (c126 > 0) then {
    [c126,player,_robber] remoteExecCall ["husky_fnc_robReceive",_robber];

    if (husky_HC_isActive) then {
        [getPlayerUID _robber,_robber getVariable ["realname",name _robber],"64"] remoteExecCall ["HC_fnc_wantedAdd",HC_husky];
    } else {
        [getPlayerUID _robber,_robber getVariable ["realname",name _robber],"64"] remoteExecCall ["husky_fnc_wantedAdd",RSERV];
    };

    [1,"STR_NOTF_Robbed",true,[_robber getVariable ["realname",name _robber],profileName,[c126] call husky_fnc_numberText]] remoteExecCall ["husky_fnc_broadcast",RCLIENT];
    c126 = 0;
    [0] call SOCK_fnc_updatePartial;
	
	[getPlayerUID player, "Robbed Target", format ["%1 - %2 wurde ausgeraubt. Siehe Robbet Eintrag   Bargeld: %4 € Bankkonto: %5 €",profileName,(getPlayerUID player),name _robber,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
 
} else {
    [2,"STR_NOTF_RobFail",true,[profileName]] remoteExecCall ["husky_fnc_broadcast",_robber];
	[getPlayerUID player, "Robbed Target Fail", format ["%1 - %2 hat %3  ausgeraubt.  Bargeld: %4 € Bankkonto: %5 €",profileName,(getPlayerUID player),name _robber,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
 
};
