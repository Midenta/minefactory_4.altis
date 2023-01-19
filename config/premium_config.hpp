/* 
	Disclaimer:
		Any assets listed in the configruation file are example to demonstrate the product functionality.
		We strongly advise that product owner will follow monetization rules described at official website of Bohemia Interactive Studios:
		https://www.bohemia.net/monetization

	Developer tips:
		1. Module isn't hardcoded to determine item by its category, besides Featured one. aka you can add weapons to Vehicles category and be fine with it.
		2. You can create or remove any catergories, besides Featured one.
		3. Module also utilizes textures from huskyCfgVehicles in Config_Vehicles.hpp - you can disable that behavior in case you have different color system.
*/
class premium_config {
	// General
	shopDisplayName = "Premium Shop"; // Name of your shop
	shopIcon = "\A3\Ui_f\data\Logos\arma3apex_white_ca.paa"; // Path to a picture in your mod or mission file
	shopPicture = "\A3\Ui_f\data\GUI\Rsc\RscDisplayMain\backgroundGrey.jpg"; // Shop main background picture
	shopCurrencyFormat = "%1 G"; // Format of currency displayed, %1 is a value index.
	shopCurrencyColor = "FFD700"; // HEX scheme color for currency text and other misc elements.
	shopAdmins[] = {"76561198094116381","76561198171953617","UID3"}; // Admin UIDs to access admin panel

	// Framework specific
	shopUseVehicleTextures = 1; // Use textures from Tonic Framework vehicles classes, 0 - to disable.
	shopOpenCondition = "true;"; // Code that determines conditions for shop to open, should return bool.
	shopVirtualVariableFormat = "husky_inv_%1"; // Format of variable for virtual items [%1 - particular item variable]

