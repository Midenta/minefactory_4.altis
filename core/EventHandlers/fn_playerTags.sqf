#include "..\..\script_macros.hpp"
/*
    File: fn_playerTags.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Adds the tags above other players heads when close and have visible range.
*/
if (!husky_settings_tagson) exitWith {};
private ["_ui","_units","_masks"];
#define iconID 78000
#define scale 0.8

if (visibleMap || {!alive player} || {dialog}) exitWith {
    500 cutText["","PLAIN"];
};

_ui = uiNamespace getVariable ["husky_HUD_nameTags",displayNull];
if (isNull _ui) then {
    500 cutRsc["husky_HUD_nameTags","PLAIN"];
    _ui = uiNamespace getVariable ["husky_HUD_nameTags",displayNull];
};

_units = nearestObjects[(visiblePosition player),["CAManBase"],25];
_knownplayer = [];
_units = _units - [player];

_masks = husky_SETTINGS(getArray,"clothing_masks");

{ if(!((_x getVariable ["realname",name _x]) in _knownplayer) && ((_x getVariable ["realname",name _x]) in husky_Bekannte || (side _x isEqualTo independent))) then {_knownplayer pushBack (_x getVariable ["realname",name _x]);}; } forEach _units;
{ if(playerSide isEqualTo west && !((_x getVariable ["realname",name _x]) in husky_Bekannte) && side _x isEqualTo west) then {_knownplayer pushBack (getPlayerUID _x);}; } forEach _units;
{ if(playerSide isEqualTo civilian && !isNil {(group player) getVariable "gang_name"} && !(_x in husky_Bekannte) && _x in (units(group player))) then {_knownplayer pushBack (_x getVariable ["realname",name _x]);}; } forEach _units;
{ if(playerside isEqualTo independent && !((_x getVariable ["realname",name _x]) in husky_Bekannte) && side _x isEqualTo independent) then {_knownplayer pushBack (_x getVariable ["realname",name _x]);}; } foreach _units;
///Rein alles Realname
private _index = -1;
{
    private "_text";
    _idc = _ui displayCtrl (iconID + _forEachIndex);
    if (!(lineIntersects [eyePos player, eyePos _x, player, _x]) && alive _x && {!isNil {_x getVariable "realname"}}) then {
        _pos = switch (typeOf _x) do {
            case "Land_Pallet_MilBoxes_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
            case "Land_Sink_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2]};
            default {[visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5]};
        };
        _sPos = worldToScreen _pos;
        _distance = _pos distance player;
        if (!((headgear _x) in _masks || (goggles _x) in _masks || (uniform _x) in _masks) || (husky_admin_visibility)) then {
            if (count _sPos > 1 && {_distance < 15}) then {
                _text = switch (true) do {
                    case (_x in (units group player) && playerSide isEqualTo civilian): {
						format ["<t color='#00FF00'>%1</t>",(_x getVariable ["realname",name _x])];
					};
                    case (side _x isEqualTo west && {!isNil {_x getVariable "rank"}}): {
                        //format ["<img image='icons\polizei.paa' size='0.9'></img><t font='PuristaBold' size='0.9' color='#0979e9'>Polizei</t><img image='icons\polizei.paa' size='0.9'></img><t font='PuristaBold' size='0.9'>%2</t>",_x getVariable ["realname",name _x]];
                        format ["<img image='icons\polizei.paa' size='0.9'></img><t font='PuristaBold' size='0.9' color='#0979e9'>Polizei</t><img image='icons\polizei.paa' size='0.9'></img><br/>%1",
                        switch ((_x getVariable "rank")) do {
                        case 1: {"<t font='PuristaBold' size='0.9' color='#0979e9'>Praktikant</t>"};
                        case 2: {"<t font='PuristaBold' size='0.9' color='#0979e9'>Polizeimeisteranwärter</t>"};
                        case 3: {"<t font='PuristaBold' size='0.9' color='#0979e9'>Polizeimeister</t>"};
                        case 4: {"<t font='PuristaBold' size='0.9' color='#0979e9'>Polizeiobermeister</t>"};
                        case 5: {"<t font='PuristaBold' size='0.9' color='#0979e9'>Polizeihauptmeister</t>"};
                        case 6: {"<t font='PuristaBold' size='0.9' color='#0979e9'>Polizeihauptmeister mZ</t>"};
                        case 7: {"<t font='PuristaBold' size='0.9' color='#0979e9'>Polizeikommissarsanwärter</t>"};
                        case 8: {"<t font='PuristaBold' size='0.9' color='#0979e9'>Polizeikommissar</t>"};
                        case 9: {"<t font='PuristaBold' size='0.9' color='#0979e9'>Polizeioberkommissar</t>"};
                        case 10: {"<t font='PuristaBold' size='0.9' color='#0979e9'>Polizeihauptkommissar</t>"};
                        case 11: {"<t font='PuristaBold' size='0.9' color='#0979e9'>Polizeihauptkommissar-A12</t>"};
                        case 12: {"<t font='PuristaBold' size='0.9' color='#0979e9'>Erster Polizeihauptkommissar</t>"};
                        case 13: {"<t font='PuristaBold' size='0.9' color='#0979e9'>Polizeiratsanwärter</t>"};
                        case 14: {"<t font='PuristaBold' size='0.9' color='#0979e9'>Polizeirat</t>"};
                        case 15: {"<t font='PuristaBold' size='0.9' color='#0979e9'>Polizeioberrat</t>"};
                        case 16: {"<t font='PuristaBold' size='0.9' color='#0979e9'>Polizeidirektor</t>"};
                        case 17: {"<t font='PuristaBold' size='0.9' color='#0979e9'>Leitender Polizeidirektor</t>"};
                        case 18: {"<t font='PuristaBold' size='0.9' color='#0979e9'>Stv. Polizeipräsident</t>"};
                        case 19: {"<t font='PuristaBold' size='0.9' color='#0979e9'>Polizeipräsident</t>"};
                        case 20: {"<t font='PuristaBold' size='0.9' color='#0979e9'>Polizeihauptkommissar-A12</t>"};
                        default {"<t font='PuristaBold' size='0.9' color='#0979e9'>Polizei ein Rang</t>"};
                        }];
                    };
                    case (side _x isEqualTo independent && {!isNil {_x getVariable "rankmed"}}): {
                        //format ["<img image='icons\medic.paa' size='0.9'></img><t font='PuristaBold' size='0.9' color='#e90909'>ARK</t><img image='icons\medic.paa' size='0.9'></img><t font='PuristaBold' size='0.9'>%2</t>",_x getVariable ["realname",name _x]];
                        format ["<img image='icons\medic.paa' size='0.9'></img><t font='PuristaBold' size='0.9' color='#e90909'>Feuerwehr</t><img image='icons\medic.paa' size='0.9'></img><br/>%1",
                        switch ((_x getVariable "rankmed")) do {
                        case 1: {"<t font='PuristaBold' size='0.9' color='#e90909'>Praktikant</t>"};
                        case 2: {"<t font='PuristaBold' size='0.9' color='#e90909'>Feuerwehr-Anwärter</t>"};
                        case 3: {"<t font='PuristaBold' size='0.9' color='#e90909'>Feuerwehrmann</t>"};
                        case 4: {"<t font='PuristaBold' size='0.9' color='#e90909'>Oberfeuerwehrmann</t>"};
                        case 5: {"<t font='PuristaBold' size='0.9' color='#e90909'>Hauptfeuerwehrmann</t>"};
                        case 6: {"<t font='PuristaBold' size='0.9' color='#e90909'>Löschmeister</t>"};
                        case 7: {"<t font='PuristaBold' size='0.9' color='#e90909'>Oberlöschmeister</t>"};
                        case 8: {"<t font='PuristaBold' size='0.9' color='#e90909'>Brandmeister</t>"};
                        case 9: {"<t font='PuristaBold' size='0.9' color='#e90909'>Oberbrandmeister</t>"};
                        case 10: {"<t font='PuristaBold' size='0.9' color='#e90909'>Hauptbrandmeister</t>"};
                        case 11: {"<t font='PuristaBold' size='0.9' color='#e90909'>Oberfeuerwehrmann</t>"};
                        default {"<t font='PuristaBold' size='0.9' color='#e90909'>Feuerwehr ein Rang</t>"};
                        }];
                    };
                    default {
                        if (!isNil {(group _x) getVariable "gang_name"}) then {
                            format["<img image='icons\burger.paa' size='0.9'></img><t font='PuristaBold' size='0.9' color='#c424ae'>Bürger</t><img image='icons\burger.paa' size='0.9'></img><br/><t size='0.8' color='#B6B6B6'>%1</t>",(group _x) getVariable ["gang_name",""]];
                        } else {
                            if (alive _x) then {
									private _doif = _x getVariable ["FLUG_newbie_isNewbie", true];
								if(_doif) then {
									format["<img image='icons\neuling.paa' size='0.9'></img><t font='PuristaBold' size='0.9' color='#f59100'>Neuling</t><img image='icons\neuling.paa' size='0.9'></img>"];
								} else {
									format["<img image='icons\burger.paa' size='0.9'></img><t font='PuristaBold' size='0.9' color='#c424ae'>Bürger</t><img image='icons\burger.paa' size='0.9'></img>"];
								};
                            } else {
                                if (!isPlayer _x) then {
                                    _x getVariable ["realname","ERROR"];
                                };
                            };
                        };
                    };
                };
				if((_x getVariable ["realname",name _x]) in _knownplayer) then {_text = format ["%1<br/><t font='PuristaBold' size='0.9'>%2</t>",_text,_x getVariable ["realname",name _x]];};
				_idc ctrlSetStructuredText parseText format ["<t valign='top' align='center'>%1</t>",_text];
				_idc ctrlSetPosition [(_sPos select 0) - 1.1, (_sPos select 1) - 0.08, 2.75, 1.45];
                _idc ctrlSetScale scale;
                _idc ctrlSetFade 0;
                _idc ctrlCommit 0;
                _idc ctrlShow true;
            } else {
                _idc ctrlShow false;
            };
        } else {
            _idc ctrlShow false;
        };
    } else {
        _idc ctrlShow false;
    };
    _index = _forEachIndex;
} forEach _units;
(_ui displayCtrl (iconID + _index + 1)) ctrlSetStructuredText parseText "";
