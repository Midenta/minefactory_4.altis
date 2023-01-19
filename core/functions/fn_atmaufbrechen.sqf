#include "..\..\script_macros.hpp"
/*
 File: fn_atmmachtsoichmachesounfall.sqf
 Author: Bimbambum & Kraken edited by BriziJaeger
 
 
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_pos"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_action = [_this,2] call BIS_fnc_param;
_gFund = GANG_FUNDS;

if(side _robber != civilian) exitWith { hint "Du bist kein Zivilist!" };
if(_robber distance _shop > 5) exitWith { hint "Du musst neben den Geldautomat stehen!" };
_kassa = 1000; 
//if !(_kassa) then { _kassa = 1000; };

if (_rip) exitWith { hint "Der Geldautomat wird bereits aufgebrochen!" };
if (vehicle player != _robber) exitWith { hint "Steig aus deinem Fahrzeug aus!" };

if !(alive _robber) exitWith {};
if(!([false,"boltcutter",1] call husky_fnc_handleInv)) exitWith {hint "Du brauchst einen Bolzenschneider!";};
if (_kassa == 0) exitWith { hint "Es ist kein Geld vorhanden!" };


_rip = true;
_kassa = 60000 + round(random 30000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";
_chance = random(100);
if(_chance >= 85) then {[1,hint parseText format["Bankautomat bei %1 wird aufgebrochen!", _shop]] remoteExec ["husky_fnc_broadcast",west]; };



_cops = (west countSide playableUnits);
if(_cops < 2) exitWith{[_vault,-1] remoteExec ["disableSerialization;",2]; hintSilent "Die Polizei hat alle einnahmen abgeholt!";};

disableSerialization;
5 cutRsc ["husky_progress","PLAIN"];
_ui = uiNameSpace getVariable "husky_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Wird ausgraubt. Entferne dich weiter weg als 5m. (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

if(_rip) then {
	
	while{true} do {
		
		sleep 3.00;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["Wird ausgraubt. Entferne dich nicht weiter weg als 5m. (%1%2)...",round(_cP * 100),"%"];
		_Pos = position player;
		_marker = createMarker ["Marker200", _Pos];
		"Marker200" setMarkerColor "ColorRed";
		"Marker200" setMarkerText "Achtung! Räuber!";
		"Marker200" setMarkerType "mil_warning";
		if(_cP >= 1) exitWith {};
		if(_robber distance _shop > 5.5) exitWith { };
		if!(alive _robber) exitWith {};
	};
	
	if!(alive _robber) exitWith { _rip = false; };
	
	if(_robber distance _shop > 5.5) exitWith { deleteMarker
	"Marker200"; _shop switchMove ""; hint "Du hast den Bankautomaten verlassen."; 5 cutText ["","PLAIN"]; _rip =
	false; };
	
	5 cutText ["","PLAIN"];
	
	
	titleText[format["Du hast $%1 gestohlen!",[_kassa] call husky_fnc_numberText],"PLAIN"];
	deleteMarker "Marker200";

	[getPlayerUID player, "ATM Ausgraubt", format ["%1 - %2 hat %3 ausgraubt Bargeld: %4 € Bankkonto: %5 € Coins: %6 € Gangkonto: %7 €",profileName,(getPlayerUID player),_kassa,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText,[_gFund] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
	

	husky_cash = husky_cash + _kassa;
	[] call husky_fnc_hudUpdate;
	
	
	
	_rip = false;
	husky_use_atm = false;
	sleep (30 + random(180));
	husky_use_atm = true;
	if!(alive _robber) exitWith {};
	
	[getPlayerUID _robber,name _robber,"11"] remoteExecCall ["husky_fnc_wantedAdd",2];
	
	
};

sleep 300;
_action = _shop addAction["Geldautomat aufbrechen",husky_fnc_atmaufbrechen,"",0,false,false,"","playerSide isEqualTo civilian",4];
//_action = _shop addAction["Geldautomat",husky_fnc_atmMenu,"",0,false,false,"","",4];
_shop switchMove "";
