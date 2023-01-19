#include "..\..\script_macros.hpp"
/*
    File: fn_mine.sqf
    Author: Devilfloh
    Editor: Dardo

    Description:
    Same as fn_gather,but it allows use of probabilities for mining.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
    
    Notice:
    This is Old Stuff private ["_maxGather", "_resource", "_amount", "_requiredItem", "_mined"];
*/
if (husky_action_inUse) exitWith {};
if !(isNull objectParent player) exitWith {};
if (player getVariable "restrained") exitWith {};
_exit = false;
if (player getVariable "playerSurrender") exitWith {};
husky_action_inUse = true;
_zone = "";
private _requiredItem = "";

//private _haltbarkeit_spitzhacke = 21;
diag_log "Pickaxt 0";

_resourceCfg = missionConfigFile >> "CfgGather" >> "Minerals";
_percent = (floor random 100) + 1; //Make sure it's not 0
private "_maxGather";
private "_resource";
private "_amount";
private "_mined";
//private "_requiredItem";
for "_i" from 0 to count(_resourceCfg)-1 do {
    _curConfig = _resourceCfg select _i;
    _resources = getArray(_curConfig >> "mined");
    _maxGather = getNumber(_curConfig >> "amount");
    _zoneSize = getNumber(_curConfig >> "zoneSize");
    _resourceZones = getArray(_curConfig >> "zones");
    _requiredItem = getText(_curConfig >> "item");
	//_Soundeffect = getText(_curConfig >> "Sound");
    _mined = "";

    if (_resources isEqualTo []) exitWith {}; //Smart guy :O
    for "_i" from 0 to count (_resources) do {
        if (count _resources isEqualTo 1) exitWith {
            if (!((_resources select 0) isEqualType [])) then {
                _mined = _resources select 0;
            } else {
                _mined = (_resources select 0) select 0;
            };
        };
        _resource = (_resources select _i) select 0;
        _prob = (_resources select _i) select 1;
        _probdiff = (_resources select _i) select 2;
        if ((_percent >= _prob) && (_percent <= _probdiff)) exitWith {
            _mined = _resource;
        };
    };

    {
        if ((player distance(getMarkerPos _x)) < _zoneSize) exitWith { _zone = _x; };
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

if (_zone isEqualTo "") exitWith {
    husky_action_inUse = false;
};

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

if (_exit) exitWith {
    husky_action_inUse = false;
};

//SCHLEIFE
while {true} do {
	//ABFRAGE
	if (vehicle player != player) exitWith {};
	if (husky_interrupted) exitWith {husky_interrupted = false;};
/*
    diag_log "Pickaxt 1";
    if (_requiredItem isEqualTo "pickaxe") then {
        [player,"mining",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];
        diag_log "Pickaxt 2";
        _haltbarkeit_spitzhacke = _haltbarkeit_spitzhacke - 1;
        diag_log "Pickaxt 3";
        if (_haltbarkeit_spitzhacke <= 0) then {
            [false,"pickaxe",1] call husky_fnc_handleInv;
            diag_log "Pickaxt 5";
            _haltbarkeit_spitzhacke = 20;
            hint "Deine Spitzhacke ist aufgebraucht";
            diag_log "Pickaxt 6";
        };
    };
*/
	_amount = round(random(_maxGather)) + 1;

    if ((fed_bank getVariable ["Farmboost",false])) then {
        private _result = fed_bank getVariable "Farmboost_Number";
        _amounts = getNumber(missionConfigFile >> "Master_FarmBoost" >> _result >> "mine_Gather_speed");
        _amount = (_amount * _amounts);
    };

	_diff = [_mined, _amount, husky_carryWeight, husky_maxWeight] call husky_fnc_calWeightDiff;
	if (_diff isEqualTo 0) exitWith {
		//["Dein Inventar ist voll, du kannst nichts mehr abbauen/sammeln", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
		//hint localize "STR_NOTF_InvFull";
		hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Dein Inventar ist voll.</t>";
		husky_action_inUse = false;
	};

	//[player,_Soundeffect,35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];
	//[player,"mining",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];

	switch (_requiredItem) do {
		case "pickaxe": {[player,"mining",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];};
		case "net": {[player,"harvest",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];};
		case "Sichel": {[player,"harvest",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];};
		case "Sense": {[player,"harvest",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];};
		case "Reagenzglas": {[player,"harvest",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];};
		case "Schaufel": {[player,"mining",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];};
		case "axt": {[player,"mining",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];};
		case "Bohrgeraet": {[player,"mining",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];};
		default {[player,"mining",35,1] remoteExecCall ["husky_fnc_say3D",RCLIENT];};
	};

	for "_i" from 0 to 4 do {
		player playMoveNow "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
		waitUntil {
			animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
		};
		sleep 0.5;

		[] call husky_fnc_hudUpdate;
	};

	if (([true, _mined, _diff] call husky_fnc_handleInv)) then {
		_itemName = M_CONFIG(getText, "VirtualItems", _mined, "displayName");
		_itemIcon = M_CONFIG(getText, "VirtualItems", _mined, "icon");
		titleText[format [localize "STR_NOTF_Mine_Success", (localize _itemName), _diff], "PLAIN"];
	};

	sleep 2.5;
};
husky_action_inUse = false;
