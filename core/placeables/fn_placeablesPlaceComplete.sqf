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
if (!(player getVariable["husky_barrier_active",false])) exitWith {};
if ((player getVariable["husky_barrier_activeObj",objNull]) isEqualTo ObjNull) exitWith {};

_currentPos = getPosATL (player getVariable["husky_barrier_activeObj",objNull]);
detach (player getVariable["husky_barrier_activeObj",objNull]);
/*
if (husky_definePlaceables in ["WaterSpill_01_Large_New_F","WaterTrail_01_New_F"] ) then {
	husky_barrier_activeObj setPos [(getPos husky_barrier_activeObj select 0), (getPos husky_barrier_activeObj select 1), 0];			//Standard
}else{
	husky_barrier_activeObj setPos [(getPos husky_barrier_activeObj select 0), (getPos husky_barrier_activeObj select 1),0,0,-0.08];	//place auf spieler höhe
};
*/
(player getVariable["husky_barrier_activeObj",objNull]) setPos [(getPos (player getVariable["husky_barrier_activeObj",objNull]) select 0), (getPos (player getVariable["husky_barrier_activeObj",objNull]) select 1),-0.08];	//place auf spieler höhe
(player getVariable["husky_barrier_activeObj",objNull]) enableSimulationGlobal true;
(player getVariable ["husky_bar_placey", []]) pushBack (player getVariable ["husky_barrier_activeObj", objNull]); 


player setVariable["husky_barrier_active",false,true];
player setVariable["husky_barrier_activeObj",objNull,true];


//Öffnet Menü nach platzierung???
closeDialog 0; 0 spawn husky_fnc_placeablesMenu;
