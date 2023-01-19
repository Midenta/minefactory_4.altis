#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
if (!husky_settings_tagson) exitWith {};
private ["_ui","_units"];
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


_units = nearestObjects[(visiblePosition player),["Man","Land_Pallet_MilBoxes_F","Land_Sink_F"],50];
_units = _units - [player];

//Vermummte nicht anzeigen
//_masks = husky_SETTINGS(getArray,"clothing_masks");

_found = grpNull;
_group = group player;
_tag = _group getVariable ["gang_tag",""];

private _index = -1;
{
    private "_text";
    _idc = _ui displayCtrl (iconID + _forEachIndex);
    if (!(lineIntersects [eyePos player, eyePos _x, player, _x]) && alive _x && {!isNil {_x getVariable "steam64id"}}) then {
        _pos = switch (typeOf _x) do {
            case "Land_Pallet_MilBoxes_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
            case "Land_Sink_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2]};
            default {[visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5]};
        };
        _sPos = worldToScreen _pos;
        _distance = _pos distance player;
        //if (!((headgear _x) in _masks || (goggles _x) in _masks || (uniform _x) in _masks)) then {
            if (count _sPos > 1 && {_distance < 10}) then {
                _text = switch (true) do {
                    case (side _x isEqualTo civilian): {
						if (!isNil {(group _x) getVariable "gang_name"} && !isNil {(group _x) getVariable "gang_tag"} ) then {
							format ["[%1] %2<br/><t size='0.8' color='#B6B6B6'>%3</t>",(group _x) getVariable ["gang_tag",""], _x getVariable ["steam64ID",getPlayerUID _x], (group _x) getVariable ["gang_name",""]];
						} else {
							if (alive _x) then {
								_x getVariable ["steam64ID",getPlayerUID _x];
							} else {
								if (!isPlayer _x) then {
									_x getVariable ["realname","ERROR"];
								};
							};
						};
					};
					
                    case (side _x isEqualTo west): {
						//if (FETCH_CONST(husky_coplevel) == 0) then {husky_paycheck = husky_paycheck + 0;};//Praktikant
						//if (FETCH_CONST(husky_coplevel) == 20) then {format ["[Polizei] %1", getPlayerUID _x];};//Admin
						//switch (call husky_coplevel) do{
							/*case 1: { format ["<t><img image='\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa' size='1.5'></img>[Polizei] %1</t>", getPlayerUID _x];};
                            case 2: { format ["<t><img image='\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa' size='1.5'></img>[Polizei] %1</t>", getPlayerUID _x]; };
                            case 3: { format ["<t><img image='\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa' size='1.5'></img>[Polizei] %1</t>", getPlayerUID _x]; };
                            case 4: { format ["<t><img image='\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa' size='1.5'></img>[Polizei] %1</t>", getPlayerUID _x]; };
                            case 5: { format ["<t><img image='\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa' size='1.5'></img>[Polizei] %1</t>", getPlayerUID _x]; };
                            case 6: { format ["<t><img image='\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa' size='1.5'></img>[Polizei] %1</t>", getPlayerUID _x]; };
                            case 7: { format ["<t><img image='\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa' size='1.5'></img>[Polizei] %1</t>", getPlayerUID _x]; };
                            case 8: { format ["<t><img image='\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa' size='1.5'></img>[Polizei] %1</t>", getPlayerUID _x]; };
                            case 9: { format ["<t><img image='\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa' size='1.5'></img>[Polizei] %1</t>", getPlayerUID _x]; };
                            case 10: { format ["<t><img image='\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa' size='1.5'></img>[Polizei] %1</t>", getPlayerUID _x]; };
                            case 11: { format ["<t><img image='\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa' size='1.5'></img>[Polizei] %1</t>", getPlayerUID _x]; };
                            case 12: { format ["<t><img image='\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa' size='1.5'></img>[Polizei] %1</t>", getPlayerUID _x]; };
                            case 13: { format ["<t><img image='\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa' size='1.5'></img>[Polizei] %1</t>", getPlayerUID _x]; };
                            case 14: { format ["<t><img image='\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa' size='1.5'></img>[Polizei] %1</t>", getPlayerUID _x]; };
                            case 15: { format ["<t><img image='\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa' size='1.5'></img>[Polizei] %1</t>", getPlayerUID _x]; };
                            case 16: { format ["<t><img image='\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa' size='1.5'></img>[Polizei] %1</t>", getPlayerUID _x]; };
                            case 17: { format ["<t><img image='\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa' size='1.5'></img>[Polizei] %1</t>", getPlayerUID _x]; };
                            case 18: { format ["<t><img image='\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa' size='1.5'></img>[Polizei] %1</t>", getPlayerUID _x]; };
                            case 19: { format ["<t><img image='\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa' size='1.5'></img>[Polizei] %1</t>", getPlayerUID _x]; };
                            case 20: { format ["<t><img image='\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa' size='1.5'></img>[Polizei] %1</t>", getPlayerUID _x]; };*/
							//format ["[Polizei] %1", getPlayerUID _x];
							format ["[Polizei] %1",getPlayerUID _x];
						//};
					};
					case (side _x isEqualTo independent): {
						//switch (call husky_mediclevel) do{
							//default { format ["<t><img image='a3\ui_f\data\map\MapControl\hospital_ca.paa' size='1.5'></img><color='FF0000'>[Feuerwehr] %1</t>", getPlayerUID _x]; };
							//default { format ["[Feuerwehr] %1", getPlayerUID _x]; };
							//format ["[Feuerwehr] %1", _x getVariable ["steam64ID",getPlayerUID _x]];
							format ["[Feuerwehr] %1",getPlayerUID _x];
						//};
					};
                };
				
				if(_x getVariable ["husky_entwicklerimdienst",true]) then {
					_text = format ["<img image='\a3\ui_f\data\gui\Cfg\UnitInsignia\curator_ca.paa' color='#5EFF33' /><t color='#5EFF33'> Entwickler</t><br/><t color='#FFFFFF'>%1</t>",(_x getVariable ["%1",getPlayerUID _x])];
				};
				
				
				if(_x getVariable ["husky_leitungimdienst",true]) then {
					_text = format ["<img image='\a3\ui_f\data\gui\Cfg\UnitInsignia\curator_ca.paa' color='#FF0000' /><t color='#FF0000'> Projektleiter im Dienst</t><br/><t color='#FFFFFF'>%1</t>",(_x getVariable ["%1",getPlayerUID _x])];
				};
				
				
				if(_x getVariable ["husky_adminimdienst",true]) then {
					_text = format ["<img image='\a3\ui_f\data\gui\Cfg\UnitInsignia\curator_ca.paa' color='#FF0000' /><t color='#FF0000'> Admin im Dienst</t><br/><t color='#FFFFFF'>%1</t>",(_x getVariable ["%1",getPlayerUID _x])];
				};
				
				
				if(_x getVariable ["husky_teamimdienst",true]) then {
					_text = format ["<img image='\a3\ui_f\data\gui\Cfg\UnitInsignia\curator_ca.paa' color='#FFFD00' /><t color='#FFFD00'> Supporter im Dienst</t><br/><t color='#FFFFFF'>%1</t>",(_x getVariable ["%1",getPlayerUID _x])];
				};
				
				if(isPlayer _x && (side _x) isEqualTo civilian) then {
                    private _newbieConfig = missionConfigFile >> "Config_Newbie";
                    if(getNumber(_newbieConfig >> "enable_nameTag") isEqualTo 1) then {
                        if(_x getVariable ["FLUG_newbie_isNewbie", true]) then {
                            _text = getText(_newbieConfig >> "nameTag") + _text;
                        };
                    };
                };

                _idc ctrlSetStructuredText parseText _text;
                _idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
                _idc ctrlSetScale scale;
                _idc ctrlSetFade 0;
                _idc ctrlCommit 0;
                _idc ctrlShow true;
            } else {
                _idc ctrlShow false;
            };
        /*} else {
            _idc ctrlShow false;*/
        //};
    } else {
        _idc ctrlShow false;
    };
    _index = _forEachIndex;
} forEach _units;
(_ui displayCtrl (iconID + _index + 1)) ctrlSetStructuredText parseText "";




