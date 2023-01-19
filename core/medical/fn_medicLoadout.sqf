#include "..\..\script_macros.hpp"
/*
    File: fn_medicLoadout.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Loads the medic out with the default gear.
*/
private ["_handle"];
_handle = [] spawn husky_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

switch(FETCH_CONST(husky_mediclevel)) do {
	case 0: {
		player forceAddUniform "U_C_Poloshirt_blue";

		//player addGoggles "G_Respirator_yellow_F";

		player addItem "ItemMap";
		player assignItem "ItemMap";
		player addItem "ItemCompass";
		player assignItem "ItemCompass";
		player addItem "ItemWatch";
		player assignItem "ItemWatch";
		player addItem "ItemGPS";
		player assignItem "ItemGPS";
		player addItem "ItemRadio";
		player assignItem "ItemRadio";
	};

	case 1: {
		player forceAddUniform "U_B_GEN_Commander_F";
		player addHeadgear "H_Beret_CSAT_01_F";
		player addBackpack "B_Bergen_mcamo_F";

		player addItem "Medikit";
		player addItem "FirstAidKit";
		player addItem "FirstAidKit";
		player addItem "ItemMap";
		player assignItem "ItemMap";
		player addItem "ItemCompass";
		player assignItem "ItemCompass";
		player addItem "ItemWatch";
		player assignItem "ItemWatch";
		player addItem "ItemGPS";
		player assignItem "ItemGPS";
		player addItem "ItemRadio";
		player assignItem "ItemRadio";
		player addItem "NVGoggles_OPFOR";
		player assignItem "NVGoggles_OPFOR";

		[true,"coffee",5] call husky_fnc_handleInv;
		[true,"donuts",5] call husky_fnc_handleInv;
		[true,"defibrillator",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"toolkit",1] call husky_fnc_handleInv;
		[true,"schmerzmittel",10] call husky_fnc_handleInv;
	};

	case 2: {
		player forceAddUniform "U_B_GEN_Commander_F";
		player addHeadgear "H_Beret_CSAT_01_F";
		player addBackpack "B_Bergen_mcamo_F";

		player addItem "Medikit";
		player addItem "FirstAidKit";
		player addItem "FirstAidKit";
		player addItem "ItemMap";
		player assignItem "ItemMap";
		player addItem "ItemCompass";
		player assignItem "ItemCompass";
		player addItem "ItemWatch";
		player assignItem "ItemWatch";
		player addItem "ItemGPS";
		player assignItem "ItemGPS";
		player addItem "ItemRadio";
		player assignItem "ItemRadio";
		player addItem "NVGoggles_OPFOR";
		player assignItem "NVGoggles_OPFOR";

		[true,"coffee",5] call husky_fnc_handleInv;
		[true,"donuts",5] call husky_fnc_handleInv;
		[true,"defibrillator",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		//[true,"EHK",1] call husky_fnc_handleInv;
		[true,"toolkit",1] call husky_fnc_handleInv;
		[true,"schmerzmittel",10] call husky_fnc_handleInv;
	};

	case 3: {
		player forceAddUniform "U_B_GEN_Commander_F";
		player addHeadgear "H_Beret_CSAT_01_F";
		player addBackpack "B_Bergen_mcamo_F";

		player addItem "Medikit";
		player addItem "FirstAidKit";
		player addItem "FirstAidKit";
		player addItem "ItemMap";
		player assignItem "ItemMap";
		player addItem "ItemCompass";
		player assignItem "ItemCompass";
		player addItem "ItemWatch";
		player assignItem "ItemWatch";
		player addItem "ItemGPS";
		player assignItem "ItemGPS";
		player addItem "ItemRadio";
		player assignItem "ItemRadio";
		player addItem "NVGoggles_OPFOR";
		player assignItem "NVGoggles_OPFOR";

		[true,"coffee",5] call husky_fnc_handleInv;
		[true,"donuts",5] call husky_fnc_handleInv;
		[true,"defibrillator",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		////[true,"EHK",1] call husky_fnc_handleInv;
		[true,"toolkit",1] call husky_fnc_handleInv;
		[true,"schmerzmittel",10] call husky_fnc_handleInv;
	};

	case 4: {
		player forceAddUniform "U_B_GEN_Commander_F";
		player addHeadgear "H_Beret_CSAT_01_F";
		//player addVest "V_DeckCrew_red_F";
		player addBackpack "B_Bergen_mcamo_F";

		//player addGoggles "G_Respirator_yellow_F";

		player addItem "Medikit";
		player addItem "FirstAidKit";
		player addItem "FirstAidKit";
		player addItem "ItemMap";
		player assignItem "ItemMap";
		player addItem "ItemCompass";
		player assignItem "ItemCompass";
		player addItem "ItemWatch";
		player assignItem "ItemWatch";
		player addItem "ItemGPS";
		player assignItem "ItemGPS";
		player addItem "ItemRadio";
		player assignItem "ItemRadio";
		player addItem "NVGoggles_OPFOR";
		player assignItem "NVGoggles_OPFOR";

		[true,"coffee",5] call husky_fnc_handleInv;
		[true,"donuts",5] call husky_fnc_handleInv;
		[true,"defibrillator",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		//[true,"EHK",1] call husky_fnc_handleInv;
		[true,"toolkit",1] call husky_fnc_handleInv;
		[true,"schmerzmittel",10] call husky_fnc_handleInv;
	};

	case 5: {
		player forceAddUniform "U_B_GEN_Commander_F";
		player addHeadgear "H_Beret_CSAT_01_F";
		//player addVest "V_DeckCrew_red_F";
		player addBackpack "B_Bergen_mcamo_F";

		//player addGoggles "G_Respirator_yellow_F";

		player addItem "Medikit";
		player addItem "FirstAidKit";
		player addItem "FirstAidKit";
		player addItem "ItemMap";
		player assignItem "ItemMap";
		player addItem "ItemCompass";
		player assignItem "ItemCompass";
		player addItem "ItemWatch";
		player assignItem "ItemWatch";
		player addItem "ItemGPS";
		player assignItem "ItemGPS";
		player addItem "ItemRadio";
		player assignItem "ItemRadio";
		player addItem "NVGoggles_OPFOR";
		player assignItem "NVGoggles_OPFOR";

		[true,"coffee",5] call husky_fnc_handleInv;
		[true,"donuts",5] call husky_fnc_handleInv;
		[true,"defibrillator",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		//[true,"EHK",1] call husky_fnc_handleInv;
		[true,"toolkit",1] call husky_fnc_handleInv;
		[true,"schmerzmittel",10] call husky_fnc_handleInv;
	};

	case 6: {
		player forceAddUniform "U_B_GEN_Commander_F";
		player addHeadgear "H_Beret_CSAT_01_F";
		//player addVest "V_DeckCrew_red_F";
		player addBackpack "B_Bergen_mcamo_F";

		//player addGoggles "G_Respirator_yellow_F";

		player addItem "Medikit";
		player addItem "FirstAidKit";
		player addItem "FirstAidKit";
		player addItem "ItemMap";
		player assignItem "ItemMap";
		player addItem "ItemCompass";
		player assignItem "ItemCompass";
		player addItem "ItemWatch";
		player assignItem "ItemWatch";
		player addItem "ItemGPS";
		player assignItem "ItemGPS";
		player addItem "ItemRadio";
		player assignItem "ItemRadio";
		player addItem "NVGoggles_OPFOR";
		player assignItem "NVGoggles_OPFOR";

		[true,"coffee",5] call husky_fnc_handleInv;
		[true,"donuts",5] call husky_fnc_handleInv;
		[true,"defibrillator",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		//[true,"EHK",1] call husky_fnc_handleInv;
		[true,"toolkit",1] call husky_fnc_handleInv;
		[true,"schmerzmittel",10] call husky_fnc_handleInv;
	};

	case 7: {
		player forceAddUniform "U_B_GEN_Commander_F";
		player addHeadgear "H_Beret_CSAT_01_F";
		//player addVest "V_DeckCrew_red_F";
		player addBackpack "B_Bergen_mcamo_F";

		//player addGoggles "G_Respirator_yellow_F";

		player addItem "Medikit";
		player addItem "FirstAidKit";
		player addItem "FirstAidKit";
		player addItem "ItemMap";
		player assignItem "ItemMap";
		player addItem "ItemCompass";
		player assignItem "ItemCompass";
		player addItem "ItemWatch";
		player assignItem "ItemWatch";
		player addItem "ItemGPS";
		player assignItem "ItemGPS";
		player addItem "ItemRadio";
		player assignItem "ItemRadio";
		player addItem "NVGoggles_OPFOR";
		player assignItem "NVGoggles_OPFOR";

		[true,"coffee",5] call husky_fnc_handleInv;
		[true,"donuts",5] call husky_fnc_handleInv;
		[true,"defibrillator",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		//[true,"EHK",1] call husky_fnc_handleInv;
		[true,"toolkit",1] call husky_fnc_handleInv;
		[true,"schmerzmittel",10] call husky_fnc_handleInv;
	};

	case 8: {
		player forceAddUniform "U_B_GEN_Commander_F";
		player addHeadgear "H_Beret_CSAT_01_F";
		//player addVest "V_DeckCrew_red_F";
		player addBackpack "B_Bergen_mcamo_F";

		//player addGoggles "G_Respirator_yellow_F";

		player addItem "Medikit";
		player addItem "FirstAidKit";
		player addItem "FirstAidKit";
		player addItem "ItemMap";
		player assignItem "ItemMap";
		player addItem "ItemCompass";
		player assignItem "ItemCompass";
		player addItem "ItemWatch";
		player assignItem "ItemWatch";
		player addItem "ItemGPS";
		player assignItem "ItemGPS";
		player addItem "ItemRadio";
		player assignItem "ItemRadio";
		player addItem "NVGoggles_OPFOR";
		player assignItem "NVGoggles_OPFOR";

		[true,"coffee",5] call husky_fnc_handleInv;
		[true,"donuts",5] call husky_fnc_handleInv;
		[true,"defibrillator",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		//[true,"EHK",1] call husky_fnc_handleInv;
		[true,"toolkit",1] call husky_fnc_handleInv;
		[true,"schmerzmittel",10] call husky_fnc_handleInv;
	};

	case 9: {
		player forceAddUniform "U_B_GEN_Commander_F";
		player addHeadgear "H_Beret_CSAT_01_F";
		//player addVest "V_DeckCrew_red_F";
		player addBackpack "B_Bergen_mcamo_F";

		//player addGoggles "G_Respirator_yellow_F";

		player addItem "Medikit";
		player addItem "FirstAidKit";
		player addItem "FirstAidKit";
		player addItem "ItemMap";
		player assignItem "ItemMap";
		player addItem "ItemCompass";
		player assignItem "ItemCompass";
		player addItem "ItemWatch";
		player assignItem "ItemWatch";
		player addItem "ItemGPS";
		player assignItem "ItemGPS";
		player addItem "ItemRadio";
		player assignItem "ItemRadio";
		player addItem "NVGoggles_OPFOR";
		player assignItem "NVGoggles_OPFOR";

		[true,"coffee",5] call husky_fnc_handleInv;
		[true,"donuts",5] call husky_fnc_handleInv;
		[true,"defibrillator",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		//[true,"EHK",1] call husky_fnc_handleInv;
		[true,"toolkit",1] call husky_fnc_handleInv;
		[true,"schmerzmittel",10] call husky_fnc_handleInv;
	};

	case 10: {
		player forceAddUniform "U_B_GEN_Commander_F";
		player addHeadgear "H_Beret_CSAT_01_F";
		//player addVest "V_DeckCrew_red_F";
		player addBackpack "B_Bergen_mcamo_F";

		//player addGoggles "G_Respirator_yellow_F";

		player addItem "Medikit";
		player addItem "FirstAidKit";
		player addItem "FirstAidKit";
		player addItem "ItemMap";
		player assignItem "ItemMap";
		player addItem "ItemCompass";
		player assignItem "ItemCompass";
		player addItem "ItemWatch";
		player assignItem "ItemWatch";
		player addItem "ItemGPS";
		player assignItem "ItemGPS";
		player addItem "ItemRadio";
		player assignItem "ItemRadio";
		player addItem "NVGoggles_OPFOR";
		player assignItem "NVGoggles_OPFOR";

		[true,"coffee",5] call husky_fnc_handleInv;
		[true,"donuts",5] call husky_fnc_handleInv;
		[true,"defibrillator",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		//[true,"EHK",1] call husky_fnc_handleInv;
		[true,"toolkit",1] call husky_fnc_handleInv;
		[true,"schmerzmittel",10] call husky_fnc_handleInv;
	};

	case 11: {
		player forceAddUniform "U_B_GEN_Commander_F";
		player addHeadgear "H_Beret_CSAT_01_F";
		//player addVest "V_DeckCrew_red_F";
		player addBackpack "B_Bergen_mcamo_F";

		//player addGoggles "G_Respirator_yellow_F";

		player addItem "Medikit";
		player addItem "FirstAidKit";
		player addItem "FirstAidKit";
		player addItem "ItemMap";
		player assignItem "ItemMap";
		player addItem "ItemCompass";
		player assignItem "ItemCompass";
		player addItem "ItemWatch";
		player assignItem "ItemWatch";
		player addItem "ItemGPS";
		player assignItem "ItemGPS";
		player addItem "ItemRadio";
		player assignItem "ItemRadio";
		player addItem "NVGoggles_OPFOR";
		player assignItem "NVGoggles_OPFOR";

		[true,"coffee",5] call husky_fnc_handleInv;
		[true,"donuts",5] call husky_fnc_handleInv;
		[true,"defibrillator",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		//[true,"EHK",1] call husky_fnc_handleInv;
		[true,"toolkit",1] call husky_fnc_handleInv;
		[true,"schmerzmittel",10] call husky_fnc_handleInv;
	};

	case 12: {
		player forceAddUniform "U_B_GEN_Commander_F";
		player addHeadgear "H_Beret_CSAT_01_F";
		//player addVest "V_DeckCrew_red_F";
		player addBackpack "B_Bergen_mcamo_F";

		//player addGoggles "G_Respirator_yellow_F";

		player addItem "Medikit";
		player addItem "FirstAidKit";
		player addItem "FirstAidKit";
		player addItem "ItemMap";
		player assignItem "ItemMap";
		player addItem "ItemCompass";
		player assignItem "ItemCompass";
		player addItem "ItemWatch";
		player assignItem "ItemWatch";
		player addItem "ItemGPS";
		player assignItem "ItemGPS";
		player addItem "ItemRadio";
		player assignItem "ItemRadio";
		player addItem "NVGoggles_OPFOR";
		player assignItem "NVGoggles_OPFOR";

		[true,"coffee",5] call husky_fnc_handleInv;
		[true,"donuts",5] call husky_fnc_handleInv;
		[true,"defibrillator",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		//[true,"EHK",1] call husky_fnc_handleInv;
		[true,"toolkit",1] call husky_fnc_handleInv;
		[true,"schmerzmittel",10] call husky_fnc_handleInv;
	};

	case 13: {
		player forceAddUniform "U_I_CombatUniform";
		player addHeadgear "H_Beret_CSAT_01_F";
		//player addVest "V_DeckCrew_red_F";
		player addBackpack "B_Bergen_mcamo_F";

		//player addGoggles "G_Respirator_yellow_F";

		player addItem "Medikit";
		player addItem "FirstAidKit";
		player addItem "FirstAidKit";
		player addItem "ItemMap";
		player assignItem "ItemMap";
		player addItem "ItemCompass";
		player assignItem "ItemCompass";
		player addItem "ItemWatch";
		player assignItem "ItemWatch";
		player addItem "ItemGPS";
		player assignItem "ItemGPS";
		player addItem "ItemRadio";
		player assignItem "ItemRadio";
		player addItem "NVGoggles_OPFOR";
		player assignItem "NVGoggles_OPFOR";

		[true,"coffee",5] call husky_fnc_handleInv;
		[true,"donuts",5] call husky_fnc_handleInv;
		[true,"defibrillator",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		//[true,"EHK",1] call husky_fnc_handleInv;
		[true,"toolkit",1] call husky_fnc_handleInv;
		[true,"schmerzmittel",10] call husky_fnc_handleInv;
	};

	case 14: {
		player forceAddUniform "U_I_CombatUniform";
		player addHeadgear "H_Beret_CSAT_01_F";
		//player addVest "V_DeckCrew_red_F";
		player addBackpack "B_Bergen_mcamo_F";

		//player addGoggles "G_Respirator_yellow_F";

		player addItem "Medikit";
		player addItem "FirstAidKit";
		player addItem "FirstAidKit";
		player addItem "ItemMap";
		player assignItem "ItemMap";
		player addItem "ItemCompass";
		player assignItem "ItemCompass";
		player addItem "ItemWatch";
		player assignItem "ItemWatch";
		player addItem "ItemGPS";
		player assignItem "ItemGPS";
		player addItem "ItemRadio";
		player assignItem "ItemRadio";
		player addItem "NVGoggles_OPFOR";
		player assignItem "NVGoggles_OPFOR";

		[true,"coffee",5] call husky_fnc_handleInv;
		[true,"donuts",5] call husky_fnc_handleInv;
		[true,"defibrillator",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		//[true,"EHK",1] call husky_fnc_handleInv;
		[true,"toolkit",1] call husky_fnc_handleInv;
		[true,"schmerzmittel",10] call husky_fnc_handleInv;
	};

	case 15: {
		player forceAddUniform "U_I_CombatUniform";
		player addHeadgear "H_Beret_CSAT_01_F";
		//player addVest "V_DeckCrew_red_F";
		player addBackpack "B_Bergen_mcamo_F";

		//player addGoggles "G_Respirator_yellow_F";

		player addItem "Medikit";
		player addItem "FirstAidKit";
		player addItem "FirstAidKit";
		player addItem "ItemMap";
		player assignItem "ItemMap";
		player addItem "ItemCompass";
		player assignItem "ItemCompass";
		player addItem "ItemWatch";
		player assignItem "ItemWatch";
		player addItem "ItemGPS";
		player assignItem "ItemGPS";
		player addItem "ItemRadio";
		player assignItem "ItemRadio";
		player addItem "NVGoggles_OPFOR";
		player assignItem "NVGoggles_OPFOR";

		[true,"coffee",5] call husky_fnc_handleInv;
		[true,"donuts",5] call husky_fnc_handleInv;
		[true,"defibrillator",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		//[true,"EHK",1] call husky_fnc_handleInv;
		[true,"toolkit",1] call husky_fnc_handleInv;
		[true,"schmerzmittel",10] call husky_fnc_handleInv;
	};

	case 16: {
		player forceAddUniform "U_I_CombatUniform";
		player addHeadgear "H_Beret_CSAT_01_F";
		//player addVest "V_DeckCrew_red_F";
		player addBackpack "B_Bergen_mcamo_F";

		//player addGoggles "G_Respirator_yellow_F";

		player addItem "Medikit";
		player addItem "FirstAidKit";
		player addItem "FirstAidKit";
		player addItem "ItemMap";
		player assignItem "ItemMap";
		player addItem "ItemCompass";
		player assignItem "ItemCompass";
		player addItem "ItemWatch";
		player assignItem "ItemWatch";
		player addItem "ItemGPS";
		player assignItem "ItemGPS";
		player addItem "ItemRadio";
		player assignItem "ItemRadio";
		player addItem "NVGoggles_OPFOR";
		player assignItem "NVGoggles_OPFOR";

		[true,"coffee",5] call husky_fnc_handleInv;
		[true,"donuts",5] call husky_fnc_handleInv;
		[true,"defibrillator",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		//[true,"EHK",1] call husky_fnc_handleInv;
		[true,"toolkit",1] call husky_fnc_handleInv;
		[true,"schmerzmittel",10] call husky_fnc_handleInv;
	};

};


[player, uniform player] call husky_fnc_playerSkins;
[] call husky_fnc_saveGear;
