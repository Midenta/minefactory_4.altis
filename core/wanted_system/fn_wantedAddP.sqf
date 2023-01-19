#include "..\..\script_macros.hpp"
/*
    File: fn_wantedAddP.sqf
    Author:

    Description:
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

*/
if !(playerSide isEqualTo west) exitWith {hint localize "STR_Cop_wantedList_notCop";};
if ((lbCurSel 2406) isEqualTo -1) exitWith {hint localize "STR_Cop_wantedList_noPlayerSelected";};
if ((lbCurSel 2407) isEqualTo -1) exitWith {hint localize "STR_Cop_wantedList_noCrimeSelected";};
 private _unit = lbData [2406,lbCurSel 2406];
 _unit = call compile format ["%1",_unit];
 private _amount = lbData [2407,lbCurSel 2407];
 if (isNil "_unit") exitWith {};
 if (isNull _unit) exitWith {};
 
 //if checkbox true then {[[3],format ["<t size='1.65' color='#00CD00'>HGPD-Fahndungsliste</t><br/><br/><t size='1.1' align='center'>=<br/>Eine Person wurde zur<br/>Fahndung ausgeschrieben<br/>=</t><br/><br/><br/><t size='0.95' align='left' color='#79CdCd'>Person:</t><t size='1.05' align='right'><br/>%1</t><br/><br/><t size='0.95' align='left' color='#79CDCD'>Ausgeschrieben von:</t><t size='1.05' align='right'><br/>%2</t>",_unit getVariable["realname",name _unit],profileName],false] remoteExecCall ["husky_fnc_broadcast",RCLIENT];};
 
 [[3],format ["<t size='1.65' color='#00CD00'>HGPD-Fahndungsliste</t><br/><br/><t size='1.1' align='center'>=<br/>Eine Person wurde zur<br/>Fahndung ausgeschrieben<br/>=</t><br/><br/><br/><t size='0.95' align='left' color='#79CdCd'>Person:</t><t size='1.05' align='right'><br/>%1</t><br/><br/><t size='0.95' align='left' color='#79CDCD'>Ausgeschrieben von:</t><t size='1.05' align='right'><br/>%2</t>",_unit getVariable["realname",name _unit],profileName],false] remoteExecCall ["husky_fnc_broadcast",RCLIENT];
 
 
 if (husky_HC_isActive) then {
	[getPlayerUID _unit,_unit getVariable ["realname",name _unit],_amount] remoteExecCall ["HC_fnc_wantedAdd",HC_husky];
 } else {
	[getPlayerUID _unit,_unit getVariable ["realname",name _unit],_amount] remoteExecCall ["husky_fnc_wantedAdd",RSERV];
 };
 
 [getPlayerUID player, "Fahndungsliste Add", format ["%1 - %2 hat %3 für %4 € auf die Fahndungsliste gesetzt.",profileName,(getPlayerUID player),_unit getVariable ["realname",name _unit],_amount]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

 [] spawn {sleep 30; hint "";};

/*
if !(playerSide isEqualTo west) exitWith {hint localize "STR_Cop_wantedList_notCop";};
if ((lbCurSel 2406) isEqualTo -1) exitWith {hint localize "STR_Cop_wantedList_noPlayerSelected";};
if ((lbCurSel 2407) isEqualTo -1) exitWith {hint localize "STR_Cop_wantedList_noCrimeSelected";};
private _unit = lbData [2406,lbCurSel 2406];
_unit = call compile format ["%1",_unit];
private _amount = lbData [2407,lbCurSel 2407];
if (isNil "_unit") exitWith {};
if (isNull _unit) exitWith {};

//[1,"STR_Wanted_AddP",true,[_unit getVariable ["realname",name _unit],_amount,getPlayerUID _unit]] remoteExecCall ["husky_fnc_broadcast",RCLIENT];
[[3],format [localize "STR_Wanted_AddP",_unit getVariable["realname",name _unit],profileName],false] remoteExecCall ["husky_fnc_broadcast",RCLIENT];

if (husky_HC_isActive) then {
    [getPlayerUID _unit,_unit getVariable ["realname",name _unit],_amount] remoteExecCall ["HC_fnc_wantedAdd",HC_husky];
} else {
    [getPlayerUID _unit,_unit getVariable ["realname",name _unit],_amount] remoteExecCall ["husky_fnc_wantedAdd",RSERV];
};

*/