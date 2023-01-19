/*
*    FORMAT:
*        STRING (Conditions) - Must return boolean :
*            String can contain any amount of conditions, aslong as the entire
*            string returns a boolean. This allows you to check any levels, licenses etc,
*            in any combination. For example:
*                "call husky_coplevel && license_civ_someLicense"
*            This will also let you call any other function.
*
*
*    ARRAY FORMAT:
*        0: STRING (Classname): Item Classname
*        1: STRING (Nickname): Nickname that will appear purely in the shop dialog
*        2: SCALAR (Buy price)
*        3: SCALAR (Sell price): To disable selling, this should be 10
*        4: STRING (Conditions): Same as above conditions string
*
*    Weapon classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Weapons
*    Item classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgWeapons_Items
*
*/
class WeaponShops {
	
	//=========================================
	//TANKSTELLEN/GENERALSTORE	CIV - COP - MED
	//=========================================
    class gerneralstore {
        name = "Supermarkt";
        side = "civ";
        conditions = "";
        class Catogary {
            class normals {
                displayName = "Supermarkt";
                conditions = "";
                items[] = {
                    { "Binocular", "", 150, 0, "" },
                    { "ItemGPS", "", 100, 50, "" },
                    { "ItemMap", "", 50, 25, "" },
                    { "ItemCompass", "", 50, 25, "" },
                    { "ItemWatch", "", 50, 25, "" },
					{ "ItemRadio", "Handy", 100, 25, "" },
                    { "FirstAidKit", "", 150, 75, "" },
                    { "NVGoggles", "", 2000, 1000, "" }
                };
            };
            class lichter {
                displayName = "Lichter";
                conditions = "";
                items[] = {
                    { "Chemlight_red", "", 300, 150, "" },
                    { "Chemlight_yellow", "", 300, 150, "" },
                    { "Chemlight_green", "", 300, 150, "" },
                    { "Chemlight_blue", "", 300, 150, "" }
                };
            };
        };
    };
	
	class gerneralstore_cop {
        name = "Supermarkt";
        side = "cop";
        conditions = "";
        class Catogary {
            class normals {
                displayName = "Supermarkt";
                conditions = "";
                items[] = {
                    { "Binocular", "", 150, 0, "" },
                    { "ItemGPS", "", 100, 50, "" },
                    { "ItemMap", "", 50, 25, "" },
                    { "ItemCompass", "", 50, 25, "" },
                    { "ItemWatch", "", 50, 25, "" },
					{ "ItemRadio", "Handy", 100, 25, "" },
                    { "FirstAidKit", "", 150, 75, "" },
                    { "NVGoggles", "", 2000, 1000, "" }
                };
            };
            class lichter {
                displayName = "Lichter";
                conditions = "";
                items[] = {
                    { "Chemlight_red", "", 300, 150, "" },
                    { "Chemlight_yellow", "", 300, 150, "" },
                    { "Chemlight_green", "", 300, 150, "" },
                    { "Chemlight_blue", "", 300, 150, "" }
                };
            };
        };
    };
	
	class gerneralstore_med {
        name = "Supermarkt";
        side = "med";
        conditions = "";
        class Catogary {
            class normals {
                displayName = "Supermarkt";
                conditions = "";
                items[] = {
                    { "Binocular", "", 150, 0, "" },
                    { "ItemGPS", "", 100, 50, "" },
                    { "ItemMap", "", 50, 25, "" },
                    { "ItemCompass", "", 50, 25, "" },
                    { "ItemWatch", "", 50, 25, "" },
					{ "ItemRadio", "Handy", 100, 25, "" },
                    { "FirstAidKit", "", 150, 75, "" },
                    { "NVGoggles", "", 2000, 1000, "" }
                };
            };
            class lichter {
                displayName = "Lichter";
                conditions = "";
                items[] = {
                    { "Chemlight_red", "", 300, 150, "" },
                    { "Chemlight_yellow", "", 300, 150, "" },
                    { "Chemlight_green", "", 300, 150, "" },
                    { "Chemlight_blue", "", 300, 150, "" }
                };
            };
        };
    };
	
	
	//=========================================
	//ZIVIL WAFFEN GUN _ GANG _ REBEL _ MILITÄR
	//=========================================
    
	
	class gang {
        name = "Gang Waffen Shop";
        side = "civ";
        conditions = "";
        class Catogary {
            class pistols {
                displayName = "Pistolen";
                conditions = "";
                items[] = {
                    { "hgun_Pistol_heavy_02_F", "", 30000, 10, "" },
                    { "6Rnd_45ACP_Cylinder", "", 1000, 10, "" },
                };
            };
            class  primary_1_w{
                displayName = "Leichte Waffen";
                conditions = "";
                items[] = {
                    //Mk20 5.56 mm
                    { "arifle_mk20c_f", "", 175000, 10, "" },
                    { "30Rnd_556x45_Stanag_Tracer_Red", "", 3000, 10, "" }
                };
            };
        };
    };

    class gun {
        name = "Waffen Shop";
        side = "civ";
        conditions = "license_civ_gun";
        class Catogary {
            class gun_pistols {
                displayName = "Pistolen";
                conditions = "";
                items[] = {
                    { "hgun_Rook40_F", "", 40000, 10, "" },
                    { "16Rnd_9x21_red_Mag", "", 4000, 10, "" },
                    { "hgun_Pistol_01_F", "", 40000, 10, "" },
                    { "10Rnd_9x21_Mag", "", 4000, 10, "" },
                    { "hgun_Pistol_heavy_02_F", "", 40000, 10, "" },
                    { "6Rnd_45ACP_Cylinder", "", 4000, 10, "" },
                    { "hgun_ACPC2_F", "", 50000, 10, "" },
                    { "9Rnd_45ACP_Mag", "", 5000, 10, "" }
                };
            };
            class gun_1_w {
                displayName = "Leichte Waffen";
                conditions = "";
                items[] = {
                    { "SMG_01_F", "", 60000, 10, "" },
                    { "30Rnd_45ACP_Mag_SMG_01_Tracer_Green", "", 6000, 10, "" },
                    { "hgun_PDW2000_F", "", 70000, 10, "" },
                    { "30Rnd_9x21_Green_Mag", "", 7000, 10, "" },
                    { "SMG_02_F", "", 75000, 10, "" },
                    { "30Rnd_9x21_Mag_SMG_02_Tracer_Red", "", 7500, 10, "" }
                };
            };
			class gun_taucher {
                displayName = "Taucher Waffen";
                conditions = "";
                items[] = {
                    { "arifle_SDAR_F", "", 125000, 10, "" },
                    { "30Rnd_556x45_Stanag", "", 3000, 10, "" }
                };
            };
            class acces {
                displayName = "Zubehör";
                conditions = "";
                items[] = {
                    { "acc_flashlight_pistol", "", 1000, 10, "" },
                    { "optic_ACO_grn_smg", "", 2500, 10, "" },
                    { "Rangefinder", "", 5000, 0, "" },
                    { "optic_Holosight", "", 3000, 10, "" }
                };
            };
        };
    };
	
