#include "..\..\script_macros.hpp"
/*
    File: fn_requestReceived.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Called by the server saying that we have a response so let's
    sort through the information, validate it and if all valid
    set the client up.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

private _count = count _this;
husky_session_tries = husky_session_tries + 1;
if (husky_session_completed) exitWith {}; //Why did this get executed when the client already initialized? Fucking arma...
if (husky_session_tries > 3) exitWith {cutText[localize "STR_Session_Error","BLACK FADED"]; 0 cutFadeOut 999999999;};

0 cutText [localize "STR_Session_Received","BLACK FADED"];
0 cutFadeOut 9999999;

//Error handling and junk..
if (isNil "_this") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if (_this isEqualType "") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if (count _this isEqualTo 0) exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if ((_this select 0) isEqualTo "Error") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if (!(getPlayerUID player isEqualTo (_this select 0))) exitWith {[] call SOCK_fnc_dataQuery;};

//Lets make sure some vars are not set before hand.. If they are get rid of them, hopefully the engine purges past variables but meh who cares.


//Parse basic player information.
c126 = parseNumber (_this select 2);
b126 = parseNumber (_this select 3);
CONST(husky_adminlevel,(_this select 4));
if (husky_SETTINGS(getNumber,"donor_level") isEqualTo 1) then {
    CONST(husky_donorlevel,(_this select 5));
} else {
    CONST(husky_donorlevel,0);
};

#define CONST(var1,var2) var1 = compile (if (var2 isEqualType "") then {var2} else {str(var2)})

//Loop through licenses
if (count (_this select 6) > 0) then {
    {missionNamespace setVariable [(_x select 0),(_x select 1)];} forEach (_this select 6);
};

dbid = parseNumber (_this select 0);

//Parse side specific information.
switch (playerSide) do {
    case west: {
        CONST(husky_coplevel,(_this select 7));
		CONST(husky_zolllevel,(_this select 13));
		CONST(husky_seklevel,(_this select 14));
		CONST(husky_bkalevel,(_this select 15));
        CONST(husky_medicLevel,0);

        husky_blacklisted = _this select 9;
        if (husky_SETTINGS(getNumber,"save_playerStats") isEqualTo 1) then {
            husky_hunger = ((_this select 10) select 0);
            husky_thirst = ((_this select 10) select 1);
            player setDamage ((_this select 10) select 2);
        };

		//idcard
		if ((_this select 12) isEqualTo []) then {
			husky_side_noidcard = true;
		} else {
			husky_idcard_data = _this select 12;
		};

		//Coins
		COINS = parseNumber (_this select 16);
		
		//Position
		/*
        if (husky_SETTINGS(getNumber,"save_cop_position") isEqualTo 1) then {
            husky_is_alive = _this select 10;
            husky_cop_position = _this select 11;
            if (husky_is_alive) then {
                if !(count husky_cop_position isEqualTo 3) then {diag_log format ["[requestReceived] Bad position received. Data: %1",husky_cop_position];husky_is_alive =false;};
                if (husky_cop_position distance (getMarkerPos "respawn_west") < 300) then {husky_is_alive = false;};
            };
        };*/
    };

    case civilian: {
        husky_is_arrested = _this select 7;
		player setVariable ["JailTime",(_this select 16),true];
        CONST(husky_coplevel, 0);
        CONST(husky_medicLevel, 0);
		CONST(husky_zolllevel, 0);
		CONST(husky_seklevel, 0);
		CONST(husky_bkalevel, 0);

        husky_houses = _this select (_count - 2);
        if (husky_SETTINGS(getNumber,"save_playerStats") isEqualTo 1) then {
            husky_hunger = ((_this select 9) select 0);
            husky_thirst = ((_this select 9) select 1);
            player setDamage ((_this select 9) select 2);
        };

        //Position
        if (husky_SETTINGS(getNumber,"save_civilian_position") isEqualTo 1) then {
            husky_is_alive = _this select 10;
            husky_civ_position = _this select 11;
            if (husky_is_alive) then {
                if !(count husky_civ_position isEqualTo 3) then {diag_log format ["[requestReceived] Bad position received. Data: %1",husky_civ_position];husky_is_alive =false;};
                if (husky_civ_position distance (getMarkerPos "respawn_civilian") < 300) then {husky_is_alive = false;};
            };
        };

        {
            _house = nearestObject [(call compile format ["%1",(_x select 0)]), "House"];
            husky_vehicles pushBack _house;
        } forEach husky_houses;


		husky_gangData = [_this select 14,_this select 15];
		if (!(husky_gangData isEqualTo [-1,-1])) then {
			[(husky_gangData select 0)] spawn husky_fnc_gang_findGang;
		} else {
			[player] join grpNull;
			player setVariable ["gang_init_done",true,true];
		};


		//idcard
		if ((_this select 13) isEqualTo []) then {
			husky_side_noidcard = true;
		} else {
			husky_idcard_data = _this select 13;
		};

		//Coins
		COINS = parseNumber (_this select 17);
		//Weapon Timer
		husky_w_time = _this select 18;
		
		//UID

    };

    case independent: {
        CONST(husky_medicLevel,(_this select 7));
        CONST(husky_coplevel,0);
		CONST(husky_zolllevel, 0);
		CONST(husky_seklevel, 0);
		CONST(husky_bkalevel, 0);
		//husky_blacklistedmed = _this select 12;
        if (husky_SETTINGS(getNumber,"save_playerStats") isEqualTo 1) then {
            husky_hunger = ((_this select 9) select 0);
            husky_thirst = ((_this select 9) select 1);
            player setDamage ((_this select 9) select 2);
        };

		if ((_this select 11) isEqualTo []) then {
			husky_side_noidcard = true;
		} else {
			husky_idcard_data = _this select 11;
		};
		//Coins
		COINS = parseNumber (_this select 12);
		
		//Position
		/*
        if (husky_SETTINGS(getNumber,"save_med_position") isEqualTo 1) then {
            husky_is_alive = _this select 10;
            save_med_position = _this select 11;
            if (husky_is_alive) then {
                if !(count save_med_position isEqualTo 3) then {diag_log format ["[requestReceived] Bad position received. Data: %1",save_med_position];husky_is_alive =false;};
                if (save_med_position distance (getMarkerPos "respawn_guerrila") < 300) then {husky_is_alive = false;};
            };
        };*/
    };
};

