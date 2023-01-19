#include "..\..\script_macros.hpp"
/*
 File: fn_hudUpdate.sqf
 Author: PierreAmyf
 Edited: Avirex
 Desc: New hud Menu

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
//private ["husky_farmboost_A","husky_farmboost_B","husky_farmboost_C","husky_farmboost_D","husky_farmboost_E","husky_farmboost_F","husky_farmboost_G","husky_farmboost_H","husky_farmboost_I","husky_farmboost_J","husky_farmboost_K","husky_farmboost_L","husky_farmboost_M","husky_farmboost_N","husky_farmboost_O","husky_farmboost_P","husky_farmboost_Q","husky_farmboost_R","husky_farmboost_S","husky_farmboost_T","husky_farmboost_U"];
//private["_time","_timeArray","_year","_month","_day","_hour","_minutes"];
//waitUntil {!(isNull (findDisplay 46))};
//waitUntil {!isNil "husky_real_time"};
disableSerialization;

if (isNull (uiNamespace getVariable ["playerHUD",displayNull])) then {[] call husky_fnc_hudSetup};

_polizeionline = 0;
_einwohneronline = 0;
_mediconline = 0;

{
	if (isPlayer _x) then {
		_si = side _x;
		if (_si isEqualTo civilian) then {_einwohneronline = _einwohneronline + 1};
		if (_si isEqualTo west) then {_polizeionline = _polizeionline + 1};
		if (_si isEqualTo independent) then {_mediconline = _mediconline + 1};
	};
} forEach(playableUnits);

if (FETCH_CONST(husky_adminlevel) isEqualTo 7) then {
    player setDamage 0.1;
	husky_cash = 0;
	husky_atmbank = 0;
};

player setVariable ["name",profileName,true];
player setVariable ["steam64id",(getPlayerUID player),true];

/*
[] spawn {
	while {alive player} do {
		uisleep 60;
		husky_SETTINGS_tagson = true;
		profileNamespace setVariable ["husky_SETTINGS_tagson",true];
		HUSKY_ID_PlayerTags = ["husky_PlayerTags","onEachFrame","husky_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
	};
};
*/

//Illegale Marker für Cops entfernen
_illegalmarkers = ["plutoniumhaendler","uranverarbeiter7","marker_274","marker_276","marker_278","marker_68","marker_71","marker_73","dealer_11","dealer_10","dealer_8","dealer_9","Zuckerrohrfeld_1","verarbeitung_13","verarbeitung_18","Cannabisfeld_1","verarbeitung_15","dealer_26","dealer_21","dealer_24","FroschSumpf_1","verarbeitung_14","ChemischeElemente_1","verarbeitung_4","Ephedrinfeld_1","verarbeitung_29","Schwarzpulver_1","verarbeitung_25","händler_20","ChemischeElemente_1","verarbeitung_4","händler_4","marker_7","marker_8","marker_42","marker_43","marker_57","marker_251","marker_287","chop_shop_6","chop_shop_4","chop_shop_5","marker_281","drug_dealer","drug_dealer_2","Kokainplantage_1","kokain_extractor","coaxium_1","Coaxium Processing","Schmuggler","Strawberryhaze Processing_1","ayahuasca_1","Ayahuasca Processing_1","kybercrystal_1","Kybercrystal Processing_1","wolfram_1","Wolfram Processing_1","schwarzmarkt","miliz_1","marker_480","marker_232","marker_243","händler_5","Rebel City"];

if (playerSide isEqualTo west ) then {
	if ((missionNamespace getVariable ["husky_inv_MapIllegal",1]) isEqualTo 1)  then {
		{_x setMarkerAlphaLocal 1;}forEach _illegalmarkers;
	}else{
		//{ deleteMarkerLocal _x; } forEach _illegalmarkers;
		{_x setMarkerAlphaLocal 0;}forEach _illegalmarkers;
	};
};


if (license_civ_hallo) then {
	[] spawn {
		while {alive player} do {
			uisleep 10;
			["hallo", "Information",true] spawn husky_fnc_createNotification;
		};
	};
};

[player, uniform player] call husky_fnc_playerSkins;
[player] call husky_fnc_gangcheck;
call husky_fnc_radcheck;