	class rebel {
        name = "Tamaulipas Waffen";
        side = "civ";
        conditions = "license_civ_rebel";
        class Catogary {
            class  primary_1_w{
                displayName = "Waffen";
                conditions = "";
                items[] = {
                    //AK-S:
                    { "hgun_Rook40_F", "", 10000, 10, "" },
                    { "16Rnd_9x21_Mag", "", 200, 10, "" },
                    //AKM.
                    { "hgun_Pistol_01_F", "", 10000, 10, "" },
                    { "10Rnd_9x21_Mag", "", 300, 10, "" },
                    //Rahim.
                    { "hgun_Pistol_heavy_01_F", "", 15000, 10, "" },
                    { "11Rnd_45ACP_Mag", "", 200, 10, "" },
                    //AK-12.
                    { "hgun_Pistol_heavy_02_F", "", 25000, 10, "" },
                    { "6Rnd_45ACP_Cylinder", "", 300, 10, "" },
                    //Kozlice.
                    { "arifle_SDAR_F", "", 60000, 10, "" }, 
                    { "30Rnd_556x45_Stanag", "", 3000, 10, "" },
					//Kozlice.
                    { "arifle_ARX_blk_F", "", 375000, 10, "" }, 
                    { "30Rnd_65x39_caseless_green", "", 4000, 10, "" },
					 //Diese Waffe wird von Wilderen auf Hoher See verwendet.
                    { "arifle_TRG20_F", "", 175000, 10, "" },
                    { "30Rnd_556x45_Stanag", "", 3000, 10, "" },
					//AK-S:
                    { "arifle_Mk20C_plain_F", "", 175000, 10, "" },
                    { "30Rnd_556x45_Stanag", "", 3000, 10, "" },	
					//AK-S:
                    { "arifle_Katiba_F", "", 325000, 10, "" },
                    { "30Rnd_65x39_caseless_green", "", 4000, 10, "" },
                    //Kozlice abgesaegt.
                    { "arifle_AKS_F", "", 175000, 10, "" },
                    { "30Rnd_545x39_Mag_Tracer_F", "", 3000, 10, "" },
					//Diese Waffe wird von Wilderen auf Hoher See verwendet.
                    { "srifle_DMR_01_F", "", 375000, 10, "" },
                    { "10Rnd_762x54_Mag", "", 10000, 10, "" }
                };
			};
            class acces {
                displayName = "Zubehör";
                conditions = "";
                items[] = {
                    { "Rangefinder", "", 5000, 0, "" },
                    { "optic_Yorris", "", 3500, 100, "" },
					{ "optic_Aco", "", 3500, 100, "" },
					{ "optic_ACO_grn", "", 3500, 100, "" },
					{ "optic_ACO_grn_smg", "", 3500, 100, "" },
					{ "optic_Aco_smg", "", 3500, 100, "" },
					
					{ "optic_Holosight", "", 3600, 100, "" },
					{ "optic_Holosight_khk_F", "", 7500, 100, "" },
				
					{ "optic_Holosight_smg", "", 3600, 100, "" },
					{ "optic_Holosight_smg_blk_F", "", 7500, 100, "" },
				
					{ "optic_MRCO", "", 8500, 100, "" },
				
					{ "optic_Hamr", "", 3600, 100, "" },
					{ "optic_Hamr_khk_F", "", 7500, 100, "" },
				
					{ "optic_Arco", "", 3600, 100, "" },
					{ "optic_Arco_ghex_F", "", 7500, 100, "" },

					{ "optic_KHS_hex", "", 7500, 100, "" },

					{ "acc_pointer_IR", "", 3600, 100, "" },
				
					{ "acc_flashlight", "", 1000, 100, "" }
                };
            };
        };
    };
	
	class miliz {
        name = "Tierra Caliente Waffen";
        side = "civ";
        conditions = "license_civ_miliz";
        class Catogary {
            class  primary_1_w{
                displayName = "Waffen";
                conditions = "";
                items[] = {
					//AK-S:
                    { "hgun_Rook40_F", "", 10000, 10, "" },
                    { "16Rnd_9x21_Mag", "", 200, 10, "" },
                    //AKM.
                    { "hgun_Pistol_01_F", "", 10000, 10, "" },
                    { "10Rnd_9x21_Mag", "", 300, 10, "" },
                    //Rahim.
                    { "hgun_Pistol_heavy_01_F", "", 15000, 10, "" },
                    { "11Rnd_45ACP_Mag", "", 200, 10, "" },
                    //AK-12.
                    { "hgun_Pistol_heavy_02_F", "", 25000, 10, "" },
                    { "6Rnd_45ACP_Cylinder", "", 300, 10, "" },
                    //Kozlice.
                    { "arifle_SDAR_F", "", 60000, 10, "" }, 
                    { "30Rnd_556x45_Stanag", "", 3000, 10, "" },
					//Diese Waffe wird von Wilderen auf Hoher See verwendet.
                    { "arifle_TRG20_F", "", 175000, 10, "" },
                    { "30Rnd_556x45_Stanag", "", 3000, 10, "" },
					//AK-S:
                    { "arifle_Mk20C_plain_F", "", 175000, 10, "" },
                    { "30Rnd_556x45_Stanag", "", 3000, 10, "" },	
					//AK-S:
                    { "arifle_Katiba_F", "", 325000, 10, "" },
                    { "30Rnd_65x39_caseless_green", "", 4000, 10, "" },
					//AKM.
                    { "SMG_03_TR_khaki", "", 250000, 10, "" },
                    { "50Rnd_570x28_SMG_03", "", 3000, 10, "" },
					//CMR-76.
                    { "srifle_DMR_07_hex_F", "", 425000, 10, "" },
                    { "20Rnd_650x39_Cased_Mag_F", "", 5000, 10, "" },	
					//CAR95-1
					{ "arifle_CTARS_ghex_F", "", 450000, 10, "" },
                    { "100Rnd_580x42_ghex_Mag_F", "", 15000, 10, "" },	
                    //Kozlice abgesaegt.
                    { "arifle_AKS_F", "", 175000, 10, "" },
                    { "30Rnd_545x39_Mag_Tracer_F", "", 3000, 10, "" },
					//Kozlice abgesaegt.
                    { "arifle_AK12U_lush_F", "", 375000, 10, "" },
                    { "30rnd_762x39_AK12_Lush_Mag_F", "", 8000, 10, "" },
					//AKM.
                    { "arifle_AKM_F", "", 350000, 10, "" },
                    { "30Rnd_762x39_Mag_F", "", 8000, 10, "" },		
					//AK-12.
                    { "arifle_AK12_F", "", 550000, 10, "" },			//ANDERE FARBE?
                    { "30Rnd_762x39_AK12_Mag_F", "", 8000, 10, "" },	
					//Diese Waffe wird von Wilderen auf Hoher See verwendet.
                    { "srifle_DMR_01_F", "", 375000, 10, "" },
                    { "10Rnd_762x54_Mag", "", 10000, 10, "" },
					//Diese Waffe wird von Wilderen auf Hoher See verwendet.
                    { "srifle_DMR_06_olive_F", "", 375000, 10, "" },
                    { "20Rnd_762x51_Mag", "", 10000, 10, "" }
                };
			};
            class acces {
                displayName = "Zubehör";
                conditions = "";
                items[] = {
                    { "Rangefinder", "", 5000, 0, "" },
                    { "optic_Yorris", "", 3500, 100, "" },
					{ "optic_Aco", "", 3500, 100, "" },
					{ "optic_ACO_grn", "", 3500, 100, "" },
					{ "optic_ACO_grn_smg", "", 3500, 100, "" },
					{ "optic_Aco_smg", "", 3500, 100, "" },

					{ "optic_Holosight", "", 3600, 100, "" },
					{ "optic_Holosight_khk_F", "", 7500, 100, "" },
			
					{ "optic_Holosight_smg", "", 3600, 100, "" },
					{ "optic_Holosight_smg_blk_F", "", 7500, 100, "" },
			
					{ "optic_MRCO", "", 8500, 100, "" },
			
					{ "optic_Hamr", "", 3600, 100, "" },
					{ "optic_Hamr_khk_F", "", 7500, 100, "" },
			
					{ "optic_Arco", "", 3600, 100, "" },
					{ "optic_Arco_ghex_F", "", 7500, 100, "" },
			
					{ "optic_KHS_old", "", 3600, 100, "" },
					{ "optic_KHS_hex", "", 7500, 100, "" },

					{ "optic_AMS_snd", "", 17000, 100, "" },
					{ "optic_AMS_khk", "", 17000, 100, "" },
			
					{ "optic_DMS_ghex_F", "", 10000, 100, "" },
			
					{ "optic_SOS_khk_F", "", 17500, 100, "" },
			
					{ "acc_pointer_IR", "", 3600, 100, "" },
			
					{ "acc_flashlight", "", 1000, 100, "" },
			
					{ "bipod_01_F_khk", "", 10000, 100, "" },
					{ "bipod_01_F_mtp", "", 10000, 100, "" },
					{ "bipod_01_F_snd", "", 10000, 100, "" },
			
					{ "bipod_02_F_hex", "", 10000, 100, "" },
					{ "bipod_02_F_tan", "", 10000, 100, "" },
			
					{ "bipod_03_F_oli", "", 10000, 100, "" }
                };
            };
        };
    };
	
