#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_unit","_upp","_ui","_progress","_pgText","_cP","_displayName","_sleep"];
params [
    ["_unit",objNull,[objNull]]
];
//_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
husky_interrupted = false;
if(isNull _unit) exitwith {};
//if (!((_unit getVariable["onkill",FALSE]) && _unit isKindOf "Man")) exitWith {};
if (!("FirstAidKit" in (items player))) exitWith {hint "Du hast kein Erste-Hilfe-Kit dabei"};
//if (!(_unit getVariable ["medRequested",false])) exitWith {hint "Der Spieler hat keinen Sanitäter gerufen"};
//if (_unit getVariable["husky_request_timer",false]) exitWith {hint "Ein Erste-Hilfe-Kit wurde bereits verwendet!"};
/*
if(currentWeapon player != "") then {
	husky_curWep_h = currentWeapon player;
	player action ["SwitchWeapon", player, player, 100];
};*/


//Fetch their name so we can shout it.
_targetName = _unit getVariable ["name","Unknown"];
_title = format ["Versuche %1 am leben zu halten",_targetName];
husky_action_inUse = true; //Lockout the controls.

//Setup our progress bar
disableSerialization;
"progressBar" cutRsc ["husky_progress","PLAIN"];
_ui = uiNamespace getVariable ["husky_progress",displayNull];
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format ["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;

//_sleep = 0.06;
private "_cpRate";
switch (playerside) do
{
	case west:{_cpRate = 0.05;};
	case independent:{_cpRate = 0.1;};
	case civilian:{_cpRate = 0.008;};
	case east:{_cpRate = 0.01;};
};

//Lets reuse the same thing!
for "_i" from 0 to 1 step 0 do {
    if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
        [player,"AinvPknlMstpSnonWnonDnon_medic_1"] remoteExecCall ["husky_fnc_animSync",RCLIENT];
        player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
    };

    //uiSleep _sleep;
    uiSleep .06;
    _cP = _cP + _cpRate;
    _progressBar progressSetPosition _cP;
    _titleText ctrlSetText format ["%3 (%1%2)...",round(_cP * 100),"%",_title];
    if (_cP >= 1 || !alive player) exitWith {};
    if (husky_istazed) exitWith {}; //Tazed
    if (husky_isknocked) exitWith {}; //Knocked
    if (husky_interrupted) exitWith {};
    if (player getVariable ["restrained",false]) exitWith {};
    //if (player distance _unit > 4) exitWith {_badDistance = true;};
    /*
    if (_unit getVariable ["Revive",false]) exitWith {};
    if (_unit getVariable ["Reviving",objNull] != player) exitWith {};
    */
};
//Kill the UI display and check for various states
"progressBar" cutText ["","PLAIN"];
player playActionNow "stop";


if (!alive player || husky_istazed || husky_isknocked) exitWith {titleText["Stabilisieren abgebrochen.","PLAIN"]; husky_action_inUse = false;};
if (player getVariable ["restrained",false]) exitWith {titleText["Stabilisieren abgebrochen.","PLAIN"]; husky_action_inUse = false;};
if(husky_interrupted) exitWith {husky_interrupted = false; titleText["Stabilisieren abgebrochen.","PLAIN"]; husky_action_inUse = false;};
if(player != vehicle player) exitWith {titleText["Du bist in einem Fahrzeug","PLAIN"];};
//if(!(_unit getVariable["onkill",false])) exitWith {titleText["Stabilisieren abgebrochen.","PLAIN"];};
if (side player in [east,west,civilian]) then 
{
	player removeItem "FirstAidKit";
};

//husky_request_timer = true;
_unit setVariable["husky_request_timer",true,true];
titleText["Stabilisierung war erfolgreich!","PLAIN"];
