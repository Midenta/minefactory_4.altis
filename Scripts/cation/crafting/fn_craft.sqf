/*
    File: fn_craft.sqf
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
private["_cs","_dialog","_inv","_itemInfo","_filter","_filters","_spawn","_craftingStation"]; //Declare all private variables
if (!dialog) then { //Verify if the window is open
    createDialog "husky_craft";
};
_craftingStation = param [0,"",[""]];
if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed || husky_action_inUse) exitWith {closeDialog 0;}; //If null / dead exit menu
if ((getNumber(missionConfigFile >> "Cation_Crafting" >> "version")) > 4) then {
    if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {closeDialog 0;};
};
disableSerialization; //Disable Serialization
if (husky_is_processing) exitWith {
    closeDialog 2001;
    closeDialog 0;
};
_category = (getArray(missionConfigFile >> "Cation_Crafting" >> "category"));
_craftingStations = (getArray(missionConfigFile >> "Cation_Crafting" >> "craftingStations"));
_cs = [];
_spawn = "";
//_spawn =  [3781.13,12378.3,1.5];
{
    if ((_x select 0) isEqualTo _craftingStation) then {
        _cs = (_x select 2);
        _spawn = (_x select 1);
    };
} forEach _craftingStations;
if (_cs isEqualTo []) exitWith {closeDialog 0;};
_filters = [];
{
    if ((_x select 0) in _cs) then {
        _filters pushBack [(_x select 0),(_x select 1)];
    };
} forEach _category;
_dialog = findDisplay 666; //find the craft dialog/window
_dialog setVariable ["spawn",_spawn];
_inv = _dialog displayCtrl 669; //find the listbox of items can be created
_filter = _dialog displayCtrl 673; //find the filter
lbClear _inv; //clear the listbox
lbClear _filter; //clear the filter
{
    _filter lbAdd (_x select 1);
    _filter lbSetData[(lbSize _filter)-1,(_x select 0)];
} forEach _filters;
_filter lbSetCurSel 0;

(_dialog displayCtrl 667) ctrlSetText format[(getText(missionConfigFile >> "Cation_Crafting" >> "Craftingmenu"))];
(_dialog displayCtrl 668) ctrlSetText format[(getText(missionConfigFile >> "Cation_Crafting" >> "CraftStats"))];
(_dialog displayCtrl 670) ctrlSetText format[(getText(missionConfigFile >> "Cation_Crafting" >> "CraftMaterials"))];
(_dialog displayCtrl 674) ctrlSetText format[(getText(missionConfigFile >> "Cation_Crafting" >> "CraftButton"))];
(_dialog displayCtrl 675) ctrlSetText format[(getText(missionConfigFile >> "Cation_Crafting" >> "Close"))];
