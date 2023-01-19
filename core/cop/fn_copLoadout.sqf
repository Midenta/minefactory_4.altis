#include "..\..\script_macros.hpp"

/*
    File: fn_copLoadout.sqf
    Author: Bryan "Tonic" Boardwine
    Edited: Itsyuka

    Description:
    Loads the cops out with the default gear.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private["_handle"];
_handle = [] spawn husky_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

switch(FETCH_CONST(husky_coplevel)) do {
	case 0: {
		player forceAddUniform "U_C_Poloshirt_blue";

		//player addGoggles "G_Respirator_blue_F";

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
		player addHeadgear "H_Cap_police";
		player addUniform "U_Rangemaster";
		player addVest "V_TacVest_blk_POLICE";
		player addBackpack "B_Kitbag_cbr";

		//player addGoggles "G_Respirator_blue_F";

		player addWeapon "hgun_P07_blk_Snds_F";
		player addWeaponItem ["hgun_P07_blk_Snds_F", "16Rnd_9x21_red_Mag"];
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
	
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
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"sos",1] call husky_fnc_handleInv;
		
		[true,"kabelbinder",4] call husky_fnc_handleInv;
	};

	case 2: {
		player addHeadgear "H_Cap_police";
		player addUniform "U_Rangemaster";
		player addVest "V_TacVest_blk_POLICE";
		player addBackpack "B_Kitbag_cbr";

		//player addGoggles "G_Respirator_blue_F";

		player addWeapon "hgun_P07_blk_Snds_F";
		player addWeaponItem ["hgun_P07_blk_Snds_F", "16Rnd_9x21_red_Mag"];
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";

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
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"sos",1] call husky_fnc_handleInv;
		
		[true,"kabelbinder",4] call husky_fnc_handleInv;
	};

	case 3: {
		player addHeadgear "H_Cap_police";
		player addUniform "U_Rangemaster";
		player addVest "V_TacVest_blk_POLICE";
		player addBackpack "B_Kitbag_cbr";

		//player addGoggles "G_Respirator_blue_F";

		player addWeapon "hgun_P07_blk_Snds_F";
		player addWeaponItem ["hgun_P07_blk_Snds_F", "16Rnd_9x21_red_Mag"];
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";

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
		[true,"spikeStrip",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"sos",1] call husky_fnc_handleInv;
		
		[true,"kabelbinder",4] call husky_fnc_handleInv;
	};

	case 4: {
		player addHeadgear "H_Cap_police";
		player addUniform "U_Rangemaster";
		player addVest "V_TacVest_blk_POLICE";
		player addBackpack "B_Kitbag_cbr";

		//player addGoggles "G_Respirator_blue_F";

		player addWeapon "hgun_P07_blk_Snds_F";
		player addWeaponItem ["hgun_P07_blk_Snds_F", "16Rnd_9x21_red_Mag"];
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";

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
		[true,"spikeStrip",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"sos",1] call husky_fnc_handleInv;
		
		[true,"kabelbinder",4] call husky_fnc_handleInv;
	};

	case 5: {
		player addHeadgear "H_Beret_blk_POLICE";
		player addUniform "U_Rangemaster";
		player addVest "V_PlateCarrier1_blk";
		player addBackpack "B_Kitbag_cbr";

		//player addGoggles "G_Respirator_blue_F";

		player addWeapon "hgun_P07_blk_Snds_F";
		player addWeaponItem ["hgun_P07_blk_Snds_F", "16Rnd_9x21_red_Mag"];
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";

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
		[true,"spikeStrip",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"sos",1] call husky_fnc_handleInv;
		
		[true,"kabelbinder",4] call husky_fnc_handleInv;
	};

	case 6: {
		player addHeadgear "H_Beret_blk_POLICE";
		player addUniform "U_Rangemaster";
		player addVest "V_PlateCarrier1_blk";
		player addBackpack "B_Kitbag_cbr";

		//player addGoggles "G_Respirator_blue_F";

		player addWeapon "hgun_P07_blk_Snds_F";
		player addWeaponItem ["hgun_P07_blk_Snds_F", "16Rnd_9x21_red_Mag"];
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";

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
		[true,"spikeStrip",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"sos",1] call husky_fnc_handleInv;
		
		[true,"kabelbinder",4] call husky_fnc_handleInv;
	};

	case 7: {
		player addHeadgear "H_Beret_blk_POLICE";
		player addUniform "U_Rangemaster";
		player addVest "V_PlateCarrier1_blk";
		player addBackpack "B_Kitbag_cbr";

		//player addGoggles "G_Respirator_blue_F";

		player addWeapon "hgun_P07_blk_Snds_F";
		player addWeaponItem ["hgun_P07_blk_Snds_F", "16Rnd_9x21_red_Mag"];
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";

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
		[true,"spikeStrip",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"sos",1] call husky_fnc_handleInv;
		
		[true,"kabelbinder",4] call husky_fnc_handleInv;
	};

	case 8: {
		player addHeadgear "H_Beret_blk_POLICE";
		player addUniform "U_Rangemaster";
		player addVest "V_PlateCarrier1_blk";
		player addBackpack "B_Kitbag_cbr";

		//player addGoggles "G_Respirator_blue_F";

		player addWeapon "hgun_P07_blk_Snds_F";
		player addWeaponItem ["hgun_P07_blk_Snds_F", "16Rnd_9x21_red_Mag"];
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";

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
		[true,"spikeStrip",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"sos",1] call husky_fnc_handleInv;
		
		[true,"kabelbinder",4] call husky_fnc_handleInv;
	};

	case 9: {
		player addHeadgear "H_Beret_02";
		player addUniform "U_Rangemaster";
		player addVest "V_PlateCarrier2_blk";
		player addBackpack "B_Kitbag_cbr";

		//player addGoggles "G_Respirator_blue_F";

		player addWeapon "hgun_P07_blk_Snds_F";
		player addWeaponItem ["hgun_P07_blk_Snds_F", "16Rnd_9x21_red_Mag"];
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";

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
		[true,"spikeStrip",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"sos",1] call husky_fnc_handleInv;
		
		[true,"kabelbinder",4] call husky_fnc_handleInv;
	};

	case 10: {
		player addHeadgear "H_Beret_02";
		player addUniform "U_Rangemaster";
		player addVest "V_PlateCarrier2_blk";
		player addBackpack "B_Kitbag_cbr";

		//player addGoggles "G_Respirator_blue_F";

		player addWeapon "hgun_P07_blk_Snds_F";
		player addWeaponItem ["hgun_P07_blk_Snds_F", "16Rnd_9x21_red_Mag"];
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";

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
		[true,"spikeStrip",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"sos",1] call husky_fnc_handleInv;
		
		[true,"kabelbinder",4] call husky_fnc_handleInv;
	};

	case 11: {
		player addHeadgear "H_Beret_02";
		player addUniform "U_Rangemaster";
		player addVest "V_PlateCarrier2_blk";
		player addBackpack "B_Kitbag_cbr";

		//player addGoggles "G_Respirator_blue_F";

		player addWeapon "hgun_P07_blk_Snds_F";
		player addWeaponItem ["hgun_P07_blk_Snds_F", "16Rnd_9x21_red_Mag"];
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";

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
		[true,"spikeStrip",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"sos",1] call husky_fnc_handleInv;
		
		[true,"kabelbinder",4] call husky_fnc_handleInv;
	};

	case 12: {
		player addHeadgear "H_Beret_02";
		player addUniform "U_Rangemaster";
		player addVest "V_PlateCarrier2_blk";
		player addBackpack "B_Kitbag_cbr";

		//player addGoggles "G_Respirator_blue_F";

		player addWeapon "hgun_P07_blk_Snds_F";
		player addWeaponItem ["hgun_P07_blk_Snds_F", "16Rnd_9x21_red_Mag"];
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";

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
		[true,"spikeStrip",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"sos",1] call husky_fnc_handleInv;
		
		[true,"kabelbinder",4] call husky_fnc_handleInv;
	};

	case 13: {
		player addHeadgear "H_Beret_02";
		player addUniform "U_Rangemaster";
		player addVest "V_PlateCarrier2_blk";
		player addBackpack "B_Kitbag_cbr";

		//player addGoggles "G_Respirator_blue_F";

		player addWeapon "hgun_P07_blk_Snds_F";
		player addWeaponItem ["hgun_P07_blk_Snds_F", "16Rnd_9x21_red_Mag"];
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";

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
		[true,"spikeStrip",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"sos",1] call husky_fnc_handleInv;
		
		[true,"kabelbinder",4] call husky_fnc_handleInv;
	};

	case 14: {
		player addHeadgear "H_Beret_02";
		player addUniform "U_Rangemaster";
		player addVest "V_PlateCarrier2_blk";
		player addBackpack "B_Kitbag_cbr";

		//player addGoggles "G_Respirator_blue_F";

		player addWeapon "hgun_P07_blk_Snds_F";
		player addWeaponItem ["hgun_P07_blk_Snds_F", "16Rnd_9x21_red_Mag"];
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";

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
		[true,"spikeStrip",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"sos",1] call husky_fnc_handleInv;
		
		[true,"kabelbinder",4] call husky_fnc_handleInv;
	};

	case 15: {
		player addHeadgear "H_Beret_02";
		player addUniform "U_Rangemaster";
		player addVest "V_PlateCarrier2_blk";
		player addBackpack "B_Kitbag_cbr";

		//player addGoggles "G_Respirator_blue_F";

		player addWeapon "hgun_P07_blk_Snds_F";
		player addWeaponItem ["hgun_P07_blk_Snds_F", "16Rnd_9x21_red_Mag"];
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";

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
		[true,"spikeStrip",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"sos",1] call husky_fnc_handleInv;
		
		[true,"kabelbinder",4] call husky_fnc_handleInv;
	};

	case 16: {
		player addHeadgear "H_Beret_02";
		player addUniform "U_Rangemaster";
		player addVest "V_PlateCarrier2_blk";
		player addBackpack "B_Kitbag_cbr";

		//player addGoggles "G_Respirator_blue_F";

		player addWeapon "hgun_P07_blk_Snds_F";
		player addWeaponItem ["hgun_P07_blk_Snds_F", "16Rnd_9x21_red_Mag"];
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";

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
		[true,"spikeStrip",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"sos",1] call husky_fnc_handleInv;
		
		[true,"kabelbinder",4] call husky_fnc_handleInv;
	};

	case 17: {
		player addHeadgear "H_Beret_02";
		player addUniform "U_Rangemaster";
		player addVest "V_PlateCarrier2_blk";
		player addBackpack "B_Kitbag_cbr";

		//player addGoggles "G_Respirator_blue_F";

		player addWeapon "hgun_P07_blk_Snds_F";
		player addWeaponItem ["hgun_P07_blk_Snds_F", "16Rnd_9x21_red_Mag"];
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";

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
		[true,"spikeStrip",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"sos",1] call husky_fnc_handleInv;
		
		[true,"kabelbinder",4] call husky_fnc_handleInv;
	};

	case 18: {
		player addHeadgear "H_Beret_02";
		player addUniform "U_Rangemaster";
		player addVest "V_PlateCarrier2_blk";
		player addBackpack "B_Kitbag_cbr";

		//player addGoggles "G_Respirator_blue_F";

		player addWeapon "hgun_P07_blk_Snds_F";
		player addWeaponItem ["hgun_P07_blk_Snds_F", "16Rnd_9x21_red_Mag"];
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";

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
		[true,"spikeStrip",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"sos",1] call husky_fnc_handleInv;
		
		[true,"kabelbinder",4] call husky_fnc_handleInv;
	};

	case 19: {
		player addHeadgear "H_Beret_02";
		player addUniform "U_Rangemaster";
		player addVest "V_PlateCarrier2_blk";
		player addBackpack "B_Kitbag_cbr";

		//player addGoggles "G_Respirator_blue_F";

		player addWeapon "hgun_P07_blk_Snds_F";
		player addWeaponItem ["hgun_P07_blk_Snds_F", "16Rnd_9x21_red_Mag"];
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";

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
		[true,"spikeStrip",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"sos",1] call husky_fnc_handleInv;
		
		[true,"kabelbinder",4] call husky_fnc_handleInv;
	};

	case 20: {
		player addHeadgear "H_Beret_02";
		player addUniform "U_Rangemaster";
		player addVest "V_PlateCarrier2_blk";
		player addBackpack "B_Kitbag_cbr";

		//player addGoggles "G_Respirator_blue_F";

		player addWeapon "hgun_P07_blk_Snds_F";
		player addWeaponItem ["hgun_P07_blk_Snds_F", "16Rnd_9x21_red_Mag"];
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";
		player addMagazine "16Rnd_9x21_red_Mag";

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
		[true,"spikeStrip",1] call husky_fnc_handleInv;
		[true,"gpstracker",1] call husky_fnc_handleInv;
		[true,"keycard",1] call husky_fnc_handleInv;
		[true,"sos",1] call husky_fnc_handleInv;
		
		[true,"kabelbinder",4] call husky_fnc_handleInv;
	};

};


[player, uniform player] call husky_fnc_playerSkins;
[] call husky_fnc_saveGear;