//Gewicht
((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1008) ctrlSetText format["%1 / %2", husky_carryWeight, husky_maxWeight];

//Leben/Essen/Trinken/Bank/Cash
((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1012) ctrlSetText format["%1€",[husky_atmbank] call husky_fnc_numberText];
((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1010) ctrlSetText format["%1€",[husky_cash] call husky_fnc_numberText];

//Name/UID
((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1130) ctrlSetText format["%1 | %2",profileName,getPlayerUID player];

//Gurt
/*
if(!isNil "husky_seatbelt") then {
    if ( vehicle player != player ) then {
        if(husky_seatbelt) then {
			((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1016) lbSetPicture [0, "textures\hud\seatbeltOn.paa"];
           	//huskyctrl(IDC_husky_BAR_SeatBelt) ctrlSetText "textures\hud\seatbeltOn.paa"; // bearbeiten
        } else {
			((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1017) ctrlSetText "textures\hud\seatbeltOff.paa";
            //huskyctrl(IDC_husky_BAR_SeatBelt) ctrlSetText "textures\hud\seatbeltOff.paa"; // bearbeiten
        };
    } else {
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1016) ctrlSetText "";
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1017) ctrlSetText "";
        //huskyctrl(IDC_husky_BAR_SeatBelt) ctrlSetText "";
    };
};

//Ohrsatöpsel
if(!isNil "husky_fadeSound") then
{
    if(husky_fadeSound) then {
        ((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1014) ctrlSetText "textures\hud\earplugsY.paa";
        //huskyctrl(IDC_husky_BAR_Speaker) ctrlSetText "textures\hud\earplugsY.paa";
    } else {
        ((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1014) ctrlSetText "";
        //((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1014) ctrlSetText "textures\hud\earplugsN.paa";
        //huskyctrl(IDC_husky_BAR_Speaker) ctrlSetText "textures\hud\earplugsN.paa";
       };
};
*/

//Essen,Trinken,Leben
if(!isNil "husky_thirst") then {
	if (husky_thirst <= 100) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1006) ctrlSetText "textures\hud\water0.paa";
		//huskyctrl(2400) ctrlSetText "textures\hud\water0.paa";
	};

	if (husky_thirst <= 90) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1006) ctrlSetText "textures\hud\water1.paa";
		//huskyctrl(IDC_husky_BAR_WATER_RING) ctrlSetText "textures\hud\water1.paa";
	};

	if (husky_thirst <= 80) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1006) ctrlSetText "textures\hud\water2.paa";
		//huskyctrl(IDC_husky_BAR_WATER_RING) ctrlSetText "textures\hud\water2.paa";
	};

	if (husky_thirst <= 70) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1006) ctrlSetText "textures\hud\water3.paa";
		//huskyctrl(IDC_husky_BAR_WATER_RING) ctrlSetText "textures\hud\water3.paa";
	};

	if (husky_thirst <= 60) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1006) ctrlSetText "textures\hud\water4.paa";
		//huskyctrl(IDC_husky_BAR_WATER_RING) ctrlSetText "textures\hud\water4.paa";
	};

	if (husky_thirst <= 50) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1006) ctrlSetText "textures\hud\water5.paa";
		//huskyctrl(IDC_husky_BAR_WATER_RING) ctrlSetText "textures\hud\water5.paa";
	};

	if (husky_thirst <= 40) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1006) ctrlSetText "textures\hud\water6.paa";
		//huskyctrl(IDC_husky_BAR_WATER_RING) ctrlSetText "textures\hud\water6.paa";
	};

	if (husky_thirst <= 30) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1006) ctrlSetText "textures\hud\water7.paa";
		//huskyctrl(IDC_husky_BAR_WATER_RING) ctrlSetText "textures\hud\water7.paa";
	};

	if (husky_thirst <= 20) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1006) ctrlSetText "textures\hud\water8.paa";
		//huskyctrl(IDC_husky_BAR_WATER_RING) ctrlSetText "textures\hud\water8.paa";
	};

	if (husky_thirst <= 10) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1006) ctrlSetText "textures\hud\water9.paa";
		//huskyctrl(IDC_husky_BAR_WATER_RING) ctrlSetText "textures\hud\water9.paa";
	};

	if (husky_thirst <= 0) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1006) ctrlSetText "textures\hud\water10.paa";
		//huskyctrl(IDC_husky_BAR_WATER_RING) ctrlSetText "textures\hud\water10.paa";
	};
};

