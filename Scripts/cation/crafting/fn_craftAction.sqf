#include "..\..\..\script_macros.hpp"
/*
    File: fn_craftAction.sqf
    Author: EdgeKiller
    Description:
    Master handling for crafting an item.
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
private["_vItem","_duration","_tN","_f","_textureName","_flag","_colorIndex","_c","_vehicle","_spawnPoint","_exit","_pos","_dialog","_item","_itemInfo","_oldItem","_newItem","_upp","_itemName","_ui","_progress","_pgText","_cP","_allMaterial","_matsNeed","_invSize","_handledItem","_itemFilter","_backpackOldItems","_weight","_weightUsedItems","_category"];
if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed || husky_action_inUse) exitWith {}; //If null / dead exit menu
if ((getNumber(missionConfigFile >> "Cation_Crafting" >> "version")) > 4) then {
    if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {};
};
disableSerialization;
_dialog = findDisplay 666;
_spawnPoint = _dialog getVariable ["spawn",""];
//_spawnPoint =  [3781.13,12378.3,1.5];
if ((lbCurSel 669) == -1) exitWith {hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "SelectItemFirst"))];};
_item = lbData[669,(lbCurSel 669)];
_allMaterial = true;
_itemFilter = lbData[673,(lbCurSel 673)];
_matsNeed = 0;
_pos = getPos player;
_exit = false;
_vItem = -1;
_duration = (getNumber(missionConfigFile >> "Cation_Crafting" >> "duration"));
if (_duration <= 0 || _duration > 10) then {
    _duration = 0.3;
};
if (player distance _pos > 10) exitWith {};
_category = (getArray(missionConfigFile >> "Cation_Crafting" >> "category"));
_config = [];
{
    if (_itemFilter isEqualTo (_x select 0)) then {
        for "_i" from 2 to (count _x) do {
            _config pushBack (_x select _i);
        };
    };
} forEach _category;

husky_action_inUse = true;//Lock out other actions during processing.

{
    if (_item == _x select 0)then {
        _matsNeed = _x select 2;
        _tN = _x select 3;
        _f = _x select 4;
        _invSize = count _matsNeed;
        for [{_i=0},{_i<_invSize-1},{_i=_i+2}] do {
            _matsNum = _matsNeed select _i+1;
            if ((missionNamespace getVariable [format["husky_inv_%1",(getText(missionConfigFile >> "VirtualItems" >> (_matsNeed select _i) >> "variable"))],0]) < _matsNum) then {_allMaterial = false;};
        };
        _vItem = _x select 5;
    };
} foreach (_config);
_newItem = _item;
if (!_allMaterial) exitWith {hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoMaterial"))]; husky_action_inUse = false;};
//Some checks
if ((count _matsNeed) == 0) exitWith {husky_action_inUse = false;};
switch (_itemFilter) do {
    case "backpack": {
        if (!(player canAdd _newItem)) then {
            if (!(backpack player isEqualTo "")) exitWith {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NotificationBackpack"))];
                _exit = true;
            };
        };
    };
    case "vest": {
        if (!(player canAdd _newItem)) then {
            if (!(vest player isEqualTo "")) exitWith {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NotificationVest"))];
                _exit = true;
            };
        };
    };
    case "uniform": {
        if (!(player canAdd _newItem)) then {
            if (!(uniform player isEqualTo "")) exitWith {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NotificationUnifrom"))];
                _exit = true;
            };
        };
    };
	case "headgear": {
        if (!(player canAdd _newItem)) then {
            if (!(Headgear player isEqualTo "")) exitWith {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Notificationheadgear"))];
                _exit = true;
            };
        };
    };
	case "glasses": {
        if (!(player canAdd _newItem)) then {
            if (!(Goggles player isEqualTo "")) exitWith {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Notificationglasses"))];
                _exit = true;
            };
        };
    };
    case "weapon": {
        switch (getNumber(configFile >> "CfgWeapons" >> _newItem >> "type")) do {
            case 1: {
                if (!(primaryWeapon player isEqualTo "")) then {
                    if (!(player canAdd _newItem)) then {
                        _exit = true;
                        hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                    };
                };
            };
            case 2: {
                if (!(handGunWeapon player isEqualTo "")) then {
                    if (!(player canAdd _newItem)) then {
                        _exit = true;
                        hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                    };
                };
            };
            case 4: {
                if (!(secondaryWeapon player isEqualTo "")) then {
                    if (!(player canAdd _newItem)) then {
                        _exit = true;
                        hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                    };
                };
            };
        };
    };
	
	case "mags": {
       if (!(player canAdd _newItem)) exitWith {
            hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
            _exit = true;
        };
	};
	
	case "items": {
       if (!(player canAdd _newItem)) exitWith {
            hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
            _exit = true;
        };
	};

    case "landvehicle": {
        if (_spawnPoint isEqualTo "") then {
            hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoSpawnpoint"))];
            _exit = true;
        } else {
            if (!((nearestObjects[(getMarkerPos _spawnPoint),["Car","Tank","Ship","Air","ThingX"],5]) isEqualTo [])) exitWith {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Veh_Block"))];
                _exit = true;
            };
        };
    };
    case "watervehicle": {
        if (_spawnPoint isEqualTo "") then {
            hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoSpawnpoint"))];
            _exit = true;
        } else {
            if (!((nearestObjects[(getMarkerPos _spawnPoint),["Car","Tank","Ship","Air","ThingX"],5]) isEqualTo [])) exitWith {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Veh_Block"))];
                _exit = true;
            };
        };
    };
    case "airvehicle": {
        if (_spawnPoint isEqualTo "") then {
            hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoSpawnpoint"))];
            _exit = true;
        } else {
            if (!((nearestObjects[(getMarkerPos _spawnPoint),["Car","Tank","Ship","Air","ThingX"],5]) isEqualTo [])) exitWith {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Veh_Block"))];
                _exit = true;
            };
        };
    };
    default {
        if (_vItem isEqualTo 1) then {
            _weight = [_item] call husky_fnc_itemWeight;
            _weightUsedItems = 0;
            for [{_i=0},{_i<(count _matsNeed)-1},{_i=_i+2}] do {
                _matsNum = _matsNeed select _i+1;
                _weightUsedItems = _weightUsedItems + (([(_matsNeed select _i)] call husky_fnc_itemWeight) * _matsNum);
            };
            if ((husky_carryWeight - _weightUsedItems + _weight) > husky_maxWeight) exitWith {
                hint localize "STR_NOTF_NoRoom";
                _exit = true;
            };
        } else {
            if (!(player canAdd _newItem)) exitWith {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                _exit = true;
            };
        };
    };
};
if (_exit) exitWith {
    husky_action_inUse = false;
};
_oldItem = _matsNeed;

if (_vItem isEqualTo 1) then {
    _itemName = localize getText(missionConfigFile >> "VirtualItems" >> _newItem >> "displayName");

} else {
	_itemInfo = [_newItem] call husky_fnc_fetchCfgDetails;
	_itemName = _itemInfo select 1;
};

husky_is_processing = true;
if (_tN isEqualTo "") then {
    _upp = format["%1 %2",(getText(missionConfigFile >> "Cation_Crafting" >> "Craft")),_itemName];
} else {
    _upp = format["%1 %2 - %3",(getText(missionConfigFile >> "Cation_Crafting" >> "Craft")),_itemName,_tN];
};
closeDialog 0;
//Setup our progress bar.
disableSerialization;
"progressBar" cutRsc ["husky_progress","PLAIN"];
_ui = uiNameSpace getVariable "husky_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;
_removeItemSuccess = true;
_invSize = count _oldItem;
for [{_i=0},{_i<_invSize-1},{_i=_i+2}] do {
    _handledItem = (_oldItem select _i);
    if (!([false,_handledItem,_oldItem select _i+1] call husky_fnc_handleInv)) exitWith {_removeItemSuccess = false;};
};
if (!_removeItemSuccess) exitWith {"progressBar" cutText ["","PLAIN"]; player playActionNow "stop"; husky_is_processing = false; husky_action_inUse = false;};

for "_i" from 0 to 1 step 0 do {
	if (animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
        [player,"AinvPknlMstpSnonWnonDnon_medic_1",true] remoteExecCall ["husky_fnc_animSync",RCLIENT];
        player switchMove "AinvPknlMstpSnonWnonDnon_medic_1";
        player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
    };
    sleep _duration;
    _cP = _cP + 0.01;
    _progress progressSetPosition _cP;
    _pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
    if(_cP >= 1) exitWith {};
    if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed) exitWith {}; //If null / dead exit menu
    if ((getNumber(missionConfigFile >> "Cation_Crafting" >> "version")) > 4) then {
        if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {};
    };
    if (player distance _pos > 3) exitWith {};
};
if (player distance _pos > 3) exitWith {
    hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Process_Stay"))]; "progressBar" cutText ["","PLAIN"]; player playActionNow "stop"; husky_is_processing = false; husky_action_inUse = false;
    for [{_i=0},{_i<_invSize-1},{_i=_i+2}] do {
        _handledItem = (_oldItem select _i);
        [true,_handledItem,_oldItem select _i+1] call husky_fnc_handleInv;
    };
    husky_is_processing = false;
    husky_action_inUse = false;
};
if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed) exitWith {
    for [{_i=0},{_i<_invSize-1},{_i=_i+2}] do {
        _handledItem = (_oldItem select _i);
        [true,_handledItem,_oldItem select _i+1] call husky_fnc_handleInv;
    };
    husky_is_processing = false;
    husky_action_inUse = false;
}; //If null / dead exit menu
if ((getNumber(missionConfigFile >> "Cation_Crafting" >> "version")) > 4) then {
    if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {
        for [{_i=0},{_i<_invSize-1},{_i=_i+2}] do {
            _handledItem = (_oldItem select _i);
            [true,_handledItem,_oldItem select _i+1] call husky_fnc_handleInv;
        };
        husky_is_processing = false;
        husky_action_inUse = false;
    };
};
_exit = false;
switch (_itemFilter) do {
    case "backpack": {
        if (player canAdd _newItem) then {
            player addItem _newItem;
			[getPlayerUID player, "Crafting rucksack", format ["%1 - %2 hat ein %3 hergestellt.",profileName,(getPlayerUID player),_newItem]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
        } else {
            if (backpack player isEqualTo "") then {
                player addBackpack _newItem;
				[getPlayerUID player, "Crafting rucksack 1", format ["%1 - %2 hat ein %3 hergestellt.",profileName,(getPlayerUID player),_newItem]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
            } else {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NotificationBackpack"))];
                _exit = true;
            };
        };
    };
    case "vest": {
        if (player canAdd _newItem) then {
            player addItem _newItem;
			[getPlayerUID player, "Crafting weste", format ["%1 - %2 hat ein %3 hergestellt.",profileName,(getPlayerUID player),_newItem]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
        } else {
            if (vest player isEqualTo "") then {
                player addVest _newItem;
				[getPlayerUID player, "Crafting weste 1", format ["%1 - %2 hat ein %3 hergestellt.",profileName,(getPlayerUID player),_newItem]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
            } else {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NotificationVest"))];
                _exit = true;
            };
        };
    };
	case "headgear": {
        if (player canAdd _newItem) then {
            player addItem _newItem;
			[getPlayerUID player, "Crafting kopfbedeckung", format ["%1 - %2 hat ein %3 hergestellt.",profileName,(getPlayerUID player),_newItem]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
        } else {
            if (Headgear player isEqualTo "") then {
                player addHeadgear _newItem;
				[getPlayerUID player, "Crafting kopfbedeckung 1", format ["%1 - %2 hat ein %3 hergestellt.",profileName,(getPlayerUID player),_newItem]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
            } else {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Notificationheadgear"))];
                _exit = true;
            };
        };
    };
	 case "glasses": {
        if (player canAdd _newItem) then {
            player addItem _newItem;
			[getPlayerUID player, "Crafting brille", format ["%1 - %2 hat ein %3 hergestellt.",profileName,(getPlayerUID player),_newItem]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
        } else {
            if (Goggles player isEqualTo "") then {
                player addGoggles _newItem;
				[getPlayerUID player, "Crafting brille 1", format ["%1 - %2 hat ein %3 hergestellt.",profileName,(getPlayerUID player),_newItem]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
            } else {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Notificationglasses"))];
                _exit = true;
            };
        };
    };
    case "uniform": {
        if (player canAdd _newItem) then {
            player addItem _newItem;
			[getPlayerUID player, "Crafting uniform", format ["%1 - %2 hat ein %3 hergestellt.",profileName,(getPlayerUID player),_newItem]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
        } else {
            if (uniform player isEqualTo "") then {
                player addUniform _newItem;
				[getPlayerUID player, "Crafting uniform 1", format ["%1 - %2 hat ein %3 hergestellt.",profileName,(getPlayerUID player),_newItem]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
            } else {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NotificationUnifrom"))];
                _exit = true;
            };
        };
    };
    case "weapon": {
        switch (getNumber(configFile >> "CfgWeapons" >> _newItem >> "type")) do {
            case 1: {
               if (primaryWeapon player isEqualTo "") then {
                    player addWeapon _newItem;
					[getPlayerUID player, "Crafting weapon", format ["%1 - %2 hat ein %3 hergestellt.",profileName,(getPlayerUID player),_newItem]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
                } else {
                    if (player canAdd _newItem) then {
                        player addItem _newItem;
						[getPlayerUID player, "Crafting weapon x", format ["%1 - %2 hat ein %3 hergestellt.",profileName,(getPlayerUID player),_newItem]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
                    } else {
                        _exit = true;
                        hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                    };
                };
            };
            case 2: {
                if (handGunWeapon player isEqualTo "") then {
                    player addWeapon _newItem;
					[getPlayerUID player, "Crafting weapon 1", format ["%1 - %2 hat ein %3 hergestellt.",profileName,(getPlayerUID player),_newItem]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
                } else {
                    if (player canAdd _newItem) then {
                        player addItem _newItem;
						[getPlayerUID player, "Crafting weapon 1.1", format ["%1 - %2 hat ein %3 hergestellt.",profileName,(getPlayerUID player),_newItem]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
                    } else {
                        _exit = true;
                        hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                    };
                };
            };
            case 4: {
                if (secondaryWeapon player isEqualTo "") then {
                    player addWeapon _newItem;
					[getPlayerUID player, "Crafting weapon 2", format ["%1 - %2 hat ein %3 hergestellt.",profileName,(getPlayerUID player),_newItem]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
                } else {
                    if (player canAdd _newItem) then {
                        player addItem _newItem;
						[getPlayerUID player, "Crafting weapon 2.2", format ["%1 - %2 hat ein %3 hergestellt.",profileName,(getPlayerUID player),_newItem]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
                    } else {
                        _exit = true;
                        hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                    };
                };
            };
            default {
                if (player canAdd _newItem) then {
                    player addItem _newItem;
					[getPlayerUID player, "Crafting default", format ["%1 - %2 hat ein %3 hergestellt.",profileName,(getPlayerUID player),_newItem]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
                } else {
                    hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                    _exit = true;
                };
            };
        };
    };
	case "mags": {
       if (player canAdd _newItem) then {
            player addItem _newItem;
			[getPlayerUID player, "Crafting Mag", format ["%1 - %2 hat ein %3 hergestellt.",profileName,(getPlayerUID player),_newItem]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
        } else {
            hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
            _exit = true;
        };
	};
	case "items": {
       if (player canAdd _newItem) then {
            player addItem _newItem;
			[getPlayerUID player, "Crafting Item", format ["%1 - %2 hat ein %3 hergestellt.",profileName,(getPlayerUID player),_newItem]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
        } else {
            hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
            _exit = true;
        };
	};
    case "landvehicle": {
        if (_spawnPoint isEqualTo "") then {
            hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoSpawnpoint"))];
            _exit = true;
        } else {
            if (!((nearestObjects[(getMarkerPos _spawnPoint),["Car","Tank","Ship","Air"],5]) isEqualTo [])) then {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Veh_Block"))];
                _exit = true;
            } else {
                _c = 0;
                _colorIndex = 0;
                {
                    _flag = (_x select 1);
                    _textureName = (_x select 0);
                    if (_flag isEqualTo _f && _textureName isEqualTo _tN) then {
                        _colorIndex = _c;
                    };
                    _c = _c + 1;
                } forEach getArray(missionConfigFile >> "huskyCfgVehicles" >> _newItem >> "textures");
                _vehicle = createVehicle [_newItem, (getMarkerPos _spawnPoint), [], 0, "NONE"];
                waitUntil {!isNil "_vehicle" && {!isNull _vehicle}}; //Wait?
                _vehicle allowDamage false; //Temp disable damage handling..
                _vehicle setPos (getMarkerPos _spawnPoint);
                //_vehicle setPos [3781.13,12378.3,1.5];
                _vehicle setVectorUp (surfaceNormal (getMarkerPos _spawnPoint));
                _vehicle setDir (markerDir _spawnPoint);
                _vehicle lock 2;
                [_vehicle,_colorIndex] call husky_fnc_colorVehicle;
                [_vehicle] call husky_fnc_clearVehicleAmmo;
                [_vehicle,"trunk_in_use",false,true] remoteExecCall ["TON_fnc_setObjVar",2];
                [_vehicle,"vehicle_info_owners",[[getPlayerUID player,profileName]],true] remoteExecCall ["TON_fnc_setObjVar",2];
                _vehicle disableTIEquipment true; //No Thermals.. They're cheap but addictive.
                _vehicle allowDamage true;
                husky_vehicles pushBack _vehicle;
                if (getNumber(missionConfigFile >> "Cation_Crafting" >> "HeadlessSupport") isEqualTo 0) then {
                    [getPlayerUID player,playerSide,_vehicle,1] remoteExecCall ["TON_fnc_keyManagement",2];
                    [(getPlayerUID player),playerSide,_vehicle,_colorIndex,profileName] remoteExecCall ["TON_fnc_vehicleCreate",2];
                } else {
                    if (husky_HC_isActive) then {
                        [getPlayerUID player,playerSide,_vehicle,1] remoteExecCall ["HC_fnc_keyManagement",HC_husky];
                        [(getPlayerUID player),playerSide,_vehicle,_colorIndex,profileName] remoteExecCall ["HC_fnc_vehicleCreate",HC_husky];
                    } else {
                        [getPlayerUID player,playerSide,_vehicle,1] remoteExecCall ["TON_fnc_keyManagement",2];
                        [(getPlayerUID player),playerSide,_vehicle,_colorIndex,profileName] remoteExecCall ["TON_fnc_vehicleCreate",2];
                    };
                };   
				[getPlayerUID player, "Crafting Land Fahrzeug", format ["%1 - %2 hat ein %3 aus %4 hergestellt. %5 ",profileName,(getPlayerUID player),_vehicle,_newItem,_spawnPoint]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
            };
        };
    };
    case "watervehicle": {
        if (_spawnPoint isEqualTo "") then {
            hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoSpawnpoint"))];
            _exit = true;
        } else {
            if (!((nearestObjects[(getMarkerPos _spawnPoint),["Car","Tank","Ship","Air"],5]) isEqualTo [])) then {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Veh_Block"))];
                _exit = true;
            } else {
                _c = 0;
                _colorIndex = 0;
                {
                    _flag = (_x select 1);
                    _textureName = (_x select 0);
                    if (_flag isEqualTo _f && _textureName isEqualTo _tN) then {
                        _colorIndex = _c;
                    };
                    _c = _c + 1;
                } forEach getArray(missionConfigFile >> "huskyCfgVehicles" >> _newItem >> "textures");
                _vehicle = createVehicle [_newItem, (getMarkerPos _spawnPoint), [], 0, "NONE"];
                waitUntil {!isNil "_vehicle" && {!isNull _vehicle}}; //Wait?
                _vehicle allowDamage false; //Temp disable damage handling..
                _vehicle setPos (getMarkerPos _spawnPoint);
                //_vehicle setPos [3781.13,12378.3,1.5];
                _vehicle setVectorUp (surfaceNormal (getMarkerPos _spawnPoint));
                _vehicle setDir (markerDir _spawnPoint);
                _vehicle lock 2;
                [_vehicle,_colorIndex] call husky_fnc_colorVehicle;
                [_vehicle] call husky_fnc_clearVehicleAmmo;
                [_vehicle,"trunk_in_use",false,true] remoteExecCall ["TON_fnc_setObjVar",2];
                [_vehicle,"vehicle_info_owners",[[getPlayerUID player,profileName]],true] remoteExecCall ["TON_fnc_setObjVar",2];
                _vehicle disableTIEquipment true; //No Thermals.. They're cheap but addictive.
                _vehicle allowDamage true;
                husky_vehicles pushBack _vehicle;
                if (getNumber(missionConfigFile >> "Cation_Crafting" >> "HeadlessSupport") isEqualTo 0) then {
                    [getPlayerUID player,playerSide,_vehicle,1] remoteExecCall ["TON_fnc_keyManagement",2];
                    [(getPlayerUID player),playerSide,_vehicle,_colorIndex,profileName] remoteExecCall ["TON_fnc_vehicleCreate",2];
                } else {
                    if (husky_HC_isActive) then {
                        [getPlayerUID player,playerSide,_vehicle,1] remoteExecCall ["HC_fnc_keyManagement",HC_husky];
                        [(getPlayerUID player),playerSide,_vehicle,_colorIndex,profileName] remoteExecCall ["HC_fnc_vehicleCreate",HC_husky];
                    } else {
                        [getPlayerUID player,playerSide,_vehicle,1] remoteExecCall ["TON_fnc_keyManagement",2];
                        [(getPlayerUID player),playerSide,_vehicle,_colorIndex,profileName] remoteExecCall ["TON_fnc_vehicleCreate",2];
                    };
                };   
			[getPlayerUID player, "Crafting Water Fahrzeug", format ["%1 - %2 hat ein %3 aus %4 hergestellt. %5 ",profileName,(getPlayerUID player),_vehicle,_newItem,_spawnPoint]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];				
            };
        };
    };
    case "airvehicle": {
        if (_spawnPoint isEqualTo "") then {
            hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoSpawnpoint"))];
            _exit = true;
        } else {
            if (!((nearestObjects[(getMarkerPos _spawnPoint),["Car","Tank","Ship","Air"],5]) isEqualTo [])) then {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Veh_Block"))];
                _exit = true;
            } else {
                _c = 0;
                _colorIndex = 0;
                {
                    _flag = (_x select 1);
                    _textureName = (_x select 0);
                    if (_flag isEqualTo _f && _textureName isEqualTo _tN) then {
                        _colorIndex = _c;
                    };
                    _c = _c + 1;
                } forEach getArray(missionConfigFile >> "huskyCfgVehicles" >> _newItem >> "textures");
                _vehicle = createVehicle [_newItem, (getMarkerPos _spawnPoint), [], 0, "NONE"];
                waitUntil {!isNil "_vehicle" && {!isNull _vehicle}}; //Wait?
                _vehicle allowDamage false; //Temp disable damage handling..
                _vehicle setPos (getMarkerPos _spawnPoint);
                //_vehicle setPos [3781.13,12378.3,1.5];
                _vehicle setVectorUp (surfaceNormal (getMarkerPos _spawnPoint));
                _vehicle setDir (markerDir _spawnPoint);
                _vehicle lock 2;
                [_vehicle,_colorIndex] call husky_fnc_colorVehicle;
                [_vehicle] call husky_fnc_clearVehicleAmmo;
                [_vehicle,"trunk_in_use",false,true] remoteExecCall ["TON_fnc_setObjVar",2];
                [_vehicle,"vehicle_info_owners",[[getPlayerUID player,profileName]],true] remoteExecCall ["TON_fnc_setObjVar",2];
                _vehicle disableTIEquipment true; //No Thermals.. They're cheap but addictive.
                _vehicle allowDamage true;
                husky_vehicles pushBack _vehicle;
                if (getNumber(missionConfigFile >> "Cation_Crafting" >> "HeadlessSupport") isEqualTo 0) then {
                    [getPlayerUID player,playerSide,_vehicle,1] remoteExecCall ["TON_fnc_keyManagement",2];
                    [(getPlayerUID player),playerSide,_vehicle,_colorIndex,profileName] remoteExecCall ["TON_fnc_vehicleCreate",2];
                } else {
                    if (husky_HC_isActive) then {
                        [getPlayerUID player,playerSide,_vehicle,1] remoteExecCall ["HC_fnc_keyManagement",HC_husky];
                        [(getPlayerUID player),playerSide,_vehicle,_colorIndex,profileName] remoteExecCall ["HC_fnc_vehicleCreate",HC_husky];
                    } else {
                        [getPlayerUID player,playerSide,_vehicle,1] remoteExecCall ["TON_fnc_keyManagement",2];
                        [(getPlayerUID player),playerSide,_vehicle,_colorIndex,profileName] remoteExecCall ["TON_fnc_vehicleCreate",2];
                    };
                };  
				[getPlayerUID player, "Crafting Air Fahrzeug", format ["%1 - %2 hat ein %3 aus %4 hergestellt. %5 ",profileName,(getPlayerUID player),_vehicle,_newItem,_spawnPoint]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
            };
        };
    };
    default {
        if (_vItem isEqualTo 1) then {
            _handledItem = _newItem;
	    if (!([true,_handledItem,1] call husky_fnc_handleInv)) then { _exit = true; };
        } else {
            if (player canAdd _newItem) then {
                player addItem _newItem;
            } else {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                _exit = true;
            };
        };
    };
};
if (_exit) exitWith {
    for [{_i=0},{_i<_invSize-1},{_i=_i+2}] do {
        _handledItem = (_oldItem select _i);
        [true,_handledItem,_oldItem select _i+1] call husky_fnc_handleInv;
    };
    "progressBar" cutText ["","PLAIN"];
	player playActionNow "stop";
    [0] call SOCK_fnc_updatePartial;
    husky_is_processing = false;
    husky_action_inUse = false;
};
"progressBar" cutText ["","PLAIN"];
player playActionNow "stop";
titleText[format["%1 %2",(getText(missionConfigFile >> "Cation_Crafting" >> "Process")),_itemName],"PLAIN"];
[0] call SOCK_fnc_updatePartial;
husky_is_processing = false;
husky_action_inUse = false;

[getPlayerUID player, "Crafting", format ["%1 - %2 hat gecraftet. %3 %4",profileName,(getPlayerUID player),_oldItem,_newItem]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

/*
private["_vItem","_duration","_tN","_f","_textureName","_flag","_colorIndex","_c","_vehicle","_spawnPoint","_exit","_pos","_dialog","_item","_itemInfo","_oldItem","_newItem","_upp","_itemName","_ui","_progress","_pgText","_cP","_allMaterial","_matsNeed","_invSize","_handledItem","_itemFilter","_backpackOldItems","_weight","_weightUsedItems","_category"];
if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed || husky_action_inUse) exitWith {}; //If null / dead exit menu
if ((getNumber(missionConfigFile >> "Cation_Crafting" >> "version")) > 4) then {
    if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {};
};
disableSerialization;
_dialog = findDisplay 666;
_spawnPoint = _dialog getVariable ["spawn",""];
if ((lbCurSel 669) == -1) exitWith {hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "SelectItemFirst"))];};
_item = lbData[669,(lbCurSel 669)];
_allMaterial = true;
_itemFilter = lbData[673,(lbCurSel 673)];
_matsNeed = 0;
_pos = getPos player;
_exit = false;
_vItem = -1;
_duration = (getNumber(missionConfigFile >> "Cation_Crafting" >> "duration"));
if (_duration <= 0 || _duration > 10) then {
    _duration = 0.3;
};
if (player distance _pos > 1) exitWith {};
_category = (getArray(missionConfigFile >> "Cation_Crafting" >> "category"));
_config = [];
{
    if (_itemFilter isEqualTo (_x select 0)) then {
        for "_i" from 2 to (count _x) do {
            _config pushBack (_x select _i);
        };
    };
} forEach _category;

husky_action_inUse = true;//Lock out other actions during processing.

{
    if (_item == _x select 0)then {
        _matsNeed = _x select 2;
        _tN = _x select 3;
        _f = _x select 4;
        _invSize = count _matsNeed;
        for [{_i=0},{_i<_invSize-1},{_i=_i+2}] do {
            _matsNum = _matsNeed select _i+1;
            if ((getNumber(missionConfigFile >> "Cation_Crafting" >> "version")) > 3) then {
                if ((missionNamespace getVariable [format["husky_inv_%1",(getText(missionConfigFile >> "VirtualItems" >> (_matsNeed select _i) >> "variable"))],0]) < _matsNum) then {_allMaterial = false;};
            } else {
                if ((missionNamespace getVariable [format["%1",[(_matsNeed select _i),0] call husky_fnc_varHandle],0]) < _matsNum) then {_allMaterial = false;};
            };
        };
        _vItem = _x select 5;
    };
} foreach (_config);
_newItem = _item;
if (!_allMaterial) exitWith {hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoMaterial"))]; husky_action_inUse = false;};
//Some checks
if ((count _matsNeed) == 0) exitWith {husky_action_inUse = false;};
switch (_itemFilter) do {
    case "kopfbedeckung": {
        if (!(player canAdd _newItem)) then {
            if (!(headgear player isEqualTo "")) exitWith {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Notificationkopfbedeckung"))];
                _exit = true;
            };
        };
    };
	case "brille": {
        if (!(player canAdd _newItem)) then {
            if (!(goggles player isEqualTo "")) exitWith {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Notificationbrille"))];
                _exit = true;
            };
        };
    };
	case "uniform": {
        if (!(player canAdd _newItem)) then {
            if (!(uniform player isEqualTo "")) exitWith {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NotificationUnifrom"))];
                _exit = true;
            };
        };
    };
	case "vest": {
        if (!(player canAdd _newItem)) then {
            if (!(vest player isEqualTo "")) exitWith {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NotificationVest"))];
                _exit = true;
            };
        };
    };
    case "backpack": {
        if (!(player canAdd _newItem)) then {
            if (!(backpack player isEqualTo "")) exitWith {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NotificationBackpack"))];
                _exit = true;
            };
        };
    };
    case "weapon": {
        switch (getNumber(configFile >> "CfgWeapons" >> _newItem >> "type")) do {
            case 1: {
                if (!(primaryWeapon player isEqualTo "")) then {
                    if (!(player canAdd _newItem)) then {
                        _exit = true;
                        hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                    };
                };
            };
            case 2: {
                if (!(handGunWeapon player isEqualTo "")) then {
                    if (!(player canAdd _newItem)) then {
                        _exit = true;
                        hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                    };
                };
            };
            case 4: {
                if (!(secondaryWeapon player isEqualTo "")) then {
                    if (!(player canAdd _newItem)) then {
                        _exit = true;
                        hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                    };
                };
            };
        };
    };
	case "item": {
        if (!(player canAdd _newItem)) then {
            if (!(item player isEqualTo "")) exitWith {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                _exit = true;
            };
        };
    };
	default {
        if (_vItem isEqualTo 1) then {
            _weight = [_item] call husky_fnc_itemWeight;
            _weightUsedItems = 0;
            for [{_i=0},{_i<(count _matsNeed)-1},{_i=_i+2}] do {
                _matsNum = _matsNeed select _i+1;
                _weightUsedItems = _weightUsedItems + (([(_matsNeed select _i)] call husky_fnc_itemWeight) * _matsNum);
            };
            if ((husky_carryWeight - _weightUsedItems + _weight) > husky_maxWeight) exitWith {
                hint localize "STR_NOTF_NoRoom";
                _exit = true;
            };
        } else {
            if (!(player canAdd _newItem)) exitWith {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                _exit = true;
            };
        };
    };
    case "landvehicle": {
        if (_spawnPoint isEqualTo "") then {
            hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoSpawnpoint"))];
            _exit = true;
        } else {
            if (!((nearestObjects[(getMarkerPos _spawnPoint),["Car","Tank","Ship","Air","ThingX"],5]) isEqualTo [])) exitWith {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Veh_Block"))];
                _exit = true;
            };
        };
    };
    case "watervehicle": {
        if (_spawnPoint isEqualTo "") then {
            hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoSpawnpoint"))];
            _exit = true;
        } else {
            if (!((nearestObjects[(getMarkerPos _spawnPoint),["Car","Tank","Ship","Air","ThingX"],5]) isEqualTo [])) exitWith {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Veh_Block"))];
                _exit = true;
            };
        };
    };
    case "airvehicle": {
        if (_spawnPoint isEqualTo "") then {
            hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoSpawnpoint"))];
            _exit = true;
        } else {
            if (!((nearestObjects[(getMarkerPos _spawnPoint),["Car","Tank","Ship","Air","ThingX"],5]) isEqualTo [])) exitWith {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Veh_Block"))];
                _exit = true;
            };
        };
    };
};
if (_exit) exitWith {
    husky_action_inUse = false;
};
_oldItem = _matsNeed;

if (_vItem isEqualTo 1) then {
    if ((getNumber(missionConfigFile >> "Cation_Crafting" >> "version")) > 3) then {
        _itemName = localize getText(missionConfigFile >> "VirtualItems" >> _newItem >> "displayName");
    } else {
        _itemName = [([_newItem,0] call husky_fnc_varHandle)] call husky_fnc_varToStr;
    };
} else {
	_itemInfo = [_newItem] call husky_fnc_fetchCfgDetails;
	_itemName = _itemInfo select 1;
};

husky_is_processing = true;
if (_tN isEqualTo "") then {
    _upp = format["%1 %2",(getText(missionConfigFile >> "Cation_Crafting" >> "Craft")),_itemName];
} else {
    _upp = format["%1 %2 - %3",(getText(missionConfigFile >> "Cation_Crafting" >> "Craft")),_itemName,_tN];
};
closeDialog 0;
//Setup our progress bar.
disableSerialization;
"progressBar" cutRsc ["husky_progress","PLAIN"];
_ui = uiNameSpace getVariable "husky_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;
_removeItemSuccess = true;
_invSize = count _oldItem;
for [{_i=0},{_i<_invSize-1},{_i=_i+2}] do {
    _handledItem = (_oldItem select _i);
    if (!([false,_handledItem,_oldItem select _i+1] call husky_fnc_handleInv)) exitWith {_removeItemSuccess = false;};
};
if (!_removeItemSuccess) exitWith {"progressBar" cutText ["","PLAIN"]; husky_is_processing = false; husky_action_inUse = false;};

for "_i" from 0 to 1 step 0 do {
    sleep _duration;
    _cP = _cP + 0.01;
    _progress progressSetPosition _cP;
    _pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
    if(_cP >= 1) exitWith {};
    if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed) exitWith {}; //If null / dead exit menu
    if ((getNumber(missionConfigFile >> "Cation_Crafting" >> "version")) > 4) then {
        if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {};
    };
    if (player distance _pos > 1) exitWith {};
};
if (player distance _pos > 1) exitWith {
    hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Process_Stay"))]; "progressBar" cutText ["","PLAIN"]; husky_is_processing = false; husky_action_inUse = false;
    for [{_i=0},{_i<_invSize-1},{_i=_i+2}] do {
        _handledItem = (_oldItem select _i);
        [true,_handledItem,_oldItem select _i+1] call husky_fnc_handleInv;
    };
    husky_is_processing = false;
    husky_action_inUse = false;
};
if (isNull player || !alive player || (player getVariable ["restrained",false]) || (player getVariable ["Escorting",false]) || husky_istazed) exitWith {
    for [{_i=0},{_i<_invSize-1},{_i=_i+2}] do {
        _handledItem = (_oldItem select _i);
        [true,_handledItem,_oldItem select _i+1] call husky_fnc_handleInv;
    };
    husky_is_processing = false;
    husky_action_inUse = false;
}; //If null / dead exit menu
if ((getNumber(missionConfigFile >> "Cation_Crafting" >> "version")) > 4) then {
    if ((player getVariable ["playerSurrender",false]) || husky_isknocked) exitWith {
        for [{_i=0},{_i<_invSize-1},{_i=_i+2}] do {
            _handledItem = (_oldItem select _i);
            [true,_handledItem,_oldItem select _i+1] call husky_fnc_handleInv;
        };
        husky_is_processing = false;
        husky_action_inUse = false;
    };
};
_exit = false;
switch (_itemFilter) do {

    case "kopfbedeckung": {
        if (player canAdd _newItem) then {
            player addItem _newItem;
        } else {
            if (Headgear player isEqualTo "") then {
                player addHeadgear _newItem;
            } else {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Notificationkopfbedeckung"))];
                _exit = true;
            };
        };
    };
	case "brille": {
        if (player canAdd _newItem) then {
            player addItem _newItem;
        } else {
            if (Googles player isEqualTo "") then {
                player addGoggles _newItem;
            } else {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Notificationbrille"))];
                _exit = true;
            };
        };
    };

	case "uniform": {
        if (player canAdd _newItem) then {
            player addItem _newItem;
        } else {
            if (uniform player isEqualTo "") then {
                player addUniform _newItem;
            } else {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NotificationUnifrom"))];
                _exit = true;
            };
        };
    };
	case "vest": {
        if (player canAdd _newItem) then {
            player addItem _newItem;
        } else {
            if (vest player isEqualTo "") then {
                player addVest _newItem;
            } else {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NotificationVest"))];
                _exit = true;
            };
        };
    };
    case "backpack": {
        if (player canAdd _newItem) then {
            player addItem _newItem;
        } else {
            if (backpack player isEqualTo "") then {
                player addBackpack _newItem;
            } else {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NotificationBackpack"))];
                _exit = true;
            };
        };
    };
    case "weapon": {
        switch (getNumber(configFile >> "CfgWeapons" >> _newItem >> "type")) do {
            case 1: {
               if (primaryWeapon player isEqualTo "") then {
                    player addWeapon _newItem;
                } else {
                    if (player canAdd _newItem) then {
                        player addItem _newItem;
                    } else {
                        _exit = true;
                        hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                    };
                };
            };
            case 2: {
                if (handGunWeapon player isEqualTo "") then {
                    player addWeapon _newItem;
                } else {
                    if (player canAdd _newItem) then {
                        player addItem _newItem;
                    } else {
                        _exit = true;
                        hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                    };
                };
            };
            case 4: {
                if (secondaryWeapon player isEqualTo "") then {
                    player addWeapon _newItem;
                } else {
                    if (player canAdd _newItem) then {
                        player addItem _newItem;
                    } else {
                        _exit = true;
                        hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                    };
                };
            };
            default {
                if (player canAdd _newItem) then {
                    player addItem _newItem;
                } else {
                    hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                    _exit = true;
                };
            };
        };
    };
	
	case "mags": {
       if (player canAdd _newItem) then {
                   player addItem _newItem;
               } else {
                   hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                   _exit = true;
               };
	};
	case "item": {
       if (player canAdd _newItem) then {
                   player addItem _newItem;
               } else {
                   hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                   _exit = true;
               };
	};
	
	case "item": {
        if (player canAdd _newItem) then {
            player addItem _newItem;
        } else {
            if (backpack player isEqualTo "") then {
                player addItem _newItem;
            } else {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NotificationBackpack"))];
                _exit = true;
            };
        };
    };
	
	default {
        if (_vItem isEqualTo 1) then {
            _handledItem = _newItem;
	    if (!([true,_handledItem,1] call husky_fnc_handleInv)) then { _exit = true; };
        } else {
            if (player canAdd _newItem) then {
                player addItem _newItem;
            } else {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoRoom"))];
                _exit = true;
            };
        };
    };
    case "landvehicle": {
        if (_spawnPoint isEqualTo "") then {
            hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoSpawnpoint"))];
            _exit = true;
        } else {
            if (!((nearestObjects[(getMarkerPos _spawnPoint),["Car","Tank","Ship","Air"],5]) isEqualTo [])) then {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Veh_Block"))];
                _exit = true;
            } else {
                _c = 0;
                _colorIndex = 0;
                {
                    _flag = (_x select 1);
                    _textureName = (_x select 0);
                    if (_flag isEqualTo _f && _textureName isEqualTo _tN) then {
                        _colorIndex = _c;
                    };
                    _c = _c + 1;
                } forEach getArray(missionConfigFile >> "huskyCfgVehicles" >> _newItem >> "textures");
                _vehicle = createVehicle [_newItem, (getMarkerPos _spawnPoint), [], 0, "NONE"];
                waitUntil {!isNil "_vehicle" && {!isNull _vehicle}}; //Wait?
                _vehicle allowDamage false; //Temp disable damage handling..
                _vehicle setPos (getMarkerPos _spawnPoint);
                _vehicle setVectorUp (surfaceNormal (getMarkerPos _spawnPoint));
                _vehicle setDir (markerDir _spawnPoint);
                _vehicle lock 2;
                [_vehicle,_colorIndex] call husky_fnc_colorVehicle;
                [_vehicle] call husky_fnc_clearVehicleAmmo;
                [_vehicle,"trunk_in_use",false,true] remoteExecCall ["TON_fnc_setObjVar",2];
                [_vehicle,"vehicle_info_owners",[[getPlayerUID player,profileName]],true] remoteExecCall ["TON_fnc_setObjVar",2];
                _vehicle disableTIEquipment true; //No Thermals.. They're cheap but addictive.
                _vehicle allowDamage true;
                husky_vehicles pushBack _vehicle;
                if (getNumber(missionConfigFile >> "Cation_Crafting" >> "HeadlessSupport") isEqualTo 0) then {
                    [getPlayerUID player,playerSide,_vehicle,1] remoteExecCall ["TON_fnc_keyManagement",2];
                    [(getPlayerUID player),playerSide,_vehicle,_colorIndex] remoteExecCall ["TON_fnc_vehicleCreate",2];
                } else {
                    if (husky_HC_isActive) then {
                        [getPlayerUID player,playerSide,_vehicle,1] remoteExecCall ["HC_fnc_keyManagement",HC_husky];
                        [(getPlayerUID player),playerSide,_vehicle,_colorIndex] remoteExecCall ["HC_fnc_vehicleCreate",HC_husky];
                    } else {
                        [getPlayerUID player,playerSide,_vehicle,1] remoteExecCall ["TON_fnc_keyManagement",2];
                        [(getPlayerUID player),playerSide,_vehicle,_colorIndex] remoteExecCall ["TON_fnc_vehicleCreate",2];
                    };
                };                     
            };
        };
    };
    case "watervehicle": {
        if (_spawnPoint isEqualTo "") then {
            hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoSpawnpoint"))];
            _exit = true;
        } else {
            if (!((nearestObjects[(getMarkerPos _spawnPoint),["Car","Tank","Ship","Air"],5]) isEqualTo [])) then {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Veh_Block"))];
                _exit = true;
            } else {
                _c = 0;
                _colorIndex = 0;
                {
                    _flag = (_x select 1);
                    _textureName = (_x select 0);
                    if (_flag isEqualTo _f && _textureName isEqualTo _tN) then {
                        _colorIndex = _c;
                    };
                    _c = _c + 1;
                } forEach getArray(missionConfigFile >> "huskyCfgVehicles" >> _newItem >> "textures");
                _vehicle = createVehicle [_newItem, (getMarkerPos _spawnPoint), [], 0, "NONE"];
                waitUntil {!isNil "_vehicle" && {!isNull _vehicle}}; //Wait?
                _vehicle allowDamage false; //Temp disable damage handling..
                _vehicle setPos (getMarkerPos _spawnPoint);
                _vehicle setVectorUp (surfaceNormal (getMarkerPos _spawnPoint));
                _vehicle setDir (markerDir _spawnPoint);
                _vehicle lock 2;
                [_vehicle,_colorIndex] call husky_fnc_colorVehicle;
                [_vehicle] call husky_fnc_clearVehicleAmmo;
                [_vehicle,"trunk_in_use",false,true] remoteExecCall ["TON_fnc_setObjVar",2];
                [_vehicle,"vehicle_info_owners",[[getPlayerUID player,profileName]],true] remoteExecCall ["TON_fnc_setObjVar",2];
                _vehicle disableTIEquipment true; //No Thermals.. They're cheap but addictive.
                _vehicle allowDamage true;
                husky_vehicles pushBack _vehicle;
                if (getNumber(missionConfigFile >> "Cation_Crafting" >> "HeadlessSupport") isEqualTo 0) then {
                    [getPlayerUID player,playerSide,_vehicle,1] remoteExecCall ["TON_fnc_keyManagement",2];
                    [(getPlayerUID player),playerSide,_vehicle,_colorIndex] remoteExecCall ["TON_fnc_vehicleCreate",2];
                } else {
                    if (husky_HC_isActive) then {
                        [getPlayerUID player,playerSide,_vehicle,1] remoteExecCall ["HC_fnc_keyManagement",HC_husky];
                        [(getPlayerUID player),playerSide,_vehicle,_colorIndex] remoteExecCall ["HC_fnc_vehicleCreate",HC_husky];
                    } else {
                        [getPlayerUID player,playerSide,_vehicle,1] remoteExecCall ["TON_fnc_keyManagement",2];
                        [(getPlayerUID player),playerSide,_vehicle,_colorIndex] remoteExecCall ["TON_fnc_vehicleCreate",2];
                    };
                };     
            };
        };
    };
    case "airvehicle": {
        if (_spawnPoint isEqualTo "") then {
            hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "NoSpawnpoint"))];
            _exit = true;
        } else {
            if (!((nearestObjects[(getMarkerPos _spawnPoint),["Car","Tank","Ship","Air"],5]) isEqualTo [])) then {
                hint format[(getText(missionConfigFile >> "Cation_Crafting" >> "Veh_Block"))];
                _exit = true;
            } else {
                _c = 0;
                _colorIndex = 0;
                {
                    _flag = (_x select 1);
                    _textureName = (_x select 0);
                    if (_flag isEqualTo _f && _textureName isEqualTo _tN) then {
                        _colorIndex = _c;
                    };
                    _c = _c + 1;
                } forEach getArray(missionConfigFile >> "huskyCfgVehicles" >> _newItem >> "textures");
                _vehicle = createVehicle [_newItem, (getMarkerPos _spawnPoint), [], 0, "NONE"];
                waitUntil {!isNil "_vehicle" && {!isNull _vehicle}}; //Wait?
                _vehicle allowDamage false; //Temp disable damage handling..
                _vehicle setPos (getMarkerPos _spawnPoint);
                _vehicle setVectorUp (surfaceNormal (getMarkerPos _spawnPoint));
                _vehicle setDir (markerDir _spawnPoint);
                _vehicle lock 2;
                [_vehicle,_colorIndex] call husky_fnc_colorVehicle;
                [_vehicle] call husky_fnc_clearVehicleAmmo;
                [_vehicle,"trunk_in_use",false,true] remoteExecCall ["TON_fnc_setObjVar",2];
                [_vehicle,"vehicle_info_owners",[[getPlayerUID player,profileName]],true] remoteExecCall ["TON_fnc_setObjVar",2];
                _vehicle disableTIEquipment true; //No Thermals.. They're cheap but addictive.
                _vehicle allowDamage true;
                husky_vehicles pushBack _vehicle;
                if (getNumber(missionConfigFile >> "Cation_Crafting" >> "HeadlessSupport") isEqualTo 0) then {
                    [getPlayerUID player,playerSide,_vehicle,1] remoteExecCall ["TON_fnc_keyManagement",2];
                    [(getPlayerUID player),playerSide,_vehicle,_colorIndex] remoteExecCall ["TON_fnc_vehicleCreate",2];
                } else {
                    if (husky_HC_isActive) then {
                        [getPlayerUID player,playerSide,_vehicle,1] remoteExecCall ["HC_fnc_keyManagement",HC_husky];
                        [(getPlayerUID player),playerSide,_vehicle,_colorIndex] remoteExecCall ["HC_fnc_vehicleCreate",HC_husky];
                    } else {
                        [getPlayerUID player,playerSide,_vehicle,1] remoteExecCall ["TON_fnc_keyManagement",2];
                        [(getPlayerUID player),playerSide,_vehicle,_colorIndex] remoteExecCall ["TON_fnc_vehicleCreate",2];
                    };
                };   
            };
        };
    };
};
if (_exit) exitWith {
    for [{_i=0},{_i<_invSize-1},{_i=_i+2}] do {
        _handledItem = (_oldItem select _i);
        [true,_handledItem,_oldItem select _i+1] call husky_fnc_handleInv;
    };
    "progressBar" cutText ["","PLAIN"];
    [0] call SOCK_fnc_updatePartial;
    husky_is_processing = false;
    husky_action_inUse = false;
};
"progressBar" cutText ["","PLAIN"];
titleText[format["%1 %2",(getText(missionConfigFile >> "Cation_Crafting" >> "Process")),_itemName],"PLAIN"];
[0] call SOCK_fnc_updatePartial;
husky_is_processing = false;
husky_action_inUse = false;
*/