	class schwarzmarkt {
        name = "Sinaloa Kartell Waffen";
        side = "civ";
        conditions = "license_civ_schwarzmarkt";
        class Catogary {
            class  primary_1_w{
                displayName = "Waffen";
                conditions = "";
                items[] = {
					//AK-S:
                    { "hgun_Rook40_F", "", 10000, 10, "" },
                    { "16Rnd_9x21_Mag", "", 200, 10, "" },
                    //AKM.
                    { "hgun_Pistol_01_F", "", 10000, 10, "" },
                    { "10Rnd_9x21_Mag", "", 300, 10, "" },
                    //Rahim.
                    { "hgun_Pistol_heavy_01_F", "", 15000, 10, "" },
                    { "11Rnd_45ACP_Mag", "", 200, 10, "" },
                    //AK-12.
                    { "hgun_Pistol_heavy_02_F", "", 25000, 10, "" },
                    { "6Rnd_45ACP_Cylinder", "", 300, 10, "" },
                    //Kozlice.
                    { "arifle_SDAR_F", "", 60000, 10, "" }, 
                    { "30Rnd_556x45_Stanag", "", 3000, 10, "" },
					//Kozlice.
                    { "arifle_ARX_blk_F", "", 375000, 10, "" }, 
                    { "30Rnd_65x39_caseless_green", "", 4000, 10, "" },
					 //Diese Waffe wird von Wilderen auf Hoher See verwendet.
                    { "arifle_TRG20_F", "", 175000, 10, "" },
                    { "30Rnd_556x45_Stanag", "", 3000, 10, "" },
					//AK-S:
                    { "arifle_Mk20C_plain_F", "", 175000, 10, "" },
                    { "30Rnd_556x45_Stanag", "", 3000, 10, "" },	
					//AK-S:
                    { "arifle_Katiba_F", "", 325000, 10, "" },
                    { "30Rnd_65x39_caseless_green", "", 4000, 10, "" },
					//AKM.
                    { "SMG_03_TR_khaki", "", 250000, 10, "" },
                    { "50Rnd_570x28_SMG_03", "", 3000, 10, "" },
                    //Kozlice.
                    { "arifle_SPAR_01_snd_F", "", 250000, 10, "" }, 
                    { "30Rnd_556x45_Stanag", "", 1000, 10, "" },
					//SPAR-16S.
                    { "arifle_SPAR_02_snd_F", "", 600000, 10, "" },
                    { "150Rnd_556x45_Drum_Sand_Mag_F", "", 15000, 10, "" },
					//AK-12.
                    { "arifle_MXC_F", "", 300000, 10, "" },
                    { "30Rnd_65x39_caseless_mag", "", 4000, 10, "" },
                    //Kozlice abgesaegt.
                    { "arifle_MX_F", "", 325000, 10, "" },
                    { "30Rnd_65x39_caseless_mag", "", 4000, 10, "" },
                    //MXM					
                    { "arifle_MXM_F", "", 400000, 10, "" },
                    { "30Rnd_65x39_caseless_mag", "", 4000, 10, "" },                   
                    //MX-SW.
                    { "arifle_MX_SW_F", "", 700000, 10, "" },
                    { "100Rnd_65x39_caseless_mag", "", 20000, 10, "" },	    
					//AKM.
                    { "arifle_CTAR_hex_F", "", 225000, 10, "" },
                    { "30Rnd_580x42_Mag_Tracer_F", "", 3000, 10, "" },
					//CMR-76.
                    { "srifle_DMR_07_hex_F", "", 425000, 10, "" },
                    { "20Rnd_650x39_Cased_Mag_F", "", 5000, 10, "" },	
					//CAR95-1
					{ "arifle_CTARS_ghex_F", "", 450000, 10, "" },
                    { "100Rnd_580x42_ghex_Mag_F", "", 15000, 10, "" },	
                    //Kozlice abgesaegt.
                    { "arifle_AKS_F", "", 175000, 10, "" },
                    { "30Rnd_545x39_Mag_Tracer_F", "", 3000, 10, "" },
					//Kozlice abgesaegt.
                    { "arifle_AK12U_lush_F", "", 375000, 10, "" },
                    { "30rnd_762x39_AK12_Lush_Mag_F", "", 8000, 10, "" },
					//AKM.
                    { "arifle_AKM_F", "", 350000, 10, "" },
                    { "30Rnd_762x39_Mag_F", "", 8000, 10, "" },		
					//AK-12.
                    { "arifle_AK12_F", "", 550000, 10, "" },			//ANDERE FARBE?
                    { "30Rnd_762x39_AK12_Mag_F", "", 8000, 10, "" },	
					//Diese Waffe wird von Wilderen auf Hoher See verwendet.
                    { "srifle_DMR_01_F", "", 375000, 10, "" },
                    { "10Rnd_762x54_Mag", "", 10000, 10, "" },
					//Diese Waffe wird von Wilderen auf Hoher See verwendet.
                    { "srifle_DMR_06_olive_F", "", 375000, 10, "" },
                    { "20Rnd_762x51_Mag", "", 10000, 10, "" },
					//Mk14.
                    { "srifle_DMR_07_ghex_F", "", 375000, 10, "" },
                    { "20Rnd_762x51_Mag", "", 10000, 10, "" },
					//MK-1
                    { "srifle_DMR_03_khaki_F", "", 600000, 10, "" },
                    { "20Rnd_762x51_Mag", "", 10000, 10, "" }
                };
			};
            class acces {
                displayName = "Zubehör";
                conditions = "";
                items[] = {
                    { "Rangefinder", "", 5000, 0, "" },
					{ "optic_Yorris", "", 3500, 100, "" },
					{ "optic_Aco", "", 3500, 100, "" },
					{ "optic_ACO_grn", "", 3500, 100, "" },
					{ "optic_ACO_grn_smg", "", 3500, 100, "" },
					{ "optic_Aco_smg", "", 3500, 100, "" },
					
					{ "optic_Holosight", "", 3600, 100, "" },
					{ "optic_Holosight_khk_F", "", 7500, 100, "" },
			
					{ "optic_Holosight_smg", "", 3600, 100, "" },
					{ "optic_Holosight_smg_blk_F", "", 7500, 100, "" },
			
					{ "optic_MRCO", "", 8500, 100, "" },
			
					{ "optic_Hamr", "", 3600, 100, "" },
					{ "optic_Hamr_khk_F", "", 7500, 100, "" },
			
					{ "optic_Arco", "", 3600, 100, "" },
					{ "optic_Arco_ghex_F", "", 7500, 100, "" },
			
					{ "optic_KHS_old", "", 3600, 100, "" },
					{ "optic_KHS_hex", "", 7500, 100, "" },
					
					{ "optic_AMS_snd", "", 17000, 100, "" },
					{ "optic_AMS_khk", "", 17000, 100, "" },
			
					{ "optic_DMS_ghex_F", "", 10000, 100, "" },
			
					{ "optic_SOS_khk_F", "", 17500, 100, "" },
			
					{ "acc_pointer_IR", "", 3600, 100, "" },
			
					{ "acc_flashlight", "", 1000, 100, "" },
			
					{ "bipod_01_F_khk", "", 10000, 100, "" },
					{ "bipod_01_F_mtp", "", 10000, 100, "" },
					{ "bipod_01_F_snd", "", 10000, 100, "" },
			
					{ "bipod_02_F_hex", "", 10000, 100, "" },
					{ "bipod_02_F_tan", "", 10000, 100, "" },
			
					{ "bipod_03_F_oli", "", 10000, 100, "" }
                };
            };
        };
    };


