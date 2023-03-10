scriptName "fn_gang_buyrent";
/*
 *
 *	@File:		fn_gang_buyrent.sqf
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
if (_type isEqualTo -1) exitWIth {};
_name = ctrlText 220072;
if (_name isEqualTo "") exitWith {hint localize "STR_aapps_gang_noname"};
if ((count _name) < 4) exitWith {hint localize "STR_aapps_gang_name4chars"};
if (husky_gangname_check) exitWith {hint localize "STR_aapps_gang_wait"};
husky_gangname_check = true;
if (_type isEqualTo 0) then {
    if (husky_HC_isActive) then {
        [_name] remoteExecCall ["hc_fnc_gang_checkname",hc_husky];
    } else {
        [_name] remoteExecCall ["TON_fnc_gang_checkname",2];
    };
} else {
    _result = false;
    _price = 0;
    if (_type isEqualTo 1) then {
        _price = getNumber(missionConfigFile >> "gang_config" >> "temp_gang_price");
        _result = [format[localize "STR_aapps_gang_rent_question",[_price] call husky_fnc_numberText], "Gangsystem", true, true] call BIS_fnc_guiMessage;
    } else {
        _price = getNumber(missionConfigFile >> "gang_config" >> "perm_gang_price");
        _result = [format[localize "STR_aapps_gang_buy_question",[_price] call husky_fnc_numberText], "Gangsystem", true, true] call BIS_fnc_guiMessage;
    };
    if (!_result) exitWith {};
    if (_price > husky_atmbank) exitWith {hint localize "STR_NOTF_NotEnoughMoney"};
    husky_atmbank = husky_atmbank - _price;
    [1] call SOCK_fnc_updatePartial;
    if (husky_HC_isActive) then {
        [_type - 1,_name,player] remoteExec ["hc_fnc_gang_buy",hc_husky];
    } else {
        [_type - 1,_name,player] remoteExec ["TON_fnc_gang_buy",2];
    };
};
sleep 4;
husky_gangname_check = false;
