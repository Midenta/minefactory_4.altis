#include "..\..\script_macros.hpp"
/*
    File: fn_captureHideout.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Blah blah.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
	
	this addAction[localize"STR_NOTF_captureGangHideout",husky_fnc_captureHideout,"",0,false,false,"",' playerSide isEqualTo civilian && !isNil {(group player) getVariable "gang_owner"}',4];
	this addAction[localize"STR_NOTF_captureGangHideout",husky_fnc_captureHideoutCop,"",0,false,false,"",'playerSide isEqualTo west',4];
 
*/
//private ["_cop"];

private _altisArray = ["Land_u_Barracks_V2_F","Land_i_Barracks_V2_F","Land_i_Barracks_V1_F"];
private _tanoaArray = ["Land_School_01_F","Land_Warehouse_03_F","Land_House_Small_02_F"];
private _enochArray = ["Land_u_Barracks_V2_F","Land_i_Barracks_V2_F","Land_i_Barracks_V1_F"];
private _stratisArray = ["Land_u_Barracks_V2_F","Land_i_Barracks_V2_F","Land_i_Barracks_V1_F"];
private _hideoutObjs = [[["Altis", _altisArray], ["Tanoa", _tanoaArray], ["Enoch", _enochArray], ["Stratis", _stratisArray]]] call TON_fnc_terrainSort;
private _hideout = (nearestObjects[getPosATL player,_hideoutObjs,50]) select 0;

//private _group = _hideout getVariable ["gangOwner",-1];

//_cop = player;

//if (isNil {_ownGroup getVariable "gang_id"}) exitWith {titleText[localize "STR_GNOTF_CreateGang","PLAIN"];};
//if (_cop getVariable ["gang_id",-1])) exitWith {titleText[localize "STR_GNOTF_Controlled_cop","PLAIN"]};
//if (playerSide == west) exitWith {titleText[localize "STR_GNOTF_Controlled_cop","PLAIN"]};
if (_hideout getVariable ["inCapture",false]) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Nur eine Person kann das Versteck einnehmen!</t>";};

private "_action";
/*
private "_cpRate";
if (!(_group isEqualTo -1)) then {
    _gangName = _hideout getVariable ["gangOwnerName","ERROR REPORT TO ADMIN"];
    _action = [
        format [localize "STR_GNOTF_AlreadyControlled",_gangName],
        localize "STR_GNOTF_CurrentCapture",
        localize "STR_Global_Yes",
        localize "STR_Global_No"
    ] call BIS_fnc_guiMessage;

    _cpRate = 0.0045;
} else {
    _cpRate = 0.0075;
};
*/
//if (!isNil "_action" && {!_action}) exitWith {titleText[localize "STR_GNOTF_CaptureCancel","PLAIN"];};
husky_action_inUse = true;

//Setup the progress bar
disableSerialization;
private _title = localize "STR_GNOTF_Capturing";
"progressBar" cutRsc ["husky_progress","PLAIN"];
private _ui = uiNamespace getVariable "husky_progress";
private _progressBar = _ui displayCtrl 38201;
private _titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format ["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
private _cP = 0.01;

for "_i" from 0 to 1 step 0 do {
    if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
        [player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["husky_fnc_animSync",RCLIENT];
        player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
        player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
    };
    uiSleep 0.26;
    if (isNull _ui) then {
        "progressBar" cutRsc ["husky_progress","PLAIN"];
        _ui = uiNamespace getVariable "husky_progress";
        _progressBar = _ui displayCtrl 38201;
        _titleText = _ui displayCtrl 38202;
    };
    _cP = _cP + 0.0075;	//0.0075 oder 0.0045
    _progressBar progressSetPosition _cP;
    _titleText ctrlSetText format ["%3 (%1%2)...",round(_cP * 100),"%",_title];
    _hideout setVariable ["inCapture",true,true];
    if (_cP >= 1 || !alive player) exitWith {_hideout setVariable ["inCapture",false,true];};
    if (husky_istazed) exitWith {_hideout setVariable ["inCapture",false,true];}; //Tazed
    if (husky_isknocked) exitWith {_hideout setVariable ["inCapture",false,true];}; //Knocked
    if (husky_interrupted) exitWith {_hideout setVariable ["inCapture",false,true];};
};

//Kill the UI display and check for various states
"progressBar" cutText ["","PLAIN"];
player playActionNow "stop";
if (!alive player || husky_istazed || husky_isknocked) exitWith {husky_action_inUse = false;_hideout setVariable ["inCapture",false,true];};
if (player getVariable ["restrained",false]) exitWith {husky_action_inUse = false;_hideout setVariable ["inCapture",false,true];};
if (husky_interrupted) exitWith {husky_interrupted = false; titleText[localize "STR_GNOTF_CaptureCancel","PLAIN"]; husky_action_inUse = false;_hideout setVariable ["inCapture",false,true];};
husky_action_inUse = false;

titleText[localize "STR_GNOTF_Captured","PLAIN"];
private _flagTexture = [
		"\A3\Data_F\Flags\Flag_blue_CO.paa",
        "\A3\Data_F\Flags\flag_fd_blue_CO.paa"
    ] call BIS_fnc_selectRandom;
_this select 0 setFlagTexture _flagTexture;
[[0,1],"STR_GNOTF_CaptureSuccess_cop",true] remoteExecCall ["husky_fnc_broadcast",RCLIENT];
_hideout setVariable ["inCapture",false,true];

c126 = c126 + 1;
hint parseText "<t underline='true' size='1.8' color='#7cff00'>Information</t><br /><t size='1.5' color='#ffffff'>Du hast 1 € durch das neutralisieren des Gang Verstecks bekommen!</t>";

/*
_name = _ownGroup getVariable ["gang_name","ERROR REPORT TO ADMIN"];
_hideout setVariable ["gangOwner",_ownGroup getVariable ["gang_id",-1],true];
_hideout setVariable ["gangOwnerName",_name,true];
*/

_number = _hideout getVariable ["hideoutnr",-1];
if (_number isEqualTo -1) exitWith {};
[1] remoteExecCall ["ton_fnc_gang_updateraid",RSERV];
[getPlayerUID player, "captureHideout Cop", format ["%1 - %2 hat dass Gang HQ %3 eingenommen. Bargeld %4 € Bank %5 €",profileName,(getPlayerUID player),_number,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
format["gh_marker_%1",_number] setMarkerText "Neutralisiert durch die Polizei";