	//=========================================
	//POLIZEI
	//=========================================
    class cop_w {
        name = "Polizei Ausrüstungs Shop";
        side = "cop";
        conditions = "call husky_copLevel >= 1";
        class Catogary {
            class polizei_lvl_1 {
                displayName = "ab Polizei Prakti (Lvl. 1)";
                conditions = "call husky_copLevel >= 1";
                items[] = {
					// Taser
                    { "hgun_P07_blk_Snds_F", "Taser", 5000, 10, "call husky_copLevel >= 1" },
                    { "16Rnd_9x21_green_Mag", "", 500, 10, "call husky_copLevel >= 1" }
                };
            };
            class polizei_lvl_2 {
                displayName = "ab Polizeimeisteranwärter (Lvl. 2)";
                conditions = "call husky_copLevel >= 2";
                items[] = {
					// MKL20
                    { "arifle_Mk20_plain_F", "", 30000, 10, "call husky_copLevel >= 2" },
                    { "30Rnd_556x45_Stanag", "", 2000, 10, "call husky_copLevel >= 2" }
                };
            };
            class polizei_lvl_3 {
                displayName = "ab Polizeimeister (Lvl. 3)";
                conditions = "call husky_copLevel >= 3";
                items[] = {
					// SPAR-16
                    { "arifle_SPAR_01_blk_F", "", 30000, 10, "call husky_copLevel >= 3" },
                    { "30Rnd_556x45_Stanag_Tracer_Red", "", 2000, 10, "call husky_copLevel >= 3" }
                };
            };
            class polizei_lvl_4 {
                displayName = "ab Polizeiobermeister (Lvl. 4)";
                conditions = "call husky_copLevel >= 4";
                items[] = {
					//Promet
                    { "arifle_MSBS65_black_F", "", 40000, 10, "call husky_copLevel >= 4" },
                    { "30Rnd_65x39_caseless_msbs_mag", "", 2000, 10, "call husky_copLevel >= 4" }
                };
            };
            class polizei_lvl_5 {
                displayName = "ab Polizeihauptmeister (Lvl. 5)";
                conditions = "call husky_copLevel >= 5";
                items[] = {
					//MXC
                    { "arifle_MXC_Black_F", "", 40000, 10, "call husky_copLevel >= 5" },
                    { "30Rnd_65x39_caseless_black_mag", "", 2000, 10, "call husky_copLevel >= 5" }
                };
            };
            class polizei_lvl_7 {
                displayName = "ab Polizeikommissarsanwärter (Lvl. 7)";
                conditions = "call husky_copLevel >= 7";
                items[] = {
					// MX
                    { "arifle_MX_Black_F", "", 40000, 10, "call husky_copLevel >= 7" },
                    { "30Rnd_65x39_caseless_black_mag", "", 2000, 10, "call husky_copLevel >= 7" }
                };
            };
            class polizei_lvl_8 {
                displayName = "ab Polizeikommissar (Lvl. 8)";
                conditions = "call husky_copLevel >= 8";
                items[] = {
					//  mx sw
                    { "arifle_MX_SW_Black_F", "", 75000, 10, "call husky_copLevel >= 8" },
                    { "100Rnd_65x39_caseless_black_mag", "", 5000, 10, "call husky_copLevel >= 8" }
                };
            };
            class polizei_lvl_9 {
                displayName = "ab Polizeioberkommissar (Lvl. 9)";
                conditions = "call husky_copLevel >= 9";
                items[] = {
					//MXM
                    { "arifle_MXM_Black_F", "", 50000, 10, "call husky_copLevel >= 9" },
                    { "30Rnd_65x39_caseless_black_mag", "", 2000, 10, "call husky_copLevel >= 9" }
                };
            };
            class polizei_lvl_10 {
                displayName = "ab Polizeihauptkommissar (Lvl. 10)";
                conditions = "call husky_copLevel >= 10";
                items[] = {
					//SPAR-17
                    { "arifle_SPAR_03_blk_F", "", 60000, 10, "call husky_copLevel >= 10" },
                    { "20Rnd_762x51_Mag", "", 2000, 10, "call husky_copLevel >= 10" }
                };
            };
            class polizei_lvl_12 {
                displayName = "ab Erster Polizeihauptkommissar (Lvl. 12)";
                conditions = "call husky_copLevel >= 12";
                items[] = {
					//Mk-I EMR 
                    { "srifle_DMR_03_F", "", 80000, 10, "call husky_copLevel >= 12" },
                    { "20Rnd_762x51_Mag", "", 2000, 10, "call husky_copLevel >= 12" }
                };
            };
            class polizei_lvl_13 {
                displayName = "ab Polizeiratsanwärter (Lvl. 13)";
                conditions = "call husky_copLevel >= 13";
                items[] = {
					//car 95
					{ "arifle_CTARS_blk_F", "", 65000, 10, "call husky_copLevel >= 13" },
                    { "100Rnd_580x42_Mag_F", "", 5000, 10, "call husky_copLevel >= 13" }
                };
            };
            class polizei_lvl_14 {
                displayName = "ab Polizeirat (Lvl. 14)";
                conditions = "call husky_copLevel >= 14";
                items[] = {
					// mk-18
                    { "srifle_EBR_F", "", 75000, 10, "call husky_copLevel >= 14" },
                    { "20Rnd_762x51_Mag", "", 1500, 10, "call husky_copLevel >= 14" }
                };
            };
            class polizei_lvl_15 {
                displayName = "ab Polizeioberrat (Lvl. 15)";
                conditions = "call husky_copLevel >= 15";
                items[] = {
					// typ 115
                    { "arifle_ARX_blk_F", "", 40000, 10, "call husky_copLevel >= 15" },
                    { "30Rnd_65x39_caseless_green", "", 2000, 10, "call husky_copLevel >= 15" }
                };
            };
            class polizei_lvl_16 {
                displayName = "ab Polizeidirektor (Lvl. 16)";
                conditions = "call husky_copLevel >= 16";
                items[] = {
					// spar 16
                    { "arifle_SPAR_02_blk_F", "", 65000, 10, "call husky_copLevel >= 16" },
                    { "150Rnd_556x45_Drum_Mag_F", "", 5000, 10, "call husky_copLevel >= 16" }
                };
            };
            class polizei_lvl_17 {
                displayName = "ab Leitender Polizeidirektor (Lvl. 17)";
                conditions = "call husky_copLevel >= 17";
                items[] = {
					// cmr
                    { "srifle_DMR_07_blk_F", "", 65000, 10, "call husky_copLevel >= 17" },
                    { "20Rnd_650x39_Cased_Mag_F", "", 5000, 10, "call husky_copLevel >= 17" }
                };
            };
            class polizei_lvl_18 {
                displayName = "ab Stv. Polizeipräsident (Lvl. 18)";
                conditions = "call husky_copLevel >= 18";
                items[] = {
					// 
                    { "sgun_HunterShotgun_01_F", "", 60000, 10, "call husky_copLevel >= 18" },
                    { "2Rnd_12Gauge_Slug", "", 5000, 10, "call husky_copLevel >= 18" }
                };
            };
            class polizei_lvl_19 {
                displayName = "ab Polizeipräsident (Lvl. 19)";
                conditions = "call husky_copLevel >= 19";
                items[] = {
					// 
                    { "sgun_HunterShotgun_01_F", "", 60000, 10, "call husky_copLevel >= 19" },
                    { "2Rnd_12Gauge_Slug", "", 5000, 10, "call husky_copLevel >= 19" }
                };
            };
			
