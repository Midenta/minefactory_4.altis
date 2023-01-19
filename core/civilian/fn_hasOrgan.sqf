/*
	file: fn_hasOrgan.sqf
	author: [midgetgrim?m] - www.grimmhusky.com
	
	Updated and improved upon by: Edward - Edward#2003
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_organThief"];
_organThief = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if (isNull _organThief) exitWith {}; //if not the thief get bent

	[1, format["%1 hat eine Niere aus %2 herausgeschnitten.",name _organThief, name player]] remoteExec ["husky_fnc_broadcast", civilian];
	[_organThief,"kidney",1] call husky_fnc_handleInv;//put stolen kidney into inventory of thief
	//Add to Wanted list
	if (husky_HC_isActive) then {
		[getPlayerUID player, player getVariable ["realname",name player],"919"] remoteExecCall ["HC_fnc_wantedAdd",HC_husky];
	} else {
		[getPlayerUID player, player getVariable ["realname",name player],"919"] remoteExecCall ["husky_fnc_wantedAdd",RSERV];
	};
	uiSleep 300;//no more organ theft for at least 5 minutes, so they cant just do it over and over, can do whatever time you want
	_organThief setVariable["hasOrgan",false,true];//allow ?them to be able to take organs again- setting a variable