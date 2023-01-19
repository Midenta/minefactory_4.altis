#include "..\..\script_macros.hpp"
/*

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

*/

//COP
if ((FETCH_CONST(husky_coplevel)) < 1 && (FETCH_CONST(husky_adminlevel) isEqualTo 0)) exitWith {
	player enableSimulation false;
    ["Notwhitelisted",false,true] call BIS_fnc_endMission;
    sleep 35;
};
if (str(player) in ["cop_1"]) then {
	if ((call husky_coplevel) < 15 ) then {
		player enableSimulation false;
        ["falscherangcop1",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};
if (str(player) in ["cop_2"]) then {
	if ((call husky_coplevel) < 14 ) then {
		player enableSimulation false;
        ["falscherangcop2",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};
if (str(player) in ["cop_3"]) then {
    if ((call husky_coplevel) < 13 ) then {
		player enableSimulation false;
        ["falscherangcop3",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};
if (husky_blacklisted) exitWith {
	player enableSimulation false;
    ["Blacklisted",false,true] call BIS_fnc_endMission;
    sleep 30;
};

//MED
if (!(str(player) in ["medic_5","medic_6","medic_7","medic_8","medic_9","medic_10"])) then {
    if ((FETCH_CONST(husky_mediclevel) isEqualTo 0) && (FETCH_CONST(husky_adminlevel) isEqualTo 0)) then {
        ["NotWhitelisted",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};

if ((FETCH_CONST(husky_medicLevel)) < 1 && (FETCH_CONST(husky_adminlevel) isEqualTo 0)) exitWith {
	player enableSimulation false;
    ["Notwhitelisted",false,true] call BIS_fnc_endMission;
    sleep 35;
};
if (str(player) in ["medic_1"]) then {
    if ((call husky_mediclevel) < 10 ) then {
		player enableSimulation false;
        ["falscherangmed1",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};
if (str(player) in ["medic_2"]) then {
    if ((call husky_mediclevel) < 9 ) then {
		player enableSimulation false;
        ["falscherangmed2",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};
if (str(player) in ["medic_3"]) then {
    if ((call husky_mediclevel) < 8 ) then {
		player enableSimulation false;
        ["falscherangmed3",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};

//CIVS
if (str(player) in ["civ_93"]) then {
    if ((call husky_donorlevel) < 2 ) then {
		player enableSimulation false;
        ["NotPremium",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};
if (str(player) in ["civ_94"]) then {
    if ((call husky_donorlevel) < 2 ) then {
		player enableSimulation false;
        ["NotPremium",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};
if (str(player) in ["civ_95"]) then {
    if ((call husky_donorlevel) < 2 ) then {
		player enableSimulation false;
        ["NotPremium",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};
if (str(player) in ["civ_96"]) then {
    if ((call husky_donorlevel) < 2 ) then {
		player enableSimulation false;
        ["NotPremium",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};
if (str(player) in ["civ_97"]) then {
    if ((call husky_donorlevel) < 2 ) then {
		player enableSimulation false;
        ["NotPremium",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};
if (str(player) in ["civ_98"]) then {
    if ((call husky_adminlevel) < 2 ) then {
		player enableSimulation false;
        ["Notadmin",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};
if (str(player) in ["civ_99"]) then {
    if ((call husky_adminlevel) < 2 ) then {
		player enableSimulation false;
        ["Notadmin",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};
if (str(player) in ["civ_100"]) then {
    if ((call husky_adminlevel) < 2 ) then {
		player enableSimulation false;
        ["Notadmin",false,true] call BIS_fnc_endMission;
        sleep 35;
    };
};