            /*
            class polizei_lvl_5 {
                displayName = "ab Polizeimeisteranwärter (Lvl. 5)";
                conditions = "call husky_copLevel >= 5";
                items[] = {
					// Protector
                    { "SMG_05_F", "Taser+", 15000, 10, "call husky_copLevel >= 1" },
                    { "30Rnd_9x21_Mag_SMG_02_Tracer_Yellow", "", 1500, 10, "call husky_copLevel >= 1" },
					// Rook
                    { "hgun_Rook40_F", "Scharfe Dienstwaffe", 15000, 10, "call husky_copLevel >= 1" },
                    { "16Rnd_9x21_green_Mag", "", 800, 10, "call husky_copLevel >= 1" },
					// Sting
                    { "SMG_02_F", "", 15000, 10, "call husky_copLevel >= 1" },
                    { "30Rnd_9x21_Mag_SMG_02_Tracer_Red", "", 1500, 10, "call husky_copLevel >= 1" },
					//
                    { "arifle_SDAR_F", "", 15000, 10, "call husky_copLevel >= 2" },
                    { "30Rnd_556x45_Stanag", "", 2000, 10, "call husky_copLevel >= 2" },
					// 
                    { "arifle_Mk20_plain_F", "", 30000, 10, "call husky_copLevel >= 2" },
                    { "30Rnd_556x45_Stanag", "", 2000, 10, "call husky_copLevel >= 2" }
                };
            };

            class polizei_lvl_3 {
                displayName = "ab Polizeimeister (Lvl. 4)";
                conditions = "call husky_copLevel >= 5";
                items[] = {
					// SPAR-16
                    { "arifle_SPAR_01_blk_F", "", 30000, 10, "call husky_copLevel >= 2" },
                    { "30Rnd_556x45_Stanag_Tracer_Red", "", 2000, 10, "call husky_copLevel >= 2" },
					//
                    { "arifle_MSBS65_black_F", "", 40000, 10, "call husky_copLevel >= 3" },
                    { "30Rnd_65x39_caseless_msbs_mag", "", 2000, 10, "call husky_copLevel >= 3" }
                };
            };
			
			class polizei_lvl_5 {
                displayName = "ab Polizeihauptmeister (Lvl. 6)";
                conditions = "call husky_copLevel >= 6";
                items[] = {
					// MX
                    { "arifle_MX_Black_F", "", 40000, 10, "call husky_copLevel >= 3" },
                    { "30Rnd_65x39_caseless_black_mag", "", 2000, 10, "call husky_copLevel >= 3" },
					// 
                    { "arifle_ARX_blk_F", "", 40000, 10, "call husky_copLevel >= 4" },
                    { "30Rnd_65x39_caseless_green", "", 2000, 10, "call husky_copLevel >= 4" }
                };
            };
			
			class polizei_lvl_7 {
                displayName = "ab Polizeikommissarsanwärter (Lvl. 8)";
                conditions = "call husky_copLevel >= 8";
                items[] = {
					//MXM
                    { "arifle_MXM_Black_F", "", 50000, 10, "call husky_copLevel >= 4" },
                    { "30Rnd_65x39_caseless_black_mag", "", 2000, 10, "call husky_copLevel >= 4" },
					// 
                    { "arifle_SPAR_02_blk_F", "", 65000, 10, "call husky_copLevel >= 5" },
                    { "150Rnd_556x45_Drum_Mag_F", "", 5000, 10, "call husky_copLevel >= 5" }
                };
            };
			
			class polizei_lvl_9 {
                displayName = "ab Polizeioberkommissar (Lvl. 10)";
                conditions = "call husky_copLevel >= 10";
                items[] = {
					//SPAR-17
                    { "arifle_SPAR_03_blk_F", "", 60000, 10, "call husky_copLevel >= 6" },
                    { "20Rnd_762x51_Mag", "", 2000, 10, "call husky_copLevel >= 6" },
					//Mk-I EMR 
                    { "srifle_DMR_03_F", "", 80000, 10, "call husky_copLevel >= 6" },
                    { "20Rnd_762x51_Mag", "", 2000, 10, "call husky_copLevel >= 6" }
                };
            };
			
			class polizei_lvl_10 {
                displayName = "ab Polizeihauptkommissar (Lvl. 11)";
                conditions = "call husky_copLevel >= 11";
                items[] = {
					//
					{ "arifle_CTARS_blk_F", "", 65000, 10, "call husky_copLevel >= 6" },
                    { "100Rnd_580x42_Mag_F", "", 5000, 10, "call husky_copLevel >= 6" },
					//  
                    { "arifle_MX_SW_Black_F", "", 75000, 10, "call husky_copLevel >= 7" },
                    { "100Rnd_65x39_caseless_black_mag", "", 5000, 10, "call husky_copLevel >= 7" },
					// 
                    { "srifle_EBR_F", "", 75000, 10, "call husky_copLevel >= 7" },
                    { "20Rnd_762x51_Mag", "", 1500, 10, "call husky_copLevel >= 7" }
                };
            };
			
			class polizei_lvl_13 {
                displayName = "ab Polizeiratsanwärter (Lvl. 14)";
                conditions = "call husky_copLevel >= 14";
                items[] = {
					// 
                    { "sgun_HunterShotgun_01_F", "", 60000, 10, "call husky_copLevel >= 8" },
                    { "2Rnd_12Gauge_Slug", "", 5000, 10, "call husky_copLevel >= 8" }

                };
            };*/
			
			/*
			class polizei_lvl_9 {
                displayName = "ab Erster Polizeihauptkommissar Anwärter (Lvl. 9)";
                conditions = "call husky_copLevel >= 9";
                items[] = {
					///MAR-10
					{ "srifle_DMR_02_camo_F", "", 200000, 500, "call husky_copLevel >= 9" },
                    { "10Rnd_338_Mag", "", 15000, 500, "call husky_copLevel >= 9" },
					{ "srifle_DMR_02_sniper_F", "", 200000, 500, "call husky_copLevel >= 9" },
                    { "10Rnd_338_Mag", "", 15000, 500, "call husky_copLevel >= 9" },
					//LRR
					{ "srifle_LRR_tna_F", "", 300000, 500, "call husky_copLevel >= 9" },
                    { "7Rnd_408_Mag", "", 20000, 500, "call husky_copLevel >= 9" },
					{ "srifle_LRR_camo_F", "", 300000, 500, "call husky_copLevel >= 9" },
                    { "7Rnd_408_Mag", "", 20000, 500, "call husky_copLevel >= 9" }
                };
            };
			*/

            class cop_acces {
                displayName = "Zubehör";
                conditions = "call husky_copLevel >= 1";
                items[] = {
                    { "optic_ACO_grn_smg", "", 2000, 10, "call husky_copLevel >= 2" },
                    { "optic_MRCO", "", 10000, 10, "call husky_copLevel >= 2" },
                    { "optic_ERCO_blk_F", "", 10000, 10, "call husky_copLevel >= 2" },
                    { "optic_Hamr", "", 10000, 10, "call husky_copLevel >= 2" },
                    { "optic_Arco_blk_F", "", 10000, 10, "call husky_copLevel >= 2" },
                    { "optic_DMS", "", 10000, 10, "call husky_copLevel >= 3" },
                    { "optic_KHS_blk", "", 10000, 10, "call husky_copLevel >= 3" },
                    { "optic_AMS", "", 10000, 10, "call husky_copLevel >= 4" },
					{ "acc_pointer_IR", "", 10000, 10, "call husky_copLevel >= 2" },
					{ "acc_flashlight", "", 10000, 10, "call husky_copLevel >= 2" },
					/*{ "muzzle_snds_h", "", 10000, 10, "call husky_copLevel >= 3" },
					{ "muzzle_snds_65_TI_blk_F", "", 10000, 10, "call husky_copLevel >= 3" },
					{ "muzzle_snds_B", "", 10000, 10, "call husky_copLevel >= 3" },
					{ "muzzle_snds_M", "", 10000, 10, "call husky_copLevel >= 3" },
					{ "muzzle_snds_L", "", 10000, 10, "call husky_copLevel >= 3" },*/
					{ "bipod_01_F_blk", "", 10000, 10, "call husky_copLevel >= 2" }
                };
            };
			class normals {
                displayName = "Supermarkt";
                conditions = "call husky_copLevel >= 1";
                items[] = {
                    { "Binocular", "", 150, 0, "" },
					{ "Rangefinder", "Lasermessgerät (Shift + L)", 5000, 0, "" },
                    { "ItemGPS", "", 100, 50, "" },
                    { "ItemMap", "", 50, 25, "" },
                    { "ItemCompass", "", 50, 25, "" },
                    { "ItemWatch", "", 50, 25, "" },
					{ "ItemRadio", "Handy", 100, 25, "" },
                    { "FirstAidKit", "", 150, 75, "" },
                    { "NVGoggles_OPFOR", "", 2000, 1000, "" },
					{ "B_UavTerminal", "", 2000, 1000, "license_cop_copdrohne" }
                };
            };
			class granaten {
                displayName = "Granaten";
                conditions = "call husky_copLevel >= 1";
                items[] = {
					{ "SmokeShell", "", 1150, 0, "" },
                    { "SmokeShellBlue", "", 1150, 0, "" }
                };
            };
            class lichter {
                displayName = "Lichter";
                conditions = "call husky_copLevel >= 1";
                items[] = {
                    { "Chemlight_red", "", 300, 150, "" },
                    { "Chemlight_yellow", "", 300, 150, "" },
                    { "Chemlight_green", "", 300, 150, "" },
                    { "Chemlight_blue", "", 300, 150, "" }
                };
            };
        };
    };
	
