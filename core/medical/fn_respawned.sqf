#include "..\..\script_macros.hpp"
/*
    File: fn_respawned.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Sets the player up if he/she used the respawn option.
*/
private ["_handle"];

//Reset our weight and other stuff
husky_action_inUse = false;
husky_use_atm = true;
husky_hunger = 100;
husky_thirst = 100;
husky_carryWeight = 0;
c126 = 0; //Make sure we don't get our cash back.
husky_respawned = false;
player playMove "AmovPercMstpSnonWnonDnon";

husky_corpse setVariable ["Revive",nil,true];
husky_corpse setVariable ["name",nil,true];
husky_corpse setVariable ["Reviving",nil,true];
player setVariable ["Revive",nil,true];
player setVariable ["name",nil,true];
player setVariable ["Reviving",nil,true];

//Load gear for a 'new husky'
switch(playerSide) do
{
 case west: {
 _handle = [] spawn husky_fnc_copLoadout;
 };
 case civilian: {
 _handle = [] spawn husky_fnc_civLoadout;
 };
 case independent: {
 _handle = [] spawn husky_fnc_medicLoadout;
 };
 waitUntil {scriptDone _handle};
};

//Cleanup of weapon containers near the body & hide it.
if (!isNull husky_corpse) then {
    private "_containers";
    husky_corpse setVariable ["Revive",true,true];
    _containers = nearestObjects[husky_corpse,["WeaponHolderSimulated"],5];
    {deleteVehicle _x;} forEach _containers; //Delete the containers.
    deleteVehicle husky_corpse;
};

//Destroy our camera...
husky_deathCamera cameraEffect ["TERMINATE","BACK"];
camDestroy husky_deathCamera;
//"dynamicBlur" ppEffectEnable false;  
//death_effect = false;	//NEU TESTEN

//Bad boy
if (husky_is_arrested) exitWith {
    hint localize "STR_Jail_Suicide";
    husky_is_arrested = false;
    [player,true] spawn husky_fnc_jail;
    [] call SOCK_fnc_updateRequest;
};

//Johnny law got me but didn't let the EMS revive me, reward them half the bounty.
if (!isNil "husky_copRecieve") then {

    if (husky_HC_isActive) then {
        [getPlayerUID player,player,husky_copRecieve,true] remoteExecCall ["HC_fnc_wantedBounty",HC_husky];
    } else {
        [getPlayerUID player,player,husky_copRecieve,true] remoteExecCall ["husky_fnc_wantedBounty",RSERV];
    };

    husky_copRecieve = nil;
};

//So I guess a fellow gang member, cop or myself killed myself so get me off that Altis Most Wanted
if (husky_removeWanted) then {

    if (husky_HC_isActive) then {
        [getPlayerUID player] remoteExecCall ["HC_fnc_wantedRemove",HC_husky];
    } else {
        [getPlayerUID player] remoteExecCall ["husky_fnc_wantedRemove",RSERV];
    };

};


[getPlayerUID player, "Respawn", format ["%1 - %2 auf Slot %3 respawnt.  Bargeld: %4 � Bankkonto: %5 �",profileName,(getPlayerUID player),husky_corpse,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];


[] call SOCK_fnc_updateRequest;
[] call husky_fnc_hudUpdate; //Request update of hud.
