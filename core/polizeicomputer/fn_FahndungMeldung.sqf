#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

*/
/*
_display = findDisplay 20070;
if (!isNil {admin_query_ip}) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Sie befragen bereits einen Spieler.</t>";};
_text = _display displayCtrl 20075;
private _unit = lbData[20073,(lbCurSel 20073)];
_unit = call compile format ["%1",_unit];
*/

 private _unit = lbData [70090,lbCurSel 70090];
 //diag_log format ["%1", _unit];
 _unit = call compile format ["%1",_unit];
  //diag_log format ["%1", _unit];
 private _amount = lbData [70150,lbCurSel 70150];
  //diag_log format ["%1", _amount];
 if (isNil "_unit") exitWith {};
 if (isNull _unit) exitWith {};

 [[3],format ["<t size='1.65' color='#00CD00'>HGPD-Fahndungsliste</t><br/><br/><t size='1.1' align='center'>=<br/>Eine Person wurde zur<br/>Fahndung ausgeschrieben<br/>=</t><br/><br/><br/><t size='0.95' align='left' color='#79CdCd'>Person:</t><t size='1.05' align='right'><br/>%1</t><br/><br/><t size='0.95' align='left' color='#79CDCD'>Ausgeschrieben von:</t><t size='1.05' align='right'><br/>%2</t>",_unit getVariable["realname",name _unit],profileName],false] remoteExecCall ["husky_fnc_broadcast",RCLIENT];

 [] spawn {sleep 30; hint "";};