	class sek_cop {
        name = "SEK Ausrüstungs Shop";
        side = "cop";
        conditions = "license_cop_copsek";	//oder mit lvl husky_seklevel
        class Catogary {
            class sekpolizei_lvl_1 {
                displayName = "Sondereinsatzkommando";
                conditions = "call husky_coplevel >= 1";	//husky_seklevel
                items[] = {
					// 
                    { "arifle_CTARS_blk_F", "", 65000, 10, "" },
                    { "100Rnd_580x42_Mag_F", "", 5000, 10, "" },
					// 
                    { "srifle_DMR_03_F", "", 70000, 10, "" },
                    { "20Rnd_762x51_Mag", "", 2000, 10, "" },
					// 
                    { "srifle_EBR_F", "", 70000, 10, "" },
                    { "20Rnd_762x51_Mag", "", 2000, 10, "" },
					// 
                    { "arifle_Mk20_plain_F", "", 30000, 10, "" },
                    { "30Rnd_556x45_Stanag", "", 2000, 10, "" },
					//  
                    { "arifle_MX_SW_Black_F", "", 75000, 10, "" },
                    { "100Rnd_65x39_caseless_black_mag", "", 5000, 10, "" },
					//
                    { "arifle_MSBS65_black_F", "", 40000, 10, "" },
                    { "30Rnd_65x39_caseless_msbs_mag", "", 2000, 10, "" },
					//
                    { "arifle_SDAR_F", "", 15000, 10, "" },
                    { "20Rnd_556x45_UW_mag", "", 5000, 10, "" },
					// 
                    { "arifle_SPAR_02_blk_F", "", 65000, 10, "" },
                    { "150Rnd_556x45_Drum_Mag_F", "", 5000, 10, "" },
					// 
                    { "arifle_SPAR_03_blk_F", "", 60000, 10, "" },
                    { "20Rnd_762x51_Mag", "", 2000, 10, "" },
                    // 
                    { "arifle_MX_GL_Black_F", "", 160000, 10, "" },
                    { "30Rnd_65x39_caseless_black_mag", "", 2000, 10, "" },
					// 
                    { "arifle_ARX_blk_F", "", 40000, 10, "" },
                    { "30Rnd_65x39_caseless_green", "", 2000, 10, "" },
					//MAR-10
					{ "srifle_DMR_02_camo_F", "", 200000, 500, "" },
                    { "10Rnd_338_Mag", "", 15000, 500, "" },
					//
					{ "srifle_DMR_02_sniper_F", "", 200000, 500, "" },
                    { "10Rnd_338_Mag", "", 15000, 500, "" },
					//LRR
					{ "srifle_LRR_tna_F", "", 300000, 500, "" },
                    { "7Rnd_408_Mag", "", 20000, 500, "" },
					{ "srifle_LRR_camo_F", "", 300000, 500, "" },
                    { "7Rnd_408_Mag", "", 20000, 500, "" }
                };
            };

            class sekcop_acces {
                displayName = "Zubehör";
                conditions = "call husky_copLevel >= 1";	//husky_seklevel
                items[] = {
                    { "optic_MRCO", "", 8500, 100, "" },
			
					{ "optic_Hamr", "", 3600, 100, "" },
					{ "optic_Hamr_khk_F", "", 7500, 100, "" },

					{ "optic_Holosight", "", 3600, 100, "" },
					{ "optic_Holosight_blk_F", "", 7500, 100, "" },
					{ "optic_Holosight_khk_F", "", 7500, 100, "" },
			
					{ "optic_Holosight_smg", "", 3600, 100, "" },
					{ "optic_Holosight_smg_blk_F", "", 7500, 100, "" },
			
					{ "optic_Arco", "", 3600, 100, "" },
					{ "optic_Arco_blk_F", "", 7500, 100, "" },
					{ "optic_Arco_ghex_F", "", 7500, 100, "" },
				
					{ "optic_SOS", "", 13600, 100, "" },
					{ "optic_SOS_khk_F", "", 17500, 100, "" },

					{ "optic_AMS_snd", "", 17000, 100, "" },
					{ "optic_AMS_khk", "", 17000, 100, "" },
					{ "optic_AMS", "", 17000, 100, "" },
			
					{ "optic_DMS", "", 10000, 100, "" },
					{ "optic_DMS_ghex_F", "", 10000, 100, "" },

					{ "optic_KHS_old", "", 3600, 100, "" },
					{ "optic_KHS_blk", "", 7500, 100, "" },
					{ "optic_KHS_hex", "", 7500, 100, "" },
					
					{ "optic_LRPS", "", 37500, 100, "" },
			
					{ "acc_pointer_IR", "", 3600, 100, "" },
					{ "acc_flashlight", "", 1000, 100, "" },
			
					{ "bipod_01_F_khk", "", 10000, 100, "" },
					{ "bipod_01_F_blk", "", 10000, 100, "" },
					{ "bipod_01_F_mtp", "", 10000, 100, "" },
					{ "bipod_01_F_snd", "", 10000, 100, "" },

					{ "muzzle_snds_acp", "", 10000, 0, "" },
                    { "muzzle_snds_L", "", 10000, 25, "" },
                    { "muzzle_snds_M", "", 10000, 25, "" },
                    { "muzzle_snds_m_snd_F", "", 10000, 25, "" },
					{ "muzzle_snds_m_khk_F", "", 10000, 0, "" },
					{ "muzzle_snds_58_blk_F", "", 10000, 0, "" },
					{ "muzzle_snds_65_TI_blk_F", "", 10000, 0, "" },        
					{ "muzzle_snds_H_MG_blk_F", "", 10000, 0, "" },
					{ "muzzle_snds_H", "", 10000, 0, "" },
					{ "muzzle_snds_B", "", 10000, 0, "" },
					{ "muzzle_snds_B_khk_F", "", 10000, 0, "" },
					{ "muzzle_snds_B_snd_F", "", 10000, 0, "" }, 
					{ "muzzle_snds_338_green", "", 10000, 50, "" }
                };
            };
			class granaten {
                displayName = "Granaten";
                conditions = "";	//husky_seklevel
                items[] = {
					{ "SmokeShell", "", 1150, 0, "" },
                    { "SmokeShellBlue", "", 1150, 0, "" },
					{ "SmokeShellYellow", "Tränengas", 50000, 0, "call husky_copLevel >= 3" },
					{ "1Rnd_SmokeYellow_Grenade_shell", "Tränengas GL", 50000, 0, "call husky_copLevel >= 3" },
                    { "3Rnd_SmokeYellow_Grenade_shell", "Tränengas 3GL", 50000, 0, "call husky_copLevel >= 3" },
					{ "HandGrenade_Stone", "Blendgranate", 30150, 0, "call husky_copLevel >= 3" },
                    { "SatchelCharge_Remote_Mag", "", 50000, 0, "call husky_copLevel >= 5" }
                };
            };
			class normals {
                displayName = "Supermarkt";
                conditions = "call husky_copLevel >= 1";	//husky_seklevel
                items[] = {
                    { "Binocular", "", 150, 0, "" },
					{ "Rangefinder", "Lasermessgerät (Shift + L)", 5000, 0, "" },
                    { "ItemGPS", "", 100, 50, "" },
                    { "ItemMap", "", 50, 25, "" },
                    { "ItemCompass", "", 50, 25, "" },
                    { "ItemWatch", "", 50, 25, "" },
					{ "ItemRadio", "Handy", 100, 25, "" },
                    { "FirstAidKit", "", 150, 75, "" },
                    { "NVGoggles_OPFOR", "", 2000, 1000, "" },
					{ "B_UavTerminal", "", 2000, 1000, "license_cop_copdrohne" }
                };
            };
            class lichter {
                displayName = "Lichter";
                conditions = "call husky_copLevel >= 1";	//husky_seklevel
                items[] = {
                    { "Chemlight_red", "", 300, 150, "" },
                    { "Chemlight_yellow", "", 300, 150, "" },
                    { "Chemlight_green", "", 300, 150, "" },
                    { "Chemlight_blue", "", 300, 150, "" }
                };
            };
        };
    };
	