husky_gear = _this select 8;
[true] call husky_fnc_loadGear;

if (count (_this select (_count - 1)) > 0) then {
    {husky_vehicles pushBack _x;} forEach (_this select (_count - 1));
};

husky_session_completed = true;


/*
private _count = count _this;
husky_session_tries = husky_session_tries + 1;
if (husky_session_completed) exitWith {}; //Why did this get executed when the client already initialized? Fucking arma...
if (husky_session_tries > 3) exitWith {cutText[localize "STR_Session_Error","BLACK FADED"]; 0 cutFadeOut 999999999;};

0 cutText [localize "STR_Session_Received","BLACK FADED"];
0 cutFadeOut 9999999;

//Error handling and junk..
if (isNil "_this") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if (_this isEqualType "") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if (count _this isEqualTo 0) exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if ((_this select 0) isEqualTo "Error") exitWith {[] call SOCK_fnc_insertPlayerInfo;};
if (!(getPlayerUID player isEqualTo (_this select 0))) exitWith {[] call SOCK_fnc_dataQuery;};

//Lets make sure some vars are not set before hand.. If they are get rid of them, hopefully the engine purges past variables but meh who cares.
if (!isServer && (!isNil "husky_adminlevel" || !isNil "husky_coplevel" || !isNil "husky_donorlevel")) exitWith {
    [profileName,getPlayerUID player,"VariablesAlreadySet"] remoteExecCall ["SPY_fnc_cookieJar",RSERV];
    [profileName,format ["Variables set before client initialization...\nhusky_adminlevel: %1\nhusky_coplevel: %2\nhusky_donorlevel: %3",husky_adminlevel,husky_coplevel,husky_donorlevel]] remoteExecCall ["SPY_fnc_notifyAdmins",RCLIENT];
    sleep 0.9;
    failMission "SpyGlass";
};

//Parse basic player information.
c126 = parseNumber (_this select 2);
b126 = parseNumber (_this select 3);
CONST(husky_adminlevel,(_this select 4));
if (husky_SETTINGS(getNumber,"donor_level") isEqualTo 1) then {
    CONST(husky_donorlevel,(_this select 5));
} else {
    CONST(husky_donorlevel,0);
};

//Loop through licenses
if (count (_this select 6) > 0) then {
    {missionNamespace setVariable [(_x select 0),(_x select 1)];} forEach (_this select 6);
};

//Parse side specific information.
switch (playerSide) do {
    case west: {
        CONST(husky_coplevel,(_this select 7));
		CONST(husky_zolllevel,(_this select 13));
		CONST(husky_seklevel,(_this select 14));
		CONST(husky_bkalevel,(_this select 15));
        CONST(husky_medicLevel,0);
		CONST(husky_secLevel, 0);
		CONST(husky_rebLevel, 0);
		CONST(husky_smLevel, 0);

        husky_blacklisted = _this select 9;
        if (husky_SETTINGS(getNumber,"save_playerStats") isEqualTo 1) then {
            husky_hunger = ((_this select 10) select 0);
            husky_thirst = ((_this select 10) select 1);
            player setDamage ((_this select 10) select 2);
        };

		//idcard
		if ((_this select 12) isEqualTo []) then {
			husky_side_noidcard = true;
		} else {
			husky_idcard_data = _this select 12;
		};
    };

    case civilian: {
        husky_is_arrested = _this select 7;
		player setVariable ["JailTime",(_this select 16),true];
        CONST(husky_coplevel, 0);
        CONST(husky_medicLevel, 0);
		CONST(husky_secLevel,(_this select 17));
		CONST(husky_rebLevel,(_this select 18));
		CONST(husky_smLevel,(_this select 19));

        husky_houses = _this select (_count - 2);
        if (husky_SETTINGS(getNumber,"save_playerStats") isEqualTo 1) then {
            husky_hunger = ((_this select 9) select 0);
            husky_thirst = ((_this select 9) select 1);
            player setDamage ((_this select 9) select 2);
        };

        //Position
        if (husky_SETTINGS(getNumber,"save_civilian_position") isEqualTo 1) then {
            husky_is_alive = _this select 10;
            husky_civ_position = _this select 11;
            if (husky_is_alive) then {
                if !(count husky_civ_position isEqualTo 3) then {diag_log format ["[requestReceived] Bad position received. Data: %1",husky_civ_position];husky_is_alive =false;};
                if (husky_civ_position distance (getMarkerPos "respawn_civilian") < 300) then {husky_is_alive = false;};
            };
        };

        {
            _house = nearestObject [(call compile format ["%1",(_x select 0)]), "House"];
            husky_vehicles pushBack _house;
        } forEach husky_houses;

		husky_gangData = [_this select (_count - 4),_this select (_count - 3)];
		if (!(husky_gangData isEqualTo [-1,-1])) then {
			[(husky_gangData select 0)] spawn husky_fnc_gang_findGang;
		} else {
			[player] join grpNull;
			player setVariable ["gang_init_done",true,true];
		};
        [] spawn husky_fnc_initHouses;

		//idcard
		if ((_this select 13) isEqualTo []) then {
			husky_side_noidcard = true;
		} else {
			husky_idcard_data = _this select 13;
		};

    };

    case independent: {
        CONST(husky_medicLevel,(_this select 7));
        CONST(husky_coplevel,0);
		CONST(husky_secLevel, 0);
		CONST(husky_rebLevel, 0);
		CONST(husky_smLevel, 0);
		//husky_blacklistedmed = _this select 12;
        if (husky_SETTINGS(getNumber,"save_playerStats") isEqualTo 1) then {
            husky_hunger = ((_this select 9) select 0);
            husky_thirst = ((_this select 9) select 1);
            player setDamage ((_this select 9) select 2);
        };

		if ((_this select 11) isEqualTo []) then {
			husky_side_noidcard = true;
		} else {
			husky_idcard_data = _this select 11;
		};
    };
};

husky_gear = _this select 8;
[true] call husky_fnc_loadGear;

if (count (_this select (_count - 1)) > 0) then {
    {husky_vehicles pushBack _x;} forEach (_this select (_count - 1));
};

husky_session_completed = true;
*/
