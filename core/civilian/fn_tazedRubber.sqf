#include "..\..\script_macros.hpp"
/*
    Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
	Diese Mission darf von keinem anderen genutzt werden au?er von Thieves-Gaming.de!
*/
private ["_curWep","_curMags","_attach"];
params [
    ["_unit",objNull,[objNull]],
    ["_shooter",objNull,[objNull]]
];

if (isNull _unit || isNull _shooter) exitWith {player allowDamage true; husky_istazed = false;};

if (_shooter isKindOf "Man" && alive player) then {
    if (!husky_istazed) then {
        husky_istazed = true;
        _curWep = currentWeapon player;
        _curMags = magazines player;
        _attach = if (!(primaryWeapon player isEqualTo "")) then {primaryWeaponItems player} else {[]};

        {player removeMagazine _x} forEach _curMags;
        player removeWeapon _curWep;
        player addWeapon _curWep;
        if (!(count _attach isEqualTo 0) && !(primaryWeapon player isEqualTo "")) then {
            {
                _unit addPrimaryWeaponItem _x;
            } forEach _attach;
        };

        if (!(count _curMags isEqualTo 0)) then {
            {player addMagazine _x;} forEach _curMags;
        };

        [_unit] remoteExecCall ["husky_fnc_tazeSound",RCLIENT]; //comment this out if you dont want to have an sound
        _obj = "Land_ClutterCutter_small_F" createVehicle ASLTOATL(visiblePositionASL player);
        _obj setPosATL ASLTOATL(visiblePositionASL player);
        [player,"AinjPfalMstpSnonWnonDf_carried_fallwc"] remoteExecCall ["husky_fnc_animSync",RCLIENT];
        //[0,"STR_NOTF_Tazed",true,[profileName, _shooter getVariable ["realname",name _shooter]]] remoteExecCall ["husky_fnc_broadcast",RCLIENT];
        _unit attachTo [_obj,[0,0,0]];
        disableUserInput true;
        sleep 40; //edit your time you want to tazed the player

        [player,"AmovPpneMstpSrasWrflDnon"] remoteExecCall ["husky_fnc_animSync",RCLIENT];

        if (!(player getVariable ["Escorting",false])) then {
            detach player;
        };
        husky_istazed = false;
        player allowDamage true;
        disableUserInput false;
    };
} else {
    _unit allowDamage true;
    husky_iztazed = false;
};