	class bka_w {
        name = "BKA Ausrüstungs Shop";
        side = "cop";
        conditions = "license_cop_copscharfschuetze";
        class Catogary {
            class  bka_primary_1_w{
                displayName = "Waffen";
                conditions = "call husky_copLevel >= 1";
                items[] = {
                    //MX.
                    { "arifle_MX_F", "", 500000, 10, "" },
                    { "30Rnd_65x39_caseless_mag", "", 25000, 10, "" },
                    //MX-GL.
                    { "arifle_MX_GL_F", "", 750000, 10, "" },
                    { "30Rnd_65x39_caseless_mag", "", 30000, 10, "" },
                    //MXC.
                    { "arifle_MXC_F", "", 450000, 10, "" },
                    { "30Rnd_65x39_caseless_mag", "", 30000, 10, "" },
                    //MXM.
                    { "arifle_MXM_F", "", 650000, 10, "" },
                    { "30Rnd_65x39_caseless_mag", "", 30000, 10, "" },
                    //ADR-97 TR.
                    { "SMG_03_TR_camo", "", 350000, 10, "" },
                    { "50Rnd_570x28_SMG_03", "", 30000, 10, "" },
                    //ADR-97C.
                    { "SMG_03C_camo", "", 350000, 10, "" },
                    { "50Rnd_570x28_SMG_03", "", 10000, 10, "" },
                    //MX-SW.
                    { "arifle_MX_SW_F", "", 750000, 10, "" },
                    { "100Rnd_65x39_caseless_mag", "", 50000, 10, "" },
					//MK-20.
                    { "arifle_Mk20_plain_F", "", 350000, 10, "" },
                    { "30Rnd_556x45_Stanag", "", 20000, 10, "" },
					//SPAR-16.
                    { "arifle_SPAR_01_snd_F", "", 400000, 10, "" },
                    { "30Rnd_556x45_Stanag_Sand", "", 20000, 10, "" },
					//CTAR.
                    { "arifle_CTAR_hex_F", "", 450000, 10, "" },
                    { "30Rnd_580x42_Mag_F", "", 20000, 10, "" },
					//TRG20.
                    { "arifle_TRG20_F", "", 400000, 10, "" },
                    { "30Rnd_556x45_Stanag", "", 20000, 10, "" },
					//CMR-76.
                    { "srifle_DMR_07_hex_F", "", 650000, 10, "" },
                    { "20Rnd_650x39_Cased_Mag_F", "", 25000, 10, "" },
					//Rahim.
                    { "srifle_DMR_01_F", "", 375000, 10, "" },
                    { "10Rnd_762x54_Mag", "", 20000, 10, "" },
					//Mk14.
                    { "srifle_DMR_06_camo_F", "", 550000, 10, "" },
                    { "20Rnd_762x51_Mag", "", 30000, 10, "" },
					//AK-12.
                    { "arifle_AK12_F", "", 750000, 10, "" },
                    { "30Rnd_762x39_AK12_Mag_F", "", 40000, 10, "" },
					//Type 115 .
                    { "arifle_ARX_hex_F", "", 700000, 10, "" },
                    { "30Rnd_65x39_caseless_green", "", 30000, 10, "" },
                    { "30Rnd_65x39_caseless_green_mag_Tracer", "", 25000, 10, "" },
					//AKS.
                    { "arifle_AKS_F", "", 250000, 10, "" },
                    { "30Rnd_545x39_Mag_F", "", 25000, 10, "" },
					//AKM.
                    { "arifle_AKM_F", "", 300000, 10, "" },
                    { "30Rnd_762x39_Mag_F", "", 30000, 10, "" },
					//Katbia.
                    { "arifle_Katiba_F", "", 450000, 10, "" },
                    { "30Rnd_65x39_caseless_green", "", 30000, 10, "" },
                    //Katiba-C
                    { "arifle_Katiba_C_F", "", 400000, 10, "" },
                    { "30Rnd_65x39_caseless_green", "", 30000, 10, "" },
					//MAR-10
					{ "srifle_DMR_02_camo_F", "", 200000, 500, "call husky_copLevel >= 3" },
                    { "10Rnd_338_Mag", "", 7000, 500, "call husky_copLevel >= 3" },
					{ "srifle_DMR_02_sniper_F", "", 200000, 500, "call husky_copLevel >= 3" },
                    { "10Rnd_338_Mag", "", 7000, 500, "call husky_copLevel >= 3" },
					//LRR
					{ "srifle_LRR_tna_F", "", 200000, 500, "call husky_copLevel >= 3" },
                    { "7Rnd_408_Mag", "", 7000, 500, "call husky_copLevel >= 3" },
					{ "srifle_LRR_camo_F", "", 200000, 500, "call husky_copLevel >= 3" },
                    { "7Rnd_408_Mag", "", 7000, 500, "call husky_copLevel >= 3" }
                };
			};
            class bka_acces {
                displayName = "Zubehör";
                conditions = "call husky_copLevel >= 1";
                items[] = {
                    { "optic_MRCO", "", 8500, 100, "" },
			
					{ "optic_Hamr", "", 3600, 100, "" },
					{ "optic_Hamr_khk_F", "", 7500, 100, "" },
			
					{ "optic_Arco", "", 3600, 100, "" },
					{ "optic_Arco_blk_F", "", 7500, 100, "" },
					{ "optic_Arco_ghex_F", "", 7500, 100, "" },
			
					{ "optic_KHS_old", "", 3600, 100, "" },
					{ "optic_KHS_blk", "", 7500, 100, "" },
					{ "optic_KHS_hex", "", 7500, 100, "" },
			
					{ "optic_Holosight", "", 3600, 100, "" },
					{ "optic_Holosight_blk_F", "", 7500, 100, "" },
					{ "optic_Holosight_khk_F", "", 7500, 100, "" },
			
					{ "optic_Holosight_smg", "", 3600, 100, "" },
					{ "optic_Holosight_smg_blk_F", "", 7500, 100, "" },
			
					{ "optic_AMS_snd", "", 17000, 100, "" },
					{ "optic_AMS_khk", "", 17000, 100, "" },
					{ "optic_AMS", "", 17000, 100, "" },
			
					{ "optic_DMS", "", 10000, 100, "" },
					{ "optic_DMS_ghex_F", "", 10000, 100, "" },
			
					{ "optic_SOS", "", 13600, 100, "" },
					{ "optic_SOS_khk_F", "", 17500, 100, "" },
			
					{ "acc_pointer_IR", "", 3600, 100, "" },
			
					{ "acc_flashlight", "", 1000, 100, "" },
			
					{ "bipod_01_F_khk", "", 10000, 100, "" },
					{ "bipod_01_F_blk", "", 10000, 100, "" },
					{ "bipod_01_F_mtp", "", 10000, 100, "" },
					{ "bipod_01_F_snd", "", 10000, 100, "" },
			
					{ "bipod_02_F_hex", "", 10000, 100, "" },
					{ "bipod_02_F_blk", "", 10000, 100, "" },
					{ "bipod_02_F_tan", "", 10000, 100, "" },
			
					{ "bipod_03_F_oli", "", 10000, 100, "" },
					{ "bipod_03_F_blk", "", 10000, 100, "" },
					{ "muzzle_snds_acp", "", 10000, 0, "" },
                    { "muzzle_snds_B", "", 60000, 0, "" },
					{ "muzzle_snds_H_MG_blk_F", "", 60000, 0, "" },
					{ "muzzle_snds_H_MG_khk_F", "", 60000, 0, "" },
					{ "muzzle_snds_H_khk_F", "", 60000, 0, "" },
					{ "muzzle_snds_H", "", 60000, 0, "" },
					{ "muzzle_snds_58_wdm_F", "", 60000, 0, "" },
					{ "muzzle_snds_65_TI_blk_F", "", 60000, 0, "" },
					{ "muzzle_snds_65_TI_hex_F", "", 60000, 0, "" },
					{ "muzzle_snds_m_khk_F", "", 60000, 0, "" },
					{ "muzzle_snds_58_blk_F", "", 60000, 0, "" },
					{ "muzzle_snds_65_TI_ghex_F", "", 60000, 0, "" },
					{ "muzzle_snds_B_khk_F", "", 60000, 0, "" },
					{ "muzzle_snds_B_snd_F", "", 60000, 0, "" }, 
                    { "muzzle_snds_338_sand", "", 60000, 50, "" },
					{ "muzzle_snds_338_green", "", 60000, 50, "" },
                    { "muzzle_snds_m_snd_F", "", 60000, 25, "" },
                    { "muzzle_snds_L", "", 60000, 25, "" },
                    { "muzzle_snds_M", "", 60000, 25, "" },
                    { "muzzle_snds_H_snd_F", "", 60000, 75, "" }
                };
            };
        };
    };
	
	//=========================================
	//FEUEREHR GENERAL
	//=========================================

    class med_gerneralstore {
        name = "Zubehör";
        side = "med";
        conditions = "call husky_mediclevel >= 1";
        class Catogary {
            class normals {
                displayName = "Zubehör";
                conditions = "";
                items[] = {
                    { "Binocular", "", 150, 0, "" },
                    { "Rangefinder", "", 5000, 0, "" },
                    { "ItemGPS", "", 100, 50, "" },
                    { "ItemMap", "", 50, 25, "" },
                    { "ItemCompass", "", 50, 25, "" },
                    { "ItemWatch", "", 50, 25, "" },
					{ "ItemRadio", "Handy", 100, 25, "" },
                    { "FirstAidKit", "", 150, 75, "" },
					{ "Medikit", "", 150, 75, "" },
                    { "NVGoggles", "", 2000, 1000, "" }
                };
            };
            class lichter {
                displayName = "Lichter";
                conditions = "";
                items[] = {
                    { "Chemlight_red", "", 300, 150, "" },
                    { "Chemlight_yellow", "", 300, 150, "" },
                    { "Chemlight_green", "", 300, 150, "" },
                    { "Chemlight_blue", "", 300, 150, "" }
                };
            };
        };
    };
	
