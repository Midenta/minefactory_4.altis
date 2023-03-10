scriptName "fn_gang_desc";
/*
 *
 *	@File:		fn_gang_desc.sqf
 *	@Author: 	AllianceApps
 *	@Date:		11.05.2018
 *
 *	You are not allowed to use this script or remove the credits of the script without written permission of the author.
 *  You are not allowed to use this script without a valid license. License terms apply.
 *
 *  Du darfst dieses Script nicht nutzen oder diesen Copyright-Hinweis nicht entfernen, wenn du keine schriftliche Bestätigung des Autors hast.
 *  Du darfst dieses Script nicht ohne gültige Lizenz nutzen. Die Lizenzbestimmungen für Scripts sind zu beachten.
 *
 */
_type = param [0, -1, [0]];
if (_type isEqualTo -1) exitWith {};
_group = group player;
if (_type isEqualTo 0) exitWith {
    disableSerialization;
    if ([220060,"dialog_gang_desc"] call husky_fnc_gang_activedialog) exitWith {hint localize "STR_aapps_gang_dialog_inuse"};
    createDialog "husky_gang_description";
    _display = findDisplay 220060;
    _display displayAddEventHandler ["KeyDown", "
		if (((_this select 1) isEqualTo 28) && !(_this select 2)) then {
			hint localize 'STR_aapps_gang_rowbreaks';
		};
	"];
    _display displayAddEventHandler ["Unload","
        (group player) setVariable ['dialog_gang_desc','[]',true];
        closeDialog 0;
    "];
    _text = (_group getVariable ["gang_description",""]);
    _max = getNumber(missionConfigFile >> "gang_config" >> "upgrades" >> format["level%1",(group player) getVariable ["gang_level",1]] >> "description_length");
    ctrlSetText[220064,format["%1/%2",(count _text)-1,_max]];
    ctrlSetText [220063,_text];
    disableSerialization;
    _ctrl = (findDisplay 220060) displayCtrl 220062;
    while {!isNull (findDisplay 220060)} do {
        _text = ctrlText 220063;
        _amount = count _text;
        if (_amount > _max) then {
            _text = _text select [0,_max];
            ctrlSetText[220063,_text];
        };
        if (!(ctrlShown _ctrl)) then {
            ((findDisplay 220060) displayCtrl 220061) ctrlSetStructuredText parseText _text;
        };
        ctrlSetText[220064,format["%1/%2",_amount,_max]];
        sleep 0.1;
    };
};
if (_type isEqualTo 1) exitWith {
    _text = ctrlText 220063;
    _checktext = toArray _text;
    _amount1 = 0; // '
    _amount2 = 0; // "
    {
        if (_x isEqualTo 39) then {
            _amount1 = _amount1 + 1;
        } else {
            if (_x isEqualTo 34) then {
                _amount2 = _amount2 + 1;
            };
        };
    } forEach _checktext;
    //if (!((_amount1 % 2) isEqualTo 0)) exitWith {hint "You've got at least one missing quotation mark (')!"};
    //if (!((_amount2 % 2) isEqualTo 0)) exitWith {hint "You've got at least one missing quotation mark ("")!"};
    _group setVariable ["gang_description",_text,true];
    if (husky_HC_isActive) then {
        [4,_group] remoteExecCall ["hc_fnc_gang_update",HC_husky];
    } else {
        [4,_group] remoteExecCall ["TON_fnc_gang_update",2];
    };
    closeDialog 0;
    ((findDisplay 220050) displayCtrl 220050) ctrlSetStructuredText parseText _text;
    hint localize "STR_aapps_gang_change_saved";
};
