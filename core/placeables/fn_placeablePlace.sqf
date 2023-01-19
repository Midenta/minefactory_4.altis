/*
	Author: Maximum
	Description: Placeables for the cop\medic sides.
	Disclaimer: Don't be a asshole and pass this off as your own or become a KAI and sell it for profit, Im releasing this for FREE... Credits: Killerty69 for a second pare of eyes when mine got to sleepy
	P.S. - Don't be a faggot like i know some of you all will be.

	edited by: blackfisch

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
disableSerialization;
if (count (player getVariable["husky_bar_placey",[]]) >= husky_bar_limit) exitWith {
	//hint "Du hast die maximale Anzahl Absperrungen erreicht!"; 
	hint parseText "<t underline='true' size='1.8' color='#7cff00'>Informant</t><br /><t size='1.5' color='#ffffff'>Du hast die maximale Anzahl Absperrungen erreicht!</t>";
	closeDialog 0;
};

_display = findDisplay 20000;
_placeables = _display displayCtrl 20001;
_className = tvdata[20001, tvCurSel (20001)];
closeDialog 0;
player setVariable ["husky_barrier_active",true,true];
_allowMoveDistance = 20;
_object = _className createVehicle (position player);
player setVariable ["husky_barrier_activeObj",_object,true];
private "_attachPos";
_attachPos = [0, 3, ((boundingBoxReal _object) select 1) select 2];
_object attachTo[player, _attachPos];
_object enableSimulationGlobal false;
_object allowDamage false;
_originalPos = position _object;
_playerOriginalPos = position player;

waitUntil{
	if ((player getVariable ["husky_barrier_activeObj",objNull]) distance _originalPos > _allowMoveDistance || player distance _playerOriginalPos > _allowMoveDistance) then {
		[true] call husky_fnc_placeableCancel;
    };
    sleep 1;
    !(player getVariable ["husky_barrier_active",false]);
};
