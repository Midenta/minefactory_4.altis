#include "..\..\script_macros.hpp"
private["_mode","_team"];
_mode = _this select 0;

switch (_mode) do {
    case "PROJEKTLEITER": {
        //if(player getVariable ["husky_adminimdienst",true] || player getVariable ["husky_entwicklerimdienst",true] || player getVariable ["husky_teamimdienst",true]) exitWith { ["Du hast noch einen anderen Modus aktiviert!", false, "fast", "orange", "Information"] spawn husky_fnc_msg; };
		if(player getVariable ["husky_adminimdienst",true] || player getVariable ["husky_entwicklerimdienst",true] || player getVariable ["husky_teamimdienst",true]) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast noch einen anderen Modus aktiviert!</t>";};
        if(player getVariable ["husky_leitungimdienst",true]) then {
            player setVariable ["husky_leitungimdienst", false, true];
            _team = false;
			[getPlayerUID player, "PROJEKTLEITER deaktiviert", format ["%1 - %2 hat den PROJEKTLEITER Modus deaktiviert",profileName,(getPlayerUID player)]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
        } else {
            player setVariable ["husky_leitungimdienst", true, true];
            _team = true;
			[getPlayerUID player, "PROJEKTLEITER aktiviert", format ["%1 - %2 hat den PROJEKTLEITER Modus aktiviert",profileName,(getPlayerUID player)]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
        };
    };
    case "ADMIN": {
        //if(player getVariable ["husky_leitungimdienst",true] || player getVariable ["husky_entwicklerimdienst",true] || player getVariable ["husky_teamimdienst",true]) exitWith { ["Du hast noch einen anderen Modus aktiviert!", false, "fast", "orange", "Information"] spawn husky_fnc_msg; };
		if(player getVariable ["husky_leitungimdienst",true] || player getVariable ["husky_entwicklerimdienst",true] || player getVariable ["husky_teamimdienst",true]) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast noch einen anderen Modus aktiviert!</t>";};
        if(player getVariable ["husky_adminimdienst",true]) then {
            player setVariable ["husky_adminimdienst", false, true];
            _team = false;
			[getPlayerUID player, "ADMIN deaktiviert", format ["%1 - %2 hat den ADMIN Modus deaktiviert",profileName,(getPlayerUID player)]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
        } else {
            player setVariable ["husky_adminimdienst", true, true];
            _team = true;
			[getPlayerUID player, "ADMIN aktiviert", format ["%1 - %2 hat den ADMIN Modus aktiviert",profileName,(getPlayerUID player)]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
        };
    };
    case "ENTWICKLER": {
       /// if(player getVariable ["husky_leitungimdienst",true] || player getVariable ["husky_adminimdienst",true] || player getVariable ["husky_teamimdienst",true]) exitWith { ["Du hast noch einen anderen Modus aktiviert!", false, "fast", "orange", "Information"] spawn husky_fnc_msg; };
		if(player getVariable ["husky_leitungimdienst",true] || player getVariable ["husky_adminimdienst",true] || player getVariable ["husky_teamimdienst",true]) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast noch einen anderen Modus aktiviert!</t>";};
        if(player getVariable ["husky_entwicklerimdienst",true]) then {
            player setVariable ["husky_entwicklerimdienst", false, true];
            _team = false;
			[getPlayerUID player, "ENTWICKLER deaktiviert", format ["%1 - %2 hat den Entwickler Modus deaktiviert",profileName,(getPlayerUID player)]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
        } else {
            player setVariable ["husky_entwicklerimdienst", true, true];
            _team = true;
			[getPlayerUID player, "ENTWICKLER aktiviert", format ["%1 - %2 hat den Entwickler Modus aktiviert",profileName,(getPlayerUID player)]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
        };
    };
    case "SUPPORTER": {
        //if(player getVariable ["husky_leitungimdienst",true] || player getVariable ["husky_adminimdienst",true] || player getVariable ["husky_entwicklerimdienst",true]) exitWith { ["Du hast noch einen anderen Modus aktiviert!", false, "fast", "orange", "Information"] spawn husky_fnc_msg; };
		if(player getVariable ["husky_leitungimdienst",true] || player getVariable ["husky_adminimdienst",true] || player getVariable ["husky_entwicklerimdienst",true]) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast noch einen anderen Modus aktiviert!</t>";};
        
        if(player getVariable ["husky_teamimdienst",true]) then {
            player setVariable ["husky_teamimdienst", false, true];
            _team = false;
			[getPlayerUID player, "SUPPORTER deaktiviert", format ["%1 - %2 hat den Support Modus deaktiviert",profileName,(getPlayerUID player)]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

        } else {
            player setVariable ["husky_teamimdienst", true, true];
            _team = true;
			[getPlayerUID player, "SUPPORTER aktiviert", format ["%1 - %2 hat den Support Modus aktiviert",profileName,(getPlayerUID player)]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
        };
    };
};

if(_team) then {
    _team = true;
    AdminGear = husky_gear;
    publicVariable "AdminGear";
    player allowDamage false;
    [] call husky_fnc_stripDownPlayer;
    player forceAddUniform "U_O_Protagonist_VR";	//UNIFORM ANALOG ZU PLAYSKINS DATEI ÄNDERN
	player addBackpack "B_LegStrapBag_coyote_F";
	player addItem "ItemGPS";
	player assignItem "ItemGPS";
	player addItem "ItemRadio";
	player assignItem "ItemRadio";
    [] call husky_fnc_playerSkins;
    //[format["Du bist nun im %1 Modus!",_mode], false, "fast", "orange", "Information"] spawn husky_fnc_msg;
	hint format ["Du bist nun im %1 Modus!",_mode];
	
} else {
    _team = false;
    player allowDamage true;
    husky_gear = AdminGear;
    [] spawn husky_fnc_loadGear;
    [] call husky_fnc_playerSkins;
    //[format["Du bist nun nichtmehr im %1 Modus!",_mode], false, "fast", "orange", "Information"] spawn husky_fnc_msg;
	hint format ["Du bist nun nichtmehr im %1 Modus!",_mode];
};