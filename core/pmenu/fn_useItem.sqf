#include "..\..\script_macros.hpp"
/*
File: fn_useItem.sqf
Author: Bryan "Tonic" Boardwine

Description:
Main function for item effects and functionality through the player menu.

Thieves

Minefactory.eu

Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
/*
disableSerialization;
_display = findDisplay 9006;

_inventoryListbox = _display displayCtrl 2401;

if (lbCurSel _inventoryListbox == -1) exitWith
{
[] spawn
{
disableSerialization;
_display = findDisplay 9006;
_inventoryListbox = _display displayCtrl 2401;
for "_i" from 1 to 3 do
{
_inventoryListbox ctrlSetFade 0.5;
_inventoryListbox ctrlCommit 0.1;
sleep 0.1;
_inventoryListbox ctrlSetFade 0;
_inventoryListbox ctrlCommit 0.1;
sleep 0.1;
};
};
};

_item = _inventoryListbox lbData (lbCurSel _inventoryListbox);
if ((lbCurSel _inventoryListbox) isEqualTo -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
*/

private "_item";
disableSerialization;
if ((lbCurSel 2005) isEqualTo -1) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du musst zuerst einen Gegenstand auswählen!</t>";};
    _item = CONTROL_DATA(2005);

    private _craftingPlans = []; {
    private _variable = getText(_x >> "variable");
        _craftingPlans pushBack _variable;
    } forEach ("true" configClasses (missionConfigFile >> "Cation_CraftingV2" >> "plans"));
 
    switch (true) do {
        
        case (_item in _craftingPlans): {
            if ([false,_item,1] call husky_fnc_handleInv) then {
                if (!([_item,true] call cat_craftingV2_fnc_handlePlan)) then {
                    [true,_item,1] call husky_fnc_handleInv;
                };
            };
        };


        case (_item in ["waterBottle","coffee","redgull","Moonshine","Bier","Wein","Wodka","Rum"]): {
            if ([false,_item,1] call husky_fnc_handleInv) then {
                [player,"drink"] remoteExec ["husky_fnc_say3D",RANY];
                husky_thirst = 100;
                if (husky_SETTINGS(getNumber,"enable_fatigue") isEqualTo 1) then {player setFatigue 0;};
                    if (_item isEqualTo "redgull" && {husky_SETTINGS(getNumber,"enable_fatigue") isEqualTo 1}) then {
                        [] spawn {
                            husky_redgull_effect = time;
                            titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
                            player enableFatigue false;
                            waitUntil {!alive player || ((time - husky_redgull_effect) > (3 * 60))};
                            player enableFatigue true;
                        };
                    };
                };
            };
            /*
            case (_item == "battery"):{
            if (([false,_item,1] call husky_fnc_handleInv) > 0) then
            {
            husky_battery = 100;
        };
    };



case (_item == "smokeWall"): {
    call husky_fnc_smokeWall;
};

case (_item == "vehicleBox"): {
	[cursorObject] spawn husky_fnc_vehicleBox;
};

case (_item == "Graffiti1"):
{
	[player,"images\graffiti\Graffiti_ACAB_F.paa"] call husky_fnc_sprayPaint;
};

case (_item == "Graffiti2"):
{
	[player,"images\graffiti\Graffiti_Dale_F.paa"] call husky_fnc_sprayPaint;
};

case (_item == "Graffiti3"):
{
	[player,"images\graffiti\Graffiti_Weed_F2.paa"] call husky_fnc_sprayPaint;
};

case (_item == "Graffiti4"):
{
	[player,"images\graffiti\Graffiti_DE100_F2.paa"] call husky_fnc_sprayPaint;
};
*/
case (_item isEqualTo "radarfalle"): {
    [] spawn husky_fnc_speedtrapAdd;
    closeDialog 0;
};
case (_item isEqualTo "lootboxnormal"): {
    if ([false,_item,1] call husky_fnc_handleInv) then {
        [] spawn husky_fnc_lootboxnormal;
        closeDialog 0;
    };
};
case (_item isEqualTo "lootboxepic"): {
    if ([false,_item,1] call husky_fnc_handleInv) then {
        [] spawn husky_fnc_lootboxepic;
        closeDialog 0;
    };
};
case (_item isEqualTo "lootboxlegend"): {
    if ([false,_item,1] call husky_fnc_handleInv) then {
        [] spawn husky_fnc_lootboxlegend;
        closeDialog 0;
    };
};
case (_item isEqualTo "keycard"): {
    [cursorObject] spawn husky_fnc_keycard;
    closeDialog 0;
};

case (_item isEqualTo "boltcutter"): {
    [cursorObject] spawn husky_fnc_boltcutter;
    closeDialog 0;
};
case (_item isEqualTo "boltcuttergate"): {
    [cursorObject] spawn husky_fnc_boltcutgate;
    closeDialog 0;
};
case (_item isEqualTo "brecheisen"): {
    [cursorObject] spawn husky_fnc_brecheisen;
    closeDialog 0;
};
case (_item isEqualTo "stihlsaege"): {
    [cursorObject] spawn husky_fnc_stihlsaege;
    closeDialog 0;
};

case (_item isEqualTo "chip0"): {
    [_item] spawn husky_fnc_chiptune;
    closeDialog 0;
};
case (_item isEqualTo "chip1"): {
    [_item] spawn husky_fnc_chiptune;
    closeDialog 0;
};
case (_item isEqualTo "chip2"): {
    [_item] spawn husky_fnc_chiptune;
    closeDialog 0;
};
case (_item isEqualTo "chip3"): {
    [_item] spawn husky_fnc_chiptune;
    closeDialog 0;
};
case (_item isEqualTo "chip4"): {
    [_item] spawn husky_fnc_chiptune;
    closeDialog 0;
};
case (_item isEqualTo "chip5"): {
    [_item] spawn husky_fnc_chiptune;
    closeDialog 0;
};
case (_item isEqualTo "chip6"): {
    [_item] spawn husky_fnc_chiptune;
    closeDialog 0;
};
/*
	case (EQUAL(_item,"chip0"));
	case (EQUAL(_item,"chip1"));
	case (EQUAL(_item,"chip2"));
	case (EQUAL(_item,"chip3"));
	case (EQUAL(_item,"chip4"));
	case (EQUAL(_item,"chip5"));
	case (EQUAL(_item,"chip6")): {
        [_item] spawn husky_fnc_chiptune;
    };
*/
/*
case (EQUAL(_item,"toolbox")): {
    [] spawn husky_fnc_toolbox;
};
*/
case (_item isEqualTo "metalldetektor"): {
    [_item] spawn husky_fnc_toolbox;
    closeDialog 0;
};

case (_item isEqualTo "blastingcharge"): {
    player reveal fed_bank;
    (group player) reveal fed_bank;
    [cursorObject] spawn husky_fnc_blastingCharge;
    closeDialog 0;
};

case (_item isEqualTo "defusekit"): {
    [cursorObject] spawn husky_fnc_defuseKit;
    closeDialog 0;
};

case (_item isEqualTo "storagefest1"): {
    [1] remoteExecCall ["husky_fnc_storageBox"];	//Land_PlasticCase_01_large_CBRN_F
};

case (_item isEqualTo "storagefest2"): {
    [2] remoteExecCall ["husky_fnc_storageBox"];	//B_supplyCrate_F
};

case (_item isEqualTo "storagefest3"): {
    [3] remoteExecCall ["husky_fnc_storageBox"];	//Land_PaperBox_closed_F
};

case (_item isEqualTo "storagefest4"): {
    [4] remoteExecCall ["husky_fnc_storageBox"];	//Box_East_AmmoVeh_F
};

case (_item isEqualTo "storageflussig1"): {
    [5] remoteExecCall ["husky_fnc_storageBox"];	//Land_MetalBarrel_F
};

case (_item isEqualTo "storageflussig2"): {
    [6] remoteExecCall ["husky_fnc_storageBox"];	//Land_WaterBarrel_F
};

case (_item isEqualTo "storageflussig3"): {
    [7] remoteExecCall ["husky_fnc_storageBox"];	//Land_WaterTank_F
};

case (_item isEqualTo "storageuran1"): {
    [8] remoteExecCall ["husky_fnc_storageBox"];	//HazmatBag_01_F
};

/*
case (_item isEqualTo "flussigklein"): {
    [4] remoteExecCall ["husky_fnc_storageBox"];	//CargoNet_01_barrels_F
};
*/

case (_item isEqualTo "spikeStrip"): {
    //if (!isNull husky_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"; closeDialog 0};
    if ([false,_item,1] call husky_fnc_handleInv) then {
        [] spawn husky_fnc_spikeStrip;
        closeDialog 0;
    };
};

case (_item isEqualTo "fuelFull"): {
if !(isNull objectParent player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
    [] spawn husky_fnc_jerryRefuel;
    closeDialog 0;
};

case (_item isEqualTo "fuelEmpty"): {
    [] spawn husky_fnc_jerryCanRefuel;
    closeDialog 0;
};

case (_item isEqualTo "lockpick"): {
    [] spawn husky_fnc_lockpick;
    closeDialog 0;
};

case (_item isEqualTo "lockpickplus"): {
    [] spawn husky_fnc_lockpickplus;
    closeDialog 0;
};

case (_item isEqualTo "lockpickloot"): {
    [] spawn husky_fnc_lockpickloot;
    closeDialog 0;
};

	case (_item isEqualTo "gpstracker"): {
		closeDialog 0;
		if (!(cursorObject isKindOf "AllVehicles")) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du kannst den GPS Tracker hier nicht benutzen.</t>";};
		if (isNull cursorObject) exitWith {};
		if (player distance cursorObject > 7) exitWith {  hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du musst dich näher an das Fahrzeug stellen!</t>";};
		createDialog "husky_gpsTracker";
    };


	case (_item isEqualTo "schmerzmittel"): {
    _schaden = getdammage player;
    if (_schaden isEqualTo 0) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du brauchst kein Schmerzmittel!</t>";};
        if ([false,_item,1] call husky_fnc_handleInv) then {
            player setdamage (_schaden - 0.25);
            hint parseText "<t underline='true' size='1.8' color='#7cff00'>Erfolgreich geheilt</t><br /><t size='1.5' color='#ffffff'>Erfolgreich geheilt</t>";
        };
    };
	
	case (_item isEqualTo "morphin"): {
    _schaden = getdammage player;
    if (_schaden isEqualTo 0) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du brauchst kein Schmerzmittel!</t>";};
        if ([false,_item,1] call husky_fnc_handleInv) then {
            player setdamage (_schaden - 1.0);
            hint parseText "<t underline='true' size='1.8' color='#7cff00'>Erfolgreich geheilt</t><br /><t size='1.5' color='#ffffff'>Erfolgreich geheilt</t>";
        };
    };

    case (_item isEqualTo "speedbomb"): {
        [] spawn husky_fnc_speedBomb;
        closeDialog 0;
    };

    case (_item isEqualTo "EHK"): {
        //if ([false,_item,1] call husky_fnc_handleInv) then {
        [] spawn husky_fnc_EHK;
        closeDialog 0;
        //};
    };

    case (_item in ["marijuana","medcannabis"]): {
        if ([false,_item,1] call husky_fnc_handleInv) then {
            [] spawn husky_fnc_cannabis;
            closeDialog 0;
        };
    };

    case (_item in ["EphedrinV"]): {
        if ([false,_item,1] call husky_fnc_handleInv) then {
            [] spawn husky_fnc_cocaine;
            closeDialog 0;
        };
    };

    case (_item in ["LSD"]): {
        if ([false,_item,1] call husky_fnc_handleInv) then {
            [] spawn husky_fnc_heroine;
            closeDialog 0;
        };
    };

    case (_item in ["Moonshine","Bier","Wein","Wodka","Rum"]): {
        if ([false,_item,1] call husky_fnc_handleInv) then {
            [] spawn husky_fnc_alcool;
            closeDialog 0;
        };
    };

    case (_item in ["doenerspecial"]): {
        if (([false,_item,1] call husky_fnc_handleInv)) then {
            [] spawn husky_fnc_animal;
            closeDialog 0;
        };
    };

    case (_item in ["alctest"]) : {
        [] spawn husky_fnc_alcoolTest;
    };

    case (_item in ["drogtest"]) : {
        [] spawn husky_fnc_drogueTest;
    };

    case (_item == "einsatzschild"): {
		if (playerSide != west) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du bist kein Polizist, zum Benutzen brauchst du eine Spezialausrüstung und eine Sonderausbildung!!</t>";};
		if (husky_Einsatzschild) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du kannst keine zwei Einsatzschilder gleichzeitig benutzen!!</t>";};
        if (([false,_item,1] call husky_fnc_handleInv)) then {
            [] spawn husky_fnc_einsatzschild;
        };
    };

    case (_item == "smokeWall"): {
        [] call husky_fnc_smokeWall;		//ohne []?
    };

    case (_item == "holzbox"):{
        //if (!isNull husky_holzbox) exitWith {["Hast bereits einen Sandsack!", [0, 0, 0, 1], [1,0.647058823529412,0,1], "Fehler"] spawn husky_fnc_createNotification;};
        if (([false,_item,1] call husky_fnc_handleInv)) then {
            [] spawn husky_fnc_holzbox;
            closeDialog 0;
        };
    };

    case (_item == "sandsackecke"):{
        //if (!isNull husky_sandsackecke) exitWith {["Hast bereits einen Sandsack!", [0, 0, 0, 1], [1,0.647058823529412,0,1], "Fehler"] spawn husky_fnc_createNotification;};
        if (([false,_item,1] call husky_fnc_handleInv)) then {
            [] spawn husky_fnc_sandsackecke;
            closeDialog 0;
        };
    };

    case (_item == "sandsackende"):{
        //if (!isNull husky_sandsackende) exitWith {["Hast bereits einen Sandsack!", [0, 0, 0, 1], [1,0.647058823529412,0,1], "Fehler"] spawn husky_fnc_createNotification;};
        if (([false,_item,1] call husky_fnc_handleInv)) then {
            [] spawn husky_fnc_sandsackende;
            closeDialog 0;
        };
    };

    case (_item == "sandsackkurz"):{
        //if (!isNull husky_sandsackkurz) exitWith {["Hast bereits einen Sandsack!", [0, 0, 0, 1], [1,0.647058823529412,0,1], "Fehler"] spawn husky_fnc_createNotification;};
        if (([false,_item,1] call husky_fnc_handleInv)) then {
            [] spawn husky_fnc_sandsackkurz;
            closeDialog 0;
        };
    };

    case (_item == "sandsackkurve"):{
        //if (!isNull husky_sandsackkurve) exitWith {["Hast bereits einen Sandsack!", [0, 0, 0, 1], [1,0.647058823529412,0,1], "Fehler"] spawn husky_fnc_createNotification;};
        if (([false,_item,1] call husky_fnc_handleInv)) then {
            [] spawn husky_fnc_sandsackkurve;
            closeDialog 0;
        };
    };

    case (_item == "sandsacklang"):{
        //if (!isNull husky_sandsacklang) exitWith {["Hast bereits einen Sandsack!", [0, 0, 0, 1], [1,0.647058823529412,0,1], "Fehler"] spawn husky_fnc_createNotification;};
        if (([false,_item,1] call husky_fnc_handleInv)) then {
            [] spawn husky_fnc_sandsacklang;
            closeDialog 0;
        };
    };

    case (_item == "kidney"): {
        if(([false,_item,1] call husky_fnc_handleInv)) then {
            player setVariable["missingOrgan",false,true];
            husky_thirst = 100;
            husky_hunger = 100;
            player setFatigue .5;
        };
    };

    case (_item isEqualTo "fakeidcard"): {
        husky_idcard_fake = true;
        createDialog "aapps_idcard";
    };

    case (_item isEqualTo "sos"): {
        [] spawn husky_fnc_copbackup;
        closeDialog 0;
    };

    case (_item isEqualTo "norecoil"): {
        if ([false,_item,1] call husky_fnc_handleInv) then {
            [] spawn husky_fnc_norecoil;
            closeDialog 0;
        };
    };

    case (_item isEqualTo "flashlightshoulder"): {
        [] spawn husky_fnc_useFlashlight;
        closeDialog 0;
    };

    case (_item in ["apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle_soup","hen","rooster","sheep","goat","donuts","tbacon","peach","doener","doenerspecial","banane","kokosnuss"]): {
        if (!(M_CONFIG(getNumber,"VirtualItems",_item,"edible") isEqualTo -1)) then {
            if ([false,_item,1] call husky_fnc_handleInv) then {
                [player,"eat"] remoteExec ["husky_fnc_say3D",RANY];
                _val = M_CONFIG(getNumber,"VirtualItems",_item,"edible");
                _sum = husky_hunger + _val;
                switch (true) do {
                    case (_val < 0 && _sum < 1): {husky_hunger = 5;}; //This adds the ability to set the entry edible to a negative value and decrease the hunger without death
                    case (_sum > 100): {husky_hunger = 100;};
                    default {husky_hunger = _sum;};
                };
            };
        };
    };

    default {
        hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Dieser Gegenstand ist nicht benutzbar.</t>";
    };
};

[] call husky_fnc_p_updateMenu;
[] call husky_fnc_hudUpdate;
