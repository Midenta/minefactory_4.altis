#include "..\..\script_macros.hpp"
// Made by Apex
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
	
	this setVariable ['door_knack',true,true]; 

*/
private["_building","_door","_doors","_cpRate","_title","_progressBar","_titleText","_cp","_ui"];

_building = param [0,ObjNull,[ObjNull]];
if(isNull _building) exitWith {};
if (isNil "husky_boltcutgate_uses") then {husky_boltcutgate_uses = 0;};

if (_building getVariable "door_knack_gate") exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Das Schloss ist nicht knackbar!</t>";};



_fnc_Gefangnis = {
	husky_action_inUse = true;
	_building = cursorObject;
	_buildingpos = position player;
	
	//[1,format["ALARM! - Eine Tür wird aufgebrochen!"]] remoteExec ["husky_fnc_broadcast",west];
	[1,format["ALARM! - Tor: %1 wird aufgebrochen!", _buildingpos]] remoteExec ["husky_fnc_broadcast",west];

	//Setup the progress bar
	disableSerialization;
	_title = localize "STR_ISTR_Bolt_Process";
	5 cutRsc ["husky_progress","PLAIN"];
	_ui = uiNamespace getVariable "husky_progress";
	_progressBar = _ui displayCtrl 38201;
	_titleText = _ui displayCtrl 38202;
	_titleText ctrlSetText format["%2 (1%1)...","%",_title];
	_progressBar progressSetPosition 0.01;
	_cP = 0.01;
	
	while {true} do {
		if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
			[player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["husky_fnc_animSync",RCLIENT];
			player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
			player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		};
		sleep 0.26;
		if(isNull _ui) then {
			5 cutRsc ["husky_progress","PLAIN"];
			_ui = uiNamespace getVariable "husky_progress";
			_progressBar = _ui displayCtrl 38201;
			_titleText = _ui displayCtrl 38202;
		};

		_Pos = position player; // by ehno: get player pos
		_marker = createMarker ["Marker300", _pos];
		"Marker300" setMarkerColor "ColorRed";
		"Marker300" setMarkerText "!ACHTUNG! Tor Alarm !ACHTUNG!";
		"Marker300" setMarkerType "mil_warning";

		_cP = _cP + 0.0008;	//0.0008
		_progressBar progressSetPosition _cP;
		_titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
		if(_cP >= 1 || !alive player) exitWith {};
		if(husky_istazed) exitWith {}; //Tazed
		if(husky_isknocked) exitWith {}; //Knocked
		if(husky_interrupted) exitWith {};
	};
	//Kill the UI display and check for various states
	5 cutText ["","PLAIN"];
	player playActionNow "stop";
	if(!alive player || husky_istazed || husky_isknocked) exitWith {husky_action_inUse = false;deleteMarker "Marker300";};
	if((player getVariable ["restrained",false])) exitWith {husky_action_inUse = false;deleteMarker "Marker300";};
	if(husky_interrupted) exitWith {husky_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; husky_action_inUse = false;deleteMarker "Marker300";};
	husky_boltcutgate_uses = husky_boltcutgate_uses + 1;
	husky_action_inUse = false;
	if(husky_boltcutgate_uses >= 5) then {
		[false,"boltcuttergate",1] call husky_fnc_handleInv;
		husky_boltcutgate_uses = 0;
	};

	_building setVariable ['bis_disabled_Door_1',0,true]; //Unlock the door.
	
	hintSilent "Die Tür ist nun offen!";

	deleteMarker "Marker300";
	
	[getPlayerUID player, "Bolzenschneider Door", format ["%1 - %2 hat ein Bolzenschneider benutzt. %3 %4",profileName,(getPlayerUID player),_building,_buildingpos]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

	if (husky_HC_isActive) then {
		[getPlayerUID player,profileName,"67"] remoteExecCall ["HC_fnc_wantedAdd",HC_husky];
	} else {
		[getPlayerUID player,profileName,"67"] remoteExecCall ["husky_fnc_wantedAdd",RSERV];
	};
};


if(typeOF(_building) in ["Land_Net_Fence_Gate_F","Land_BackAlley_01_l_gate_F"])then {[] spawn _fnc_Gefangnis};
if(!(_building isKindOf "House_F")) exitWith {hint "Du hast keine Tor im Visier."};



//Tor erst nach x Minuten wieder verschließbar
//Tor Variable, welche nicht aufbrechenbar sind
//Benachricvhtigung beim öffnen von tor



/*
if(((nearestObject [[16019.5,16952.9,0],"Land_Dome_Big_F"]) == _building OR (nearestObject [[16019.5,16952.9,0],"Land_Research_house_V1_F"]) == _building) && ({side _x == west} count playableUnits < (husky_SETTINGS(getNumber,"cops_online_min")))) exitWith {
	hint format [localize "STR_Civ_NotEnoughCops",(husky_SETTINGS(getNumber,"cops_online_min"))]
};
if((typeOf _building) == "Land_Research_house_V1_F" && husky_fed_break == 0) exitWith {hint localize "STR_ISTR_Bolt_Exploit"};
if(isNil "husky_boltcutter_uses") then {husky_boltcutter_uses = 0;};
if((nearestObject [[16019.5,16952.9,0],"Land_Dome_Big_F"]) == _building OR (nearestObject [[16019.5,16952.9,0],"Land_Research_house_V1_F"]) == _building) then {
 [[1,2],"STR_ISTR_Bolt_AlertFed",true,[]] remoteExecCall ["husky_fnc_broadcast",RCLIENT];
};
if((nearestObject [[3656.0,13387.0,0],"Land_Net_Fence_Gate_F"]) == _building) then {
 [[1,2],"STR_jailbreak",true,[]] remoteExecCall ["husky_fnc_broadcast",RCLIENT];
};
_doors = FETCH_CONFIG2(getNumber,CONFIG_VEHICLES,(typeOf _building), "numberOfDoors");
_door = 0;
//Find the nearest door
for "_i" from 1 to _doors do {
 _selPos = _building selectionPosition format["Door_%1_trigger",_i];
 _worldSpace = _building modelToWorld _selPos;
 if(player distance _worldSpace < 5) exitWith {_door = _i;};
};
if(_door == 0) exitWith {hint localize "STR_Cop_NotaDoor"}; //Not near a door to be broken into.
if((_building getVariable [format["bis_disabled_Door_%1",_door],0]) == 0) exitWith {hint localize "STR_House_Raid_DoorUnlocked"};
husky_action_inUse = true;
//Setup the progress bar
disableSerialization;
_title = localize "STR_ISTR_Bolt_Process";
5 cutRsc ["husky_progress","PLAIN"];
_ui = uiNamespace getVariable "husky_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;
switch (typeOf _building) do {
	case "Land_Dome_Big_F": {_cpRate = 0.003;};
	case "Land_Research_house_V1_F": {_cpRate = 0.0015;};
	case "Land_Net_Fence_Gate_F": {_cpRate = 0.0008;};
	case "Land_BackAlley_01_l_gate_F": {_cpRate = 0.0008;};
	case "Land_ConcreteWall_01_l_gate_F": {_cpRate = 0.0008;};
	default {_cpRate = 0.08;}
};
while {true} do {
 if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
	[player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["husky_fnc_animSync",RCLIENT];
	player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
	player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
 };
 sleep 0.26;
 if(isNull _ui) then {
	5 cutRsc ["husky_progress","PLAIN"];
	_ui = uiNamespace getVariable "husky_progress";
	_progressBar = _ui displayCtrl 38201;
	_titleText = _ui displayCtrl 38202;
 };
 _cP = _cP + _cpRate;
 _progressBar progressSetPosition _cP;
 _titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];
 if(_cP >= 1 OR !alive player) exitWith {};
 if(husky_istazed) exitWith {}; //Tazed
 if(husky_isknocked) exitWith {}; //Knocked
 if(husky_interrupted) exitWith {};
};
//Kill the UI display and check for various states
5 cutText ["","PLAIN"];
player playActionNow "stop";
if(!alive player OR husky_istazed OR husky_isknocked) exitWith {husky_action_inUse = false;};
if((player getVariable ["restrained",false])) exitWith {husky_action_inUse = false;};
if(husky_interrupted) exitWith {husky_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; husky_action_inUse = false;};
husky_boltcutter_uses = husky_boltcutter_uses + 1;
husky_action_inUse = false;
if(husky_boltcutter_uses >= 5) then {
	[false,"boltcuttergate",1] call husky_fnc_handleInv;
	husky_boltcutter_uses = 0;
};
switch (typeOf _building) do {
 case "Land_Dome_Big_F": {if(husky_fed_break == 0) then {husky_fed_break = 1;};};
 case "Land_Net_Fence_Gate_F": {if(husky_fed_break == 0) then {husky_fed_break = 1;};};
 case "Land_Research_house_V1_F": {husky_fed_break = 2;};
};
_building setVariable [format["bis_disabled_Door_%1",_door],0,true]; //Unlock the door.
if((_building getVariable ["locked",false])) then {
	_building setVariable ["locked",false,true];
};


*/











/*
private["_curTarget","_unit","_victim","_crime","_target","_revivable","_targetName","_ui","_progressBar","_titleText","_cP","_title"];
_building = param [0,objNull,[objNull]];

_curTarget = cursorTarget;
_target = cursorTarget;
_chance = round (random 100);
_chance;
_doors = FETCH_CONFIG2(getNumber,"CfgVehicles",(typeOf _building),"numberOfDoors");
_door = 0;

/*
_animdoor = compileFinal '
	if ((typeOf _this) isEqualTo "Land_BarGate_F") then {
		if (_this animationPhase "Door_1_rot" isEqualTo 1) then {
			_this animate ["Door_1_rot", 0];
		} else {
			_this animate ["Door_1_rot", 1];
		}
	} else {
		if (_this animationPhase "Door_1_move" isEqualTo 1) then {
			_this animate ["Door_1_move", 0];
		} else {
			_this animate ["Door_1_move", 1];
		};
	};
';
*/
/*
 if (!([false,"boltcuttergate",1] call husky_fnc_handleInv)) then {
	["Bist du komplett Banane?", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
 } else {
//if (!([false,"boltcutter",1] call husky_fnc_handleInv)) then {
//if (husky_inv_boltcutter > 0) then {
	husky_action_inUse = true;
	_upp = "Schneidschloss am Tor... (4m)";
	//Setup our progress bar.
	disableSerialization;
	"progressBar" cutRsc ["husky_progress","PLAIN"];
	_ui = uiNamespace getVariable "husky_progress";
	_progress = _ui displayCtrl 38201;
	_pgText = _ui displayCtrl 38202;
	_pgText ctrlSetText format ["%2 (1%1)...","%",_upp];
	_progress progressSetPosition 0.01;
	_cP = 0.0000001;

	for "_i" from 0 to 1 step 0 do
	{
		if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then
		{
			[player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["husky_fnc_animSync",RCLIENT];
			player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
			player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		};
		uiSleep 0.09;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format ["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if (_cP >= 1 || !alive player) exitWith {};
		if (player distance _target > 4) exitWith { "progressBar" cutText ["","PLAIN"];["Du hast dich zuweit vom Tor entfernt.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};
		if (!alive player) exitWith {};
	};
	if (husky_istazed) exitWith {}; //Tazed
	if (husky_isknocked) exitWith {}; //Knocked
	if (husky_interrupted) exitWith {};
	if((player getVariable["restrained",false])) exitWith {};
	if(player distance _target > 4) exitWith {["Du hast dich zuweit vom Tor entfernt.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification; "progressBar" cutText ["","PLAIN"];};
	if (_chance > 50) exitWith {husky_action_inUse = false; "progressBar" cutText ["","PLAIN"]; format["%1 hat ein Tor aufgebrochen.", profileName] remoteexec ["hint", west];["Du hast das Sicherheitssystem ausgel�st.", "Warnung"] spawn husky_fnc_createNotification; gate2 setVariable ["bis_disabled_Door_1",0,false]; gate1 setVariable ["bis_disabled_Door_1",0,false]; [player, "lockpick"] remoteExec ["husky_fnc_say3D", RANY]; gate1 animateSource ["Door_1_sound_source", 1]; gate2 animateSource ["Door_1_noSound_source", 1];};
	if (_cP >= 1) then
	{
		husky_action_inUse = false;
		"progressBar" cutText ["","PLAIN"];
		player playActionNow "stop";
   		gate2 setVariable ["bis_disabled_Door_1",0,true];
   		gate1 setVariable ["bis_disabled_Door_1",0,true];
		gate1 animateSource ["Door_1_sound_source", 1];
		gate2 animateSource ["Door_1_noSound_source", 1];
		//_door call _animdoor;
		[player, "lockpick"] remoteExec ["husky_fnc_say3D", RANY];
		["The gate is now open.", true] call husky_fnc_show;
		[getPlayerUID player,profileName,"459"] remoteExecCall ["husky_fnc_wantedAdd",RSERV];
	};
};
*/