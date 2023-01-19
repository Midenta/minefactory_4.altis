#include "..\..\script_macros.hpp"
/*

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
	Diese Mission darf von keinem anderen genutzt werden au?er von Thieves-Gaming.de!
*/
//private "_vault";
//_vault = _this select 0;
//if (!(_vault getVariable ["safe_open",false])) exitWith {hint localize "STR_Cop_VaultLocked"};
//hint "Zeit start";

//hint "Zeit ende";

//fed_bank getVariable ["safe_open",true,true];
//hint "Offen";
[getPlayerUID player, "Safe Auto fix Start", format [""]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
//sleep 1800;
sleep (90 * 60);	//10min weigen sprenglandungsteimer und dann 30min offen

fed_bank setVariable ["safe_open",false,true];
//hint  "wieder zu :P";
[0,"STR_ISTR_Safe_Autofix",true,[]] remoteExecCall ["husky_fnc_broadcast",west];
[getPlayerUID player, "Safe Auto fix Ende", format [""]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];