#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
//if(playerside != west)exitWith{};
private ["_unit"];
_unit = player;
 husky_sos_cooldown = true;
 [format["<t align='center' font='PuristaBold' size='2' color='#ff0000'>SOS-Alarm</t><br/><br/><t align='center' size='1.5'>%3<br/><br/>%1 hat den Notfallknopf betätigt!<br/><br/>Position: %2<br/><br/>%3</t>",player getVariable["realname",name player], mapGridPosition player,'****************************']] remoteExec ["husky_fnc_broadcastWest",west];
 [_unit,"sosalarm",50,1] remoteExecCall ["husky_fnc_say3D",0];
 [player]remoteExec["husky_fnc_sosMarker",west];
 []spawn {
    sleep 90;
    hint "Deine SOS-Markierung wurde gelöscht!";
    sleep 60;
    husky_sos_cooldown = false;
 };
