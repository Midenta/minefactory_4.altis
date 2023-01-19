#include "..\..\script_macros.hpp"
/*
*Author: Fl0rixn / blackfisch
*Version: 1.0
*For: https://native-network.net/ | sydrpg | mvrpg
*Description:
- Rob the Kammer

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private _kammer = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
private _container = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
private _cops = (west countSide playableUnits);
if!(playerSide isEqualTo CIVILIAN) exitWith {hintSilent "Dir fehlt passendes Werkzeug!";};
if(player distance _kammer > 5) exitWith {hintSilent "Du bist zuweit entfernt!";};
if (!([false,"boltcutter",1] call husky_fnc_handleInv)) exitWith {hintSilent "Du brauchst ein Bolzenschneider!";};
if(_cops < 0) exitWith{hintSilent "Die Waffenkammer ist zu fest abgeschlossen, warte auf mehr Polizisten!";};
if !(_container getVariable "husky_closed") exitWith {hintSilent "Die Waffenkammer ist bereits offen!";};
hintSilent "Der Alarm wurde aktiviert!";
[1,format["<t size='2.5' color='#00B4F5'>Waffenkammer Alarm</t><br/><br/><br/><t color='#ff0000' size='1.5'>Standort: Polizei HQ Kavala</t><br/><t size='1.2'><br/>Der Notruf wurde auf der Karte makiert.</t><br/>"]] remoteExec ["husky_fnc_broadcast",west];
_gFund = GANG_FUNDS;

husky_action_inUse = true;

disableSerialization;
"progressBar" cutRsc ["husky_progress","PLAIN"];
_ui = uiNameSpace getVariable "husky_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Wird geknackt! (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;

_pos = position _kammer;
_marker = createMarker ["Marker200", _pos];
"Marker200" setMarkerColor "ColorRed";
"Marker200" setMarkerText "!ACHTUNG! Waffenkammer Alarm !ACHTUNG!";
"Marker200" setMarkerType "mil_warning";


for "_i" from 0 to 1 step 0 do {
	if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then  {
		[player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["husky_fnc_animSync",RCLIENT];
		player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
		player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
	};
	uiSleep 0.75;
	if (isNull _ui) then {
        "progressBar" cutRsc ["husky_progress","PLAIN"];
        _ui = uiNamespace getVariable "husky_progress";
        _progressBar = _ui displayCtrl 38201;
        _titleText = _ui displayCtrl 38202;
    };
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["Wird geknackt! (%1%2)...",round(_cP * 100),"%"];

	if (_cP >= 1 || !alive player) exitWith {deleteMarker "Marker200";};
    if (husky_istazed) exitWith {deleteMarker "Marker200";}; //Tazed
    if (husky_isknocked) exitWith {deleteMarker "Marker200";}; //Knocked
    if (husky_interrupted) exitWith {deleteMarker "Marker200";};
};

//Kill the UI display and check for various states
"progressBar" cutText ["","PLAIN"];
player playActionNow "stop";
if (!alive player || husky_istazed || husky_isknocked) exitWith {husky_action_inUse = false;deleteMarker "Marker200";};
if (player getVariable ["restrained",false]) exitWith {husky_action_inUse = false;deleteMarker "Marker200";};
if (husky_interrupted) exitWith {husky_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; husky_action_inUse = false;deleteMarker "Marker200";};

husky_action_inUse = false;

/*
if!(alive player) exitWith {};
if(player distance _kammer > 10.5) exitWith {deleteMarker "Marker200"; hintSilent "Die Waffenkammer hat ihre Eisenw�nde hochgefahren! Du warst zu weit weg!"; 5 cutText ["","PLAIN"];};
5 cutText ["","PLAIN"];
*/

//[getPlayerUID player, "Rob Assavatenkammer", format ["%1 - %2 hat %3 aufgebrochen",profileName,(getPlayerUID player),_kammer]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

[getPlayerUID player, "Rob Assavatenkammer", format ["%1 - %2 hat  %3 aufgebrochen Bargeld: %4 € Bankkonto: %5 € Coins: %6 € Gangkonto: %7 €",profileName,(getPlayerUID player),_kammer,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText,[_gFund] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];


deleteMarker "Marker200";
_kammer setVariable ["husky_closed",false,true];
hintSilent "Die Waffenkammer ist nun offen!";
