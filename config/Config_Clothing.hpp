/*
*    ARRAY FORMAT:
*        0: STRING (Classname)
*        1: STRING (Display Name, leave as "" for default)
*        2: SCALAR (Price)
*        3: STRING (Conditions) - Must return boolean :
*            String can contain any amount of conditions, aslong as the entire
*            string returns a boolean. This allows you to check any levels, licenses etc,
*            in any combination. For example:
*                "call husky_coplevel && license_civ_someLicense"
*            This will also let you call any other function.
*
*   Clothing classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Equipment
*   Backpacks/remaining classnames can be found here (TIP: Search page for "pack"): https://community.bistudio.com/wiki/Arma_3_CfgVehicles_EMPTY
*
*/
class Clothing {
	
	//=========================================
	//KLEIDUNG ZIVIL
	//=========================================
    class bruce {
        title = "STR_Shops_C_Bruce";
        conditions = "";
        side = "civ";
        class Catogary {
            class bruce_Unfirorms {
                displaname = "Uniform";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_uniforms, 0, "" },
                    { "U_C_Poloshirt_blue", "", 500, "" },
                    { "U_C_Poloshirt_burgundy", "", 500, "" },
                    { "U_C_Poloshirt_salmon", "", 500, "" },
                    { "U_C_Poloshirt_redwhite", "", 500, "" },
                    { "U_C_Poloshirt_stripped", "", 500, "" },
                    { "U_C_Poloshirt_tricolour", "", 500, "" },
                    { "U_C_Man_casual_5_F", "", 600, "" },
                    { "U_C_Man_casual_4_F", "", 600, "" },
                    { "U_C_Man_casual_6_F", "", 600, "" },
                    { "U_C_Uniform_Scientist_02_formal_F", "", 600, "" },
                    { "U_C_Man_casual_2_F", "", 700, "" },
                    { "U_C_Man_casual_3_F", "", 700, "" },
                    { "U_C_Man_casual_1_F", "", 700, "" },
                    { "U_OrestesBody", "", 1000, "" },
                    { "U_C_Uniform_Farmer_01_F", "", 1000, "" },
                    { "U_C_Mechanic_01_F", "", 1000, "" },
                    { "U_C_IDAP_Man_cargo_F", "", 2500, "" },
                    { "U_C_IDAP_Man_Jeans_F", "", 2500, "" },
                    { "U_C_IDAP_Man_casual_F", "", 2500, "" },
                    { "U_C_IDAP_Man_shorts_F", "", 2500, "" },
                    { "U_C_IDAP_Man_Tee_F", "", 2500, "" },
					{ "U_C_FormalSuit_01_black_F", "", 4500, "" },
					{ "U_C_FormalSuit_01_blue_F", "", 4500, "" },
					{ "U_C_FormalSuit_01_khaki_F", "", 4500, "" },
					{ "U_C_FormalSuit_01_gray_F", "", 4500, "" },
					{ "U_C_FormalSuit_01_tshirt_black_F", "", 2500, "" },
					{ "U_C_FormalSuit_01_tshirt_gray_F", "", 2500, "" },
                    { "U_C_IDAP_Man_TeeShorts_F", "", 2500, "" },
					{ "U_BG_Guerrilla_6_1", "", 6000, "" },
					{ "U_C_WorkerCoveralls", "Strahlenschutzanzug_Teil_1", 16000, "" }
                };
            };
            class bruce_Headgear {
                displaname = "Kopfbedeckung";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_headgear, 0, "" },
                    { "H_Bandanna_blu", "", 150, "" },
                    { "H_Bandanna_sand", "", 150, "" },
                    { "H_Bandanna_gry", "", 150, "" },
                    { "H_Bandanna_surfer_grn", "", 150, "" },
                    { "H_Bandanna_surfer_blk", "", 150, "" },
                    { "H_Bandanna_camo", "", 150, "" },
                    { "H_Booniehat_mgrn", "", 250, "" },
                    { "H_Booniehat_khk", "", 250, "" },
                    { "H_Booniehat_oli", "", 250, "" },
                    { "H_Booniehat_tan", "", 250, "" },

                    { "H_Hat_grey", "", 300, "" },
                    { "H_Hat_brown", "", 300, "" },
                    { "H_Hat_tan", "", 300, "" },
                    { "H_Hat_checker", "", 300, "" },
                    { "H_Hat_camo", "", 300, "" },

                    { "H_StrawHat", "", 350, "" },
                    { "H_StrawHat_dark", "", 350, "" },

                    { "H_Hat_Safari_olive_F", "", 400, "" },
                    { "H_Hat_Safari_sand_F", "", 400, "" },

                    { "H_Cap_Orange_IDAP_F", "", 500, "" },
                    { "H_Cap_Black_IDAP_F", "", 500, "" },
                    { "H_Cap_White_IDAP_F", "", 500, "" },
                    { "H_Cap_grn_BI", "", 500, "" },
                    { "H_Cap_blu", "", 500, "" },
                    { "H_Cap_red", "", 500, "" },
                    { "H_Cap_grn", "", 500, "" },
                    { "H_Cap_tan", "", 500, "" },
                    { "H_Cap_oli", "", 500, "" },
                    { "H_Cap_blk", "", 500, "" },
                    { "H_Cap_press", "", 500, "" },
                    { "H_Cap_blk_CMMG", "", 500, "" },
                    { "H_Cap_surfer", "", 500, "" },

