#include "..\..\script_macros.hpp"
/*
    File: fn_areaCapture.sqf
    Author: Fuel RebornRoleplay.com

    Description:
    checks the area for gangs or police before allowing you to capture an area
*/
private["_gangNum","_gName","_group","_area","_nil","_pos","_xname","_text","_action","_cpRate","_cP","_nearUnits","_areaContested","_progressBar","_title","_titleText","_ui"];

_area = getpos player nearestObject "Flag_Red_F"; //finds the flag
_group = _area getVariable ["gangOwner",grpNull]; //gets the owner of the flag
_xname = ""; //setup for popo name
_nearUnits = _area nearEntities ["Man",500]; //searches area for players
 _areaContested = false; //sets the area to not contested
if ((player distance _area) > 10) exitWith { hint "Du musst näher zur Flagge um sie zu hiessen"; }; //too far away

/*
#########################################
#       The Police Capture System       #
#########################################
*/

if (playerside isEqualTo west) exitWith {

//inform the server the police are trying to capture it.
[[0,1],"STR_GNOTF_CaptureAreaAttemptPopo",true,[name player]] remoteExecCall ["husky_fnc_broadcast",RCLIENT];

//set the cp rate
if (!isNull _group) then {
    _cpRate = 0.0045;
} else {
    _cpRate = 0.0075;
};

//Police officer checks
{

    //check for other members of same side
    if ((isPlayer _x) && (_x != player) && (side _x == west)) then {
        _areaContested = false;
    };

    //checks for Rebellen
    if ((isPlayer _x) && (_x != player) && (side _x == civilian)) then {
        _areaContested = true;
        _xname = "Rebellen";
    };

    //closes the capture
    if (_areaContested && _xname isEqualTo "Rebellen") then {
        hint "Rebellen in der Nähe!\nSchalte sie aus um fortzufahren!";
    };

} forEach _nearUnits;

//exit if contested
if (_areaContested) exitWith {};

//Tell the world
[[0,1],"STR_GNOTF_CaptureAreaProcess",true,[name player,(group player) getVariable "gang_name"]] remoteExecCall ["husky_fnc_broadcast",RCLIENT];

//Setup our progress bar.
disableSerialization;
_title = localize "STR_GNOTF_CapturingArea";
5 cutRsc ["husky_progress","PLAIN"];
_ui = uiNamespace getVariable "husky_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;

if (!(_areaContested)) then {
    for "_i" from 0 to 1 step 0 do {
        sleep 1; //police capture time * 100
        _cP = _cP + _cpRate;
        _progressBar progressSetPosition _cP;
        _titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];

        //sets the area to incapture
        _area setVariable ["inCapture",true,true];

        //interuption checks
        if (_cP >= 1 || !alive player) exitWith {_area setVariable ["inCapture",false,true];};
        if (player distance _area > 100) exitWith {_area setVariable ["inCapture",false,true];}; //how far they can go from the hideout while capturing
        if (_areaContested) exitWith {hint "Ganggebiet angefochten";}; //Future testing
        if (husky_istazed) exitWith {_area setVariable ["inCapture",false,true];}; //Tazed
        if (husky_isknocked) exitWith {_area setVariable ["inCapture",false,true];}; //Knocked
        if (husky_interrupted) exitWith {_area setVariable ["inCapture",false,true];}; //interupted
    };
          if (player distance _area > 100) exitWith {_area setVariable ["inCapture",false,true];}; //how far they can go from the hideout while capturing
};

//Kill the UI display and check for various states
5 cutText ["","PLAIN"];
        if (player distance _area > 100) exitWith {_area setVariable ["inCapture",false,true];}; //how far they can go from the hideout while capturing
if (!alive player || husky_istazed || husky_isknocked) exitWith {husky_action_inUse = false;_area setVariable ["inCapture",false,true];}; //knocked out or tazed revert state
if (player getVariable["restrained",false]) exitWith {husky_action_inUse = false;_area setVariable ["inCapture",false,true];}; //restrained revert state
if (husky_interrupted) exitWith {husky_interrupted = false; titleText[localize "STR_GNOTF_CaptureCancel","PLAIN"]; husky_action_inUse = false;_area setVariable ["inCapture",false,true];}; //interupted revert state
husky_action_inUse = false;
titleText[localize "STR_GNOTF_CapturedArea","PLAIN"];

//marker system
_gangNum = _area getVariable ["gangNum", ""];

_gName = group player getVariable "gang_name";
_pText = format["Neutralisiertes Ganggebiet"];

if (_gangNum == "Gang_Area_1") then {
    "gang_cap_1" setMarkerText _pText;
};

if (_gangNum == "Gang_Area_2") then {
    "gang_cap_2" setMarkerText _pText;
};

/*if (_gangNum == "Gang_Area_3") then {
    "gang_cap_3" setMarkerText _pText;
};
*/
_area setVariable ["inCapture",false,true];
_area setVariable ["gangOwner",group player,true];

};

/*
#############################################
#       End Of Police Capture System        #
#############################################
*/

/*
#########################################
#       The Rebel Capture System        #
#########################################
*/

