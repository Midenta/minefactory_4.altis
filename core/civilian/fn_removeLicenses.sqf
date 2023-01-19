#include "..\..\script_macros.hpp"
/*
    File: fn_removeLicenses.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Used for stripping certain licenses off of civilians as punishment.
*/
private "_state";
_state = param [0,1,[0]];

switch (_state) do {
    //Death while being wanted
    case 0: {
        missionNamespace setVariable [LICENSE_VARNAME("driver","civ"),false];
    };

    //Jail licenses
    case 1: {
        missionNamespace setVariable [LICENSE_VARNAME("gun","civ"),false];
		missionNamespace setVariable [LICENSE_VARNAME("gunplus","civ"),false];
        missionNamespace setVariable [LICENSE_VARNAME("driver","civ"),false];
        missionNamespace setVariable [LICENSE_VARNAME("rebel","civ"),false];
    };

    //Remove motor vehicle licenses
    case 2: {
        if (missionNamespace getVariable LICENSE_VARNAME("driver","civ") || missionNamespace getVariable LICENSE_VARNAME("trucking","civ")) then {
            missionNamespace setVariable [LICENSE_VARNAME("driver","civ"),false];
            missionNamespace setVariable [LICENSE_VARNAME("trucking","civ"),false];
			hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast alle deine Führerscheine durch fahrlässige Tötung mit einem Fahrzeug verloren!</t>";
			//["Du hast alle deine Führerscheine durch fahrl�ssige T�tung mit einem Fahrzeug verloren.", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
        };
    };

    //Killing someone while owning a gun license
    case 3: {
        if (missionNamespace getVariable LICENSE_VARNAME("gun","civ")) then {
            missionNamespace setVariable [LICENSE_VARNAME("gun","civ"),false];
			missionNamespace setVariable [LICENSE_VARNAME("gunplus","civ"),false];
			hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du hast deinen Waffenschein wegen Mordes verloren!</t>";
			//["Du hast deinen Waffenschein wegen Mordes verloren.", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
        };
    };

	//Killing gibt HG Coins in Zone
    case 4: {
        husky_coins = husky_coins + 5;
		hint format ["Du hast fünf Husky-Coins für das töten in der PvP-Zone erhalten!"];
		[getPlayerUID player, "PvP Zonen Killer2", format ["%1 - %2 hat %3 getötet und 5 Coin erhalten. Bargeld: %4 € Bankkonto: %5 € Coin: %6 ",profileName,getplayeruid player,name _unit,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
    };
	
	// Revoking Licenses
	// Führerschein Lizenz
	case 10:{
		license_civ_driver = false;
		["Dein Führerschein wurde von der Polizei beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// LKW Führerschein Lizenz
	case 11:{
		license_civ_driver = true;
		["Dein Führerschein wurde von der Polizei erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	
	// Pilotenschein Lizenz
	case 12:{
		license_civ_trucking = false;
		["Dein LKW Führerschein wurde von der Polizei beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// Bootsschein Lizenz
	case 13:{
		license_civ_trucking = true;
		["Dein LKW Führerschein wurde von der Polizei erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	
	// Pilotenschein Lizenz
	case 14:{
		license_civ_pilot = false;
		["Dein Flugschein wurde von der Polizei beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// Pilotenschein Lizenz
	case 15:{
		license_civ_pilot = true;
		["Dein Flugschein wurde von der Polizei erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	
	// Boot Lizenz
	case 16:{
		license_civ_boat = false;
		["Dein Bootsschein wurde von der Polizei beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// Boot Lizenz
	case 17:{
		license_civ_boat = true;
		["Dein Bootsschein wurde von der Polizei erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	
	// Waffe Lizenz
	case 18:{
		license_civ_gun = false;
		["Dein Waffeschein wurde von der Polizei beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// Waffe Lizenz
	case 19:{
		license_civ_gun = true;
		["Dein Waffeschein wurde von der Polizei erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	
	// gunplus Lizenz
	case 20:{
		license_civ_gunplus = false;
		["Dein Waffeschein+ wurde von der Polizei beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// gunplus Lizenz
	case 21:{
		license_civ_gunplus = true;
		["Dein Waffeschein+ wurde von der Polizei erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	
	// Flugzeugpilot Lizenz
	case 22:{
		license_civ_Flugzeugpilot = false;
		["Dein Flugzeugpilot wurde von der Polizei beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// Flugzeugpilot Lizenz
	case 23:{
		license_civ_Flugzeugpilot = true;
		["Dein Flugzeugpilot wurde von der Polizei erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	
	// Alle Scheine
	case 24:{
		license_civ_driver = false;
		license_civ_trucking = false;
		license_civ_pilot = false;
		license_civ_boat = false;
		license_civ_gun = false;
		license_civ_gunplus = false;
		license_civ_Flugzeugpilot = false;
		["Alle deine Fahrlizenzen wurde von der Polizei beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	
	
	//COP
	// Revoking Licenses
	// Führerschein Lizenz
	case 50:{
		license_cop_coppilot = false;
		["Dein Pilotenschein wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// LKW Führerschein Lizenz
	case 51:{
		license_cop_coppilot = true;
		["Dein Pilotenschein wurde von einem Ausbilder erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	
	// Pilotenschein Lizenz
	case 52:{
		license_cop_copboot = false;
		["Deine Küstenwachenausbildung wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// Bootsschein Lizenz
	case 53:{
		license_cop_copboot = true;
		["Deine Küstenwachenausbildung wurde von einem Ausbilder erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	
	// Pilotenschein Lizenz
	case 54:{
		license_cop_copzivilfahnder = false;
		["Deine Zivilfahnder Lizenz wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// Pilotenschein Lizenz
	case 55:{
		license_cop_copzivilfahnder = true;
		["Deine Zivilfahnder Lizenz wurde von einem Ausbilder erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	
	// Boot Lizenz
	case 56:{
		//license_cop_copsek = false;
		//["Deine GSG9 Lizenz wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
		license_cop_copbereitschaftspolizei = false;
		["Deine copbereitschaftspolizei Lizenz wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// Boot Lizenz
	case 57:{
		//license_cop_copsek = true;
		//["Deine GSG9 Lizenz wurde von einem Ausbilder erteilt!", "Information"] spawn husky_fnc_createNotification;
		license_cop_copbereitschaftspolizei = true;
		["Deine copbereitschaftspolizei Lizenz wurde von einem Ausbilder erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	
	// Waffe Lizenz
	case 58:{
		//license_cop_copscharfschuetze = false;
		//["Deine PSK Lizenz wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// Waffe Lizenz
	case 59:{
		//license_cop_copscharfschuetze = true;
		//["Deine PSK Lizenz wurde von einem Ausbilder erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	
	// gunplus Lizenz
	case 60:{
		license_cop_copausbilder = false;
		["Deine Ausbilder Lizenz wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// gunplus Lizenz
	case 61:{
		license_cop_copausbilder = true;
		["Deine Ausbilder Lizenz wurde von einem Ausbilder erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	/*
	// Flugzeugpilot Lizenz
	case 62:{
		license_civ_Flugzeugpilot = false;
		["Dein Flugzeugpilot wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// Flugzeugpilot Lizenz
	case 63:{
		license_civ_Flugzeugpilot = true;
		["Dein Flugzeugpilot wurde von einem Ausbilder erteilt!", "Information"] spawn husky_fnc_createNotification;
	};*/
	
	// Alle Scheine
	case 64:{
		license_cop_coppilot = false;
		license_cop_copboot = false;
		license_cop_copzivilfahnder = false;
		license_cop_copsek = false;
		license_cop_copscharfschuetze = false;
		license_cop_copausbilder = false;
		//license_civ_Flugzeugpilot = false;
		["Alle deine Polizeilizenzen wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	
	
	//MEDIC
	// Revoking Licenses
	// Führerschein Lizenz
	case 70:{
		license_med_KraftFahrzeug1 = false;
		["Deine Kraftfahrzeug Lizenz 1 wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// LKW Führerschein Lizenz
	case 71:{
		license_med_KraftFahrzeug1 = true;
		["Deine Kraftfahrzeug Lizenz 1 wurde von einem Ausbilder erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	
	// Pilotenschein Lizenz
	case 72:{
		license_med_KraftFahrzeug2 = false;
		["Deine Kraftfahrzeug Lizenz 2 wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// Bootsschein Lizenz
	case 73:{
		license_med_KraftFahrzeug2 = true;
		["Deine Kraftfahrzeug Lizenz 2 wurde von einem Ausbilder erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	
	// Pilotenschein Lizenz
	case 74:{
		license_med_KraftFahrzeug3 = false;
		["Deine Kraftfahrzeug Lizenz 3 wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// Pilotenschein Lizenz
	case 75:{
		license_med_KraftFahrzeug3 = true;
		["Deine Kraftfahrzeug Lizenz 3 wurde von einem Ausbilder erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	
	// Boot Lizenz
	case 76:{
		license_med_HeliLizenz1 = false;
		["Deine Helikopter Lizenz 1 wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// Boot Lizenz
	case 77:{
		license_med_HeliLizenz1 = true;
		["Deine Helikopter Lizenz 1 wurde von einem Ausbilder erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	
	// Waffe Lizenz
	case 78:{
		license_med_HeliLizenz2 = false;
		["Deine Helikopter Lizenz 2 wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// Waffe Lizenz
	case 79:{
		license_med_HeliLizenz2 = true;
		["Deine Helikopter Lizenz 2 wurde von einem Ausbilder erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	
	// gunplus Lizenz
	case 80:{
		license_med_HeliLizenz3 = false;
		["Deine Helikopter Lizenz 3 wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// gunplus Lizenz
	case 81:{
		license_med_HeliLizenz3 = true;
		["Deine Helikopter Lizenz 3 wurde von einem Ausbilder erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	
	// Flugzeugpilot Lizenz
	case 82:{
		license_med_wasserrettung = false;
		["Deine Wasserrettungs Lizenz 1 wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// Flugzeugpilot Lizenz
	case 83:{
		license_med_wasserrettung = true;
		["Deine Wasserrettungs Lizenz 1 wurde von einem Ausbilder erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	
	// Alle Scheine
	case 84:{
		license_med_KraftFahrzeug1 = false;
		license_med_KraftFahrzeug2 = false;
		license_med_KraftFahrzeug3 = false;
		license_med_HeliLizenz1 = false;
		license_med_HeliLizenz2 = false;
		license_med_HeliLizenz3 = false;
		license_med_wasserrettung = false;
		license_med_Loeschfahrzeug = false;
		license_med_Bergrettung1 = false;
		license_med_Katastrophenschutz = false;
		license_med_ausbildermed = false;
		license_med_farmenmed = false;
		["Alle deine Feuerwehrlizenzen wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	
	// Flugzeugpilot Lizenz
	case 85:{
		license_med_Loeschfahrzeug = false;
		["Deine L�schfahrzeug Lizenz wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	// Flugzeugpilot Lizenz
	case 91:{
		license_med_Loeschfahrzeug = true;
		["Deine L�schfahrzeug Lizenz wurde von einem Ausbilder erteilt!", "Information"] spawn husky_fnc_createNotification;
	};

	// Flugzeugpilot Lizenz
	case 86:{
		license_med_Bergrettung1 = true;
		["Deine Bergrettung Lizenz 1 wurde von einem Ausbilder erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	// Flugzeugpilot Lizenz
	case 92:{
		license_med_Bergrettung1 = false;
		["Deine Bergrettung Lizenz 1 wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	
	// Flugzeugpilot Lizenz
	case 87:{
		license_med_ausbildermed = true;
		["Deine Ausbilder Lizenz wurde von einem Ausbilder erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	// Flugzeugpilot Lizenz
	case 92:{
		license_med_ausbildermed = false;
		["Deine Ausbilder Lizenz wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	
	// Flugzeugpilot Lizenz
	case 88:{
		license_med_Katastrophenschutz = true;
		["Deine Katastrophenschutz Lizenz 1 wurde von einem Ausbilder erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	// Flugzeugpilot Lizenz
	case 93:{
		license_med_Katastrophenschutz = false;
		["Deine Katastrophenschutz Lizenz 1 wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};
	
	// Flugzeugpilot Lizenz
	case 89:{
		license_med_farmenmed = true;
		["Deine Bauer Lizenz wurde von einem Ausbilder erteilt!", "Information"] spawn husky_fnc_createNotification;
	};
	// Flugzeugpilot Lizenz
	case 94:{
		license_med_farmenmed = false;
		["Deine Bauer Lizenz wurde von einem Ausbilder beschlagnahmt!", "Information", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
	};

};
