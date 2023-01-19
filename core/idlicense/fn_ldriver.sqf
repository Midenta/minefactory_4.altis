#include "..\..\script_macros.hpp"
/*
   //Edited Author Rene Lerchberg
    //Base Author: PierreAmyf

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

	hint parseText format ["<t size='2.5'>--------------------</t><br/><img size='13' color='#FFFFFF' image='textures\menus\Death.paa'/><br/><br/><t size='2.5'>%1</t></t>",name player];


	//waffenschein
husky_actions = husky_actions + [player addAction["Waffenschein zeigen",husky_fnc_waffenschein,"",1,false,true,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && license_civ_gun']];

//Führerschein
husky_actions = husky_actions + [player addAction["PKW Fuehrerschein zeigen",husky_fnc_fahrzeugschein,"",1,false,true,"",'!isNull cursorTarget && cursorTarget isKindOf "Man" && license_civ_driver']];



new
husky_actions = husky_actions + [player addAction["Lizenzen zeigen",createDialog ""ausweiszeigen"";,"",1,false,true,"",'!isNull cursorTarget && cursorTarget isKindOf "Man"]];

*/

if(isServer)exitWith{};
private["_ziel", "_rang", "_marke", "_org", "_message"];
if(vehicle player != player )exitWith{};
_ziel = cursorTarget;
if(isNull _ziel) then {_ziel = player;}; 
if(!(_ziel isKindOf "Man")) then {_ziel = player;}; 
if(!(alive _ziel)) then {_ziel = player;};
switch(playerSide)do{
 	case civilian:{
 		if(playerSide == civilian && license_civ_driver)then{
 			_rang = "Führerschein";
			 _marke = "fuhrerschein";
 		}else{
 			_rang = "Kein Führerschein";
			_marke = "";
 		}; 
 	};
};

_message = format["<img size='10' color='#FFFFFF' image='icons\%1.paa'/><br/><br/><t size='2.5'>%2</t><br/><t size='1.8'>%3</t>",_marke, name player, _rang];
[player,_message]remoteExec["husky_fnc_lzeigen",_ziel,false];