                    { "H_Construction_basic_yellow_F", "", 750, "" },
                    { "H_Construction_headset_yellow_F", "", 750, "" },
                    { "H_Construction_earprot_yellow_F", "", 750, "" }
                };
            };
            class bruce_Glasses {
                displaname = "Brillen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_goggles, 0, "" },
                    { "G_Lady_Blue", "", 150, "" },
                    { "G_Aviator", "", 250, "" },
                    { "G_Spectacles", "", 250, "" },
                    { "G_Spectacles_Tinted", "", 250, "" },
                    { "G_Squares", "", 255, "" },
                    { "G_EyeProtectors_F", "", 255, "" },
                    { "G_Shades_Blue", "", 300, "" },
                    { "G_Shades_Green", "", 300, "" },
                    { "G_Shades_Red", "", 300, "" },
					{ "G_Respirator_white_F", "", 100, "" },
                    { "G_Shades_Black", "", 300, "" }
                };
            };
            class bruce_Vestes {
                displaname = "Westen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_vests, 0, "" },
                    { "V_Pocketed_coyote_F", "", 800, "" },
                    { "V_Pocketed_olive_F", "", 800, "" },
                    { "V_Pocketed_black_F", "", 800, "" },
                    { "V_Safety_blue_F", "", 800, "" },
					{ "V_Safety_orange_F", "", 800, "" },
					{ "V_Safety_yellow_F", "", 800, "" },
					{ "V_LegStrapBag_coyote_F", "", 800, "" },
					{ "V_LegStrapBag_olive_F", "", 800, "" },
					{ "V_LegStrapBag_black_F", "", 800, "" },
					{ "V_RebreatherIR", "Strahlenschutzanzug_Teil_2", 16000, "" }
                };
            };
            class bruce_Backpakink {
                displaname = "Rucksack";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_backpacks, 0, "" },
                    { "B_OutdoorPack_blk", "", 500, "" },
                    { "B_AssaultPack_khk", "", 2000, "" },
                    { "B_AssaultPack_dgtl", "", 2000, "" },
                    { "B_AssaultPack_rgr", "", 2000, "" },
                    { "B_AssaultPack_sgg", "", 2000, "" },
                    { "B_AssaultPack_blk", "", 2000, "" },
                    { "B_AssaultPack_cbr", "", 2000, "" },
                    { "B_AssaultPack_mcamo", "", 2000, "" },
                    { "B_AssaultPack_tna_f", "", 2000, "" }, //Apex DLC
                    { "B_TacticalPack_oli", "", 2500, "" },
                    { "B_Kitbag_mcamo", "", 3500, "" },
                    { "B_Kitbag_sgg", "", 3500, "" },
                    { "B_Kitbag_cbr", "", 3500, "" },
                    { "B_FieldPack_blk", "", 5000, "" },
                    { "B_FieldPack_ocamo", "", 5000, "" },
                    { "B_FieldPack_oucamo", "", 5000, "" },
                    { "B_FieldPack_ghex_f", "", 5000, "" }, //Apex DLC
                    { "B_Bergen_sgg", "", 6500, "" },
                    { "B_Bergen_mcamo", "", 6500, "" },
                    { "B_Bergen_rgr", "", 6500, "" },
                    { "B_Bergen_blk", "", 6500, "" },
                    { "B_Carryall_ocamo", "", 7500, "" },
                    { "B_Carryall_oucamo", "", 7500, "" },
                    { "B_Carryall_mcamo", "", 7500, "" },
                    { "B_Carryall_oli", "", 7500, "" },
                    { "B_Carryall_khk", "", 7500, "" },
                    { "B_Carryall_cbr", "", 7500, "" },
                    { "B_Carryall_ghex_f", "", 7500, "" },
                    { "B_Parachute", "Fallschirm", 50000, "" }
                };
            };
        };
    };
 
    class dive {
        title = "STR_Shops_C_Diving";
        conditions = "license_civ_dive";
        side = "civ";
        class Catogary {
            class dive_Unfirorms {
                displaname = "Uniform";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_uniforms, 0, "" },
                    { "U_B_Wetsuit", "", 1500, "" }
                };
            };
            class diveHeadgear {
                displaname = "Kopfbedeckung";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_headgear, 0, "" }
                };
            };
            class diveGlasses {
                displaname = "Brillen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_goggles, 0, "" },
                    { "G_Diving", "", 500, "" }
                };
            };
            class diveVestes {
                displaname = "Westen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_vests, 0, "" },
                    { "V_RebreatherB", "", 5000, "" }
                };
            };
            class diveBackpakink {
                displaname = "Rucksack";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_backpacks, 0, "" },
                    { "B_SCBA_01_F", "", 1250, "" }
                };
            };
        };
    };

    class gun_clothing {
        title = "STR_Shops_C_Gun";
        conditions = "license_civ_gun";
        side = "civ";
        class Catogary {
            class gun_clothingUnfirorms {
                displaname = "Uniform";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_uniforms, 0, "" }
                };
            };
            class gun_clothingHeadgear {
                displaname = "Kopfbedeckung";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_headgear, 0, "" },
                    { "H_EarProtectors_red_F", "", 450, "" },
                    { "H_EarProtectors_yellow_F", "", 450, "" },
                    { "H_EarProtectors_orange_F", "", 450, "" },
                    { "H_EarProtectors_black_F", "", 450, "" },
                    { "H_EarProtectors_white_F", "", 450, "" },
                    { "H_Cap_Headphones", "", 900, "" }
                };
            };
            class gun_clothingGlasses {
                displaname = "Brillen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_goggles, 0, "" },
                    { "G_Combat", "", 750, "" },
                    { "G_Lowprofile", "", 750, "" }
                };
            };
            class gun_clothingVestes {
                displaname = "Westen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_vests, 0, "" },
                    { "V_Rangemaster_belt", "", 1500, "" }
                };
            };
            class gun_clothingBackpakink {
                displaname = "Rucksack";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_backpacks, 0, "" },
                    { "B_LegStrapBag_olive_F", "", 750, "" }
                };
            };
        };
    };

    class jagd_clothing {
        title = "STR_Shops_C_Jagd";
        conditions = "license_civ_gun";
        side = "civ";
        class Catogary {
            class jagd_clothingUnfirorms {
                displaname = "Uniform";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_uniforms, 0, "" },
                    { "U_C_HunterBody_grn", "", 2000, "" },
                    { "U_I_L_01_camo_F", "", 3500, "" },
                    { "U_B_CBRN_Suit_01_Wdl_F", "", 10000, "" }
                };
            };
            class jagd_clothingHeadgear {
                displaname = "Kopfbedeckung";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_headgear, 0, "" },
                    { "H_Booniehat_wdl", "", 500, "" },
                    { "H_Booniehat_taiga", "", 500, "" },
                    { "H_Booniehat_mcamo", "", 500, "" },
                    { "H_MilCap_wdl", "", 1000, "" }
                };
            };
            class jagd_clothingGlasses {
                displaname = "Brillen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_goggles, 0, "" }
                };
            };
            class jagd_clothingVestes {
                displaname = "Westen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_vests, 0, "" },
                    { "V_BandollierB_khk", "", 3500, "" },
                    { "V_BandollierB_ghex_F", "", 3500, "" }
                };
            };
            class jagd_clothingBackpakink {
                displaname = "Rucksack";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_backpacks, 0, "" },
                    { "B_FieldPack_ghex_F", "", 1500, "" },
                    { "B_FieldPack_taiga_F", "", 1500, "" }
                };
            };
        };
    };

    class kart {
        title = "STR_Shops_C_Kart";
        conditions = "";
        side = "civ";
        class Catogary {
            class kartUnfirorms {
                displaname = "Uniform";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_uniforms, 0, "" },
                    { "U_C_Driver_1_black", "", 750, "" },
                    { "U_C_Driver_1_blue", "", 750, "" },
                    { "U_C_Driver_1_red", "", 750, "" },
                    { "U_C_Driver_1_orange", "", 750, "" },
                    { "U_C_Driver_1_green", "", 750, "" },
                    { "U_C_Driver_1_white", "", 750, "" },
                    { "U_C_Driver_1_yellow", "", 750, "" },
                    { "U_C_Driver_2", "", 750, "" },
                    { "U_C_Driver_1", "", 750, "" },
                    { "U_C_Driver_3", "", 750, "" },
                    { "U_C_Driver_4", "", 750, "" }
                };
            };
            class kartHeadgear {
                displaname = "Kopfbedeckung";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_headgear, 0, "" },
                    { "H_RacingHelmet_1_black_F", "", 300, "" },
                    { "H_RacingHelmet_1_red_F", "", 300, "" },
                    { "H_RacingHelmet_1_white_F", "", 300, "" },
                    { "H_RacingHelmet_1_blue_F", "", 300, "" },
                    { "H_RacingHelmet_1_yellow_F", "", 300, "" },
                    { "H_RacingHelmet_1_green_F", "", 300, "" },
                    { "H_RacingHelmet_1_F", "", 300, "" },
                    { "H_RacingHelmet_2_F", "", 300, "" },
                    { "H_RacingHelmet_3_F", "", 300, "" },
                    { "H_RacingHelmet_4_F", "", 300, "" }
                };
            };
            class kartGlasses {
                displaname = "Brillen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_goggles, 0, "" }
                };
            };
            class kartVestes {
                displaname = "Westen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_vests, 0, "" }
                };
            };
            class kartBackpakink {
                displaname = "Rucksack";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_backpacks, 0, "" }
                };
            };
        };
    };

    class reb {
        title = "Tamaulipas";
        conditions = "license_civ_rebel";
		GangName = "";	//Nicht in benutzung
        side = "civ";
        class Catogary {
            class rebUnfirorms {
                displaname = "Uniform";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_uniforms, 0, "" },
					{ "U_I_HeliPilotCoveralls", "", 15000, "" },
					{ "U_B_CTRG_Spoldier_urb_1_F", "", 15000, "" },
					{ "U_B_CTRG_Spoldier_urb_2_F", "", 15000, "" },
					{ "U_B_CTRG_Spoldier_urb_3_F", "", 15000, "" },
					{ "U_I_C_Soldier_Para_1_F", "", 15000, "" },
					{ "U_I_C_Soldier_Para_2_F", "", 15000, "" },
					{ "U_I_C_Soldier_Para_3_F", "", 15000, "" },
					{ "U_I_C_Soldier_Para_4_F", "", 15000, "" }
                };
            };
            class rebHeadgear {
                displaname = "Kopfbedeckung";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_headgear, 0, "" },
					{ "H_Badanna_camo", "", 5000, "" },			
					{ "H_ShemagOpen_khk", "", 5000, "" },
					{ "H_ShemagOpen_tan", "", 5000, "" },
					{ "H_Shemag_olive", "", 5000, "" },
					{ "H_Booniehat_tan_F", "", 5000, "" },
					{ "H_MilCap_ocamo", "", 5000, "" },
					{ "H_HelmetB_camo", "", 35000, "" }
                };
            };
            class rebGlasses {
                displaname = "Brillen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_goggles, 0, "" },
					{ "G_Shades_Black", "", 5000, "" },
					{ "G_Shades_Blue", "", 5000, "" },
					{ "G_Sport_Blackred", "", 5000, "" },
					{ "G_Sport_Checkered", "", 5000, "" },
					{ "G_Sport_Blackyellow", "", 5000, "" },
					{ "G_Sport_BlackWhite", "", 5000, "" },
					{ "G_Balaclava_lowprofile", "", 5000, "" },
					{ "G_Balaclava_combat", "", 5000, "" },
					{ "G_Balaclava_oli", "", 5000, "" },
                    { "G_Combat", "", 5000, "" },
                    { "G_Squares", "", 5000, "" },
					{ "G_Lowprofile", "", 5000, "" },
                    { "G_Bandanna_sport", "", 10000, "" }
                };
            };
            class rebVestes {
                displaname = "Westen";
                conditions = "";
                colthing[] = {
                    { "NONE", "Remove Vest", 0, "" },
					{ "V_RebreatherB", "", 10000, "" },
					{ "V_DeckCrew_yellow_F", "", 20000, "" },
					{ "V_Pocketed_olive_F", "", 25000, "" },
					{ "V_TacVest_gen_F", "", 50000, "" },
					{ "V_TacVest_khk", "", 40000, "" }
                };
            };
            class rebBackpakink {
                displaname = "Rucksack";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_backpacks, 0, "" },
					{ "B_OutdoorPack_blk", "", 6000, "" },		
                    { "B_AssaultPack_cbr", "", 6000, "" },
                    { "B_AssaultPack_sgg", "", 6000, "" },
                    { "B_AssaultPack_rgr", "", 6000, "" },
                    { "B_AssaultPack_ocamo", "", 6000, "" },
                    { "B_AssaultPack_tna_F", "", 6000, "" },
					{ "B_AssaultPack_mcamo", "", 6000, "" },
					{ "B_AssaultPack_dgtl", "", 6000, "" },
                    { "B_TacticalPack_rgr", "", 6000, "" },
                    { "B_TacticalPack_ocamo", "", 6000, "" },
                    { "B_TacticalPack_oli", "", 6000, "" },
                    { "B_TacticalPack_blk", "", 6000, "" },
					{ "B_FieldPack_blk", "", 6000, "" },
					{ "B_FieldPack_ocamo", "", 6000, "" },
                    { "B_Kitbag_mcamo", "", 6000, "" },
                    { "B_Kitbag_rgr", "", 6000, "" },
                    { "B_Kitbag_sgg", "", 6000, "" },
                    { "B_Kitbag_cbr", "", 6000, "" },
                    { "B_Carryall_khk", "", 6000, "" },
					{ "B_Carryall_oli", "", 6000, "" },
                    { "B_Carryall_oucamo", "", 6000, "" },
                    { "B_Carryall_mcamo", "", 6000, "" },
                    { "B_Carryall_ocamo", "", 6000, "" },
					{ "B_Carryall_cbr", "", 6000, "" },
                    { "B_ViperLightHarness_ghex_F", "", 7500, "" },
			        { "B_ViperLightHarness_hex_F", "", 7500, "" },
                    { "B_ViperLightHarness_khk_F", "", 7500, "" },	
                    { "B_ViperHarness_oli_F", "", 7500, "" }
                };
            };
        };
    };

    class gang_clothing {			//IST NICHT DRIN
        title = "STR_Shops_C_Gang";
        conditions = "";
        side = "civ";
        class Catogary {
            class gang_clothingUnfirorms {
                displaname = "Uniform";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_uniforms, 0, "" },
                    { "U_B_CombatUniform_mcam", "", 10000, "" },
                    { "U_B_CombatUniform_mcam_tshirt", "", 10000, "" },
                    { "U_O_CombatUniform_ocamo", "", 10000, "" },
                    { "U_O_CombatUniform_oucamo", "", 10000, "" },
                    { "U_I_CombatUniform", "", 15000, "" },
                    { "U_B_CTRG_1", "", 15000, "" },
                    { "U_I_G_resistanceLeader_F", "", 15000, "" },
                    { "U_OG_leader", "", 15000, "" },
                    { "U_IG_Guerilla1_1", "", 16000, "" },
                    { "U_O_GhillieSuit", "", 150000, "" },
                    { "U_B_GhillieSuit", "", 150000, "" },
                    { "U_B_FullGhillie_lsh", "", 200000, "" },
                    { "U_B_FullGhillie_ard", "", 200000, "" }
                };
            };
            class gang_clothingHeadgear {
                displaname = "Kopfbedeckung";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_headgear, 0, "" },
                    { "H_Cap_tan", "", 1000, "" },
                    { "H_Cap_blk_Raven", "", 1000, "" },
                    { "H_MilCap_ocamo", "", 1000, "" },
                    { "H_Booniehat_khk", "", 3500, "" },
                    { "H_Booniehat_indp", "", 3500, "" },
                    { "H_HelmetB_light_black", "", 40000, "" },
                    { "H_HelmetB_light_desert", "", 40000, "" },
                    { "H_HelmetB_light_snakeskin", "", 40000, "" },
                    { "H_HelmetB_light_grass", "", 40000, "" },
                    { "H_HelmetCrew_I", "", 40000, "" },
                    { "H_HelmetB_camo", "", 40000, "" },
                    { "H_HelmetSpecB_sand", "", 40000, "" },
                    { "H_HelmetSpecB_snakeskin", "", 40000, "" }
                };
            };
            class gang_clothingGlasses {
                displaname = "Brillen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_goggles, 0, "" },
                    { "G_Shades_Black", "", 200, "" },
                    { "G_Shades_Blue", "", 200, "" },
                    { "G_Sport_Blackred", "", 250, "" },
                    { "G_Sport_Checkered", "", 250, "" },
                    { "G_Sport_Blackyellow", "", 250, "" },
                    { "G_Sport_BlackWhite", "", 250, "" },
                    { "G_Lowprofile", "", 300, "" },
                    { "G_Squares", "", 500, "" },
                    { "G_Combat", "", 1250, "" },
                    { "G_Balaclava_combat", "", 9000, "" },
                    { "G_Balaclava_oli", "", 9000, "" },
                    { "G_Bandanna_aviator", "", 10000, "" },
                    { "G_Bandanna_beast", "", 10000, "" },
                    { "G_Bandanna_blk", "", 10000, "" },
                    { "G_Bandanna_khk", "", 10000, "" },
                    { "G_Bandanna_oli", "", 10000, "" },
                    { "G_Bandanna_shades", "", 10000, "" },
                    { "G_Bandanna_sport", "", 10000, "" },
                    { "G_Bandanna_tan", "", 10000, "" }
                };
            };
            class gang_clothingVestes {
                displaname = "Westen";
                conditions = "";
                colthing[] = {
                    { "NONE", "Remove Vest", 0, "" },
					{ "V_RebreatherB", "", 10000, "" },
					{ "V_DeckCrew_yellow_F", "", 20000, "" },
					{ "V_Pocketed_olive_F", "", 25000, "" },
					{ "V_TacVest_gen_F", "", 50000, "" },
					{ "V_TacVest_khk", "", 40000, "" },
					{ "V_PlateCarrier1_rgr", "", 125000, "" },
					{ "V_PlateCarrier1_rgr_noflag_F", "", 125000, "" },
					{ "V_PlateCarrier_IAGL_dgtl", "", 125000, "" },
					{ "V_PlateCarrierIA2_dgtl", "", 125000, "" },
					{ "V_PlateCarrierL_CTRG", "", 125000, "" },
					{ "V_PlateCarrier1_rgr", "", 125000, "" }
                };
            };
            class gang_clothingBackpakink {
                displaname = "Rucksack";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_backpacks, 0, "" },
                    { "B_FieldPack_ghex_F", "", 1500, "" },
                    { "B_FieldPack_taiga_F", "", 1500, "" },
					{ "B_Bergen_mcamo_F", "Unsichtbarer Rucksack", 300000, "" }
                };
            };
        };
    };
	
	class miliz {
        title = "Tierra Caliente Kleidung";
        conditions = "license_civ_miliz";
        side = "civ";
        class Catogary {
            class mil_clothing_clothUnfirorms {
                displaname = "Uniform";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_uniforms, 0, "" },
					{ "U_I_HeliPilotCoveralls", "", 15000, "" },
					{ "U_B_CTRG_Spoldier_urb_1_F", "", 15000, "" },
					{ "U_B_CTRG_Spoldier_urb_2_F", "", 15000, "" },
					{ "U_B_CTRG_Spoldier_urb_3_F", "", 15000, "" },
					{ "U_I_G_Story_Protagonist_F", "", 15000, "" },
					{ "U_B_CTRG_1", "", 15000, "" },
					{ "U_B_CTRG_2", "", 15000, "" },
					{ "U_B_CTRG_3", "", 15000, "" },
					{ "U_B_Soldier_F", "", 15000, "" },
					{ "U_B_Soldier_2_F", "", 15000, "" },
					{ "U_B_CombatUniform_mcam", "", 15000, "" },
					{ "U_B_CombatUniform_mcam_worn", "", 15000, "" },
					{ "U_B_CombatUniform_mcam_tshirt", "", 15000, "" },
					{ "U_I_CombatUniform", "", 15000, "" },
					{ "U_I_CombatUniform_shortsleeve", "", 15000, "" },
					{ "U_I_OfficerUniform", "", 15000, "" },
					{ "U_O_officer_noInsignie_hex_F", "", 15000, "" },
					{ "U_O_CombatUniform_ocamo", "", 15000, "" },
					{ "U_O_CombatUniform_oucamo", "", 15000, "" },
					{ "U_O_PilotCoveralls", "", 15000, "" },
					{ "U_I_G_resistanceLeader_F", "", 15000, "" },
					{ "U_B_T_Soldier_F", "", 15000, "" },
					{ "U_B_T_Soldier_AR_F", "", 15000, "" },
					{ "U_O_T_Sniper_F", "", 75000, "" },
					{ "U_B_T_Sniper_F", "", 75000, "" },
					{ "U_I_GhillieSuit", "", 150000, "" },
					{ "U_O_GhillieSuit", "", 150000, "" }
                };
            };
            class mil_clothing_clothHeadgear {
                displaname = "Kopfbedeckung";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_headgear, 0, "" },
					{ "H_Badanna_camo", "", 2500, "" },			
					{ "H_ShemagOpen_khk", "", 2500, "" },
					{ "H_ShemagOpen_tan", "", 2500, "" },
					{ "H_Shemag_olive", "", 2500, "" },
					{ "H_Booniehat_tan_F", "", 2500, "" },
					{ "H_MilCap_ocamo", "", 2500, "" },
					{ "H_HelmetCrew_I_E", "", 2500, "" },
					{ "H_Tank_black_F", "", 2500, "" },
					{ "H_HelmetHBK_ear_F", "", 2500, "" },
					{ "H_PilotHelmetHeli_I", "", 2500, "" },
					{ "H_HelmetB_tna_F", "", 2500, "" }
                };
            };
            class mil_clothing_clothGlasses {
                displaname = "Brillen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_goggles, 0, "" },
					{ "G_Shades_Black", "", 100, "" },
					{ "G_Shades_Blue", "", 100, "" },
					{ "G_Sport_Blackred", "", 100, "" },
					{ "G_Sport_Checkered", "", 100, "" },
					{ "G_Sport_Blackyellow", "", 100, "" },
					{ "G_Sport_BlackWhite", "", 100, "" },
					{ "G_Balaclava_lowprofile", "", 100, "" },
					{ "G_Balaclava_combat", "", 100, "" },
					{ "G_Balaclava_oli", "", 100, "" },
                    { "G_Combat", "", 100, "" },
                    { "G_Squares", "", 100, "" },
					{ "G_Lowprofile", "", 100, "" },
                    { "G_Bandanna_sport", "", 10000, "" },
                    { "G_Bandanna_tan", "", 10000, "" },
                    { "G_Bandanna_khk", "", 10000, "" },
                    { "G_Bandanna_oli", "", 10000, "" },
                    { "G_Bandanna_aviator", "", 10000, "" },
                    { "G_Bandanna_blk", "", 10000, "" }					
                };
            };
            class mil_clothing_clothVestes {
                displaname = "Westen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_vests, 0, "" },
                    { "V_I_G_resistanceLeader_F", "", 40000, "" },
					{ "V_TacVest_khk", "", 40000, "" },
					{ "V_PlateCarrier_IAGL_dgtl", "", 100000, "" },
					{ "V_PlateCarrierIA2_dgtl", "", 100000, "" },
					{ "V_PlateCarrierL_CTRG", "", 100000, "" },
					{ "V_PlateCarrier1_rgr", "", 100000, "" },
					{ "V_PlateCarrierH_CTRG", "", 200000, "" },
					{ "V_PlateCarrier2_rgr_noflag_F", "", 200000, "" },
					{ "V_PlateCarrier2_tna_F", "", 200000, "" },
                    { "V_HarnessOGL_gry", "", 200000, "" }
                };
            };
            class mil_clothing_clothBackpakink {
                displaname = "Rucksack";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_backpacks, 0, "" },
					{ "B_OutdoorPack_blk", "", 6000, "" },		
                    { "B_AssaultPack_cbr", "", 6000, "" },
                    { "B_AssaultPack_sgg", "", 6000, "" },
                    { "B_AssaultPack_rgr", "", 6000, "" },
                    { "B_AssaultPack_ocamo", "", 6000, "" },
                    { "B_AssaultPack_tna_F", "", 6000, "" },
					{ "B_AssaultPack_mcamo", "", 6000, "" },
					{ "B_AssaultPack_dgtl", "", 6000, "" },
                    { "B_TacticalPack_rgr", "", 6000, "" },
                    { "B_TacticalPack_ocamo", "", 6000, "" },
                    { "B_TacticalPack_oli", "", 6000, "" },
                    { "B_TacticalPack_blk", "", 6000, "" },
					{ "B_FieldPack_blk", "", 6000, "" },
					{ "B_FieldPack_ocamo", "", 6000, "" },
                    { "B_Kitbag_mcamo", "", 6000, "" },
                    { "B_Kitbag_rgr", "", 6000, "" },
                    { "B_Kitbag_sgg", "", 6000, "" },
                    { "B_Kitbag_cbr", "", 6000, "" },
                    { "B_Carryall_khk", "", 6000, "" },
					{ "B_Carryall_oli", "", 6000, "" },
                    { "B_Carryall_oucamo", "", 6000, "" },
                    { "B_Carryall_mcamo", "", 6000, "" },
                    { "B_Carryall_ocamo", "", 6000, "" },
					{ "B_Carryall_cbr", "", 6000, "" },
                    { "B_Bergen_sgg", "", 6000, "" },
					{ "B_Bergen_blk", "", 6000, "" },
					{ "B_Bergen_rgr", "", 6000, "" },
                    { "B_Bergen_mcamo", "", 6000, "" },			
                    { "B_ViperLightHarness_ghex_F", "", 7500, "" },
			        { "B_ViperLightHarness_hex_F", "", 7500, "" },
                    { "B_ViperLightHarness_khk_F", "", 7500, "" },	
                    { "B_ViperHarness_oli_F", "", 7500, "" },		
					{ "B_Bergen_mcamo_F", "Unsichtbarer Rucksack", 200000, "" }
                };
            };
        };
    };
	
	class schwarzmarkt {
        title = "Sinaloa Kartell Kleidung";
        conditions = "license_civ_schwarzmarkt";
        side = "civ";
        class Catogary {
            class szm_clothing_clothUnfirorms {
                displaname = "Uniform";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_uniforms, 0, "" },
					{ "U_I_HeliPilotCoveralls", "", 10000, "" },
					{ "U_B_CTRG_Spoldier_urb_1_F", "", 10000, "" },
					{ "U_B_CTRG_Spoldier_urb_2_F", "", 10000, "" },
					{ "U_B_CTRG_Spoldier_urb_3_F", "", 10000, "" },
					{ "U_I_G_Story_Protagonist_F", "", 10000, "" },
					{ "U_B_CTRG_1", "", 10000, "" },
					{ "U_B_CTRG_2", "", 10000, "" },
					{ "U_B_CTRG_3", "", 10000, "" },
					{ "U_B_Soldier_F", "", 10000, "" },
					{ "U_B_Soldier_2_F", "", 10000, "" },
					{ "U_B_CombatUniform_mcam", "", 10000, "" },
					{ "U_B_CombatUniform_mcam_worn", "", 10000, "" },
					{ "U_B_CombatUniform_mcam_tshirt", "", 10000, "" },
					{ "U_I_CombatUniform", "", 10000, "" },
					{ "U_I_CombatUniform_shortsleeve", "", 10000, "" },
					{ "U_I_OfficerUniform", "", 10000, "" },
					{ "U_O_officer_noInsignie_hex_F", "", 10000, "" },
					{ "U_O_CombatUniform_ocamo", "", 10000, "" },
					{ "U_O_CombatUniform_oucamo", "", 10000, "" },
					{ "U_O_PilotCoveralls", "", 10000, "" },
					{ "U_I_G_resistanceLeader_F", "", 10000, "" },
					{ "U_B_survival_uniform", "", 10000, "" },
					{ "U_B_T_Soldier_F", "", 10000, "" },
					{ "U_B_T_Soldier_AR_F", "", 10000, "" },
					{ "U_I_C_Soldier_Para_1_F", "", 10000, "" },
					{ "U_I_C_Soldier_Para_2_F", "", 10000, "" },
					{ "U_I_C_Soldier_Para_3_F", "", 10000, "" },
					{ "U_I_C_Soldier_Para_4_F", "", 10000, "" },
					{ "U_O_T_Sniper_F", "", 65000, "" },
					{ "U_B_T_Sniper_F", "", 65000, "" },
					{ "U_I_GhillieSuit", "", 150000, "" },
					{ "U_O_GhillieSuit", "", 150000, "" },
					{ "U_B_GhillieSuit", "", 150000, "" },
					{ "U_O_FullGhillie_ard", "Full Ghillie Arid", 250000, "" },
                    { "U_O_FullGhillie_lsh", "Full Ghillie Lush", 250000, "" },
                    { "U_O_FullGhillie_sard", "Full Ghillie Semi Arid", 250000, "" },
                    { "U_O_T_FullGhillie_tna_F", "Full Ghillie Dschungel", 250000, "" }, // APEX
			        { "U_B_T_FullGhillie_tna_F", "Full Ghillie Dschungel", 250000, "" } // APEX


                };
            };
            class szm_clothing_clothHeadgear {
                displaname = "Kopfbedeckung";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_headgear, 0, "" },
					{ "H_Badanna_camo", "", 2500, "" },
					{ "H_ShemagOpen_khk", "", 2500, "" },
					{ "H_ShemagOpen_tan", "", 2500, "" },
					{ "H_Shemag_olive", "", 2500, "" },
					{ "H_Booniehat_tan_F", "", 2500, "" },
					{ "H_MilCap_ocamo", "", 2500, "" },
					{ "H_HelmetB_camo", "", 35000, "" },
					{ "H_HelmetSpecO_ocamo", "", 35000, "" },
					{ "H_HelmetO_ocamo", "", 35000, "" },
					{ "H_HelmetB_TI_tna_F", "", 35000, "" },
					{ "H_HelmetSpecB_paint1", "", 35000, "" },
					{ "H_HelmetSpecB", "", 35000, "" },
					{ "H_HelmetSpecB_sand", "", 35000, "" },
					{ "H_HelmetB_Enh_tna_F", "", 35000, "" }
					
                };
            };
            class szm_clothing_clothGlasses {
                displaname = "Brillen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_goggles, 0, "" },
					{ "G_Shades_Black", "", 100, "" },
					{ "G_Shades_Blue", "", 100, "" },
					{ "G_Sport_Blackred", "", 100, "" },
					{ "G_Sport_Checkered", "", 100, "" },
					{ "G_Sport_Blackyellow", "", 100, "" },
					{ "G_Sport_BlackWhite", "", 100, "" },
					{ "G_Balaclava_lowprofile", "", 100, "" },
					{ "G_Balaclava_combat", "", 100, "" },
					{ "G_Balaclava_oli", "", 100, "" },
                    { "G_Combat", "", 100, "" },
                    { "G_Squares", "", 100, "" },
					{ "G_Lowprofile", "", 100, "" },
                    { "G_Bandanna_sport", "", 10000, "" },
                    { "G_Bandanna_tan", "", 10000, "" },
					{ "G_Bandanna_beast", "", 10000, "" },
                    { "G_Bandanna_khk", "", 10000, "" },
                    { "G_Bandanna_oli", "", 10000, "" },
                    { "G_Bandanna_aviator", "", 10000, "" },
                    { "G_Bandanna_blk", "", 10000, "" }
                };
            };
            class szm_clothing_clothVestes {
                displaname = "Westen";
                conditions = "";
                colthing[] = {
                    { "NONE", "Remove Vest", 0, "" },
					{ "V_RebreatherB", "", 10000, "" },
					{ "V_DeckCrew_yellow_F", "", 20000, "" },
					{ "V_Pocketed_olive_F", "", 25000, "" },
					{ "V_TacVest_gen_F", "", 50000, "" },
					{ "V_PlateCarrier1_rgr", "", 100000, "" },
					{ "V_PlateCarrier1_rgr_noflag_F", "", 100000, "" },
					{ "V_PlateCarrier1_tna_F", "", 100000, "" },
					{ "V_PlateCarrier_Kerry", "", 100000, "" },
					{ "V_PlateCarrier2_tna_F", "", 200000, "" },					
					{ "V_PlateCarrierH_CTRG", "", 200000, "" },
					{ "V_PlateCarrier3_rgr", "", 350000, "" },
					{ "V_PlateCarrierSpec_rgr", "", 350000, "" }
                };
            };
            class szm_clothing_clothBackpakink {
                displaname = "Rucksack";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_backpacks, 0, "" },
					{ "B_OutdoorPack_blk", "", 6000, "" },
					
                    { "B_AssaultPack_cbr", "", 6000, "" },
                    { "B_AssaultPack_sgg", "", 6000, "" },
                    { "B_AssaultPack_rgr", "", 6000, "" },
                    { "B_AssaultPack_ocamo", "", 6000, "" },
                    { "B_AssaultPack_tna_F", "", 6000, "" },
					{ "B_AssaultPack_mcamo", "", 6000, "" },
					{ "B_AssaultPack_dgtl", "", 6000, "" },

                    { "B_TacticalPack_rgr", "", 6000, "" },
                    { "B_TacticalPack_ocamo", "", 6000, "" },
                    { "B_TacticalPack_oli", "", 6000, "" },
                    { "B_TacticalPack_blk", "", 6000, "" },
					
					{ "B_FieldPack_blk", "", 6000, "" },
					{ "B_FieldPack_ocamo", "", 6000, "" },

                    { "B_Kitbag_mcamo", "", 6000, "" },
                    { "B_Kitbag_rgr", "", 6000, "" },
                    { "B_Kitbag_sgg", "", 6000, "" },
                    { "B_Kitbag_cbr", "", 6000, "" },

                    { "B_Carryall_khk", "", 6000, "" },
					{ "B_Carryall_oli", "", 6000, "" },
                    { "B_Carryall_oucamo", "", 6000, "" },
                    { "B_Carryall_mcamo", "", 6000, "" },
                    { "B_Carryall_ocamo", "", 6000, "" },
					{ "B_Carryall_cbr", "", 6000, "" },

                    { "B_Bergen_sgg", "", 6000, "" },
					{ "B_Bergen_blk", "", 6000, "" },
					{ "B_Bergen_rgr", "", 6000, "" },
                    { "B_Bergen_mcamo", "", 6000, "" },			
                    { "B_ViperLightHarness_ghex_F", "", 7500, "" },
			        { "B_ViperLightHarness_hex_F", "", 7500, "" },
                    { "B_ViperLightHarness_khk_F", "", 7500, "" },	
                    { "B_ViperHarness_oli_F", "", 7500, "" },				
					{ "B_Bergen_mcamo_F", "Unsichtbarer Rucksack", 150000, "" }
                };
            };
        };
    };
	
	//=========================================
	//POLIZEI
	//=========================================

    class cop {
        title = "STR_Shops_C_Police";
        conditions = "call husky_coplevel >= 1";
        side = "cop";
        class Catogary {
            class copUnfirorms {
                displaname = "Uniform";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_uniforms, 0, "" },
					{ "U_Rangemaster", "", 250, "" },
					{ "U_B_GEN_Commander_F", "", 250, "call husky_coplevel >= 1" },
                    { "U_B_CombatUniform_mcam_worn", "", 300, "call husky_coplevel >= 1"},
					//{ "U_O_OfficerUniform_ocamo", "Polizei Leitung", 250, "call husky_coplevel >= 19" },	//SKIN Fehlt
                    { "U_B_Wetsuit", "", 500, "license_cop_copboot" }
				};
            };
            class copHeadgear {
                displaname = "Kopfbedeckung";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_headgear, 0, "" },
                    { "H_Cap_police", "", 200, "" },
					{ "H_ParadeDressCap_01_LDF_F", "", 450, "" },
                    { "H_Watchcap_blk", "", 50, "call husky_coplevel >= 1" },
                    { "H_Beret_blk_POLICE", "", 50, "call husky_coplevel >= 1" },
                    { "H_HelmetSpecB_blk", "", 50, "call husky_coplevel >= 2" },
                    { "H_Beret_02", "", 450, "call husky_coplevel >= 9" },
					{ "H_Beret_Colonel", "", 450, "call husky_coplevel >= 15" }
                };
            };
            class copGlasses {
                displaname = "Brillen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_goggles, 0, "" },
                    { "G_Squares", "", 100, "" },
                    { "G_Aviator", "", 100, "" },
                    { "G_Lady_Blue", "", 100, "" },
                    { "G_Shades_Black", "", 150, "" },
                    { "G_Lowprofile", "", 250, "" },
                    { "G_O_Diving", "", 150, "license_cop_copboot" },
					{ "G_AirPurifyingRespirator_01_F", "Gasmaske", 1000, "" },
                    { "G_AirPurifyingRespirator_02_Black_F", "Gasmaske", 80000, "" }
                };
            };
            class copVestes {
                displaname = "Westen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_vests, 0, "" },
                    { "V_Rangemaster_belt", "", 1000, "call husky_coplevel >= 2" },
                    { "V_TacVest_blk_POLICE", "", 5000, "call husky_coplevel >= 2" },
                    { "V_PlateCarrier1_blk", "", 5000, "call husky_coplevel >= 3" },
                    { "V_PlateCarrier2_blk", "", 5000, "call husky_coplevel >= 5" },
					{ "V_PlateCarrierSpec_blk", "NUR FÜR BANK", 10000, "call husky_coplevel >= 2" },
					{ "V_RebreatherB", "", 2500, "license_cop_copboot" }
                };
            };
            class copBackpakink {
                displaname = "Rucksack";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_backpacks, 0, "" },
                    { "B_Kitbag_cbr", "", 2000, "" },
					{ "B_ViperHarness_blk_F", "", 2000, "" },
					{ "B_Bergen_mcamo_F", "", 5000, "" },
                    { "B_Parachute", "Fallschirm", 5000, "" }
					//{ "B_UAV_01_backpack_F", "", 400000, "license_cop_copdrohne" }
                };
            };
        };
    };

	class sek_cop {
        title = "STR_Shops_C_SEK";
        conditions = "license_cop_copsek";	// oder mit lvl husky_seklevel
        side = "cop";
        class Catogary {
            class sek_clothUnfirorms {
                displaname = "Uniform";
                conditions = "call husky_coplevel >= 1";	//husky_seklevel
                colthing[] = {
                    { "NONE", $STR_C_Remove_uniforms, 0, "" },
					{ "U_B_SpecopsUniform_sgg", "SEK-Uniform", 500, "" },
					{ "U_I_CombatUniform", "SEK-Uniform", 500, "" },
                    { "U_O_T_FullGhillie_tna_F", "", 500, "" },
                    { "U_B_T_FullGhillie_tna_F", "", 500, "" },
                    { "U_I_FullGhillie_lsh", "", 500, "" },
					{ "U_O_FullGhillie_lsh", "", 500, "" },
                    { "U_B_FullGhillie_lsh", "", 500, "" },
					{ "U_I_FullGhillie_sard", "", 500, "" },
                    { "U_C_Poloshirt_tricolour", "", 500, "" },
					{ "U_O_R_Gorka_01_camo_F", "", 500, "" },
					{ "U_O_V_Soldier_Viper_F", "", 500, "" },
					{ "U_B_Wetsuit", "", 500, "" },
                    { "U_B_survival_uniform", "", 500, "" }
                };
            };
            class sek_clothHeadgear {
                displaname = "Kopfbedeckung";
                conditions = "call husky_coplevel >= 1";	//husky_seklevel
                colthing[] = {
                    { "NONE", $STR_C_Remove_headgear, 0, "" },
                    { "H_PASGT_basic_black_F", "", 50, "" },
                    { "H_CrewHelmetHeli_B", "", 200, "" },
                    { "H_HelmetSpecB_blk", "", 50, "call husky_coplevel >= 2" },
					{ "H_Beret_02", "", 450, "" },
					{ "H_Beret_Colonel", "", 450, "" },
                    { "H_Watchcap_blk", "", 100, "" },
                    { "H_Watchcap_camo", "", 100, "" }
                };
            };
            class sek_clothGlasses {
                displaname = "Brillen";
                conditions = "call husky_coplevel >= 1";	//husky_seklevel
                colthing[] = {
                    { "NONE", $STR_C_Remove_goggles, 0, "" },
                    { "G_Balaclava_TI_blk_F", "", 500, "" },
                    { "G_Balaclava_TI_G_blk_F", "", 500, "" },
                    { "G_O_Diving", "", 500, "" },
					{ "G_Bandanna_sport", "", 500, "" },
                    { "G_Bandanna_tan", "", 500, "" },
					{ "G_Bandanna_beast", "", 500, "" },
                    { "G_Bandanna_khk", "", 500, "" },
                    { "G_Bandanna_oli", "", 500, "" },
                    { "G_Bandanna_aviator", "", 500, "" },
                    { "G_Bandanna_blk", "", 500, "" },
					{ "G_AirPurifyingRespirator_01_F", "Gasmaske", 1000, "" }
                };
            };
            class sek_clothVestes {
                displaname = "Westen";
                conditions = "call husky_coplevel >= 1";	//husky_seklevel
                colthing[] = {
                    { "NONE", $STR_C_Remove_vests, 0, "" },
                    { "V_PlateCarrier1_rgr", "", 5000, "" },
					{ "V_PlateCarrier2_blk", "", 5000, "" },
					//{ "V_PlateCarrierIA2_dgtl", "", 5000, "" },
					//{ "V_PlateCarrier1_rgr_noflag_F", "", 5000, "" },
					{ "V_PlateCarrierGL_blk", "", 10000, "" },
					{ "V_PlateCarrierSpec_blk", "", 10000, "" },
					//{ "V_PlateCarrier_Kerry", "", 5000, "" },
                    { "V_RebreatherIR", "", 2500, "" }
                };
            };
            class sek_clothBackpakink {
                displaname = "Rucksack";
                conditions = "call husky_coplevel >= 1";	//husky_seklevel
                colthing[] = {
                    { "NONE", $STR_C_Remove_backpacks, 0, "" },
                    //{ "B_UAV_01_backpack_F", "", 400000, "license_cop_copdrohne" },
                    { "B_Kitbag_cbr", "", 2000, "" },
					{ "B_ViperHarness_blk_F", "", 2000, "" },
                    { "B_Bergen_mcamo_F", "", 5000, "" },
                    { "B_Parachute", "Fallschirm", 5000, "" }
                };
            };
        };
    };
	
    class bka_cop {
        title = "STR_Shops_C_Bruce";
        conditions = "license_cop_copscharfschuetze";
        side = "cop";
        class Catogary {
            class bruce_Unfirorms_1 {
                displaname = "Uniform";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_uniforms, 0, "" },
                    { "U_C_Poloshirt_blue", "", 500, "" },
                    { "U_C_Poloshirt_burgundy", "", 500, "" },
                    { "U_C_Poloshirt_salmon", "", 500, "" },
                    { "U_C_Poloshirt_redwhite", "", 500, "" },
                    { "U_C_Poloshirt_stripped", "", 500, "" },
                    { "U_C_Poloshirt_tricolour", "", 500, "" },
                    { "U_C_Man_casual_5_F", "", 600, "" },
                    { "U_C_Man_casual_4_F", "", 600, "" },
                    { "U_C_Man_casual_6_F", "", 600, "" },
                    { "U_C_Uniform_Scientist_02_formal_F", "", 600, "" },
                    { "U_C_Man_casual_2_F", "", 700, "" },
                    { "U_C_Man_casual_3_F", "", 700, "" },
                    { "U_C_Man_casual_1_F", "", 700, "" },
                    { "U_OrestesBody", "", 1000, "" },
                    { "U_C_Uniform_Farmer_01_F", "", 1000, "" },
                    { "U_C_Mechanic_01_F", "", 1000, "" },
                    { "U_C_IDAP_Man_cargo_F", "", 2500, "" },
                    { "U_C_IDAP_Man_Jeans_F", "", 2500, "" },
                    { "U_C_IDAP_Man_casual_F", "", 2500, "" },
                    { "U_C_IDAP_Man_shorts_F", "", 2500, "" },
                    { "U_C_IDAP_Man_Tee_F", "", 2500, "" },
					{ "U_C_FormalSuit_01_black_F", "", 4500, "" },
					{ "U_C_FormalSuit_01_blue_F", "", 4500, "" },
					{ "U_C_FormalSuit_01_khaki_F", "", 4500, "" },
					{ "U_C_FormalSuit_01_gray_F", "", 4500, "" },
					{ "U_C_FormalSuit_01_tshirt_black_F", "", 2500, "" },
					{ "U_C_FormalSuit_01_tshirt_gray_F", "", 2500, "" },
                    { "U_C_IDAP_Man_TeeShorts_F", "", 2500, "" },
					{ "U_BG_Guerrilla_6_1", "", 6000, "" },
					{ "U_C_WorkerCoveralls", "Strahlenschutzanzug_Teil_1", 16000, "" },
					{ "U_I_HeliPilotCoveralls", "", 10000, "" },
					{ "U_B_CTRG_Spoldier_urb_1_F", "", 10000, "" },
					{ "U_B_CTRG_Spoldier_urb_2_F", "", 10000, "" },
					{ "U_B_CTRG_Spoldier_urb_3_F", "", 10000, "" },
					{ "U_I_G_Story_Protagonist_F", "", 10000, "" },
					{ "U_B_CTRG_1", "", 10000, "" },
					{ "U_B_CTRG_2", "", 10000, "" },
					{ "U_B_CTRG_3", "", 10000, "" },
					{ "U_B_Soldier_F", "", 10000, "" },
					{ "U_B_Soldier_2_F", "", 10000, "" },
					{ "U_B_CombatUniform_mcam", "", 10000, "" },
					{ "U_B_CombatUniform_mcam_worn", "", 10000, "" },
					{ "U_B_CombatUniform_mcam_tshirt", "", 10000, "" },
					{ "U_I_CombatUniform", "", 10000, "" },
					{ "U_I_CombatUniform_shortsleeve", "", 10000, "" },
					{ "U_I_OfficerUniform", "", 10000, "" },
					{ "U_O_officer_noInsignie_hex_F", "", 10000, "" },
					{ "U_O_CombatUniform_ocamo", "", 10000, "" },
					{ "U_O_CombatUniform_oucamo", "", 10000, "" },
					{ "U_O_PilotCoveralls", "", 10000, "" },
					{ "U_I_G_resistanceLeader_F", "", 10000, "" },
					{ "U_B_survival_uniform", "", 10000, "" },
					{ "U_B_T_Soldier_F", "", 10000, "" },
					{ "U_B_T_Soldier_AR_F", "", 10000, "" },
					{ "U_I_C_Soldier_Para_1_F", "", 10000, "" },
					{ "U_I_C_Soldier_Para_2_F", "", 10000, "" },
					{ "U_I_C_Soldier_Para_3_F", "", 10000, "" },
					{ "U_I_C_Soldier_Para_4_F", "", 10000, "" },
					{ "U_O_T_Sniper_F", "", 65000, "" },
					{ "U_B_T_Sniper_F", "", 65000, "" },
					{ "U_I_GhillieSuit", "", 150000, "" },
					{ "U_O_GhillieSuit", "", 150000, "" },
					{ "U_B_GhillieSuit", "", 150000, "" },
					{ "U_O_FullGhillie_ard", "Full Ghillie Arid", 250000, "" },
                    { "U_O_FullGhillie_lsh", "Full Ghillie Lush", 250000, "" },
                    { "U_O_FullGhillie_sard", "Full Ghillie Semi Arid", 250000, "" },
                    { "U_O_T_FullGhillie_tna_F", "Full Ghillie Dschungel", 250000, "" }, // APEX
			        { "U_B_T_FullGhillie_tna_F", "Full Ghillie Dschungel", 250000, "" } // APEX
                };
            };
            class bruce_Headgear_1 {
                displaname = "Kopfbedeckung";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_headgear, 0, "" },
                    { "H_Bandanna_blu", "", 150, "" },
                    { "H_Bandanna_sand", "", 150, "" },
                    { "H_Bandanna_gry", "", 150, "" },
                    { "H_Bandanna_surfer_grn", "", 150, "" },
                    { "H_Bandanna_surfer_blk", "", 150, "" },
                    { "H_Bandanna_camo", "", 150, "" },
                    { "H_Booniehat_mgrn", "", 250, "" },
                    { "H_Booniehat_khk", "", 250, "" },
                    { "H_Booniehat_oli", "", 250, "" },
                    { "H_Booniehat_tan", "", 250, "" },

                    { "H_Hat_grey", "", 300, "" },
                    { "H_Hat_brown", "", 300, "" },
                    { "H_Hat_tan", "", 300, "" },
                    { "H_Hat_checker", "", 300, "" },
                    { "H_Hat_camo", "", 300, "" },

                    { "H_StrawHat", "", 350, "" },
                    { "H_StrawHat_dark", "", 350, "" },

                    { "H_Hat_Safari_olive_F", "", 400, "" },
                    { "H_Hat_Safari_sand_F", "", 400, "" },

                    { "H_Cap_Orange_IDAP_F", "", 500, "" },
                    { "H_Cap_Black_IDAP_F", "", 500, "" },
                    { "H_Cap_White_IDAP_F", "", 500, "" },
                    { "H_Cap_grn_BI", "", 500, "" },
                    { "H_Cap_blu", "", 500, "" },
                    { "H_Cap_red", "", 500, "" },
                    { "H_Cap_grn", "", 500, "" },
                    { "H_Cap_tan", "", 500, "" },
                    { "H_Cap_oli", "", 500, "" },
                    { "H_Cap_blk", "", 500, "" },
                    { "H_Cap_press", "", 500, "" },
                    { "H_Cap_blk_CMMG", "", 500, "" },
                    { "H_Cap_surfer", "", 500, "" },

                    { "H_Construction_basic_yellow_F", "", 750, "" },
                    { "H_Construction_headset_yellow_F", "", 750, "" },
                    { "H_Construction_earprot_yellow_F", "", 750, "" },
					{ "H_Badanna_camo", "", 2500, "" },
					{ "H_ShemagOpen_khk", "", 2500, "" },
					{ "H_ShemagOpen_tan", "", 2500, "" },
					{ "H_Shemag_olive", "", 2500, "" },
					{ "H_Booniehat_tan_F", "", 2500, "" },
					{ "H_MilCap_ocamo", "", 2500, "" },
					{ "H_HelmetB_camo", "", 35000, "" },
					{ "H_HelmetSpecO_ocamo", "", 35000, "" },
					{ "H_HelmetO_ocamo", "", 35000, "" },
					{ "H_HelmetB_TI_tna_F", "", 35000, "" },
					{ "H_HelmetSpecB_paint1", "", 35000, "" },
					{ "H_HelmetSpecB", "", 35000, "" },
					{ "H_HelmetSpecB_sand", "", 35000, "" },
					{ "H_HelmetB_Enh_tna_F", "", 35000, "" }
                };
            };
            class bruce_Glasses_1 {
                displaname = "Brillen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_goggles, 0, "" },
                    { "G_Lady_Blue", "", 150, "" },
                    { "G_Aviator", "", 250, "" },
                    { "G_Spectacles", "", 250, "" },
                    { "G_Spectacles_Tinted", "", 250, "" },
                    { "G_Squares", "", 255, "" },
                    { "G_EyeProtectors_F", "", 255, "" },
                    { "G_Shades_Blue", "", 300, "" },
                    { "G_Shades_Green", "", 300, "" },
                    { "G_Shades_Red", "", 300, "" },
					{ "G_Respirator_white_F", "", 100, "" },
                    { "G_Shades_Black", "", 300, "" },
					{ "G_Sport_Blackred", "", 100, "" },
					{ "G_Sport_Checkered", "", 100, "" },
					{ "G_Sport_Blackyellow", "", 100, "" },
					{ "G_Sport_BlackWhite", "", 100, "" },
					{ "G_Balaclava_lowprofile", "", 100, "" },
					{ "G_Balaclava_combat", "", 100, "" },
					{ "G_Balaclava_oli", "", 100, "" },
                    { "G_Combat", "", 100, "" },
					{ "G_Lowprofile", "", 100, "" },
                    { "G_Bandanna_sport", "", 10000, "" },
                    { "G_Bandanna_tan", "", 10000, "" },
					{ "G_Bandanna_beast", "", 10000, "" },
                    { "G_Bandanna_khk", "", 10000, "" },
                    { "G_Bandanna_oli", "", 10000, "" },
                    { "G_Bandanna_aviator", "", 10000, "" },
                    { "G_Bandanna_blk", "", 10000, "" },
					{ "G_AirPurifyingRespirator_02_Black_F", "Gasmaske", 80000, "" }
                };
            };
            class bruce_Vestes_1 {
                displaname = "Westen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_vests, 0, "" },
                    { "V_Pocketed_coyote_F", "", 800, "" },
                    { "V_Pocketed_olive_F", "", 800, "" },
                    { "V_Pocketed_black_F", "", 800, "" },
                    { "V_Safety_blue_F", "", 800, "" },
					{ "V_Safety_orange_F", "", 800, "" },
					{ "V_Safety_yellow_F", "", 800, "" },
					{ "V_LegStrapBag_coyote_F", "", 800, "" },
					{ "V_LegStrapBag_olive_F", "", 800, "" },
					{ "V_LegStrapBag_black_F", "", 800, "" },
					{ "V_RebreatherIR", "Strahlenschutzanzug_Teil_2", 16000, "" },
					{ "V_RebreatherB", "", 10000, "" },
					{ "V_DeckCrew_yellow_F", "", 20000, "" },
					{ "V_Pocketed_olive_F", "", 25000, "" },
					{ "V_TacVest_gen_F", "", 50000, "" },
					{ "V_PlateCarrier1_rgr", "", 100000, "" },
					{ "V_PlateCarrier1_rgr_noflag_F", "", 100000, "" },
					{ "V_PlateCarrier1_tna_F", "", 100000, "" },
					{ "V_PlateCarrier_Kerry", "", 100000, "" },
					{ "V_PlateCarrier2_tna_F", "", 200000, "" },					
					{ "V_PlateCarrierH_CTRG", "", 200000, "" },
					{ "V_PlateCarrier3_rgr", "", 300000, "" },
					{ "V_PlateCarrierSpec_rgr", "", 300000, "" }
                };
            };
            class bruce_Backpakink_1 {
                displaname = "Rucksack";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_backpacks, 0, "" },
                    { "B_OutdoorPack_blk", "", 6000, "" },
					
                    { "B_AssaultPack_cbr", "", 6000, "" },
                    { "B_AssaultPack_sgg", "", 6000, "" },
                    { "B_AssaultPack_rgr", "", 6000, "" },
                    { "B_AssaultPack_ocamo", "", 6000, "" },
                    { "B_AssaultPack_tna_F", "", 6000, "" },
					{ "B_AssaultPack_mcamo", "", 6000, "" },
					{ "B_AssaultPack_dgtl", "", 6000, "" },

                    { "B_TacticalPack_rgr", "", 6000, "" },
                    { "B_TacticalPack_ocamo", "", 6000, "" },
                    { "B_TacticalPack_oli", "", 6000, "" },
                    { "B_TacticalPack_blk", "", 6000, "" },
					
					{ "B_FieldPack_blk", "", 6000, "" },
					{ "B_FieldPack_ocamo", "", 6000, "" },

                    { "B_Kitbag_mcamo", "", 6000, "" },
                    { "B_Kitbag_rgr", "", 6000, "" },
                    { "B_Kitbag_sgg", "", 6000, "" },
                    { "B_Kitbag_cbr", "", 6000, "" },

                    { "B_Carryall_khk", "", 6000, "" },
					{ "B_Carryall_oli", "", 6000, "" },
                    { "B_Carryall_oucamo", "", 6000, "" },
                    { "B_Carryall_mcamo", "", 6000, "" },
                    { "B_Carryall_ocamo", "", 6000, "" },
					{ "B_Carryall_cbr", "", 6000, "" },

                    { "B_Bergen_sgg", "", 6000, "" },
					{ "B_Bergen_blk", "", 6000, "" },
					{ "B_Bergen_rgr", "", 6000, "" },
                    { "B_Bergen_mcamo", "", 6000, "" },			
                    { "B_ViperLightHarness_ghex_F", "", 7500, "" },
			        { "B_ViperLightHarness_hex_F", "", 7500, "" },
                    { "B_ViperLightHarness_khk_F", "", 7500, "" },	
                    { "B_ViperHarness_oli_F", "", 7500, "" },				
					{ "B_Bergen_mcamo_F", "Unsichtbarer Rucksack", 150000, "" },
                    { "B_Parachute", "Fallschirm", 5000, "" }
                };
            };
        };
    };

	//=========================================
	//FEUERWEHR
	//=========================================

    class med_clothing {
        title = "STR_MAR_EMS_Clothing_Shop";
        conditions = "call husky_mediclevel >= 1";
        side = "med";
        class Catogary {
            class med_clothing_clothUnfirorms {
                displaname = "Uniform";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_uniforms, 0, "" },
					{ "U_B_GEN_Commander_F", "", 250, "call husky_mediclevel >= 1" },
                    { "U_B_CombatUniform_mcam", "", 250, "call husky_mediclevel >= 1" },
					{ "U_C_CBRN_Suit_01_Blue_F", "", 250, "" },
					{ "U_C_CBRN_Suit_01_White_F", "", 250, "" },
					{ "U_B_Wetsuit", "", 250, "license_med_wasserrettung" }
                };
            };
            class med_clothing_clothHeadgear {
                displaname = "Kopfbedeckung";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_headgear, 0, "" },
                    { "H_Cap_red", "", 250, "" },
                    { "H_Cap_White_IDAP_F", "", 250, "" },
                    { "H_Cap_Orange_IDAP_F", "", 500, "" },
                    { "H_Booniehat_khk_hs", "", 750, "" },
                    { "H_Watchcap_blk", "", 800, "" },
					{ "H_HeadBandage_bloody_F", "", 800, "" },
					{ "H_Watchcap_blk", "", 800, "call husky_mediclevel >= 2" },
					{ "H_Beret_02", "", 800, "call husky_mediclevel >= 8" },
					{ "H_Beret_CSAT_01_F", "", 800, "call husky_mediclevel >= 14" }
                };
            };
            class med_clothing_clothGlasses {
                displaname = "Brillen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_goggles, 0, "" },
                    { "G_Squares", "", 100, "" },
                    { "G_Aviator", "", 150, "" },
                    { "G_Lady_Blue", "", 150, "" },
                    { "G_Shades_Black", "", 150, "" },
                    { "G_Spectacles", "", 150, "" },
                    { "G_WirelessEarpiece_F", "", 150, "" },
                    { "G_I_Diving", "", 200, "call husky_mediclevel >= 3" },
                    { "G_Tactical_Clear", "", 500, "call husky_mediclevel >= 5" },
                    { "G_AirPurifyingRespirator_01_F", "Gasmaske", 1000, "call husky_mediclevel >= 5" }
                };
            };
            class med_clothing_clothVestes {
                displaname = "Westen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_vests, 0, "" },
                    { "V_Safety_orange_F", "", 150, "call husky_mediclevel >= 2" },
                    { "V_DeckCrew_brown_F", "", 200, "call husky_mediclevel >= 3" },
                    { "V_RebreatherIR", "", 250, "call husky_mediclevel >= 3" },
                    { "V_DeckCrew_green_F", "", 5000, "call husky_mediclevel >= 4" },
                    { "V_DeckCrew_yellow_F", "", 5000, "call husky_mediclevel >= 5" },
                    { "V_DeckCrew_red_F", "", 5000, "call husky_mediclevel >= 5" },
                    { "V_DeckCrew_violet_F", "", 5000, "call husky_mediclevel >= 5" },
                    { "V_DeckCrew_white_F", "", 5000, "call husky_mediclevel >= 5" },
					{ "V_RebreatherB", "", 5000, "license_med_wasserrettung" }
                };
            };
            class med_clothing_clothBackpakink {
                displaname = "Rucksack";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_backpacks, 0, "" },
                    { "B_Kitbag_cbr", "", 2000, "" },
					{ "B_ViperHarness_blk_F", "", 2000, "" },
                    { "B_CombinationUnitRespirator_01_F", "", 200, "license_med_wasserrettung" },
                    { "B_Bergen_mcamo_F", "", 200, "" },
                    { "B_Parachute", "Fallschirm", 5000, "" }
                };
            };
        };
    };
	
	//=========================================
	//FIRMEN / GRUPPIERUNG
	//=========================================
	
	class vaiphy {
        title = "STR_Shops_C_Bruce";
        conditions = "license_civ_vaiphy";
        side = "civ";
        class Catogary {
            class gang_1_clothing_clothUnfirorms {
                displaname = "Uniform";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_uniforms, 0, "" },
					{ "U_NikosAgedBody", "", 100, "" }
                };
            };
            class gang_1_clothing_clothHeadgear {
                displaname = "Kopfbedeckung";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_headgear, 0, "" },
					{ "H_Bandanna_blu", "", 150, "" },
                    { "H_Bandanna_sand", "", 150, "" },
                    { "H_Bandanna_gry", "", 150, "" },
                    { "H_Bandanna_surfer_grn", "", 150, "" },
                    { "H_Bandanna_surfer_blk", "", 150, "" },
                    { "H_Bandanna_camo", "", 150, "" },
                    { "H_Booniehat_mgrn", "", 250, "" },
                    { "H_Booniehat_khk", "", 250, "" },
                    { "H_Booniehat_oli", "", 250, "" },
                    { "H_Booniehat_tan", "", 250, "" },
                    { "H_Hat_grey", "", 300, "" },
                    { "H_Hat_brown", "", 300, "" },
                    { "H_Hat_tan", "", 300, "" },
                    { "H_Hat_checker", "", 300, "" },
                    { "H_Hat_camo", "", 300, "" },
                    { "H_StrawHat", "", 350, "" }
                };
            };
            class gang_1_clothing_clothGlasses {
                displaname = "Brillen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_goggles, 0, "" },
					{ "G_Lady_Blue", "", 150, "" },
                    { "G_Aviator", "", 250, "" },
                    { "G_Spectacles", "", 250, "" },
                    { "G_Spectacles_Tinted", "", 250, "" },
                    { "G_Squares", "", 255, "" },
                    { "G_EyeProtectors_F", "", 255, "" },
                    { "G_Shades_Blue", "", 300, "" },
                    { "G_Shades_Green", "", 300, "" },
                    { "G_Shades_Red", "", 300, "" },
					{ "G_Respirator_white_F", "", 100, "" },
                    { "G_Shades_Black", "", 300, "" }
                };
            };
            class gang_1_clothing_clothVestes {
                displaname = "Westen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_vests, 0, "" },
					{ "V_PlateCarrier1_blk", "", 200000, "" },
					{ "V_TacVest_blk", "", 8000, "" }
                };
            };
            class gang_1_clothing_clothBackpakink {
                displaname = "Rucksack";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_backpacks, 0, "" },
					{ "B_ViperHarness_blk_F", "", 3000, "" },
					{ "B_Bergen_mcamo_F", "Unsichtbarer Rucksack", 50000, "" }
                };
            };
        };
    };
	
	
	class psa {
        title = "STR_Shops_C_Bruce";
        conditions = "license_civ_psa";
        side = "civ";
        class Catogary {
            class gang_2_clothing_clothUnfirorms {
                displaname = "Uniform";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_uniforms, 0, "" },
				{ "U_B_CombatUniform_mcam", "", 8000, "" }
                };
            };

            class gang_2_clothing_clothHeadgear {
                displaname = "Kopfbedeckung";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_headgear, 0, "" },
                    { "H_HelmetSpecB_sand", "", 350, "" }
                };
            };

            class gang_2_clothing_clothGlasses {
                displaname = "Brillen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_goggles, 0, "" },
					{ "G_AirPurifyingRespirator_02_Black_F", "Gasmaske", 28000, "" },
                    { "G_Bandanna_blk", "", 500, "" },
					{ "G_Respirator_white_F", "", 150, "" }
                };
            };
            class gang_2_clothing_clothVestes {
                displaname = "Westen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_vests, 0, "" },
					{ "V_PlateCarrier1_blk", "", 200000, "" },
					{ "V_TacVestIR_blk", "", 8000, "" }
                };
            };
            class gang_2_clothing_clothBackpakink {
                displaname = "Rucksack";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_backpacks, 0, "" },
					{ "B_ViperHarness_blk_F", "", 3000, "" },
					{ "B_Bergen_mcamo_F", "Unsichtbarer Rucksack", 50000, "" },
                    { "B_Parachute", "Fallschirm", 5000, "" }
                };
            };
        };
    };
	
	
	class lafamilia {
        title = "STR_Shops_C_Bruce";
        conditions = "license_civ_lafamilia";
		GangName = "La Familia";	//Nicht in benutzung
        side = "civ";
        class Catogary {
            class gang_3_clothing_clothUnfirorms {
                displaname = "Uniform";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_uniforms, 0, "" },
					{ "U_I_CombatUniform", "", 18000, "" }
                };
            };

            class gang_3_clothing_clothHeadgear {
                displaname = "Kopfbedeckung";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_headgear, 0, "" },
                    { "H_HelmetB_TI_tna_F", "", 3350, "" }
                };
            };

            class gang_3_clothing_clothGlasses {
                displaname = "Brillen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_goggles, 0, "" },
					//{ "G_AirPurifyingRespirator_02_Black_F", "Gasmaske", 28000, "" },
                    { "G_Balaclava_blk", "", 1500, "" }
                };
            };
            class gang_3_clothing_clothVestes {
                displaname = "Westen";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_vests, 0, "" },
					{ "V_PlateCarrier1_blk", "", 200000, "" }
                };
            };
            class gang_3_clothing_clothBackpakink {
                displaname = "Rucksack";
                conditions = "";
                colthing[] = {
                    { "NONE", $STR_C_Remove_backpacks, 0, "" },
					{ "B_ViperLightHarness_blk_F", "", 13000, "" },
					{ "B_Bergen_mcamo_F", "Unsichtbarer Rucksack", 50000, "" }
                };
            };
        };
    };
	
};
