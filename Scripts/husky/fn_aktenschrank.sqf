#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
if (husky_action_inUse) exitWith {};
if !(isNull objectParent player) exitWith {};
if (player getVariable "restrained") exitWith {/*hint localize "STR_NOTF_isrestrained";*/};
if (player getVariable "playerSurrender") exitWith {/*hint localize "STR_NOTF_surrender";*/};

_akten = ["akteni","aktenii","akteniii"];

husky_action_inUse = true;

	player playMoveNow "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 0.5;

	[true, selectRandom _akten,1] call husky_fnc_handleInv;
	
	titleText[format [localize "STR_NOTF_Gather_Success_akten"],"PLAIN"];

[] call husky_fnc_hudUpdate;

husky_action_inUse = false;



/*

Abbauen/Finden
this addAction ["Aktenschrank sortieren",husky_fnc_aktenschrank,"",0,false,false,"","",4]; 

Verarbeiter
this addAction[localize"STR_Process_akteni",husky_fnc_processAction,"akteni",0,false,false,"",' husky_inv_akteni > 0 && !husky_is_processing && !husky_action_inUse && playerSide isEqualTo WEST ',4]; 
this addAction[localize"STR_Process_aktenii",husky_fnc_processAction,"aktenii",0,false,false,"",' husky_inv_aktenii > 0 && !husky_is_processing && !husky_action_inUse && playerSide isEqualTo WEST ',4]; 
this addAction[localize"STR_Process_akteniii",husky_fnc_processAction,"akteniii",0,false,false,"",' husky_inv_akteniii > 0 && !husky_is_processing && !husky_action_inUse && playerSide isEqualTo WEST ',4]; 


H�ndler
this addAction[localize"STR_Shops_Cop_altpapier",husky_fnc_virt_menu,"cop_aktenmuell",0,false,false,"","playerSide isEqualTo WEST",4];
*/