_area = getpos player nearestObject "Flag_Red_F"; //finds the flag
_group = _area getVariable ["gangOwner",grpNull]; //gets the ownerr of the flag
_xname = ""; //setup for popo name
_nearUnits = _area nearEntities ["Man",500]; //searches area for players
if (isNil {group player getVariable "gang_name"}) exitWith { hint "Du musst in einer Gang sein um das Gebiet einzunehmen!"; }; //not in a gang
if (_group isEqualTo group player) exitWith { hint "Deine Gang hat bereits die Kontrolle über dieses Gebiet!"; }; //already own it

[[0,1],"STR_GNOTF_CaptureAreaAttempt",true,[name player,(group player) getVariable "gang_name"]] remoteExecCall ["husky_fnc_broadcast",RCLIENT]; //tells the server someone is trying to capture the outpost

if (!isNull _group) then {

_gangName = _group getVariable ["gang_name",""]; //gets the gang name

    //check if they want to capture someones elses area
    _action = [
        format[localize "STR_GNOTF_AlreadygangControlled",_gangName],
        localize "STR_Gang_captuerr",
        localize "STR_Global_Yes",
        localize "STR_Global_No"
    ] call BIS_fnc_guiMessage;

    _cpRate = 0.0045;
} else {
    _cpRate = 0.0075;
};

//check if area is contested
{

    //check for other members of same gang
    if ((isPlayer _x) && (_x != player) && (side _x == civilian) && (group _x == group player)) then {
        _areaContested = false;
    };

    //check for other Rebellen
    if ((isPlayer _x) && (_x != player) && (side _x == civilian) && (!(group _x == group player))) then {
        _areaContested = true;
    };

    //checks for cops
    if ((isPlayer _x) && (_x != player) && (side _x == west)) then {
        _areaContested = true;
        _xname = "Police Force";
    };

    //closes the capture
    if (_areaContested) exitWith {
        if (_xname isEqualTo "Police Force") then {
            hint "Die Polizei ist im anmarsch!\nSchalte sie aus um fortzufahren!";
        } else {
            hint "Rebellen sind im umfeld!\nSchalte sie aus um fortzufahren!";
        };
    };

} forEach _nearUnits;

//exit if contested
if (_areaContested) exitWith {};

//Setup our progress bar.
disableSerialization;
_title = localize "STR_GNOTF_CapturingArea";
5 cutRsc ["husky_progress","PLAIN"];
_ui = uiNamespace getVariable "husky_progress";
_progressBar = _ui displayCtrl 38201;
_titleText = _ui displayCtrl 38202;
_titleText ctrlSetText format["%2 (1%1)...","%",_title];
_progressBar progressSetPosition 0.01;
_cP = 0.01;

if (!(_areaContested)) then {
    for "_i" from 0 to 1 step 0 do {
        sleep  1; //rebel capture time * 100
        _cP = _cP + _cpRate;
        _progressBar progressSetPosition _cP;
        _titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title];

        //sets the area to incapture
        _area setVariable ["inCapture",true,true];

        //interuption checks
        if (_cP >= 1 || !alive player) exitWith {_area setVariable ["inCapture",false,true];};
        if (player distance _area > 100) exitWith {_area setVariable ["inCapture",false,true];}; //how far they can go from the hideout while capturing
        if (_areaContested) exitWith {hint "Ganggebiet angefochten";};
        if (husky_istazed) exitWith {_area setVariable ["inCapture",false,true];}; //Tazed
        if (husky_isknocked) exitWith {_area setVariable ["inCapture",false,true];}; //Knocked
        if (husky_interrupted) exitWith {_area setVariable ["inCapture",false,true];}; //interupted
    };
    if (player distance _area > 100) exitWith {_area setVariable ["inCapture",false,true];}; //how far they can go from the hideout while capturing
};

//Kill the UI display and check for various states
5 cutText ["","PLAIN"];
if (player distance _area > 100) exitWith {_area setVariable ["inCapture",false,true];}; //how far they can go from the hideout while capturing
if (!alive player || husky_istazed || husky_isknocked) exitWith {husky_action_inUse = false;_area setVariable ["inCapture",false,true];}; //knocked out or tazed revert state
if (player getVariable["restrained",false]) exitWith {husky_action_inUse = false;_area setVariable ["inCapture",false,true];}; //restrained revert state
if (husky_interrupted) exitWith {husky_interrupted = false; titleText[localize "STR_GNOTF_CaptureCancel","PLAIN"]; husky_action_inUse = false;_area setVariable ["inCapture",false,true];}; //interupted revert state
husky_action_inUse = false;

titleText[localize "STR_GNOTF_CapturedArea","PLAIN"];

//marker system
_gangNum = _area getVariable ["gangNum", ""];

_gName = group player getVariable "gang_name";
_Text = format["Ganggebiet eingenommen von %1",_gName];

if (_gangNum == "Gang_Area_1") then {
    "gang_cap_1" setMarkerText _text;
};

if (_gangNum == "Gang_Area_2") then {
    "gang_cap_2" setMarkerText _text;
};
/*
if (_gangNum == "Gang_Area_3") then {
    "gang_cap_3" setMarkerText _text;
};
*/
//Tell the world
[[0,1],"STR_GNOTF_CaptureAreaSuccess",true,[name player,(group player) getVariable "gang_name"]] remoteExecCall ["husky_fnc_broadcast",RCLIENT];

_area setVariable ["inCapture",false,true];
_area setVariable ["gangOwner",group player,true];

/*
#############################################
#       End Of The Rebel Capture System     #
#############################################
*/
