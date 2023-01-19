/*
    File: fn_craft_updateFilter.sqf
    Description: Crafting System
    Created by EdgeKiller
    Coder: EdgeKiller
    Source: https://altisdev.com/topic/860/syst%C3%A8me-de-craft-par-edgekiller
    ------------------------
    Overhauled by B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THE OVERHAULED LINES ARE THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
			 
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed || husky_action_inUse) exitWith {closeDialog 0;};
if ((getNumber(missionConfigFile >> "Cation_Crafting" >> "version")) > 4) then {
    if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {closeDialog 0;};
};
disableSerialization;
private["_list","_filter","_dialog","_inv","_mats","_filterBox","_item","_itemFilter","_category","_icon","_str"];
_dialog = findDisplay 666;
_inv = _dialog displayCtrl 669;
_mats = _dialog displayCtrl 672;
_filterBox = _dialog displayCtrl 673;
_itemFilter = lbData[673,(lbCurSel 673)];
lbClear _inv;
_struct = "";
_str = "";
_category = (getArray(missionConfigFile >> "Cation_Crafting" >> "category"));
_config = [];
{
    if (_itemFilter isEqualTo (_x select 0)) then {
        for "_i" from 2 to (count _x) do {
            _config pushBack (_x select _i);
        };
    };
} forEach _category;
{
    if ([(_x select 1)] call cat_crafting_fnc_levelCheck) then {
        if ((_x select 5) isEqualTo 1) then {
            if ((getNumber(missionConfigFile >> "Cation_Crafting" >> "version")) > 3) then {
                _str = getText(missionConfigFile >> "VirtualItems" >> (_x select 0) >> "displayName");
                _str = localize _str;
                _icon = getText(missionConfigFile >> "VirtualItems" >> (_x select 0) >> "icon");
            } else {
                _str = [([(_x select 0),0] call husky_fnc_varHandle)] call husky_fnc_varToStr;
                _icon = "";
            };
            _inv lbAdd format["%1",_str];
            _inv lbSetData[(lbSize _inv)-1,_x select 0];
            if (!(_icon isEqualTo "")) then {
                _inv lbSetPicture [(lbSize _inv)-1,_icon];
            };
        } else {
            _itemInfo = [_x select 0] call husky_fnc_fetchCfgDetails;
            if ((_x select 3) isEqualTo "") then {
                _inv lbAdd format["%1",_itemInfo select 1];
            } else {
                _inv lbAdd format["%1 - %2",_itemInfo select 1,_x select 3];
                _inv lbSetTooltip [lbSize(_inv)-1,format ["%1 - %3: %2",_itemInfo select 1,_x select 3,(getText(missionConfigFile >> "Cation_Crafting" >> "Color"))]];
            };            
            _inv lbSetData[(lbSize _inv)-1,_itemInfo select 0];
            _inv lbSetPicture[(lbSize _inv)-1,_itemInfo select 2];
        };
    };
} foreach (_config);
_inv lbSetCurSel 0;
_item = lbData[669,(lbCurSel 669)];
{
    if(_item isEqualTo (_x select 0)) then {
        _matsNeed = _x select 2;
        _invSize = count _matsNeed;
        for [{_i = 0},{_i < _invSize - 1},{_i = _i + 2}] do {
            _matsNum = _matsNeed select _i+1;   
            if ((getNumber(missionConfigFile >> "Cation_Crafting" >> "version")) > 3) then {
                _str = getText(missionConfigFile >> "VirtualItems" >> (_matsNeed select _i) >> "displayName");
                _icon = getText(missionConfigFile >> "VirtualItems" >> (_matsNeed select _i) >> "icon");
                _struct = _struct + format["%1x <img image='%3' size='1'></img> %2<br/>",_matsNum,(localize _str),_icon];
            } else {
                _str = [([(_matsNeed select _i),0] call husky_fnc_varHandle)] call husky_fnc_varToStr;
                _struct = _struct + format["%1x %2<br/>",_matsNum,_str];
            };                     
        };
    };
} foreach (_config);
_mats ctrlSetStructuredText parseText format["
<t size='0.8px'>
%1
</t>
",_struct];
