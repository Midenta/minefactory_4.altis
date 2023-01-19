#include "..\..\script_macros.hpp"
/*
    File: fn_revivePlayer.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Starts the revive process on the player.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_target","_revivable","_targetName","_ui","_progressBar","_titleText","_cP","_title","_reviveCost"];
params [
    ["_target",objNull,[objNull]]
];
//_target = param [0,objNull,[objNull]];
_unit = player;

if (isNull _target) exitWith {};
_reviveCost = husky_SETTINGS(getNumber,"revive_fee");

_revivable = _target getVariable ["Revive",false];
if (_revivable) exitWith {};
if (_target getVariable ["Reviving",objNull] == player) exitWith {hint localize "STR_Medic_AlreadyReviving";};
if (player distance _target > 5) exitWith {}; //Not close enough.

//Fetch their name so we can shout it.
_targetName = _target getVariable ["name","Unknown"];
_title = format [localize "STR_Medic_Progress",_targetName];
husky_action_inUse = true; //Lockout the controls.

_target setVariable ["Reviving",player,true];

//Setup our progress bar
disableSerialization;
"progressBar" cutRsc ["husky_progress","PLAIN"];
_ui = uiNamespace getVariable ["husky_progress",displayNull];
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format ["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;

//player say3D ["defisound", 20, 1];		//NEU SOUND LOL
//[_unit,"defisound",50,1] remoteExecCall ["husky_fnc_say3D",0];

private "_cpRate";
switch (playerside) do
{
	case west:{_cpRate = 0.009;};
	case independent:{_cpRate = 0.01;};
	case civilian:{_cpRate = 0.002;};
	case east:{_cpRate = 0.01;};
};

//Lets reuse the same thing!
for "_i" from 0 to 1 step 0 do {
    if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
        [player,"AinvPknlMstpSnonWnonDnon_medic_1"] remoteExecCall ["husky_fnc_animSync",RCLIENT];
        player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
    };

    uiSleep .15;
    //_cP = _cP + .01;
     _cP = _cP + _cpRate;
    _progressBar progressSetPosition _cP;
    _titleText ctrlSetText format ["%3 (%1%2)...",round(_cP * 100),"%",_title];
    if (_cP >= 1 || !alive player) exitWith {};
    if (husky_istazed) exitWith {}; //Tazed
    if (husky_isknocked) exitWith {}; //Knocked
    if (husky_interrupted) exitWith {};
    if (player getVariable ["restrained",false]) exitWith {};
    if (player distance _target > 4) exitWith {_badDistance = true;};
    if (_target getVariable ["Revive",false]) exitWith {};
    if (_target getVariable ["Reviving",objNull] != player) exitWith {};
};

//Kill the UI display and check for various states
"progressBar" cutText ["","PLAIN"];
player playActionNow "stop";

_chance = random(100);
private "_chanceno";
switch (playerside) do {
	case west:{_chanceno = 30;};
	case independent:{_chanceno = 10;};
	case civilian:{_chanceno = 40;};
	case east:{_chanceno = 1;};
};

if(_chance >= _chanceno) then { 
//if(_chance >= _chanceno) then { 

    if (_target getVariable ["Reviving",objNull] != player) exitWith {hint localize "STR_Medic_AlreadyReviving"; husky_action_inUse = false;};
    _target setVariable ["Reviving",NIL,true];

    //[getPlayerUID player, "Revive Player", format ["%1 - %2 hat %3 wiederbelebt.  Bargeld: %4 € Bankkonto: %5 €",profileName,(getPlayerUID player),_target,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
 

    if (!alive player || husky_istazed || husky_isknocked) exitWith {husky_action_inUse = false;};
    if (_target getVariable ["Revive",false]) exitWith {hint localize "STR_Medic_RevivedRespawned"; husky_action_inUse = false;};
    if (player getVariable ["restrained",false]) exitWith {husky_action_inUse = false;};
    if (!isNil "_badDistance") exitWith {titleText[localize "STR_Medic_TooFar","PLAIN"]; husky_action_inUse = false;};
    if (husky_interrupted) exitWith {husky_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; husky_action_inUse = false;};

    husky_action_inUse = false;
    _target setVariable ["Revive",true,true];
    [profileName] remoteExecCall ["husky_fnc_revived",_target];

    if (playerSide isEqualTo independent) then {
      //titleText[format [localize "STR_Medic_RevivePayReceive",_targetName,[_reviveCost] call husky_fnc_numberText],"PLAIN"];
      b126 = b126 + _reviveCost;
       [1] call SOCK_fnc_updatePartial;
    };

    sleep .6;
    player reveal _target;
   
}else{

    hint "Der Patient konnte nicht wiederbelebt werden.";
    [profileName] remoteExecCall ["husky_fnc_forcerespawn",_target];

};

//Alternativ zum forceRespawn könne nwir auch eine Hint einbauen, dass ma nes erneut versuchen soll, dafür die wahrscheinlicheklit aber wieder auf mehr als 33% setrzten
//oder wenn jemand außer medic es versucht, wird man bei einer x chance force respawnt???