//if (!husky_settings_tagson) exitWith {};
/*private ["_ui","_units","_masks"];
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

_units = nearestObjects[(visiblePosition player),["CAManBase","Land_Pallet_MilBoxes_F","Land_Sink_F"],50];
_units = _units - [player];

_masks = husky_SETTINGS(getArray,"clothing_masks");

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
        if (!((headgear _x) in _masks || (goggles _x) in _masks || (uniform _x) in _masks)) then {
            if (count _sPos > 1 && {_distance < 15}) then {
                _text = switch (true) do {
                    case (_x in (units group player) && playerSide isEqualTo civilian): {format ["<t color='#00FF00'>%1</t>",(_x getVariable ["realname",name _x])];};
                    case (side _x isEqualTo west && {!isNil {_x getVariable "rank"}}): {format ["<img image='%1' size='1'></img> %2",switch ((_x getVariable "rank")) do {
                        case 2: {"\a3\ui_f\data\gui\cfg\Ranks\corporal_gs.paa"};
                        case 3: {"\a3\ui_f\data\gui\cfg\Ranks\sergeant_gs.paa"};
                        case 4: {"\a3\ui_f\data\gui\cfg\Ranks\lieutenant_gs.paa"};
                        case 5: {"\a3\ui_f\data\gui\cfg\Ranks\captain_gs.paa"};
                        case 6: {"\a3\ui_f\data\gui\cfg\Ranks\major_gs.paa"};
                        case 7: {"\a3\ui_f\data\gui\cfg\Ranks\colonel_gs.paa"};
                        case 8: {"\a3\ui_f\data\gui\cfg\Ranks\general_gs.paa"};
                        default {"\a3\ui_f\data\gui\cfg\Ranks\private_gs.paa"};
                        },_x getVariable ["realname",name _x]]};
                    case (side _x isEqualTo independent): {format ["<t color='#FF0000'><img image='a3\ui_f\data\map\MapControl\hospital_ca.paa' size='1.5'></img></t> %1",_x getVariable ["realname",name _x]]};
                    default {
                        if (!isNil {(group _x) getVariable "gang_name"}) then {
                            format ["%1<br/><t size='0.8' color='#B6B6B6'>%2</t>",_x getVariable ["realname",name _x],(group _x) getVariable ["gang_name",""]];
                        } else {
                            if (alive _x) then {
                                _x getVariable ["realname",name _x];
                            } else {
                                if (!isPlayer _x) then {
                                    _x getVariable ["realname","ERROR"];
                                };
                            };
                        };
                    };
                };

                _idc ctrlSetStructuredText parseText _text;
                _idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
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
*/