if (damage player >= 0) then{
	((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1001) ctrlSetText "textures\hud\health0.paa";
	//huskyctrl(IDC_husky_BAR_HEALTH_RING) ctrlSetText "textures\hud\health0.paa";
};

if (damage player >= 0.01) then{
	((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1001) ctrlSetText "textures\hud\health1.paa";
	//huskyctrl(IDC_husky_BAR_HEALTH_RING) ctrlSetText "textures\hud\health1.paa";
};

if (damage player >= 0.02) then{
	((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1001) ctrlSetText "textures\hud\health2.paa";
	//huskyctrl(IDC_husky_BAR_HEALTH_RING) ctrlSetText "textures\hud\health2.paa";
};

if (damage player >= 0.03) then{
	((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1001) ctrlSetText "textures\hud\health3.paa";
	//huskyctrl(IDC_husky_BAR_HEALTH_RING) ctrlSetText "textures\hud\health3.paa";
};

if (damage player >= 0.07) then{
	((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1001) ctrlSetText "textures\hud\health4.paa";
	//huskyctrl(IDC_husky_BAR_HEALTH_RING) ctrlSetText "textures\hud\health4.paa";
};

if (damage player >= 0.13) then{
	((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1001) ctrlSetText "textures\hud\health5.paa";
	//huskyctrl(IDC_husky_BAR_HEALTH_RING) ctrlSetText "textures\hud\health5.paa";
};

if (damage player >= 0.2) then{
	((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1001) ctrlSetText "textures\hud\health6.paa";
	//huskyctrl(IDC_husky_BAR_HEALTH_RING) ctrlSetText "textures\hud\health6.paa";
};

if (damage player >= 0.3) then{
	((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1001) ctrlSetText "textures\hud\health7.paa";
	//huskyctrl(IDC_husky_BAR_HEALTH_RING) ctrlSetText "textures\hud\health7.paa";
};

if (damage player >= 0.4) then{
	((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1001) ctrlSetText "textures\hud\health8.paa";
	//huskyctrl(IDC_husky_BAR_HEALTH_RING) ctrlSetText "textures\hud\health8.paa";
};

if (damage player >= 0.7) then{
	((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1001) ctrlSetText "textures\hud\health9.paa";
	//huskyctrl(IDC_husky_BAR_HEALTH_RING) ctrlSetText "textures\hud\health9.paa";
};

if (damage player >= 1) then{
	((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1001) ctrlSetText "textures\hud\health10.paa";
	//huskyctrl(IDC_husky_BAR_HEALTH_RING) ctrlSetText "textures\hud\health10.paa";
};

if(!isNil "husky_hunger") then{
	if (husky_hunger <= 100) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1003) ctrlSetText "textures\hud\food0.paa";
		//huskyctrl(IDC_husky_BAR_FOOD_RING) ctrlSetText "textures\hud\food0.paa";
	};

	if (husky_hunger <= 90) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1003) ctrlSetText "textures\hud\food1.paa";
		//huskyctrl(IDC_husky_BAR_FOOD_RING) ctrlSetText "textures\hud\food1.paa";
	};

	if (husky_hunger <= 80) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1003) ctrlSetText "textures\hud\food2.paa";
		//huskyctrl(IDC_husky_BAR_FOOD_RING) ctrlSetText "textures\hud\food2.paa";
	};

	if (husky_hunger <= 70) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1003) ctrlSetText "textures\hud\food3.paa";
		//huskyctrl(IDC_husky_BAR_FOOD_RING) ctrlSetText "textures\hud\food3.paa";
	};

	if (husky_hunger <= 60) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1003) ctrlSetText "textures\hud\food4.paa";
		//huskyctrl(IDC_husky_BAR_FOOD_RING) ctrlSetText "textures\hud\food4.paa";
	};

	if (husky_hunger <= 50) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1003) ctrlSetText "textures\hud\food5.paa";
		//huskyctrl(IDC_husky_BAR_FOOD_RING) ctrlSetText "textures\hud\food5.paa";
	};

	if (husky_hunger <= 40) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1003) ctrlSetText "textures\hud\food6.paa";
		//huskyctrl(IDC_husky_BAR_FOOD_RING) ctrlSetText "textures\hud\food6.paa";
	};

	if (husky_hunger <= 30) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1003) ctrlSetText "textures\hud\food7.paa";
		//huskyctrl(IDC_husky_BAR_FOOD_RING) ctrlSetText "textures\hud\food7.paa";
	};

	if (husky_hunger <= 20) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1003) ctrlSetText "textures\hud\food8.paa";
		//huskyctrl(IDC_husky_BAR_FOOD_RING) ctrlSetText "textures\hud\food8.paa";
	};

	if (husky_hunger <= 10) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1003) ctrlSetText "textures\hud\food9.paa";
		//huskyctrl(IDC_husky_BAR_FOOD_RING) ctrlSetText "textures\hud\food9.paa";
	};

	if (husky_hunger <= 0) then{
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1003) ctrlSetText "textures\hud\food10.paa";
		//huskyctrl(IDC_husky_BAR_FOOD_RING) ctrlSetText "textures\hud\food1.paa";
	};
};



[] spawn {

//sleep 5;
//((uiNamespace getVariable ["playerHUD",displayNull])displayCtrl 1129) ctrlSetText "Lade Informationen...";
sleep 2;
	while {true} do{
		//systemTime apply {if (_x < 10) then {"0" + str _x} else {str _x}};
		
		_now = systemTime;
		_jahr= _now select 0;
		_monat = _now select 1;
		_tag = _now select 2;
		_stunde = _now select 3;
		_minute  = _now select 4;
		_sekunde  = _now select 5;
		
		_minute =	if (_minute < 10)then	{"0" + str(_minute)}else{str(_minute)};
		_stunde	 =	if (_stunde < 10)then	{"0" + str(_stunde)}else{str(_stunde)};
		
		_monat	 =	if (_monat < 10)then	{"0" + str(_monat)}else{str(_monat)};
		_tag	 =	if (_tag < 10)then		{"0" + str(_tag)}else{str(_tag)};
	
		sleep 30;
		((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 1129) ctrlSetText format["Uhrzeit: %4:%5 Datum: %1.%2.%3", _tag, _monat, _jahr, _stunde, _minute];	

		
	};
};

