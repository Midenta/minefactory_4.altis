#include "..\..\script_macros.hpp"
/*
    Author: Jonas, xjoniassx @ MineFactory.eu (2017)
    info@minefacotry.eu xjoniassx@gmail.com

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

if (husky_action_inUse) exitWith {hint "Keine zweite Aktion möglich";};
if((vehicle player) != player) exitWith {};
if((player getVariable "restrained")) exitWith {hint "Wie willst du mit gefesselten Händen sammeln?";};
if((player getVariable "playerSurrender")) exitWith {hint "Mit gehobenen Händen kannst du nichts sammeln!.";};
husky_action_inUse = true;

_markerPos = markerPos "autoteile";
_meters = _markerPos distance player;
if(_meters > 45) exitWith {hint "Keine Schrotteile in der nähe!"; husky_action_inUse = false;};

closeDialog 0;

GELAUFEN = 0;
SAMMELN = true;
AbbruchWdrop = false;

hint "Gehe über die Mülldeponie um etwas zu finden. (Nicht rennen!, max 40m vom Marker entfernen)";

_upp = "Suche Teile...";
disableSerialization;
5 cutRsc ["husky_progress","PLAIN"];
_ui = uiNameSpace getVariable "husky_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;
_success=false;
while{true} do
{
    sleep 1;
    _cP = _cP + 0.1;   //0.01
    _progress progressSetPosition _cP;
    _pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
    if(_cP >= 1) exitWith {SAMMELN = false;};
    if(!alive player) exitWith {};
    if(speed player > 16) exitWith {SAMMELN = false; Hint"Du bist gerannt und hast deine Metalldetektor fallen gelassen"; [false,"metalldetektor",1] call husky_fnc_handleInv; AbbruchWdrop = true;};
    
    _markerPos = getPos player;
    sleep 1;
    _meters= _markerPos distance player;
    GELAUFEN = _meters + GELAUFEN;
        
        
    _markerPos = markerPos "autoteile";
    _entfernt = _markerPos distance player;
    if(_entfernt > 45) exitWith {SAMMELN = false; Hint"Du hast deine Metalldetektor fallen gelassen da keine Teile in der nähe sind"; [false,"metalldetektor",1] call husky_fnc_handleInv; AbbruchWdrop = true;};
};

5 cutText ["","PLAIN"];
sleep 1;

husky_action_inUse = false;
if(AbbruchWdrop) exitWith {systemChat "Keine Items für dich!";};

if(GELAUFEN > 5) then {[] spawn husky_fnc_loot;};
sleep 0.2;
if(GELAUFEN > 80) then {[] spawn husky_fnc_loot;};
sleep 0.2;
if(GELAUFEN > 160) then {[] spawn husky_fnc_loot;};
sleep 0.2;
if(GELAUFEN > 250) then {[] spawn husky_fnc_loot;};
sleep 0.2;
if(GELAUFEN > 375) then {[] spawn husky_fnc_loot;};
sleep 0.2;
if(GELAUFEN > 500) then {[] spawn husky_fnc_loot;};