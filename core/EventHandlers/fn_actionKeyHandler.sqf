#include "..\..\script_macros.hpp"
/*
    File: fn_actionKeyHandler.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Master action key handler, handles requests for picking up various items and
    interacting with other players (Cops = Cop Menu for unrestrain,escort,stop escort, arrest (if near cop hq), etc).

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_curObject","_isWater","_CrateModelNames","_crate","_fish","_animal","_whatIsIt","_handle"];
_curObject = cursorObject;
if (husky_action_inUse) exitWith {}; //Action is in use, exit to prevent spamming.
if (husky_interrupted) exitWith {husky_interrupted = false;};
_isWater = surfaceIsWater (visiblePositionASL player);

if (_curObject isKindOf "Land_Runway_PAPI_4") then {
  if (_curObject getVariable["speedtrap_registered", false] && !dialog && playerside == west) then {
	    [_curObject] call husky_fnc_radarfallemenu;
	};
};

/*
if (_curObject isKindOf "Land_Runway_PAPI_4") then {
  if (_curObject getVariable ["speedtrap_status", true, true]; && !dialog && playerside == west) then {
	    [_curObject] call husky_fnc_radarfalle_repair;
	};
};
*/

if (_curObject isKindOf "Land_Runway_PAPI_4") then {
  if (_curObject getVariable["speedtrap_registered", true] && !dialog && playerside == civilian) then {
	    [_curObject] call husky_fnc_radarfallemenu_sabotage;
	};
};

if (playerSide isEqualTo west && {player getVariable ["isEscorting",false]} ) exitWith {
    [] call husky_fnc_copInteractionMenu;
};

if (playerSide isEqualTo civilian && {player getVariable ["isEscorting",false]} ) exitWith {
    [] call husky_fnc_civInteractionMenu;
};

if (playerSide isEqualTo independent && {player getVariable ["isEscorting",false]}) exitWith {
    [] call husky_fnc_medInteractionMenu;
};

if (husky_SETTINGS(getNumber,"global_ATM") isEqualTo 1) then{
    //Check if the player is near an ATM.
    if ((call husky_fnc_nearATM) && {!dialog}) exitWith {
        [] call husky_fnc_atmMenu;
    };
};

if (isNull _curObject) exitWith {
    if (_isWater) then {
        _fish = (nearestObjects[player,(husky_SETTINGS(getArray,"animaltypes_fish")),3]) select 0;
        if (!isNil "_fish") then {
            if (!alive _fish) then {
                [_fish] call husky_fnc_catchFish;
            };
        };
    } else {
        _animal = (nearestObjects[player,(husky_SETTINGS(getArray,"animaltypes_hunting")),3]) select 0;
        if (!isNil "_animal") then {
            if (!alive _animal) then {
                [_animal] call husky_fnc_gutAnimal;
            };
        } else {
            private "_handle";
            if (playerSide in ([civilian]) && !husky_action_gathering || license_cop_copzivilfahnder && !husky_action_gathering || license_med_farmenmed && !husky_action_gathering) then {
				_whatIsIt = [] call husky_fnc_whereAmI;
                if (husky_action_gathering) exitWith {};                 //Action is in use, exit to prevent spamming.
                switch (_whatIsIt) do {
                    //case "autoteile" : { _handle = [] spawn husky_fnc_toolbox };
                    case "mine" : { _handle = [] spawn husky_fnc_mine };
                    default { _handle = [] spawn husky_fnc_gather };
                };
                husky_action_gathering = true;
                waitUntil {scriptDone _handle};
                husky_action_gathering = false;
            };
        };
    };
};

if ((_curObject isKindOf "B_supplyCrate_F" || _curObject isKindOf "Box_IND_Grenades_F" || _curObject isKindOf "CargoNet_01_barrels_F" || _curObject isKindOf "Land_PlasticCase_01_large_CBRN_F" || _curObject isKindOf "Land_MetalBarrel_F" || _curObject isKindOf "HazmatBag_01_F" || _curObject isKindOf "Land_WaterBarrel_F" ||_curObject isKindOf "Land_WaterTank_F" ||_curObject isKindOf "Box_East_Wps_Special_F" || _curObject isKindOf "Box_East_AmmoVeh_F" || _curObject isKindOf "O_CargoNet_01_ammo_F" || _curObject isKindOf "C_IDAP_CargoNet_01_supplies_F") && {player distance _curObject < 3} ) exitWith {
    if (alive _curObject) then {
        [_curObject] call husky_fnc_containerMenu;
    };
};

private _vaultHouse = [[["Altis", "Land_Research_house_V1_F"], ["Tanoa", "Land_Medevac_house_V1_F"], ["Stratis", "Land_Medevac_house_V1_F"], ["Enoch", "Land_Research_house_V1_F"]]] call TON_fnc_terrainSort;
private _altisArray = [16518.701,12731.776,3.411];
private _tanoaArray = [11074.2,11501.5,0.00137329];
private _stratisArray = [4370.051,3816.454,2.349];
private _enochArray = [3160.714,12069.354,1.448];
private _pos = [[["Altis", _altisArray], ["Tanoa", _tanoaArray], ["Stratis", _stratisArray], ["Enoch", _enochArray]]] call TON_fnc_terrainSort;

