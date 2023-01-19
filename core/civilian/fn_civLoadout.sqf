#include "..\..\script_macros.hpp"
/*
    File: fn_civLoadout.sqf
    Author: Tobias 'Xetoxyc' Sittenauer

    Description:
    Loads the civs out with the default gear, with randomized clothing.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_handle"];
	_handle = [] spawn husky_fnc_stripDownPlayer;
	waitUntil {scriptDone _handle};
	
	
	if (husky_w_time >= 10) then  {
		diag_log "Kein Kamaz";
	}else{
		/*diag_log "Kamaz";
		[true,"bausatz_zamak_1",1] call husky_fnc_handleInv;
		[true,"bausatz_zamak_2",1] call husky_fnc_handleInv;
		[true,"craftingtool",2] call husky_fnc_handleInv;*/
		[true,"waterBottle",2] call husky_fnc_handleInv;
		[true,"rabbit",2] call husky_fnc_handleInv;
		[true,"toolkit",1] call husky_fnc_handleInv;
		hint parseText format ["<t underline='true' size='1.8' color='#7cff00'>Wilkommen %1</t><br /><t size='1.5' color='#ffffff'>Schön, dass du dich für unsere Insel entschieden hast. Bitte stelle sicher, dass du einen RP-Fähigen Vor- und Nachname hast.</t>", profileName];
	};
	
	
	_Headgearc = ["NONE","H_Bandanna_camo","H_Bandanna_surfer","H_Bandanna_khk","H_Cap_blu","H_Cap_grn","H_Cap_grn_BI","H_Cap_oli","H_Cap_red","H_Cap_tan","H_Helmet_Skate","H_Bandanna_gry","H_Bandanna_sgg","H_Bandanna_cbr","H_StrawHat","H_Hat_tan","H_BandMask_blk"];
	_Googlesc = ["NONE","G_Shades_Black","G_Shades_Blue","G_Shades_Green","G_Shades_Red","G_Sport_Blackred","G_Sport_BlackWhite","G_Sport_Blackyellow","G_Sport_Checkered"];
	_Vestc = ["NONE","V_LegStrapBag_coyote_F","V_LegStrapBag_olive_F","V_LegStrapBag_black_F","V_Pocketed_coyote_F","V_Pocketed_olive_F","V_Pocketed_black_F","V_Safety_blue_F","V_Safety_yellow_F","V_Safety_orange_F"];
	_Backpackc = ["NONE","B_OutdoorPack_blk","B_AssaultPack_khk","B_AssaultPack_dgtl","B_AssaultPack_rgr","B_AssaultPack_sgg","B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_mcamo","B_AssaultPack_tna_f","B_FieldPack_blk","B_FieldPack_ocamo","B_FieldPack_oucamo","B_FieldPack_ghex_f","B_TacticalPack_oli","B_Kitbag_mcamo","B_Kitbag_sgg","B_Kitbag_cbr","B_Carryall_ocamo","B_Carryall_oucamo"];
	
	player addHeadgear (selectRandom _Headgearc);
	player addUniform "U_C_Poloshirt_blue";
	//player addGoggles (selectRandom _Googlesc);
	player addVest (selectRandom _Vestc);
	player addBackpack (selectRandom _Backpackc);
	
	player addItem "ItemMap";
	player assignItem "ItemMap";
	player addItem "ItemCompass";
	player assignItem "ItemCompass";
	player addItem "ItemWatch";
	player assignItem "ItemWatch";
	//player addItem "ItemGPS";
	//player assignItem "ItemGPS";
	player addItem "ItemRadio";
	player assignItem "ItemRadio";
	

if (license_civ_rebel) then {

	_Headgearr = ["NONE","H_Bandanna_camo","H_ShemagOpen_khk","H_ShemagOpen_tan","H_Shemag_olive","H_HelmetO_ocamo","H_Cap_grn_BI","H_Cap_oli","H_Cap_red","H_Cap_tan","H_Helmet_Skate","H_Bandanna_gry","H_Bandanna_sgg","H_Bandanna_cbr","H_StrawHat","H_Hat_tan","H_BandMask_blk"];
	_Uniformr = ["U_I_HeliPilotCoveralls","U_B_CTRG_Soldier_urb_1_F","U_B_CTRG_Soldier_urb_3_F","U_B_CTRG_Soldier_urb_2_F","U_I_G_Story_Protagonist_F","U_B_CTRG_3","U_B_CTRG_1","U_B_CTRG_2","U_B_Soldier_F","U_B_CTRG_Soldier_2_F","U_B_CombatUniform_mcam_worn","U_BG_Guerilla1_2_F","U_BG_leader","U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_I_CombatUniform","U_I_CombatUniform_shortsleeve","U_I_OfficerUniform","U_O_officer_noInsignie_hex_F"];
	_Googlesr = ["NONE","G_Shades_Black","G_Shades_Blue","G_Shades_Green","G_Shades_Red","G_Sport_Blackred","G_Sport_BlackWhite","G_Sport_Blackyellow","G_Sport_Checkered","G_Bandanna_aviator","G_Bandanna_blk","G_Bandanna_khk","G_Bandanna_oli","G_Bandanna_shades","G_Bandanna_sport","G_Bandanna_tan"];
	_Vestr = ["NONE","V_LegStrapBag_coyote_F","V_I_G_resistanceLeader_F","V_LegStrapBag_black_F","V_Pocketed_coyote_F","V_PlateCarrier2_tna_F","V_Pocketed_black_F","V_TacVest_khk","V_Safety_yellow_F","V_Safety_orange_F"];
	_Backpackr = ["NONE","B_OutdoorPack_blk","B_AssaultPack_khk","B_AssaultPack_dgtl","B_AssaultPack_rgr","B_AssaultPack_sgg","B_AssaultPack_blk","B_AssaultPack_cbr","B_AssaultPack_mcamo","B_AssaultPack_tna_f","B_FieldPack_blk","B_FieldPack_ocamo","B_FieldPack_oucamo","B_FieldPack_ghex_f","B_TacticalPack_oli","B_Kitbag_mcamo","B_Kitbag_sgg","B_Kitbag_cbr","B_Carryall_ocamo","B_Carryall_oucamo"];
	
	player addHeadgear (selectRandom _Headgearr);
	player addUniform (selectRandom _Uniformr);
	//player addGoggles (selectRandom _Googlesr);
	player addVest (selectRandom _Vestr);
	player addBackpack (selectRandom _Backpackr);

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
};


[player, uniform player] call husky_fnc_playerSkins;
[] call husky_fnc_saveGear;
