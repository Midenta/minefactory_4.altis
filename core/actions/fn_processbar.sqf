#include "..\..\script_macros.hpp"
/*
 File: fn_processbar.sqf
 Author: Deathman

 Description:
 Einfach Einfacher :D
*/
params [
 ["_type",0,[0]],
 ["_time",0.25,[0.25]],
 ["_text","Nothing",[""]],
 ["_vendorki",objNull,[objNull]],
 ["_picture","\a3\Data_f\Flags\flag_Altis_co.paa",[""]],
 ["_price",0,[0]]
];
//diag_log _vendorki;
private "_cP";
private "_pgText";
disableSerialization;
"progressBar" cutRsc ["husky_progress","PLAIN"];
_ui = uiNamespace getVariable "husky_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_progress ctrlSetTextColor [0.812,0.106,0.106,1];
_pgText ctrlSetStructuredText parseText format ["%2 (1%1)...","%",_text];
switch (_type) do {
    case 0: {_pgText ctrlSetStructuredText parseText format ["<t size='0.9' font='PuristaSemibold'>%2 (%1%2)...</t>","%",_text];};
    case 1: {_pgText ctrlSetStructuredText parseText format ["<img size='0.9' image='%3'></img><t size='0.9' font='PuristaSemibold'> %2 (%1%2)...</t>","%",_text,_picture];};
};
_progress progressSetPosition 0.01;
_cP = 0.01;
for "_i" from 0 to 1 step 0 do {
    uiSleep _time;
    _cP = _cP + 0.01;
    _progress progressSetPosition _cP;
    switch ((round(_cP * 100))) do {
    	case 20: {
    		_progress ctrlSetTextColor [0.812,0.188,0.106,1];
    	};
    	case 40: {
    		_progress ctrlSetTextColor [0.812,0.247,0.106,1];
    	};
    	case 60: {
    		_progress ctrlSetTextColor [0.812,0.329,0.106,1];
    	};
    	case 80: {
    		_progress ctrlSetTextColor [0.812,0.518,0.106,1];
    	};
    	case 100: {
    		_progress ctrlSetTextColor [0.529,0.812,0.106,1];
    	};
    };
    switch (_type) do {
        case 0: {_pgText ctrlSetStructuredText parseText format ["<t size='0.9' font='PuristaSemibold'>%3 (%1%2)...</t>",round(_cP * 100),"%",_text];};
        case 1: {_pgText ctrlSetStructuredText parseText format ["<img size='0.9' image='%4'></img><t size='0.9' font='PuristaSemibold'> %3 (%1%2)...</t>",round(_cP * 100),"%",_text,_picture];};
    };
    if (_cP >= 0.9999) exitWith {};
    if (!alive player) exitWith {};
    if !(isNull objectParent player) exitWith {};
    if !(isNull _vendorki) then {
    if (player distance _vendorki > 10) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du musst innerhalb von 10m bleiben, um verarbeiten zu können.</t>"; "progressBar" cutText ["","PLAIN"]; husky_is_processing = false; husky_action_inUse = false;};
    };
    if!(_price isEqualTo 0) then {
        if (c126 < _price) exitWith {hint format [localize "STR_Process_License",[_price] call husky_fnc_numberText]; "progressBar" cutText ["","PLAIN"]; husky_is_processing = false; husky_action_inUse = false;};
    };
};
"progressBar" cutFadeOut 1;
uisleep 0.5;
"progressBar" cutText ["","PLAIN"];