if (_curObject isKindOf "House_F" && {player distance _curObject < 12 } && playerSide isEqualTo civilian || _curObject isKindOf "House_F" && {player distance _curObject < 12} && playerSide isEqualTo west/* || ((nearestObject [_pos,"Land_FuelStation_01_shop_F"]) isEqualTo _curObject) || ((nearestObject [_pos,_vaultHouse]) isEqualTo _curObject) && playerSide isEqualTo civilian || ((nearestObject [_pos,_vaultHouse]) isEqualTo _curObject) && playerSide isEqualTo west*/ ) exitWith {
    [_curObject] call husky_fnc_houseMenu;
};

if (dialog) exitWith {}; //Don't bother when a dialog is open.
if !(isNull objectParent player) exitWith {}; //He's in a vehicle, cancel!
husky_action_inUse = true;

//Temp fail safe.
[] spawn {
    sleep 60;
    husky_action_inUse = false;
};

//Check if it's a dead body.
if (_curObject isKindOf "Man" && !(_curObject isKindOf "Animal") && {!alive _curObject} && !(_curObject getVariable ["Revive",false])) exitWith {
    if (playerSide in [west,civilian,east,independent]) then {
        //Stabilisieren von Bewustlosen
        if (!(_curObject getVariable "husky_request_timer")) then {
            if ("FirstAidKit" in (items player)) then {
                [_curObject] call husky_fnc_stabilisatePlayer;
            }else{
                hint "Du hast kein Erste-Hilfe-Kit dabei!"
            };
        };
        diag_log "ActionKeyHandler: 3";
        //Hotfix code by ins0
        if ((playerSide isEqualTo west && license_cop_coperstehilfe) || (playerSide isEqualTo civilian && license_civ_erstehilfe) || {(playerSide isEqualTo east && {(husky_SETTINGS(getNumber,"revive_east") isEqualTo 1)})} || (playerSide isEqualTo independent)) then {
            if (husky_inv_defibrillator > 0) then {
                [_curObject] call husky_fnc_revivePlayer;
            }else{
                hint "Du hast kein Defibrilator dabei!"
            };
        };
    };
};


/*
if ((_curObject getVariable ["restrained",false]) && !dialog && playerSide == civilian) then {
    [_curObject] call husky_fnc_civInteractionMenu;
};
*/

if (isPlayer _curObject && _curObject isKindOf "Man") then {
		if (!dialog && playerSide isEqualTo independent) then {
		[_curObject] call husky_fnc_medInteractionMenu;
	};
};

if ((_curObject getVariable["playerSurrender",false]) && !dialog && playerSide == civilian || (_curObject getVariable ["restrained",false]) && !dialog && playerSide == civilian) then {
	[_curObject] call husky_fnc_civInteractionMenu;
 };

/*
if ((_curTarget getVariable["surrender",false]) && !dialog && playerSide == independent) then {
	[_curTarget] call husky_fnc_medInteractionMenu;
};

 if ((_curObject getVariable["surrender",false]) && !dialog && playerSide == independent) then {
	[_curObject] call husky_fnc_medInteractionMenu;
 };*/


//If target is a player then check if we can use the cop menu.
if (isPlayer _curObject && _curObject isKindOf "Man") then {
    if (!dialog && playerSide isEqualTo west && {!(player getVariable ["restrained",false])} && {!(player getVariable ["playerSurrender",false])} && {!(player getVariable ["isEscorting",false])} && {!husky_isknocked} && {!husky_istazed} ) then {
        [_curObject] call husky_fnc_copInteractionMenu;
    };
} else {
    //OK, it wasn't a player so what is it?
    private ["_isVehicle","_miscItems","_money","_list"];

    _list = ["landVehicle","Ship","Air","Box_NATO_AmmoVeh_F","Land_Cargo20_white_F","Land_Cargo20_red_F","Land_Cargo20_blue_F","Land_Cargo20_military_green_F","Land_Cargo20_yellow_F","Land_Cargo20_IDAP_F","B_Slingload_01_Fuel_F","Land_Pod_Heli_Transport_04_fuel_F","Land_Device_slingloadable_F","Land_Device_assembled_F"];
    _isVehicle = if (KINDOF_ARRAY(_curObject,_list)) then {true} else {false};
    _miscItems = ["Land_BottlePlastic_V1_F","Land_TacticalBacon_F","Land_Can_V3_F","Land_CanisterFuel_F","Land_Suitcase_F"];

    //It's a vehicle! open the vehicle interaction key!
    if (_isVehicle) then {
        if (!dialog) then {
            if (player distance _curObject < ((boundingBox _curObject select 1) select 0)+2 && (!(player getVariable ["restrained",false])) && (!(player getVariable ["playerSurrender",false])) && !husky_isknocked && !husky_istazed) then {
                [_curObject] call husky_fnc_vInteractionMenu;
            };
        };
    } else {
        //OK, it wasn't a vehicle so let's see what else it could be?
        if ((typeOf _curObject) in _miscItems) then {
		//if ((nearestObjects[player,[],1]) in _miscItems) then {
            [_curObject,player,false] remoteExecCall ["TON_fnc_pickupAction",RSERV];
			//[nearestObjects[player,[],1]]  remoteExecCall ["TON_fnc_pickupAction",RSERV];
        } else {
            //It wasn't a misc item so is it money?
            if ((typeOf _curObject) isEqualTo "Land_Money_F" && {!(_curObject getVariable ["inUse",false])}) then {
               [_curObject,player,true] remoteExecCall ["TON_fnc_pickupAction",RSERV];
			//if ((nearestObjects[player,[],1]) isEqualTo "Land_Money_F" /*&& {!(_curObject getVariable ["inUse",false])}*/) then {
               // [nearestObjects[player,[],1]]  remoteExecCall ["TON_fnc_pickupAction",RSERV];
            };
        };
    };
};
