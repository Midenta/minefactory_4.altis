#include "..\..\script_macros.hpp"
/*
    File: fn_jailMe.sqf
    Author Bryan "Tonic" Boardwine

    Description:
    Once word is received by the server the rest of the jail execution is completed.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_time","_bail","_esc","_countDown"];
params [
	["_ret",[],[[]]],
	["_bad",false,[false]],
	["_time",15,[0]]
];
	_time = time + (_time * 60);
if (count _ret > 0) then { 
		husky_bail_amount = (_ret select 2); 
	} else { 
		husky_bail_amount = 1500; 
	};
	_esc = false;
	_bail = false;
	//if (_time <= 0) then { _time = time + (15 * 60); hint "Please Report to Admin: JAIL_FALLBACK_15, time is zero!"; };
		[_bad,_time] spawn {
		husky_canpay_bail = false;
		husky_bail_amount = husky_bail_amount * 5;
			if (_this select 0) then {
				sleep ( (_this select 1) * 0.5 );
			} else {
				sleep ( (_this select 1) * 0.2 );
			};
		husky_canpay_bail = true;
	};
	
while {true} do {
	if ((round(_time - time)) > 0) then {
		//Standard
		_countDown = [(_time - time), "MM:SS.MS"] call BIS_fnc_secondsToString;
        hintSilent parseText format [(localize "STR_Jail_Time") + "<br/> <t size='2'><t color='#FF0000'>%1</t></t><br/><br/>" + (localize "STR_Jail_Pay") + " %3<br/>" + (localize "STR_Jail_Price") + " %2 €", _countDown, [husky_bail_amount] call husky_fnc_numberText, if (husky_canpay_bail) then {"Ja"} else {"Nein"}];

		
		/*//Neu
		_countDown = if (round (_time - time) > 60) then {format["%1 Minuten",round(round(_time - time) / 60)]} else {format["%1 Sekunden",round(_time - time)]};
		if (husky_canpay_bail) then {
			hintSilent format["Verbleibende Zeit:\n %1\n\n Du kannst die Kaution jetzt bezahlen \n Kaution: %2 %3",_countDown,[husky_bail_amount] call husky_fnc_numberText, localize "STR_Item_Money"];
		} else {
			hintSilent format["Verbleibende Zeit:\n %1\n",_countDown];
		};*/
	};
	_remain = (round(_time - time));
	if ((_remain % 60) isEqualTo 0) then {
		player setVariable ["JailTime", (round(_remain / 60)) ];
		[5] call SOCK_fnc_updatePartial;
	};
 
	if (husky_SETTINGS(getNumber,"jail_forceWalk") isEqualTo 1) then {
		player forceWalk true;
	};
	private _escDist = [[["Altis", 100], ["Tanoa", 145], ["Enoch", 300], ["Stratis", 100]]] call TON_fnc_terrainSort;
 
	if (player distance (getMarkerPos "jail_marker") > _escDist) exitWith {
		_esc = true;
	};
	if (husky_bail_paid) exitWith {
		_bail = true;
	};
	if ((round(_time - time)) < 1) exitWith {hint ""};
	if (!alive player && ((round(_time - time)) > 0)) exitWith {};
	sleep 0.1;
};

switch (true) do {
	case (_bail): {
		husky_is_arrested = false;
		husky_bail_paid = false;
		hint localize "STR_Jail_Paid";
		serv_wanted_remove = [player];
		player setPos (getMarkerPos "jail_release");
		player setVariable ["JailTime",0];
			if (husky_HC_isActive) then {
				[getPlayerUID player] remoteExecCall ["HC_fnc_wantedRemove",HC_husky];
			} else {
				[getPlayerUID player] remoteExecCall ["husky_fnc_wantedRemove",RSERV];
			};
		[5] call SOCK_fnc_updatePartial;
	};
	case (_esc): {
		husky_is_arrested = false;
		hint localize "STR_Jail_EscapeSelf";
		[1,"STR_Jail_EscapeNOTF",true,[profileName]] remoteExecCall ["husky_fnc_broadcast",west];
		player setVariable ["JailTime",0];
		if (husky_HC_isActive) then {
			[getPlayerUID player,profileName,"55"] remoteExecCall ["HC_fnc_wantedAdd",HC_husky];
		} else {
			[getPlayerUID player,profileName,"55"] remoteExecCall ["husky_fnc_wantedAdd",RSERV];
		};
 
		[5] call SOCK_fnc_updatePartial;
	};
	case (alive player && !_esc && !_bail): {
		husky_is_arrested = false;
		hint localize "STR_Jail_Released";
		if (husky_HC_isActive) then {
			[getPlayerUID player] remoteExecCall ["HC_fnc_wantedRemove",HC_husky];
		} else {
			[getPlayerUID player] remoteExecCall ["husky_fnc_wantedRemove",RSERV];
		};
		player setPos (getMarkerPos "jail_release");
		[5] call SOCK_fnc_updatePartial;
	};
};
player forceWalk false; // Enable running & jumping