	// Displayed items list (do not change Featured class itself, only items, this one is hardcoded)
	class Categories {
		class Featured {
			displayName = "$STR_ASN_PREMIUM_FEATURED";
			description = "$STR_ASN_PREMIUM_FEATURED_DESCRIPTION";
			// Category, itemname 
			categoryItems[] = {
				{"Weapons","srifle_GM6_F"},
				{"Uniforms","U_B_FullGhillie_ard"},
				{"Gear","optic_LRPS"},
				{"Magazines","5Rnd_127x108_Mag"}
			};
		};
		class Vehicles {
			displayName = "$STR_ASN_PREMIUM_VEHICLES";
			description = "$STR_ASN_PREMIUM_VEHICLES_DESCRIPTION";
			// Item classname, price
			categoryItems[] = {
				{"C_Hatchback_01_sport_F",250},
				{"B_Heli_Light_01_F",500},
				{"B_Heli_Light_01_armed_F",1250},
				{"B_MRAP_01_F",500},
				{"B_MRAP_01_hmg_F",1250}
			};
		};
		class Weapons {
			displayName = "$STR_ASN_PREMIUM_WEAPONS";
			description = "$STR_ASN_PREMIUM_WEAPONS_DESCRIPTION";
			// Item classname, price
			categoryItems[] = {
				{"srifle_DMR_01_F",50},
				{"LMG_Zafir_F",100},
				{"srifle_GM6_F",300},
				{"launch_RPG32_F",500}
			};			
		};
		class Uniforms {
			displayName = "$STR_ASN_PREMIUM_UNIFORMS";
			description = "$STR_ASN_PREMIUM_UNIFORMS_DESCRIPTION";
			// Item classname, price
			categoryItems[] = {
				{"U_I_C_Soldier_Camo_F",25},
				{"U_O_GhillieSuit",100},
				{"U_I_GhillieSuit",100},
				{"U_B_FullGhillie_ard",150},
				{"U_B_FullGhillie_lsh",150},
				{"U_O_V_Soldier_Viper_F",250},
				{"U_O_V_Soldier_Viper_hex_F",250}
			};
		};
		class Vests {
			displayName = "$STR_ASN_PREMIUM_VESTS";
			description = "$STR_ASN_PREMIUM_VESTS_DESCRIPTION";
			// Item classname, price		
			categoryItems[] = {
				{"V_PlateCarrier1_rgr",50},
				{"V_PlateCarrierGL_rgr",100},
				{"V_PlateCarrierGL_blk",150},
				{"V_PlateCarrierSpec_rgr",200},
				{"V_PlateCarrierSpec_blk",250}
			};
		};
		class Backpacks {
			displayName = "$STR_ASN_PREMIUM_BACKPACKS";
			description = "$STR_ASN_PREMIUM_BACKPACKS_DESCRIPTION";
			// Item classname, price		
			categoryItems[] = {
				{"B_Carryall_cbr",50},
				{"B_Carryall_ocamo",50},
				{"B_Carryall_khk",50}
			};			
		};
		class Headgears {
			displayName = "$STR_ASN_PREMIUM_HEAD";
			description = "$STR_ASN_PREMIUM_HEAD_DESCRIPTION";
			// Item classname, price		
			categoryItems[] = {
				{"H_HelmetB",25},
				{"H_HelmetB_camo",25},
				{"H_HelmetB_paint",25},
				{"H_HelmetB_light",25},
				{"H_Booniehat_khk",25},
				{"H_Booniehat_oli",25},
				{"H_Booniehat_indp",25},
				{"H_Booniehat_mcamo",25},
				{"H_Booniehat_grn",25},
				{"H_Booniehat_tan",25},
				{"H_Booniehat_dirty",25},
				{"H_Booniehat_dgtl",25},
				{"H_Booniehat_khk_hs",25},
				{"H_HelmetB_plain_mcamo",25},
				{"H_HelmetB_plain_blk",25},
				{"H_HelmetSpecB",25},
				{"H_HelmetSpecB_paint1",25},
				{"H_HelmetSpecB_paint2",25},
				{"H_HelmetSpecB_blk",25},
				{"H_HelmetSpecB_snakeskin",25},
				{"H_HelmetSpecB_sand",25},
				{"H_HelmetIA",25},
				{"H_HelmetIA_net",25},
				{"H_HelmetIA_camo",25},
				{"H_Helmet_Kerry",25},
				{"H_HelmetB_grass",25},
				{"H_HelmetB_snakeskin",25},
				{"H_HelmetB_desert",25},
				{"H_HelmetB_black",25},
				{"H_HelmetB_sand",25},
				{"H_Cap_red",25},
				{"H_Cap_blu",25},
				{"H_Cap_oli",25},
				{"H_Cap_headphones",25},
				{"H_Cap_tan",25},
				{"H_Cap_blk",25},
				{"H_Cap_blk_CMMG",25},
				{"H_Cap_brn_SPECOPS",25},
				{"H_Cap_tan_specops_US",25},
				{"H_Cap_khaki_specops_UK",25},
				{"H_Cap_grn",25},
				{"H_Cap_grn_BI",25},
				{"H_Cap_blk_Raven",25},
				{"H_Cap_blk_ION",25},
				{"H_Cap_oli_hs",25},
				{"H_Cap_press",25},
				{"H_Cap_usblack",25},
				{"H_Cap_surfer",25},
				{"H_Cap_police",25},
				{"H_HelmetCrew_B",25},
				{"H_HelmetCrew_O",25},
				{"H_HelmetCrew_I",25},
				{"H_PilotHelmetFighter_B",25},
				{"H_PilotHelmetFighter_O",25},
				{"H_PilotHelmetFighter_I",25},
				{"H_PilotHelmetHeli_B",25},
				{"H_PilotHelmetHeli_O",25},
				{"H_PilotHelmetHeli_I",25},
				{"H_CrewHelmetHeli_B",25},
				{"H_CrewHelmetHeli_O",25},
				{"H_CrewHelmetHeli_I",25},
				{"H_HelmetO_ocamo",25},
				{"H_HelmetLeaderO_ocamo",25},
				{"H_MilCap_ocamo",25},
				{"H_MilCap_mcamo",25},
				{"H_MilCap_oucamo",25},
				{"H_MilCap_rucamo",25},
				{"H_MilCap_gry",25},
				{"H_MilCap_dgtl",25},
				{"H_MilCap_blue",25},
				{"H_HelmetB_light_grass",25},
				{"H_HelmetB_light_snakeskin",25},
				{"H_HelmetB_light_desert",25},
				{"H_HelmetB_light_black",25},
				{"H_HelmetB_light_sand",25},
				{"H_BandMask_blk",25},
				{"H_BandMask_khk",25},
				{"H_BandMask_reaper",25},
				{"H_BandMask_demon",25},
				{"H_HelmetO_oucamo",25},
				{"H_HelmetLeaderO_oucamo",25},
				{"H_HelmetSpecO_ocamo",25},
				{"H_HelmetSpecO_blk",25},
				{"H_Bandanna_surfer",25},
				{"H_Bandanna_khk",25},
				{"H_Bandanna_khk_hs",25},
				{"H_Bandanna_cbr",25},
				{"H_Bandanna_sgg",25},
				{"H_Bandanna_sand",25},
				{"H_Bandanna_surfer_blk",25},
				{"H_Bandanna_surfer_grn",25},
				{"H_Bandanna_gry",25},
				{"H_Bandanna_blu",25},
				{"H_Bandanna_camo",25},
				{"H_Bandanna_mcamo",25},
				{"H_Shemag_khk",25},
				{"H_Shemag_tan",25},
				{"H_Shemag_olive",25},
				{"H_Shemag_olive_hs",25},
				{"H_ShemagOpen_khk",25},
				{"H_ShemagOpen_tan",25},
				{"H_Beret_blk",25},
				{"H_Beret_blk_POLICE",25},
				{"H_Beret_red",25},
				{"H_Beret_grn",25},
				{"H_Beret_grn_SF",25},
				{"H_Beret_brn_SF",25},
				{"H_Beret_ocamo",25},
				{"H_Beret_02",25},
				{"H_Beret_Colonel",25},
				{"H_Watchcap_blk",25},
				{"H_Watchcap_cbr",25},
				{"H_Watchcap_khk",25},
				{"H_Watchcap_camo",25},
				{"H_Watchcap_sgg",25},
				{"H_TurbanO_blk",25},
				{"H_StrawHat",25},
				{"H_StrawHat_dark",25},
				{"H_Hat_blue",25},
				{"H_Hat_brown",25},
				{"H_Hat_camo",25},
				{"H_Hat_grey",25},
				{"H_Hat_checker",25},
				{"H_Hat_tan",25},
				{"H_RacingHelmet_1_F",25},
				{"H_RacingHelmet_2_F",25},
				{"H_RacingHelmet_3_F",25},
				{"H_RacingHelmet_4_F",25},
				{"H_RacingHelmet_1_black_F",25},
				{"H_RacingHelmet_1_blue_F",25},
				{"H_RacingHelmet_1_green_F",25},
				{"H_RacingHelmet_1_red_F",25},
				{"H_RacingHelmet_1_white_F",25},
				{"H_RacingHelmet_1_yellow_F",25},
				{"H_RacingHelmet_1_orange_F",25},
				{"H_Cap_marshal",25},
				{"H_Helmet_Skate",25},
				{"H_HelmetB_TI_tna_F",25},
				{"H_HelmetO_ViperSP_hex_F",25},
				{"H_HelmetO_ViperSP_ghex_F",25},
				{"H_HelmetB_tna_F",25},
				{"H_HelmetB_Enh_tna_F",25},
				{"H_HelmetB_Light_tna_F",25},
				{"H_HelmetSpecO_ghex_F",25},
				{"H_HelmetLeaderO_ghex_F",25},
				{"H_HelmetO_ghex_F",25},
				{"H_HelmetCrew_O_ghex_F",25},
				{"H_MilCap_tna_F",25},
				{"H_MilCap_ghex_F",25},
				{"H_Booniehat_tna_F",25},
				{"H_Beret_gen_F",25},
				{"H_MilCap_gen_F",25},
				{"H_Cap_oli_Syndikat_F",25},
				{"H_Cap_tan_Syndikat_F",25},
				{"H_Cap_blk_Syndikat_F",25},
				{"H_Cap_grn_Syndikat_F",25},
				{"H_Hat_Safari_base_F",25},
				{"H_Hat_Safari_sand_F",25},
				{"H_Hat_Safari_olive_F",25},
				{"H_Construction_basic_base_F",25},
				{"H_Construction_basic_yellow_F",25},
				{"H_Construction_basic_white_F",25},
				{"H_Construction_basic_orange_F",25},
				{"H_Construction_basic_red_F",25},
				{"H_Construction_basic_vrana_F",25},
				{"H_Construction_basic_black_F",25},
				{"H_Construction_earprot_base_F",25},
				{"H_Construction_earprot_yellow_F",25},
				{"H_Construction_earprot_white_F",25},
				{"H_Construction_earprot_orange_F",25},
				{"H_Construction_earprot_red_F",25},
				{"H_Construction_earprot_vrana_F",25},
				{"H_Construction_earprot_black_F",25},
				{"H_Construction_headset_base_F",25},
				{"H_Construction_headset_yellow_F",25},
				{"H_Construction_headset_white_F",25},
				{"H_Construction_headset_orange_F",25},
				{"H_Construction_headset_red_F",25},
				{"H_Construction_headset_vrana_F",25},
				{"H_Construction_headset_black_F",25},
				{"H_EarProtectors_base_F",25},
				{"H_EarProtectors_yellow_F",25},
				{"H_EarProtectors_white_F",25},
				{"H_EarProtectors_orange_F",25},
				{"H_EarProtectors_red_F",25},
				{"H_EarProtectors_black_F",25},
				{"H_HeadSet_base_F",25},
				{"H_HeadSet_yellow_F",25},
				{"H_HeadSet_white_F",25},
				{"H_HeadSet_orange_F",25},
				{"H_HeadSet_red_F",25},
				{"H_HeadSet_black_F",25},
				{"H_PASGT_basic_base_F",25},
				{"H_PASGT_basic_blue_press_F",25},
				{"H_PASGT_basic_blue_F",25},
				{"H_PASGT_basic_white_F",25},
				{"H_PASGT_basic_olive_F",25},
				{"H_PASGT_basic_black_F",25},
				{"H_PASGT_neckprot_base_F",25},
				{"H_PASGT_neckprot_blue_press_F",25},
				{"H_HeadBandage_base_F",25},
				{"H_HeadBandage_stained_F",25},
				{"H_HeadBandage_clean_F",25},
				{"H_HeadBandage_bloody_F",25},
				{"H_Cap_White_IDAP_F",25},
				{"H_Cap_Orange_IDAP_F",25},
				{"H_Cap_Black_IDAP_F",25},
				{"H_WirelessEarpiece_base_F",25},
				{"H_WirelessEarpiece_F",25},
				{"H_Tank_base_F",25},
				{"H_Tank_black_F",25}
			};
		};
		class Gear {
			displayName = "$STR_ASN_PREMIUM_GEAR";
			description = "$STR_ASN_PREMIUM_GEAR_DESCRIPTION";
			// Item classname, price		
			categoryItems[] = {
				{"NVGoggles",100},
				{"Rangefinder",50},
				{"ItemGPS",10},
				{"optic_LRPS",25}
			};			
		};		
		class Magazines {
			displayName = "$STR_ASN_PREMIUM_MAGAZINES";
			description = "$STR_ASN_PREMIUM_MAGAZINES_DESCRIPTION";
			// Item classname, price
			categoryItems[] = {	
				{"HandGrenade",1},		
				{"10Rnd_762x54_Mag",3},
				{"5Rnd_127x108_Mag",5},
				{"150Rnd_762x54_Box",5},
				{"RPG32_F",10},
				{"RPG32_HE_F",10}
			};			
		};
		class Virtual {
			displayName = "$STR_ASN_PREMIUM_VIRTUAL";
			description = "$STR_ASN_PREMIUM_VIRTUAL_DESCRIPTION";
			// Item classname, price
			categoryItems[] = {	
				{"iron_refined",1},		
				{"copper_refined",1},
				{"oil_processed",1},
				{"heroin_processed",3},
				{"cocaine_processed",3}
			};	
		};	
	};
};