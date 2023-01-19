#include "..\..\script_macros.hpp"
/*
    File: fn_clothingMenu.sqf
    Author: Bryan "Tonic" Boardwine edit by Deathman / MrFrost

    Description:
    Opens and initializes the clothing store menu.
    Started clean, finished messy.
*/
//private ["_gangName"];
params ["","","",["_shop","",[""]]];

if (_shop isEqualTo "") exitWith {};
if !(isNull objectParent player) exitWith {titleText[localize "STR_NOTF_ActionInVehicle","PLAIN"];};

/* License check & config validation */
if !(isClass(missionConfigFile >> "Clothing" >> _shop)) exitWith {}; //Bad config entry.

private _shopTitle = M_CONFIG(getText,"Clothing",_shop,"title");
private _shopSide = M_CONFIG(getText,"Clothing",_shop,"side");
//private _gangname = M_CONFIG(getText,"Clothing",_shop,"GangName");
private _conditions = M_CONFIG(getText,"Clothing",_shop,"conditions");

//_gangName = group player getVariable ["gang_name","KeineGang"];

private _exit = false;
//private _exit2 = false;

private "_flag";

if !(_shopSide isEqualTo "") then {
    _flag = switch (playerSide) do {case west: {"cop"}; case independent: {"med"}; default {"civ"};};
    if !(_flag isEqualTo _shopSide) then {_exit = true;};
};

if (_exit) exitWith {};
//if (_exit2) exitWith {};

_exit = [_conditions] call husky_fnc_levelCheck;
if !(_exit) exitWith {hint localize "STR_Shop_Veh_NoLicense";};
/*
_exit2 = _gangName getVariable ["gang_name","KeineGang"];
if !(_exit2) exitWith {hint localize "STR_Shop_Gang";};
//diag_log _exit2;
//diag_log _gangName;
*/

/*
_gangName = group player getVariable ["gang_name","KeineGang"];
if !(_gangName) exitWith {hint localize "STR_Shop_Gang";};
*/

//Save old inventory
husky_oldClothes = uniform player;
husky_olduniformItems = uniformItems player;
husky_oldBackpack = backpack player;
husky_oldVest = vest player;
husky_oldVestItems = vestItems player;
husky_oldBackpackItems = backpackItems player;
husky_oldGlasses = goggles player;
husky_oldHat = headgear player;

/* Open up the menu */
createDialog "husky_Clothing";
disableSerialization;

ctrlSetText [3103,localize _shopTitle];

(findDisplay 3100) displaySetEventHandler ["KeyDown","if ((_this select 1) isEqualTo 1) then {closeDialog 0; [player, uniform player] call husky_fnc_playerSkins;}"]; //Fix Custom Skin after ESC

sliderSetRange [3107, 0, 360];

//Cop / Civ Pre Check
if (_shop in ["bruce","dive","reb","kart"] && {!(playerSide isEqualTo civilian)}) exitWith {hint localize "STR_Shop_NotaCiv"; closeDialog 0;};
if (_shop == "reb" && {!license_civ_rebel}) exitWith {hint localize "STR_Shop_NotaReb"; closeDialog 0;};
if (_shop == "cop" && {!(playerSide isEqualTo west)}) exitWith {hint localize "STR_Shop_NotaCop"; closeDialog 0;};
if (_shop == "dive" && {!license_civ_dive}) exitWith {hint localize "STR_Shop_NotaDive"; closeDialog 0;};


private ["_pos","_oldPos","_oldDir","_oldBev","_testLogic","_nearVeh","_light"];
private ["_ut1","_ut2","_ut3","_ut4","_ut5"];