	//=========================================
	//FIRMEN / GRUPPIERUNGEN
	//=========================================
	
	class vaiphy {
        name = "Waffen";
        side = "civ";
        conditions = "license_civ_vaiphy";
        class Catogary {
            class normals {
                displayName = "Zubehör";
                conditions = "";
                items[] = {
                    { "Binocular", "", 150, 0, "" },
                    { "ItemGPS", "", 100, 50, "" },
                    { "ItemMap", "", 50, 25, "" },
                    { "ItemCompass", "", 50, 25, "" },
                    { "ItemWatch", "", 50, 25, "" },
					{ "ItemRadio", "Handy", 100, 25, "" },
                    { "FirstAidKit", "", 150, 75, "" },
                    { "NVGoggles", "", 5000, 1000, "" }
                };
            };
            class lichter {
                displayName = "Lichter";
                conditions = "";
                items[] = {
                    { "Chemlight_red", "", 300, 150, "" },
                    { "Chemlight_yellow", "", 300, 150, "" },
                    { "Chemlight_green", "", 300, 150, "" },
                    { "Chemlight_blue", "", 300, 150, "" }
                };
            };
			class  primary_1_w{
                displayName = "Waffen";
                conditions = "";
                items[] = {
                    //MX-SW.
                    { "arifle_MX_SW_F", "", 750000, 10, "" },
                    { "100Rnd_65x39_caseless_mag", "", 65000, 10, "" },
					//SPAR-16S.
                    { "arifle_SPAR_02_snd_F", "", 850000, 10, "" },
                    { "150Rnd_556x45_Drum_Sand_Mag_F", "", 75000, 10, "" },
					//Katiba.
                    { "arifle_Katiba_F", "", 550000, 10, "" },
                    { "30Rnd_65x39_caseless_green", "", 45000, 10, "" },
					//Diese Waffe wird von Wilderen auf Hoher See verwendet.
                    { "arifle_SDAR_F", "", 450000, 10, "" },
                    { "20Rnd_556x45_UW_mag", "", 10000, 10, "" }
                };
			};
            class acces {
                displayName = "Zubehör";
                conditions = "";
                items[] = {
                    { "Rangefinder", "", 5000, 0, "" },
                    { "optic_MRCO", "", 16000, 10, "" },
					{ "optic_DMS", "", 40000, 10, "" },
					{ "optic_ERCO_blk_F", "", 16000, 10, "" },
					{ "optic_Hamr", "", 16000, 10, "" },
					{ "muzzle_snds_H", "", 62000, 10, "" },
					{ "muzzle_snds_M", "", 84000, 10, "" },
					{ "muzzle_snds_H_MG", "", 84000, 10, "" }
                };
            };
        };
    };
	
	class psa {
        name = "Waffen";
        side = "civ";
        conditions = "license_civ_psa";
        class Catogary {
            class normals {
                displayName = "Zubehör";
                conditions = "";
                items[] = {
                    { "Binocular", "", 150, 0, "" },
                    { "ItemGPS", "", 100, 50, "" },
                    { "ItemMap", "", 50, 25, "" },
                    { "ItemCompass", "", 50, 25, "" },
                    { "ItemWatch", "", 50, 25, "" },
					{ "ItemRadio", "Handy", 100, 25, "" },
                    { "FirstAidKit", "", 150, 75, "" },
                    { "NVGoggles", "", 5000, 1000, "" }
                };
            };
            class lichter {
                displayName = "Lichter";
                conditions = "";
                items[] = {
                    { "Chemlight_red", "", 300, 150, "" },
                    { "Chemlight_yellow", "", 300, 150, "" },
                    { "Chemlight_green", "", 300, 150, "" },
                    { "Chemlight_blue", "", 300, 150, "" }
                };
            };
			class  primary_1_psa{
                displayName = "Waffen";
                conditions = "";
                items[] = {
					{ "hgun_Rook40_F", "", 40000, 10, "" },
                    { "16Rnd_9x21_red_Mag", "", 4000, 10, "" },
					//MX-SW
                    { "arifle_MX_SW_F", "", 800000, 10, "" },
                    { "100Rnd_65x39_caseless_mag", "", 65000, 10, "" },
                    //MX.
                    { "arifle_MX_F", "", 600000, 10, "" },
                    { "30Rnd_65x39_caseless_mag", "", 25000, 10, "" },
                    //MXC.
                    { "arifle_MXC_F", "", 550000, 10, "" },
                    { "30Rnd_65x39_caseless_mag", "", 30000, 10, "" },
                    //MXM.
                    { "arifle_MXM_F", "", 750000, 10, "" },
                    { "30Rnd_65x39_caseless_mag", "", 30000, 10, "" },
					//SPAR-16S.
                    { "arifle_SPAR_02_snd_F", "", 850000, 10, "" },
                    { "150Rnd_556x45_Drum_Sand_Mag_F", "", 75000, 10, "" },
					//Katiba.
                    { "arifle_Katiba_F", "", 550000, 10, "" },
                    { "30Rnd_65x39_caseless_green", "", 45000, 10, "" }
                };
			};
            class acces_psa {
                displayName = "Zubehör";
                conditions = "";
                items[] = {
                    { "Rangefinder", "", 5000, 0, "" },
                    { "optic_MRCO", "", 16000, 10, "" },
					{ "optic_DMS", "", 40000, 10, "" },
					{ "optic_ERCO_blk_F", "", 16000, 10, "" },
					{ "optic_Hamr", "", 16000, 10, "" },
					{ "optic_AMS_snd", "", 60000, 100, "" },
					{ "optic_AMS_khk", "", 60000, 100, "" },
					{ "optic_AMS", "", 60000, 100, "" },
					{ "acc_pointer_IR", "", 3600, 100, "" },
					{ "acc_flashlight", "", 1000, 100, "" },
					{ "bipod_01_F_blk", "", 10000, 100, "" },
					{ "muzzle_snds_H", "", 62000, 10, "" },
					{ "muzzle_snds_M", "", 84000, 10, "" },
					{ "muzzle_snds_H_MG", "", 84000, 10, "" }
                };
            };
        };
    };
	
	/*
	this addAction[localize"STR_NOTF_ATM",husky_fnc_atmMenu,"",5,false,false,"",' isNull objectParent player && player distance _target < 4 '];   
	this addAction["Markt",husky_fnc_virt_menu,"lafamilia",0,false,false,"","license_civ_lafamilia",4];       
	this addAction[localize"STR_Shops_C_Bruce",husky_fnc_clothingMenu,"lafamilia",0,false,false,"","license_civ_lafamilia",4]; 
	this addAction[localize"STR_MAR_General_Store",husky_fnc_weaponShopMenu,"lafamilia",0,false,false,"","license_civ_lafamilia",4];
	*/
	class lafamilia {
        name = "Waffen";
        side = "civ";
        conditions = "license_civ_lafamilia";
        class Catogary {
            class normals {
                displayName = "Zubehör";
                conditions = "";
                items[] = {
                    { "Rangefinder", "", 5000, 0, "" },
                    { "Binocular", "", 150, 0, "" },
                    { "ItemGPS", "", 100, 50, "" },
                    { "ItemMap", "", 50, 25, "" },
                    { "ItemCompass", "", 50, 25, "" },
                    { "ItemWatch", "", 50, 25, "" },
					{ "ItemRadio", "Handy", 100, 25, "" },
                    { "FirstAidKit", "", 150, 75, "" },
                    { "NVGoggles", "", 5000, 1000, "" }
                };
            };
            class lichter {
                displayName = "Lichter";
                conditions = "";
                items[] = {
                    { "Chemlight_red", "", 300, 150, "" },
                    { "Chemlight_yellow", "", 300, 150, "" },
                    { "Chemlight_green", "", 300, 150, "" },
                    { "Chemlight_blue", "", 300, 150, "" }
                };
            };
			class  primary_1_lafamilia{
                displayName = "Waffen";
                conditions = "";
                items[] = {
                    { "arifle_Katiba_F", "", 550000, 10, "" },
                    { "30Rnd_65x39_caseless_green", "", 45000, 10, "" }
                };
			};
            class acces_lafamilia {
                displayName = "Zubehör";
                conditions = "";
                items[] = {
                    { "optic_MRCO", "", 16000, 10, "" }
                };
            };
        };
    };

};
