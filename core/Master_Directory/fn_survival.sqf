#include "..\..\script_macros.hpp"
/*
    File: fn_survival.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    All survival? things merged into one thread.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

if !(isNil "The_programmer_initialised") exitWith {};

private ["_fnc_food","_fnc_water","_foodTime","_waterTime","_bp","_walkDis","_lastPos","_curPos","_illegalmarkers"];
_fnc_food =  {
    if (husky_hunger < 2) then {player setDamage 1; [getPlayerUID player, "Verhungert 2", format ["%1 - %2 ist verhungert Bargeld: %3 Bank: %4 ",profileName,(getPlayerUID player),[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky]; [0,format["%1 ist verhungert!",profileName]] remoteExec ["husky_fnc_broadcast",0]; hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du bist verhungert!</t>";}

    else
    {
        husky_hunger = husky_hunger - 5;	// - 5
        [] call husky_fnc_hudUpdate;
        if (husky_hunger < 2) then {player setDamage 1;[getPlayerUID player, "Verhungert", format ["%1 - %2 ist verhungert Bargeld: %3 Bank: %4 ",profileName,(getPlayerUID player),[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky]; [0,format["%1 war zu dumm um was zu essen!",profileName]] remoteExec ["husky_fnc_broadcast",0];  hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du bist verhungert!</t>";};
        switch (husky_hunger) do {
            case 30: {
				hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast schon eine Weile nichts mehr gegessen! Du solltest langsam etwas zum Essen suchen!</t>";
			};
            case 20: {
				hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast Hunger! Du solltest schnell etwas essen oder du wirst verhungern.</t>";
			};
            case 10: {
                 hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du bist am Verhungern! Du wirst sterben, wenn du nichts zum Essen findest!</t>";
                if (husky_SETTINGS(getNumber,"enable_fatigue") isEqualTo 1) then {player setFatigue 1;};
            };
        };
    };
};

_fnc_water = {
    if (husky_thirst < 2) then {player setDamage 1; [getPlayerUID player, "Verdurstet 2", format ["%1 - %2 ist verdurstet Bargeld: %3 Bank: %4 ",profileName,(getPlayerUID player),[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky]; [0,format["%1 ist verdurstet!",profileName]] remoteExec ["husky_fnc_broadcast",0]; hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du bist verdurstet!</t>";}
    else
    {
        husky_thirst = husky_thirst - 5;	// - 5
        [] call husky_fnc_hudUpdate;
        if (husky_thirst < 2) then {player setDamage 1;[getPlayerUID player, "Verdurstet", format ["%1 - %2 ist verdurstet Bargeld: %3 Bank: %4 ",profileName,(getPlayerUID player),[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky]; [0,format["%1 war zu dumm um was zu trinken!",profileName]] remoteExec ["husky_fnc_broadcast",0]; hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du bist verdurstet!</t>";};
        switch (husky_thirst) do  {
            case 30: {
				hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast schon eine Weile nichts mehr getrunken! Du solltest langsam etwas zum Trinken suchen!</t>";
			};
            case 20: {
                hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast Durst! Du solltest schnell etwas trinken oder du wirst verdursten!</t>";
                if (husky_SETTINGS(getNumber,"enable_fatigue") isEqualTo 1) then {player setFatigue 1;};
            };
            case 10: {
                 hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du bist am Verdursten! Du wirst sterben, wenn du nichts zum Trinken findest!</t>";
                if (husky_SETTINGS(getNumber,"enable_fatigue") isEqualTo 1) then {player setFatigue 1;};
            };
        };
    };
};

//Setup the time-based variables.
_foodTime = time;
_waterTime = time;
_walkDis = 0;
_bp = "";
_lastPos = visiblePosition player;
_lastPos = (_lastPos select 0) + (_lastPos select 1);
_lastState = vehicle player;

for "_i" from 0 to 1 step 0 do {
    /* Thirst / Hunger adjustment that is time based */
    if ((time - _waterTime) > 660  && /*{!player getVariable['admin_godmode_status',true,true]}*/ {!(FETCH_CONST(husky_adminlevel) >= 5)}  ) then {[] call _fnc_water; _waterTime = time;};		//600		//660
    if ((time - _foodTime) > 910  && {!(FETCH_CONST(husky_adminlevel) >= 5)} ) then {[] call _fnc_food; _foodTime = time;};			//850		//910


    /* Adjustment of carrying capacity based on backpack changes */
    /*if (backpack player isEqualTo "") then {
        husky_maxWeight = husky_SETTINGS(getNumber,"total_maxWeight");
        _bp = backpack player;
    } else {
        if (!(backpack player isEqualTo "") && {!(backpack player isEqualTo _bp)}) then {
            _bp = backpack player;
            husky_maxWeight = husky_SETTINGS(getNumber,"total_maxWeight") + round(FETCH_CONFIG2(getNumber,"CfgVehicles",_bp,"maximumload") / 4);
        };
    };*/

	/* Adjustment of carrying capacity based on backpack changes */
	if (backpack player isEqualTo "") then {
    husky_maxWeight = husky_SETTINGS(getNumber,"total_maxWeight");
    _bp = backpack player;
    } else {
        if (!(backpack player isEqualTo "") && {!(backpack player isEqualTo _bp)}) then {
           _bp = backpack player;
           _load = 0;
           _load = M_CONFIG(getNumber,"huskyCfgBackpacks",_bp,"vItemSpace");
           husky_maxWeight = husky_SETTINGS(getNumber,"total_maxWeight") + _load;
        };
    };
	/*
	if (vest player isEqualTo "") then {
		husky_maxWeight_vest = 0;
		_vest = vest player;
	} else {

		if (!(vest player isEqualTo "") && (vest player in ["V_Pocketed_black_F"])) then {
			_vest = vest player;
			husky_maxWeight_vest = 200;
			husky_maxWeight = husky_maxWeight + husky_maxWeight_vest;
		};
	};
	*/

    /* Check if the player's state changed? */
    if (!(vehicle player isEqualTo _lastState) || {!alive player}) then {
        [] call husky_fnc_updateViewDistance;
        _lastState = vehicle player;
    };

    /* Check if the weight has changed and the player is carrying to much */
    if (husky_carryWeight > husky_maxWeight && {!isForcedWalk player} && {!husky_god}) then {
        player forceWalk true;
        if (husky_SETTINGS(getNumber,"enable_fatigue") isEqualTo 1) then {player setFatigue 1;};
           hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du trägst zu viel bei dir! Du bist nicht in der Lage, zu rennen oder dich schnell zu bewegen, bis du einige Gegenstände abgelegt hast!</t>";
    } else {
        if (isForcedWalk player) then {
            player forceWalk false;
        };
    };

    /* Travelling distance to decrease thirst/hunger which is captured every second so the distance is actually greater then 650 */
    if (!alive player || {husky_god}) then {_walkDis = 0;} else {
        _curPos = visiblePosition player;
        _curPos = (_curPos select 0) + (_curPos select 1);
        if (!(_curPos isEqualTo _lastPos) && {(isNull objectParent player)}) then {
            _walkDis = _walkDis + 1;
            if (_walkDis isEqualTo 650) then {
                _walkDis = 0;
                husky_thirst = husky_thirst - 5;
                husky_hunger = husky_hunger - 5;
                [] call husky_fnc_hudUpdate;
            };
        };
        _lastPos = visiblePosition player;
        _lastPos = (_lastPos select 0) + (_lastPos select 1);
    };
    uiSleep 1;
};