if (husky_SETTINGS(getNumber,"clothing_noTP") isEqualTo 1) then {
    _pos = getPosATL player;
} else {
    if (husky_SETTINGS(getNumber,"clothing_box") isEqualTo 1) then {
        _pos = [1000,1000,10000];
    } else {
        _pos = switch _shop do {
            case "reb": {[13590,12214.6,0.00141621]};
            case "cop": {[12817.5,16722.9,0.00151062]};
            case "kart": {[14120.5,16440.3,0.00139236]};
            default {[17088.2,11313.6,0.00136757]};
        };
    };

    _oldDir = getDir player;
    _oldPos = visiblePositionASL player;
    _oldBev = behaviour player;

    _testLogic = "Logic" createVehicleLocal _pos;
    _testLogic setPosATL _pos;

    _nearVeh = _testLogic nearEntities ["AllVehicles", 20];

    if (husky_SETTINGS(getNumber,"clothing_box") isEqualTo 1) then {
        _ut1 = "UserTexture10m_F" createVehicleLocal (_testLogic modelToWorld [0,5,10]);
        _ut1 attachTo [_testLogic,[0,5,5]];
        _ut1 setDir 0;
        _ut2 = "UserTexture10m_F" createVehicleLocal (_testLogic modelToWorld [5,0,10]);
        _ut2 attachTo [_testLogic,[5,0,5]];
        _ut2 setDir (getDir _testLogic) + 90;
        _ut3 = "UserTexture10m_F" createVehicleLocal (_testLogic modelToWorld [-5,0,10]);
        _ut3 attachTo [_testLogic,[-5,0,5]];
        _ut3 setDir (getDir _testLogic) - 90;
        _ut4 = "UserTexture10m_F" createVehicleLocal (_testLogic modelToWorld [0,-5,10]);
        _ut4 attachTo [_testLogic,[0,-5,5]];
        _ut4 setDir 180;
        _ut5 = "UserTexture10m_F" createVehicleLocal (_testLogic modelToWorld [0,0,10]);
        _ut5 attachTo [_testLogic,[0,0,0]];
        _ut5 setObjectTexture [0,"a3\map_data\gdt_concrete_co.paa"];
        detach _ut5;
        _ut5 setVectorDirAndUp [[0,0,-.33],[0,.33,0]];
    };

    _light = "#lightpoint" createVehicleLocal _pos;
    _light setLightBrightness 0.5;
    _light setLightColor [1,1,1];
    _light setLightAmbient [1,1,1];
    _light lightAttachObject [_testLogic, [0,0,0]];

    {
        if (_x != player) then {_x hideObject true;};
        true
    } count playableUnits;

    if (husky_SETTINGS(getNumber,"clothing_box") isEqualTo 0) then {
        {
            if (_x != player && _x != _light) then {_x hideObject true;};
            true
        } count _nearVeh;
    };

    if (husky_SETTINGS(getNumber,"clothing_box") isEqualTo 1) then {
        {
            _x setObjectTexture [0,"#(argb,8,8,3)color(0,0,0,1)"];
            true
        } count [_ut1,_ut2,_ut3,_ut4];
    };

    player setBehaviour "SAFE";
    if (_shop == "dive") then {
        player setPosATL [-1000, -1000, 10];
        sleep 0.0005;
    };
    player attachTo [_testLogic,[0,0,0]];
    player switchMove "";
    player setDir 360;
};

husky_clothing_store = _shop;

/* Store license check */
if (isClass(missionConfigFile >> "Licenses" >> husky_clothing_store)) then {
    _flag = M_CONFIG(getText,"Licenses",husky_clothing_store,"side");
    _displayName = M_CONFIG(getText,"Licenses",husky_clothing_store,"displayName");
    if !(LICENSE_VALUE(husky_clothing_store,_flag)) exitWith {
        hint format [localize "STR_Shop_YouNeed",localize _displayName];
        closeDialog 0;
    };
};

//initialize camera view
husky_shop_cam = "CAMERA" camCreate getPos player;
showCinemaBorder false;
husky_shop_cam cameraEffect ["Internal", "Back"];
husky_shop_cam camSetTarget (player modelToWorld [0,0,1]);
husky_shop_cam camSetPos (player modelToWorld [1,4,2]);
husky_shop_cam camSetFOV .33;
husky_shop_cam camSetFocus [50, 0];
husky_shop_cam camCommit 0;
husky_cMenu_lock = false;

if (isNull (findDisplay 3100)) exitWith {};

    private _display = findDisplay 3100;
    private _treelist = _display displayCtrl 3101;
    tvClear _treelist;
    private _colthingcat = ("true" configClasses (missionConfigFile >> "Clothing" >> husky_clothing_store >> "Catogary"));
    private "_treeVatId";
    {
        private _displanamecat = getText(_x >> "displaname");
        private _conditionss = getText(_x >> "conditions");
        if ([_conditionss] call husky_fnc_levelCheck) then {
        _treeVatId = _treelist tvadd[[],_displanamecat];
        };
        {
            private "_pic";
            private "_details";
            private "_undertreeid";
            private _className = _x select 0;
            private _displayName = _x select 1;
            private _price = _x select 2;
            if !(_className isEqualTo "NONE") then {
                _details = [_className] call husky_fnc_fetchCfgDetails;
                _pic = (_details select 2);
            };
            if ([_x] call husky_fnc_levelCheck) then {
                if (isNil "_details") then {
                    _undertreeid = _treelist tvAdd [[_treeVatId], _displayName];
                } else {
                    if (_displayName isEqualTo "") then {
                        _undertreeid = _treelist tvAdd [[_treeVatId], (_details select 1)];
                    } else {
                        _undertreeid = _treelist tvAdd [[_treeVatId], _displayName];
                    };
                    _treelist tvSetData [ [_treeVatId,_undertreeid],_className];
                    _treelist tvsetvalue [ [_treeVatId,_undertreeid],_price];
                    private _newpath = [_treeVatId] + [_undertreeid];
                    _treelist tvSetPicture [_newpath,_pic];
                    if (_price <= c126) then {
                        _treelist tvSetColor [_newpath, [0.059,0.82,0.173,1]];
                    } else {
                        _treelist tvSetColor [_newpath, [0.82,0.122,0.059,1]];
                    };
                };
            };
        } forEach getArray (_x >> "colthing");
    }forEach _colthingcat;

