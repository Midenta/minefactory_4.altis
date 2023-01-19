#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private _kammer = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(player distance _kammer > 5) exitWith {hintSilent "Du bist zuweit entfernt!";};


husky_action_inUse = true;

disableSerialization;
"progressBar" cutRsc ["husky_progress","PLAIN"];
_ui = uiNameSpace getVariable "husky_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Wird verschlossen! (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;


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
	_pgText ctrlSetText format["Wird verschlossen! (%1%2)...",round(_cP * 100),"%"];

	if (_cP >= 1 || !alive player) exitWith {deleteMarker "Marker200";};
    if (husky_istazed) exitWith {}; //Tazed
    if (husky_isknocked) exitWith {}; //Knocked
    if (husky_interrupted) exitWith {};
};

//Kill the UI display and check for various states
"progressBar" cutText ["","PLAIN"];
player playActionNow "stop";
if (!alive player || husky_istazed || husky_isknocked) exitWith {husky_action_inUse = false;};
if (player getVariable ["restrained",false]) exitWith {husky_action_inUse = false;};
if (husky_interrupted) exitWith {husky_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; husky_action_inUse = false;};

husky_action_inUse = false;


_kammer setVariable ["husky_closed",true,true]; 
[getPlayerUID player, "Repair Assavatenkammer", format ["%1 - %2 hat %3 repariert",profileName,(getPlayerUID player),_kammer]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
hintSilent "Waffenkammer wurde repariert";

/*
player switchMove "AinvPknlMstpSnonWnonDnon_medic_1"; 
player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1"; 
_kammer setVariable ["husky_closed",true,true]; 
[getPlayerUID player, "Repair Assavatenkammer", format ["%1 - %2 hat %3 repariert",profileName,(getPlayerUID player),_kammer]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
hintSilent "Waffenkammer wurde repariert";
*/

/*
private["_kammer","_cops"];
_kammer = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
//_cops = (west countSide playableUnits);
if!(playerSide == CIVILIAN) exitWith {hintSilent "Dir fehlt passendes Werkzeug!";};
if(player distance _kammer > 5) exitWith {hintSilent "Geh hin, trau dich, die Kammer bei�t nicht!";};
//if(_cops < 1) exitWith{hintSilent "Die Waffenkammer ist zu fest abgeschlossen, warte auf mehr Polizisten!";};
if !(_container getVariable "husky_closed") exitWith {hintSilent "Die Waffenkammer ist bereits offen!";};
hintSilent "Der Alarm wurde ausgel�st!";
[format["<t size='2' color='#EAF200'>� � � - - - � � �</t><br/><t size='2.5' color='#00B4F5'>Waffenkammer Alarm</t><br/><br/><br/><t color='#ff0000' size='1.5'>Standort: Polizei HQ Kavala</t><br/><t size='1.2'><br/>Der Notruf wurde auf der Karte makiert.</t><br/>"]] remoteExec ["husky_fnc_broadcast",west];

disableSerialization;
5 cutRsc ["husky_progress","PLAIN"];
_ui = uiNameSpace getVariable "husky_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Wird geknackt! (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.01;
for "_i" from 0 to 1 step 0 do
{
 uiSleep 0.75;
 _cP = _cP + 0.01;
 _progress progressSetPosition _cP;
 _pgText ctrlSetText format["Wird geknackt! (%1%2)...",round(_cP * 100),"%"];
 _pos = position _kammer;
 _marker = createMarker ["Marker200", _pos];
 "Marker200" setMarkerColor "ColorRed";
 "Marker200" setMarkerText "!ACHTUNG! Waffenkammer scl�gt Alarm !ACHTUNG!";
 "Marker200" setMarkerType "mil_warning"; 
 if(_cP >= 1) exitWith {};
 if(player distance _kammer > 10.5) exitWith {hintSilent "Die Waffenkammer hat ihre Eisenw�nde hochgefahren! Du warst zu weit weg!"; 5 cutText ["","PLAIN"];};
 if!(alive player) exitWith {5 cutText ["","PLAIN"];};
};
if!(alive player) exitWith {};
if(player distance _kammer > 10.5) exitWith {deleteMarker "Marker200"; hintSilent "Die Waffenkammer hat ihre Eisenw�nde hochgefahren! Du warst zu weit weg!"; 5 cutText ["","PLAIN"];};
5 cutText ["","PLAIN"];
deleteMarker "Marker200";
_kammer setVariable ["husky_closed",false,true];
hintSilent "Die Waffenkammer ist nun offen!";
*/