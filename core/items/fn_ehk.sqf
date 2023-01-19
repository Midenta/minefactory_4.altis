/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

private["_target"];
_target = cursorTarget;
//Error checks
if (isNull _target) exitWith {};
if (!isPlayer _target) exitWith {};
//if (husky_inv_EHK < 1) exitWith {["Erste-Hilfe-Kasten???", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification};

/*
if (!isPlayer _target || isNull _target) then {
	
	
	[player,"AinvPknlMstpSnonWrflDnon_medic1"] remoteExec ["husky_fnc_animSync",0];
	sleep 5;
	player setDamage 0;
	[player,""] remoteExec ["husky_fnc_animSync",0];
	["Behandlung abgeschlossen.", "Information"] spawn husky_fnc_createNotification;
	*/

if (husky_inv_EHK < 1) then {
	
	["Erste-Hilfe-Kasten???", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification

}else{

	[player,"AinvPknlMstpSnonWrflDnon_medic1"] remoteExec ["husky_fnc_animSync",0];
	sleep 10;
	_target setDamage 0;
	[player,""] remoteExec ["husky_fnc_animSync",0];
	["Behandlung abgeschlossen.", "Information"] spawn husky_fnc_createNotification;

};


/*
private["_target"];
_target = cursorTarget;
//Error checks
//if (isNull _target) exitWith {};
if (!isPlayer _target) exitWith {};
//if (husky_inv_EHK < 1) exitWith {};

//if (husky_inv_EHK == 1) then {
//if (playerSide in [civilian, west, independent]) then {
if (!isnull _target) then {
	
	//titleText[localize "STR_NOTF_EHK","PLAIN"];titleFadeOut 3;
	[player,"AinvPknlMstpSnonWrflDnon_medic1"] remoteExec ["husky_fnc_animSync",0];
	sleep 2;
	_target setDamage 0;
	
	player playActionNow "stop";

}else{
	
	[player,"AinvPknlMstpSnonWrflDnon_medic1"] remoteExec ["husky_fnc_animSync",0];
	
	sleep 2;
 
	player setDamage 0;
	
	titleText[localize "STR_NOTF_EHK_self","PLAIN"];titleFadeOut 3;
	
	player playActionNow "stop";

};
*/