[player, uniform player] call husky_fnc_playerSkins;

waitUntil {isNull (findDisplay 3100)};
if (husky_SETTINGS(getNumber,"clothing_noTP") isEqualTo 0) then {
    {
        if (_x != player) then {_x hideObject false;};
        true
    } count playableUnits;
    if (husky_SETTINGS(getNumber,"clothing_box") isEqualTo 0) then {
        {
            if (_x != player && _x != _light) then {_x hideObject false;};
            true
        } count _nearVeh;
    };
    detach player;
    player setBehaviour _oldBev;
    player setPosASL _oldPos;
    player setDir _oldDir;
    if (husky_SETTINGS(getNumber,"clothing_box") isEqualTo 1) then {
        {
            deleteVehicle _x;
        } count [_testLogic,_ut1,_ut2,_ut3,_ut4,_ut5,_light];
    } else {
        {
            deleteVehicle _x;
            true
        } count [_testLogic,_light];
    };
};
husky_shop_cam cameraEffect ["TERMINATE","BACK"];
camDestroy husky_shop_cam;
husky_clothing_filter = 0;
if (isNil "husky_clothesPurchased") exitWith {
    husky_clothing_purchase = [-1,-1,-1,-1,-1];
    if !(husky_oldClothes isEqualTo "") then {player addUniform husky_oldClothes;} else {removeUniform player};
    if !(husky_oldHat isEqualTo "") then {player addHeadgear husky_oldHat} else {removeHeadgear player;};
    if !(husky_oldGlasses isEqualTo "") then {player addGoggles husky_oldGlasses;} else {removeGoggles player};
    if !(backpack player isEqualTo "") then {
        if (husky_oldBackpack isEqualTo "") then {
            removeBackpack player;
        } else {
            removeBackpack player;
            player addBackpack husky_oldBackpack;
            clearAllItemsFromBackpack player;
            if (count husky_oldBackpackItems > 0) then {
                {
                    [_x,true,true] call husky_fnc_handleItem;
                    true
                } count husky_oldBackpackItems;
            };
        };
    };

    if (count husky_oldUniformItems > 0) then {
        {
            [_x,true,false,false,true] call husky_fnc_handleItem;
            true
        } count husky_oldUniformItems;
    };

    if (vest player != "") then {
        if (husky_oldVest isEqualTo "") then {
            removeVest player;
        } else {
            player addVest husky_oldVest;
            if (count husky_oldVestItems > 0) then {
                {
                    [_x,true,false,false,true] call husky_fnc_handleItem;
                    true
                } count husky_oldVestItems;
            };
        };
    };
    [player, uniform player] call husky_fnc_playerSkins;
};
husky_clothesPurchased = nil;

//Check uniform purchase.
if ((husky_clothing_purchase select 0) isEqualTo -1) then {
    if (husky_oldClothes != uniform player) then {player addUniform husky_oldClothes;};
};
//Check hat
if ((husky_clothing_purchase select 1) isEqualTo -1) then {
    if (husky_oldHat != headgear player) then {
        if (husky_oldHat isEqualTo "") then {
            removeHeadGear player;
        } else {
            player addHeadGear husky_oldHat;
        };
    };
};
//Check glasses
if ((husky_clothing_purchase select 2) isEqualTo -1) then {
    if (husky_oldGlasses != goggles player) then {
        if (husky_oldGlasses isEqualTo "") then  {
            removeGoggles player;
        } else {
            player addGoggles husky_oldGlasses;
        };
    };
};
//Check Vest
if ((husky_clothing_purchase select 3) isEqualTo -1) then {
    if (husky_oldVest != vest player) then {
        if (husky_oldVest isEqualTo "") then {removeVest player;} else {
            player addVest husky_oldVest;
            {
                [_x,true,false,false,true] call husky_fnc_handleItem;
                true
            } count husky_oldVestItems;
        };
    };
};

//Check Backpack
if ((husky_clothing_purchase select 4) isEqualTo -1) then {
    if (husky_oldBackpack != backpack player) then {
        if (husky_oldBackpack isEqualTo "") then {removeBackpack player;} else {
            removeBackpack player;
            player addBackpack husky_oldBackpack;
            {
                [_x,true,true] call husky_fnc_handleItem;
                true
            } count husky_oldBackpackItems;
        };
    };
};

husky_clothing_purchase = [-1,-1,-1,-1,-1];
[] call husky_fnc_saveGear;
