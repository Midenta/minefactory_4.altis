/* 
	Author: Maximum
	Description: Placeables for the cop\medic sides.
	Disclaimer: Don't be a asshole and pass this off as your own or become a KAI and sell it for profit, Im releasing this for FREE... Credits: Killerty69 for a second pare of eyes when mine got to sleepy
	P.S. - Don't be a faggot like i know some of you all will be.
	
	edited by: blackfisch	
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
if (!(player getVariable["husky_barrier_active",false])) exitWith {}; //bad check?
deleteVehicle (player getVariable["husky_barrier_activeObj",objNull]);
systemChat "+++ Platzieren Abgebrochen +++";
player setVariable ["husky_barrier_active",false,true];
player setVariable ["husky_barrier_activeObj",objNull,true];