#include "..\..\script_macros.hpp"
/*
    File: fn_gather.sqf
    Author: Devilfloh

    Description:
    Main functionality for gathering.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

	Notice: 
	This is Old private ["_maxGather","_resource","_amount","_requiredItem"];
*/
if (husky_action_inUse) exitWith {};
if !(isNull objectParent player) exitWith {};
if (player getVariable "restrained") exitWith {/*hint localize "STR_NOTF_isrestrained";*/};
if (player getVariable "playerSurrender") exitWith {/*hint localize "STR_NOTF_surrender";*/};

husky_action_inUse = true;
_zone = "";
private _requiredItem = "";
_exit = false;

_resourceCfg = missionConfigFile >> "CfgGather" >> "Resources";
private "_maxGather";
private "_resource";
private "_amount";
for "_i" from 0 to count(_resourceCfg)-1 do {

    _curConfig = _resourceCfg select _i;
    _resource = configName _curConfig;
    _maxGather = getNumber(_curConfig >> "amount");
    _zoneSize = getNumber(_curConfig >> "zoneSize");
    _resourceZones = getArray(_curConfig >> "zones");
    _requiredItem = getText(_curConfig >> "item");
	//_Soundeffect = getText(_curConfig >> "Sound");
    {
        if ((player distance (getMarkerPos _x)) < _zoneSize) exitWith {_zone = _x;};
		/*if(_resourceZones in ["uraniniterz"])then{ 
			_marker = getMarkerPos _x;
			_xpos = _marker select 0;
			_ypos = _marker select 1;
			//5 ist hier die Höhe.
			_x setMarkerPos [_xpos,_ypos,7];
		};*/
    } forEach _resourceZones;

    if (_zone != "") exitWith {};
};

if (_zone isEqualTo "") exitWith {husky_action_inUse = false;};

if (_requiredItem != "") then {
    _valItem = missionNamespace getVariable "husky_inv_" + _requiredItem;

    if (_valItem < 1) exitWith {
        switch (_requiredItem) do {
			case "pickaxe": {
                titleText[(localize "STR_NOTF_Pickaxe"), "PLAIN"];
            };
			case "net": {
                titleText[(localize "STR_NOTF_net"), "PLAIN"];
            };
			case "Sichel": {
                titleText[(localize "STR_NOTF_Sichel"), "PLAIN"];
            };
			case "Sense": {
                titleText[(localize "STR_NOTF_Sense"), "PLAIN"];
            };
			case "Reagenzglas": {
                titleText[(localize "STR_NOTF_Reagenzglas"), "PLAIN"];
            };
			case "Schaufel": {
                titleText[(localize "STR_NOTF_Schaufel"), "PLAIN"];
            };
			case "axt": {
                titleText[(localize "STR_NOTF_axt"), "PLAIN"];
            };
			case "Bohrgeraet": {
                titleText[(localize "STR_NOTF_Bohrgeraet"), "PLAIN"];
            };
			case "Machete": {
                titleText[(localize "STR_NOTF_Machete"), "PLAIN"];
            };
        };
        husky_action_inUse = false;
        _exit = true;
    };
};

if (_exit) exitWith {husky_action_inUse = false;};
private "_amount";
while{true} do {
	if (vehicle player != player) exitWith {};
	if (husky_interrupted) exitWith {husky_interrupted = false;};
	
	_amount = round(random(_maxGather)) + 1;
	
    if ((fed_bank getVariable ["Farmboost",false])) then {
        private _result = fed_bank getVariable "Farmboost_Number";
        _amounts = getNumber(missionConfigFile >> "Master_FarmBoost" >> _result >> "mine_Gather_speed");
        _amount = (_amount * _amounts);
    };

	_diff = [_resource,_amount,husky_carryWeight,husky_maxWeight] call husky_fnc_calWeightDiff;
	if (_diff isEqualTo 0) exitWith {
		//["Dein Inventar ist voll, du kannst nichts mehr abbauen/sammeln", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
		//hint localize "STR_NOTF_InvFull";
		hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Dein Inventar ist voll.</t>";
		husky_action_inUse = false;
	};

	//player say3D "harvest";
	//[player,"harvest",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];

	switch (_requiredItem) do {
		case "pickaxe": {[player,"mining",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];};
		case "net": {[player,"harvest",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];};
		case "Sichel": {[player,"harvest",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];};
		case "Sense": {[player,"harvest",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];};
		case "Reagenzglas": {[player,"harvest",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];};
		case "Schaufel": {[player,"mining",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];};
		case "axt": {[player,"mining",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];};
		case "Bohrgeraet": {[player,"mining",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];};
		default {[player,"harvest",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];};
	};

	for "_i" from 0 to 4 do {
		player playMoveNow "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
		waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
		sleep 0.5;

		[] call husky_fnc_hudUpdate;
	};

	if ([true,_resource,_diff] call husky_fnc_handleInv) then {
		_itemName = M_CONFIG(getText,"VirtualItems",_resource,"displayName");
		
		_itemIcon = M_CONFIG(getText, "VirtualItems", _resource, "icon");
		//_picturetext ctrlSetStructuredText parseText format ["<img size='5.0' valign='bottom' align='center' image='%1'/>",_itemIcon];
		
		titleText[format [localize "STR_NOTF_Gather_Success",(localize _itemName),_diff],"PLAIN"];
		//hint parseText format ["<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast %2 %1 %3 gesammelt.</t>",(localize _itemName),_diff,_itemIcon];
	};

	sleep 1;
};
husky_action_inUse = false;
