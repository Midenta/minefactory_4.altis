/*--------------------------------------------------------------------------
    Author:		Maverick Applications
    Website:	https://maverick-applications.com

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

// Configuration file for the weaponshop

class maverick_weaponshop_cfg {

	cashVar = "husky_cash";								//--- Cash Variable
	cashSymbol = "€"; 									//--- Currency Symbol
	rotationSpeed = 2; 									//--- Rotation speed for item in preview (1 - 10)
	saveFunction = "[] call SOCK_fnc_updateRequest"; 	//--- Function to save gear etc. once items are purchased

	class localization {
		//--- localization for hints etc.
		msgParamEmpty =						"Shop Parameter ist leer!";
		msgInVehicle =						"Du kannst nicht in einem Fahrzeug sein!";
		msgShopExists =						"Shop existiert nicht!";
		msgCondition =						"Nicht erlaubt, diesen Shop zu betreten!";
		msgCashOnHand =						"Bar auf der Hand - %1%2";
		msgCartTotal =						"Dein Warenkorb - %1%2";
		msgInfoTooltip =					"--> HALTE DEINE LINKE MAUSTASTE GEDRÜCKT, WÄHREND DU DIE MAUS DREHT, UM DIE WAFFE ZU ROTIEREN.\n--> DOPPELKLICKEN SIE AUF EIN STÜCK IN DEN WARENKORB, UM SIE ZU ENTFERNEN.\n--> VERWENDE DIE 'Gear ersetzen' CHECKBOX, UM WAFFEN MIT GEWÄHRTEN WAFFEN ZU ERSETZEN.";
		msgInfoTooltip2 = 					"--> DOPPELKLICKEN SIE AUF EIN STÜCK IN DEN WARENKORB, UM SIE ZU ENTFERNEN.\n--> VERWENDEN SIE DIE 'Gear ersetzen' CHECKBOX, UM WAFFEN MIT GEWÄHRTEN WAFFEN ZU ERSETZEN.";
		msgEmptyShop = 						"Nichts gefunden...";
		msgInfoText	=						"<t color='#FFFFFF'>Preis:</t> <t color='%1'>%3%2</t>";
		msgCartFull	=						"Einkaufswagen ist voll";
		msgCartEmpty =						"Einkaufswagen ist leer";
		msgNotEnoughCash =					"Nicht genug Bargeld für diese Transaktion";
		msgOverrideAlert =					"Verwenden Sie die Ersetz-Funktion, um den Gear zu ersetzen!";
		msgTransactionComplete =			"Kauf abgeschlossen für %1%2";
		msgNotEnoughSpace =				 	"Du hast nicht genug Platz für alle Gegenstände. Sie bezahlten jedoch nur für diejenigen, für die Sie Platz hatten!";
		msgClear =							"Leeren";
		msgSearch =							"Suche";

		//--- localization for dialogs
		#define dialogTabWeapon				"Waffen"
		#define dialogTabMagazines			"Magazine"
		#define dialogTabAttachments		"Zubehör"
		#define dialogTabOther				"Anderes"
		#define dialogAddBtn				"Hinzufügen"
		#define dialogOverrideTooltip		"Gear überschreiben"
		#define dialogCompleteBtn			"Kaufen"
		#define dialogCloseBtn 				"Schließen"
	};

	class shops {
		class example_shop {
			title = "Example Shop"; //--- Title of Shop
			condition = "true"; 	//--- Condition to meet to access shop
			simple = 0; 			//--- Type of GUI 0-Weapon View 1-No Weapon View
			maxCart = 20; 			//--- Max Amount of Items in Shopping Cart

			weapons[] = {
				//--- item classname, price, condition, custom display name
				{"srifle_DMR_01_F", 500, "true", "Test"},
				{"srifle_EBR_F", 600, "true", "EBR"},
				{"launch_RPG32_F", 500, "true", ""},
				{"srifle_LRR_F", 600, "true", ""},
				{"hgun_Pistol_heavy_01_MRD_F", 1300, "true", ""}
			};

			magazines[] = {
				{"10Rnd_762x54_Mag", 10, "true", "Test Mag"},
				{"20Rnd_762x51_Mag", 20, "true", "EBR Mag"}
			};

			attachments[] = {
				{"optic_SOS", 50, "true", "Test Scope"},
				{"muzzle_snds_B", 1500, "true", ""}
			};
			
			items[] = {
				{"Binocular", 50, "true", ""},
				{"NVGoggles", 100, "true", ""}, //--- NV goggles won't be shown on preview
				{"U_O_GhillieSuit", 100, "true", ""} //--- Clothing can also be sold but isn't guaranteed to be previewed - just make sure override checkbox is used to override clothing on player
			};
		};
		
		class alles_shop {
			title = "Alles"; //--- Title of Shop
			condition = "true"; 	//--- Condition to meet to access shop
			simple = 0; 			//--- Type of GUI 0-Weapon View 1-No Weapon View
			maxCart = 20; 			//--- Max Amount of Items in Shopping Cart

			weapons[] = {
				//--- item classname, price, condition, custom display name
				{"srifle_DMR_01_F", 500, "true", "Test"},
				{"srifle_EBR_F", 600, "true", "EBR"},
				{"launch_RPG32_F", 500, "true", ""},
				{"srifle_LRR_F", 600, "true", ""},
				{"hgun_Pistol_heavy_01_MRD_F", 1300, "true", ""}
			};

			magazines[] = {
				{"10Rnd_762x54_Mag", 10, "true", "Test Mag"},
				{"20Rnd_762x51_Mag", 20, "true", "EBR Mag"}
			};

			attachments[] = {
				{"optic_SOS", 50, "true", "Test Scope"},
				{"muzzle_snds_B", 1500, "true", ""}
			};
			
			items[] = {
				{"Binocular", 50, "true", ""},
				{"NVGoggles", 100, "true", ""}, //--- NV goggles won't be shown on preview
				{"U_O_GhillieSuit", 100, "true", ""} //--- Clothing can also be sold but isn't guaranteed to be previewed - just make sure override checkbox is used to override clothing on player
			};
		};
		
		//this addAction ["General Store", MAV_shop_fnc_initWeaponShop, "genstore"]; 
		class genstore {
			title = "General Store";
			conditions = "true";
			simple = 0;
			maxCart = 35;

			weapons[] = {};
			magazines[] = {};
			attachments[] = {};
			items[] = {
				{ "Binocular", 3000, "true", "Fernglas" },
				{ "ItemRadio", 5000, "true", "Handy" },
				{ "ItemGPS", 5000, "true", "GPS" },
				{ "ItemMap", 100 ,"true", "Karte" },
				{ "ItemCompass", 100, "true", "Kompass" },
				{ "ItemWatch", 100, "true", "Uhr" },
				{ "NVGoggles", 5000, "true", "Nachtsichtgerät" },
				{ "Chemlight_red", 300, "true", "Knicklicht red" },
				{ "Chemlight_yellow", 300, "true", "Knicklicht gelb" },
				{ "Chemlight_green", 300, "true", "Knicklicht grün" },
				{ "Chemlight_blue", 300, "true", "Knicklicht blau" }
			};
		};

		//this addAction ["Tankstellen Shop", MAV_shop_fnc_initWeaponShop, "f_station_store"]; 
		class f_station_store {
			title = "Tankstellen Shop";
			conditions = "true";
			simple = 0;
			maxCart = 15;

			weapons[] = {};
			magazines[] = {};
			attachments[] = {};
			items[] = {
				{ "Binocular", 3000, "true", "Fernglas" },
				{ "ItemRadio", 5000, "true", "Handy" },
				{ "ItemGPS", 5000, "true", "GPS" },
				{ "ItemMap", 100 ,"true", "Karte" },
				{ "ItemCompass", 100, "true", "Kompass" },
				{ "ItemWatch", 100, "true", "Uhr" },
				{ "NVGoggles", 5000, "true", "Nachtsichtgerät" },
				{ "Chemlight_red", 300, "true", "Knicklicht red" },
				{ "Chemlight_yellow", 300, "true", "Knicklicht gelb" },
				{ "Chemlight_green", 300, "true", "Knicklicht grün" },
				{ "Chemlight_blue", 300, "true", "Knicklicht blau" }
			};
		};
		
		//this addAction ["Schusswaffen", MAV_shop_fnc_initWeaponShop, "gun"]; 
		//Armory Shops
		class gun {
			title = "Waffenladen";
			conditions = "license_civ_gun";
			simple = 0;
			maxCart = 20;

			weapons[] = {
				{ "hgun_Rook40_F", 13000, "license_civ_gun", "" },
				{ "hgun_Pistol_01_F", 13000, "license_civ_gun", "" }, //Apex DLC
				{ "hgun_Pistol_heavy_02_F", 17500, "license_civ_gun", "" },
				{ "hgun_ACPC2_F", 15500, "license_civ_gun", "" },
				{ "SMG_05_F", 42000, "license_civ_gun", "" }, //Apex DLC
				{ "SMG_02_F", 38000, "license_civ_gun", "" }, //Apex DLC
				{ "SMG_01_F", 40000, "license_civ_gun", "" }, //Apex DLC
				{ "hgun_PDW2000_F", 45000, "license_civ_gun", "" }
			};
			magazines[] = {
				{ "16Rnd_9x21_Mag", 1000, "license_civ_gun", "" },
				{ "6Rnd_45ACP_Cylinder", 1000, "license_civ_gun", "" },
				{ "9Rnd_45ACP_Mag", 1000, "license_civ_gun", "" },
				{ "30Rnd_9x21_Mag", 1000, "license_civ_gun", "" },
				{ "30Rnd_45ACP_Mag_SMG_01", 1000, "license_civ_gun", "" },
				{ "30Rnd_9x21_Mag_SMG_02", 1000, "license_civ_gun", "" }, //Apex DLC
				{ "10Rnd_9x21_Mag", 1000, "license_civ_gun", "" } //Apex DLC
			};
			attachments[] = {
				{ "acc_flashlight_pistol", 1000, "license_civ_gun", "" },//Pistol Flashlight
				{ "optic_ACO_grn_smg", 2500, "license_civ_gun", "" },
				{ "optic_Holosight", 3000, "license_civ_gun", "" }
			};
			items[] = { };
			
			
			/*
			weapons[] = {
				{ "hgun_Pistol_heavy_01_F", 13000, "license_civ_gun", "" },
				{ "hgun_ACPC2_F", 13000, "license_civ_gun", "" },		
				{ "hgun_Pistol_01_F", 17500, "license_civ_gun", "" },
				{ "hgun_Rook40_F", 15500, "license_civ_gun", "" },		
				{ "hgun_Pistol_Signal_F", 42000, "license_civ_gun", "" }, 			
				{ "hgun_Pistol_heavy_02_F", 38000, "license_civ_gun", "" },
				
				{ "hgun_PDW2000_F", 40000, "license_civ_gunplus", "" }, 
				{ "SMG_01_F", 40000, "license_civ_gunplus", "" }, 
				{ "SMG_02_F", 40000, "license_civ_gunplus", "" }, 
				{ "SMG_05_F", 40000, "license_civ_gunplus", "" }
			};
			magazines[] = {
				{ "11Rnd_45ACP_Mag", 1000, "license_civ_gun", "" },
				{ "9Rnd_45ACP_Mag", 1000, "license_civ_gun", "" },	
				{ "10Rnd_9x21_Mag", 1000, "license_civ_gun", "" },
				{ "16Rnd_9x21_Mag", 1000, "license_civ_gun", "" },		
				{ "6Rnd_GreenSignal_F", 1000, "license_civ_gun", "" },
				{ "6Rnd_45ACP_Cylinder", 1000, "license_civ_gun", "" }, 
				
				{ "30Rnd_9x21_Mag", 1000, "license_civ_gunplus", "" },
				{ "30Rnd_45ACP_Mag_SMG_01", 1000, "license_civ_gunplus", "" },
				{ "30Rnd_9x21_Mag_SMG_02", 1000, "license_civ_gunplus", "" }
			};
			attachments[] = {
				{ "acc_flashlight_pistol", 1000, "license_civ_gun", "" },
				{ "optic_MRD", 2500, "license_civ_gun", "" },
				{ "optic_Yorris", 3000, "license_civ_gun", "" },
				
				{ "optic_ACO_grn_smg", 3000, "license_civ_gunplus", "" },
				{ "optic_Aco_smg", 3000, "license_civ_gunplus", "" }
			};
		*/
		};
		
		//this addAction ["Jihadi Shop", MAV_shop_fnc_initWeaponShop, "rebel"]; 
		class rebel {
			title = "Mohammed's Jihadi Shop";
			conditions = "license_civ_rebel";
			simple = 0;
			maxCart = 50;

			weapons[] = {
				{ "arifle_TRG20_F",75000, "license_civ_rebel", "" }, //Apex DLC
				{ "arifle_TRG21_F",360000, "license_civ_rebel", "" },
				{ "arifle_Mk20_plain_F",100000, "license_civ_rebel", "" }, //Apex DLC
				{ "arifle_SPAR_01_snd_F", 125000, "license_civ_rebel", "" }, //Apex DLC
				{ "arifle_CTAR_hex_F", 150000, "license_civ_rebel", "" }, //Apex DLC
				{ "arifle_AKS_F", 68000, "license_civ_rebel", "" },
				{ "arifle_AK12U_F",75000, "license_civ_rebel", "" }, //AKU-12
				{ "arifle_AKM_F", 350000, "license_civ_rebel", "" }, //AKM
				{ "arifle_AK12_F", 680000, "license_civ_rebel", "" }, //AK12
				{ "sgun_HunterShotgun_01_F" ,150000, "license_civ_rebel", ""}, //Kozlice 12G
				{ "arifle_MX_F",  175000, "license_civ_rebel", "" },
				//{ "arifle_MX_GL_F", 195000, "license_civ_rebel",  "" }, //MXGL
				{ "arifle_MXC_F", 150000, "license_civ_rebel",  "" },
				{ "arifle_MXM_F", 260000, "license_civ_rebel",  "" },
				{ "arifle_MX_SW_F", 380000, "license_civ_rebel", "" },
				{ "SMG_03_TR_camo",  350000, "license_civ_rebel", "" }, //ADR 97 TR
				{ "SMG_03_camo", 375000, "license_civ_rebel", "" },// ADR 97
				{ "SMG_03C_TR_camo", 280000, "license_civ_rebel", "" }, //ADR 97C TR
				{ "SMG_03C_camo", 305000, "license_civ_rebel", "" },// ADR 97C
				//{ "arifle_Katiba_C_F",  200000, "license_civ_rebel", "" }, //Apex DLC
				//{ "arifle_Katiba_F", 270000, "license_civ_rebel", "" }, //Apex DLC	
				//{ "srifle_DMR_07_blk_F", 200000, "license_civ_rebel", "" }, //CMR
				{ "srifle_DMR_01_F", 500000, "license_civ_rebel", "" }, //Rahim
				{ "srifle_DMR_06_camo_F", 400000, "license_civ_rebel", "" }, //MK14	
				{ "arifle_ARX_hex_F", 800000, "license_civ_rebel", "" }, //TYPE 115			
				{ "hgun_Rook40_F", 13000, "license_civ_rebel", "" },
				{ "hgun_Pistol_01_F", 13000, "license_civ_rebel", "" }, //Apex DLC
				{ "hgun_Pistol_heavy_02_F", 17500, "license_civ_rebel", "" },
				{ "hgun_ACPC2_F", 15500, "license_civ_rebel", "" },
				{ "SMG_05_F", 42000, "license_civ_rebel", "" }, //Apex DLC
				{ "SMG_02_F", 38000, "license_civ_rebel", "" }, //Apex DLC
				{ "SMG_01_F", 40000, "license_civ_rebel", "" }, //Apex DLC
				{ "hgun_PDW2000_F", 45000, "license_civ_rebel", ""}
				
			};
			magazines[] = {
				{ "30Rnd_65x39_caseless_mag", 1000, "license_civ_rebel", "" },
				{ "10Rnd_762x54_Mag", 1000, "license_civ_rebel", "" },
				{ "20Rnd_556x45_UW_mag", 1000, "license_civ_rebel", "" },
				{ "30Rnd_580x42_Mag_F", 1000, "license_civ_rebel", "" }, //Apex DLC
				{ "50Rnd_570x28_SMG_03", 1000,  "license_civ_th111" , "5.7 mm"}, //ADR
				{ "30Rnd_556x45_Stanag",  1000, "license_civ_rebel", "" }, //TRG MK20
				{ "30Rnd_45ACP_Mag_SMG_01",1000, "license_civ_rebel", "" }, //Vermin
				{ "150Rnd_556x45_Drum_Mag_F", 1000, "license_civ_rebel", "" }, //SPAR-16s
				{ "30Rnd_65x39_caseless_green",  1000, "license_civ_rebel", "" }, //Type 115
				{ "10Rnd_50BW_Mag_F", 50000, "license_civ_rebel", "" }, //Type 115
				{ "20Rnd_762x51_Mag", 1000, "license_civ_rebel", "" }, //Mk14+Mk18+Spar17+Mk-I EMR
				{ "10Rnd_338_Mag",  1000, "license_civ_rebel", "" }, //MAR-10
				{ "20Rnd_650x39_Cased_Mag_F",  1000, "license_civ_rebel", "" }, //CMR-76
				{ "30Rnd_9x21_Mag_SMG_02",  1000, "license_civ_rebel", ""}, //Sting
				{ "30Rnd_545x39_Mag_F",  1000, "license_civ_rebel", "" }, //AKSU
				{ "100Rnd_580x42_Mag_F",  1000, "license_civ_rebel", ""}, //CAR 100er Mags
				{ "100Rnd_65x39_caseless_mag", 1000, "license_civ_rebel", ""}, //MX SW Mags
				{ "12_Gauge_2Rnd_Slug", 5000, "license_civ_rebel", ""},
				{ "200Rnd_556x45_Box_F", 1000, "license_civ_rebel", "" },
				{ "30Rnd_762x39_Mag_F", 1000, "license_civ_rebel", "" },
				{ "200Rnd_65x39_cased_Box", 1000, "license_civ_rebel", "" },
				{ "3Rnd_SmokeRed_Grenade_shell",  1000, "license_civ_rebel", "" },
				{ "3Rnd_Smoke_Grenade_shell",  1000, "license_civ_rebel", "" },
				{ "3Rnd_SmokeGreen_Grenade_shell",  1000, "license_civ_rebel", "" },
				{ "150Rnd_762x54_Box", 1000, "license_civ_rebel", "" },
				{ "10Rnd_93x64_DMR_05_Mag", 1000, "license_civ_rebel", "" },
				{ "7Rnd_408_Mag", 1000, "license_civ_rebel", "" },
				{ "5Rnd_127x108_Mag", 1000, "license_civ_rebel", "" },
				{ "16Rnd_9x21_Mag", 1000, "license_civ_rebel", "" },
				{ "6Rnd_45ACP_Cylinder", 1000, "license_civ_rebel", "" },
				{ "9Rnd_45ACP_Mag", 1000, "license_civ_rebel", "" },
				{ "30Rnd_9x21_Mag", 1000, "license_civ_rebel", "" },
				{ "2Rnd_12Gauge_Pellets", 2000, "license_civ_rebel", "" },
				{ "2Rnd_12Gauge_Slug", 2000, "license_civ_rebel", "" },
				{ "30Rnd_45ACP_Mag_SMG_01", 1000, "license_civ_rebel", "" },
				{ "30Rnd_9x21_Mag_SMG_02", 1000, "license_civ_rebel", "" }, //Apex DLC
				{ "10Rnd_9x21_Mag", 1000, "license_civ_rebel", "" } //Apex DLC
			};
			attachments[] = {
				{ "optic_Arco",  10000, "license_civ_rebel", "" },
				{ "optic_Holosight",  3600, "license_civ_rebel", "" },
				{ "optic_Hamr", 10000, "license_civ_rebel", "" },
				{ "optic_AMS_snd",15000, "license_civ_rebel", "" },
				{ "optic_AMS_khk",  15000, "license_civ_rebel", "" },
				{ "optic_DMS", 10000, "license_civ_rebel", "" },
				{ "optic_DMS_ghex_F",  10000, "license_civ_rebel", "" },
				{ "optic_ERCO_snd_F", 10000, "license_civ_rebel", "" },
				{ "optic_ERCO_khk_F", 10000, "license_civ_rebel", "" },
				{ "optic_MRCO", 10000, "license_civ_rebel", "" },
				{ "acc_flashlight",1000, "license_civ_rebel", "" },
				{ "muzzle_snds_93mmg_tan",  50000, "license_civ_rebel", "" },
				{ "muzzle_snds_B",50000, "license_civ_rebel", "" },
				{ "muzzle_snds_338_sand", 50000, "license_civ_rebel", "" },
				{ "muzzle_snds_m_snd_F", 50000, "license_civ_rebel", "" },
				{ "muzzle_snds_L", 50000, "license_civ_rebel", "" },
				{ "muzzle_snds_M", 50000, "license_civ_rebel", "" },
				{ "muzzle_snds_58_blk_F", 50000, "license_civ_rebel", "" },
				{ "muzzle_snds_65_TI_hex_F", 50000, "license_civ_rebel", "" },
				{ "muzzle_snds_H_snd_F", 50000, "license_civ_rebel", "" },
				{ "acc_flashlight_pistol", 1000, "license_civ_rebel", "" },//Pistol Flashlight
				{ "optic_ACO_grn_smg", 2500, "license_civ_rebel", "" },
				{ "optic_Holosight", 3000, "license_civ_rebel", "" }
			};
			items[] = { 
				{ "Binocular", 3000, "license_civ_rebel", "Fernglas" },
				{ "ItemGPS", 5000, "license_civ_rebel", "GPS" },
				{ "ItemRadio", 5000, "true", "Handy" },
				{ "ItemMap", 100 ,"license_civ_rebel", "Karte" },
				{ "ItemCompass", 100, "license_civ_rebel", "Kompass" },
				{ "ItemWatch", 100, "license_civ_rebel", "Uhr" },
				{ "NVGoggles", 5000, "license_civ_rebel", "Nachtsichtgerät" },
				{ "Chemlight_red", 300, "license_civ_rebel", "Knicklicht red" },
				{ "Chemlight_yellow", 300, "license_civ_rebel", "Knicklicht gelb" },
				{ "Chemlight_green", 300, "license_civ_rebel", "Knicklicht grün" },
				{ "Chemlight_blue", 300, "license_civ_rebel", "Knicklicht blau" }
			};
		};
	

		//this addAction ["Militaer Waffen", MAV_shop_fnc_initWeaponShop, "MiliWeapons"]; 
		class MiliWeapons {
			title = "Militaer Waffen Importeur";
			conditions = "license_civ_militaer";
			simple = 0;
			maxCart = 50;
			
			
			weapons[] = {
				{ "arifle_TRG20_F",  90000, "license_civ_militaer", "" }, //TRG
				//{ "arifle_Mk20_plain_F",  85000, "license_civ_militaer", "" }, //MK20			
				{ "arifle_AKS_F",  68000, "license_civ_militaer", "" }, //AKS-U
				{ "arifle_TRG21_GL_F",  100000, "license_civ_militaer", "" }, //TRG GL
				{ "arifle_Mk20_GL_F",  90000, "license_civ_militaer", "" }, //MK 20 GL
				{ "arifle_SPAR_01_snd_F",  125000, "license_civ_militaer", "" }, //SPAR-16
				{ "arifle_CTAR_hex_F",  150000, "license_civ_militaer", "" }, //CAR-95			
				{ "arifle_MXC_F",  150000, "license_civ_militaer", "" }, //MXC
				{ "arifle_Katiba_C_F",  150000, "license_civ_militaer", "" }, //Katiba Carabine
				{ "arifle_CTAR_GL_blk_F",  160000, "license_civ_militaer", "" }, //CAR GL
				{ "arifle_CTAR_GL_hex_F",  160000, "license_civ_militaer", "" }, //CAR GL
				{ "arifle_SPAR_01_GL_khk_F",  135000, "license_civ_militaer", "" }, //Spar 16 GL
				{ "srifle_DMR_07_blk_F",  200000, "license_civ_militaer", "" }, //CMR
				{ "arifle_Katiba_GL_F",  180000, "license_civ_militaer", "" }, //Katiba GL
				{ "arifle_MX_GL_F",  195000, "license_civ_militaer", "" }, //MXGL			
				{ "arifle_MX_F",  175000, "license_civ_militaer", "" }, //MX			
				{ "arifle_ARX_hex_F",  280000, "license_civ_militaer", "" }, //TYPE 115
				{ "arifle_CTARS_hex_F",  270000, "license_civ_militaer", "" }, //CAR-95 1
				{ "arifle_Katiba_F",  170000, "license_civ_militaer", "" }, //Katiba
				{ "arifle_SPAR_02_snd_F",  250000, "license_civ_militaer", "" }, //SPAR-16S			
				{ "srifle_DMR_01_F",  500000, "license_civ_militaer", "" }, //Rahim
				{ "arifle_MXM_F",  260000, "license_civ_militaer", "" }, //MXM
				{ "arifle_AKM_F",  350000, "license_civ_militaer", "" }, //AKM			
				{ "LMG_03_F", 480000, "license_civ_militaer", "" }, //LIM			
				{ "arifle_MX_SW_F", 380000, "license_civ_militaer", "" }, //MX-SW
				{ "arifle_MSBS65_F", 670000, "license_civ_militaer", ""}, //Promet 
				{ "arifle_MSBS65_Mark_F", 800000, "license_civ_militaer", ""}, //Promet MR
				{ "arifle_RPK12_arid_F", 1500000, "license_civ_militaer", ""}, //RPK			
				{ "srifle_DMR_06_camo_F",  400000, "license_civ_militaer", "" }, //MK14				
				{ "arifle_SPAR_03_snd_F",  500000, "license_civ_militaer", "" }, //SPAR-17
				{ "srifle_EBR_F",  560000, "license_civ_militaer", "" }, //MK18			
				{ "srifle_DMR_03_tan_F", 610000, "license_civ_militaer", "" }, //MK1
				{ "srifle_DMR_03_multicam_F",  610000, "license_civ_militaer", "" }, //MK1
				{ "srifle_DMR_03_khaki_F",  610000, "license_civ_militaer", "" }, //MK1
				{ "srifle_DMR_03_woodland_F", 610000, "license_civ_militaer", "" }, //MK1
				{ "arifle_AK12_F",  680000, "license_civ_militaer", "" }, //AK12
				{ "srifle_DMR_04_Tan_F",  750000, "license_civ_militaer", "" }, //ASP		
				{ "srifle_DMR_02_F",  850000, "license_civ_militaer", "" }, //MAR-10
				{ "arifle_AK12_GL_F",  690000, "license_civ_militaer", "" }, //AK12GL			
				{ "srifle_DMR_05_tan_f",  1000000, "license_civ_militaer", "" }, //CYRUS
				{ "LMG_Mk200_F",  850000, "license_civ_militaer", "" }, //mk200			
				{ "srifle_LRR_camo_F",  1200000, "license_civ_militaer", "" }, //LRR			
				{ "srifle_GM6_camo_F",  2000000, "license_civ_militaer", "" } //LYNX
			};

			magazines[] = {
				{ "30Rnd_65x39_caseless_mag", 1300, "license_civ_militaer", "" },
				{ "10Rnd_762x54_Mag", 1500, "license_civ_militaer", "" },
				{ "20Rnd_556x45_UW_mag",  1125, "license_civ_militaer", "" },
				{ "1Rnd_SmokeRed_Grenade_shell",  1125, "license_civ_militaer", "" },
				{ "1Rnd_SmokeGreen_Grenade_shell",  1125, "license_civ_militaer", "" },
				{ "20Rnd_650x39_Cased_Mag_F",  1000, "license_civ_militaer", "" },
				{ "10Rnd_127x54_Mag",  1125, "license_civ_militaer", "" },
				{ "30Rnd_580x42_Mag_F",  1125, "license_civ_militaer", "" }, //Apex DLC
				{ "1Rnd_Smoke_Grenade_shell",1125, "license_civ_militaer", "" }, //Apex DLC
				{ "30Rnd_556x45_Stanag",  1125, "license_civ_militaer", "" }, //TRG MK20
				{ "30Rnd_45ACP_Mag_SMG_01", 1125, "license_civ_militaer", "" }, //Vermin
				{ "150Rnd_556x45_Drum_Mag_F", 1125, "license_civ_militaer", "" }, //SPAR-16s
				{ "30Rnd_65x39_caseless_green", 1125, "license_civ_militaer", "" }, //Type 115
				{ "10Rnd_50BW_Mag_F", 50000, "license_civ_militaer", "" }, //Type 115
				{ "20Rnd_762x51_Mag", 1125, "license_civ_militaer", "" }, //Mk14+Mk18+Spar17+Mk-I EMR
				{ "10Rnd_338_Mag", 1125, "license_civ_militaer", "" }, //MAR-10
				{ "20Rnd_650x39_Cased_Mag_F", 1125, "license_civ_militaer", "" }, //CMR-76
				{ "30Rnd_9x21_Mag_SMG_02", 1100, "license_civ_militaer", ""}, //Sting
				{ "30Rnd_545x39_Mag_F",  1250, "license_civ_militaer", "" }, //AKSU
				{ "3Rnd_SmokeRed_Grenade_shell", 1000, "license_civ_militaer", "" },
				{ "3Rnd_Smoke_Grenade_shell", 1000, "license_civ_militaer", "" },
				{ "3Rnd_SmokeGreen_Grenade_shell",  1000, "license_civ_militaer", "" },			
				{ "100Rnd_580x42_Mag_F",  1300, "license_civ_militaer", ""}, //CAR 100er Mags
				{ "100Rnd_65x39_caseless_mag", 1300, "license_civ_militaer", ""}, //MX SW Mags
				{ "7.62mm_75Rnd_AK12_mag", 10000, "license_civ_militaer", ""},
				{ "6.5mm_30Rnd_Promet_mag", 2000, "license_civ_militaer", "" },
				{ "200Rnd_556x45_Box_F", 1150, "license_civ_militaer", "" },
				{ "30Rnd_762x39_Mag_F", 1250, "license_civ_militaer", "" },			
				{ "200Rnd_65x39_cased_Box", 1250, "license_civ_militaer", "" },
				{ "150Rnd_762x54_Box", 1250, "license_civ_militaer", "" },
				{ "10Rnd_93x64_DMR_05_Mag", 1250, "license_civ_militaer", "" },
				{ "7Rnd_408_Mag", 1250, "license_civ_militaer", "" },
				{ "5Rnd_127x108_Mag", 1250, "license_civ_militaer", "" }
			};

			attachments[] = {
				{ "optic_Arco",  10000, "license_civ_militaer", "" },
				{ "optic_Holosight", 3600,  "license_civ_militaer", "" },
				{ "optic_Hamr",  10000, "license_civ_militaer", "" },
				{ "optic_AMS_snd", 15000, "license_civ_militaer", "" },
				{ "optic_AMS_khk",  15000,  "license_civ_militaer", "" },
				{ "optic_DMS",  10000, "license_civ_militaer", "" },
				{ "optic_DMS_ghex_F", 10000, "license_civ_militaer", "" },
				{ "optic_ERCO_snd_F", 10000, "license_civ_militaer", "" },
				{ "optic_ERCO_khk_F", 10000, "license_civ_militaer", "" },
				{ "optic_MRCO", "", 10000,  "license_civ_militaer", "" },
				{ "acc_flashlight", 1000, "license_civ_militaer", "" },
				{ "muzzle_snds_93mmg_tan",  100000,  "license_civ_militaer", "" },
				{ "muzzle_snds_B",  50000, "license_civ_militaer", "" },
				{ "muzzle_snds_338_sand",  100000,"license_civ_militaer", "" },
				{ "muzzle_snds_m_snd_F",  50000, "license_civ_militaer", "" },
				{ "muzzle_snds_L",  50000,  "license_civ_militaer", "" },
				{ "muzzle_snds_65_TI_hex_F",  50000, "license_civ_militaer", "" },
				{ "muzzle_snds_H_MG",  50000, "license_civ_militaer", "" },			
				{ "muzzle_snds_58_blk_F",  50000, "license_civ_militaer", "" },
				{ "muzzle_snds_M",  50000,  "license_civ_militaer", "" },
				{ "muzzle_snds_H_snd_F", 50000, "license_civ_militaer", "" }
			};
			
			items[] = {
				{ "Binocular", 3000, "license_civ_militaer", "Fernglas" },
				{ "ItemGPS", 5000, "license_civ_militaer", "GPS" },
				{ "ItemRadio", 5000, "true", "Handy" },
				{ "ItemMap", 100 ,"license_civ_militaer", "Karte" },
				{ "ItemCompass", 100, "license_civ_militaer", "Kompass" },
				{ "ItemWatch", 100, "license_civ_militaer", "Uhr" },
				{ "NVGoggles", 5000, "license_civ_militaer", "Nachtsichtgerät" },
				{ "Chemlight_red", 300, "license_civ_militaer", "Knicklicht red" },
				{ "Chemlight_yellow", 300, "license_civ_militaer", "Knicklicht gelb" },
				{ "Chemlight_green", 300, "license_civ_militaer", "Knicklicht grün" },
				{ "Chemlight_blue", 300, "license_civ_militaer", "Knicklicht blau" }
			};
		};
		
		//this addAction ["Gang Arsenal", MAV_shop_fnc_initWeaponShop, "gang"]; 
		class gang {
			title = "Gang Arsenal";
			conditions = "true";
			simple = 0;
			maxCart = 50;
				
			weapons[] = {
				{ "arifle_AKS_F", 68000, "true", "" },
				{ "arifle_TRG20_F",175000, "true", "" }, //Apex DLC
				{ "arifle_Mk20_plain_F",100000, "true", "" }, //Apex DLC
				{ "arifle_SPAR_01_snd_F", 125000, "true", "" }, //Apex DLC
				{ "arifle_CTAR_hex_F", 150000, "true", "" }, //Apex DLC
				{ "arifle_MX_F",  350000, "true", "" },
				//{ "arifle_MX_GL_F", 380000, "true",  "" }//, //MXGL
				{ "arifle_MXC_F", 320000, "true",  "" },
				//{ "arifle_MXM_F", 260000, "true",  "" }//,
				{ "SMG_03_TR_camo",  350000, "true", "" }, //ADR 97 TR
				{ "SMG_03_camo", 375000, "true", "" },// ADR 97
				{ "SMG_03C_TR_camo", 280000, "true", "" }, //ADR 97C TR
				{ "SMG_03C_camo", 305000, "true", "" },// ADR 97C
				//{ "arifle_MX_SW_F", 380000, "true", "" }//,
				//{ "arifle_Katiba_C_F",  200000, "true", "" }, //Apex DLC
				//{ "arifle_Katiba_F", 270000, "true", "" }, //Apex DLC
				{ "srifle_DMR_07_blk_F", 200000, "true", "" }, //CMR
				//{ "srifle_DMR_01_F", 500000, "true", "" }//, //Rahim
				//{ "arifle_AKM_F", 350000, "true", "" }//, //AKM
				//{ "srifle_DMR_06_camo_F", 400000, "true", "" }//, //MK14
				//{ "arifle_AK12_F", 680000, "true", "" }//, //AK12
				{ "arifle_ARX_hex_F", 800000, "true", "" } //TYPE 115
			};
			magazines[] = {
				{ "30Rnd_65x39_caseless_mag", 1000, "true", "" },
				{ "10Rnd_762x54_Mag", 1000, "true", "" },
				{ "20Rnd_556x45_UW_mag", 1000, "true", "" },
				{ "30Rnd_580x42_Mag_F", 1000, "true", "" }, //Apex DLC
				{ "30Rnd_556x45_Stanag",  1000, "true", "" }, //TRG MK20
				{ "30Rnd_45ACP_Mag_SMG_01",1000, "true", "" }, //Vermin
				{ "150Rnd_556x45_Drum_Mag_F", 1000, "true", "" }, //SPAR-16s
				{ "30Rnd_65x39_caseless_green",  1000, "true", "" }, //Type 115
				//{ "10Rnd_50BW_Mag_F", 50000, "true", "" }//, //Type 115
				{ "20Rnd_762x51_Mag", 1000, "true", "" }, //Mk14+Mk18+Spar17+Mk-I EMR
				{ "10Rnd_338_Mag",  1000, "true", "" }, //MAR-10
				{ "20Rnd_650x39_Cased_Mag_F",  1000, "true", "" }, //CMR-76
				{ "30Rnd_9x21_Mag_SMG_02",  1000, "true", ""}, //Sting
				{ "30Rnd_545x39_Mag_F",  1000, "true", "" }, //AKSU
				{ "100Rnd_580x42_Mag_F",  1000, "true", ""}, //CAR 100er Mags
				{ "100Rnd_65x39_caseless_mag", 1000, "true", ""}, //MX SW Mags
				{ "200Rnd_556x45_Box_F", 1000, "true", "" },
				{ "30Rnd_762x39_Mag_F", 1000, "true", "" },
				{ "200Rnd_65x39_cased_Box", 1000, "true", "" },
				/*{ "3Rnd_SmokeRed_Grenade_shell",  1000, "true", "" },
				{ "3Rnd_Smoke_Grenade_shell",  1000, "true", "" },
				{ "3Rnd_SmokeGreen_Grenade_shell",  1000, "true", "" }*/,
				{ "150Rnd_762x54_Box", 1000, "true", "" },
				{ "10Rnd_93x64_DMR_05_Mag", 1000, "true", "" },
				{ "7Rnd_408_Mag", 1000, "true", "" },
				{ "5Rnd_127x108_Mag", 1000, "true", "" }
			};
			attachments[] = {
				{ "optic_Arco",  10000, "true", "" },
				{ "optic_Holosight",  3600, "true", "" },
				{ "optic_Hamr", 10000, "true", "" },
				{ "optic_AMS_snd",15000, "true", "" },
				{ "optic_AMS_khk",  15000, "true", "" },
				{ "optic_DMS", 10000, "true", "" },
				{ "optic_DMS_ghex_F",  10000, "true", "" },
				{ "optic_ERCO_snd_F", 10000, "true", "" },
				{ "optic_ERCO_khk_F", 10000, "true", "" },
				{ "optic_MRCO", 10000, "true", "" },
				{ "acc_flashlight",1000, "true", "" },
				{ "muzzle_snds_93mmg_tan",  50000, "true", "" },
				{ "muzzle_snds_B", 50000, "true", "" },
				{ "muzzle_snds_338_sand", 50000, "true", "" },
				{ "muzzle_snds_m_snd_F", 50000, "true", "" },
				{ "muzzle_snds_L", 50000, "true", "" },
				{ "muzzle_snds_M", 50000, "true", "" },
				{ "muzzle_snds_58_blk_F", 50000, "true", "" },
				{ "muzzle_snds_65_TI_hex_F", 50000, "true", "" },
				{ "muzzle_snds_H_snd_F", 50000, "true", "" }
			};
			items[] = { 
				{ "Binocular", 3000, "true", "Fernglas" },
				{ "ItemGPS", 5000, "true", "GPS" },
				{ "ItemRadio", 5000, "true", "Handy" },
				{ "ItemMap", 100 ,"true", "Karte" },
				{ "ItemCompass", 100, "true", "Kompass" },
				{ "ItemWatch", 100, "true", "Uhr" },
				{ "NVGoggles", 5000, "true", "Nachtsichtgerät" },
				{ "Chemlight_red", 300, "true", "Knicklicht red" },
				{ "Chemlight_yellow", 300, "true", "Knicklicht gelb" },
				{ "Chemlight_green", 300, "true", "Knicklicht grün" },
				{ "Chemlight_blue", 300, "true", "Knicklicht blau" }
			};
		};
		
		//this addAction ["Cop Shop", MAV_shop_fnc_initWeaponShop, "cop_basic"]; 
			//Praktikant                	husky_coplevel = 1
			//Polizeimeisteranwärter        husky_coplevel = 2
			//Polizeimeister            	husky_coplevel = 3
			//Polizeiobermeister            husky_coplevel = 4
			//Polizeihauptmeister           husky_coplevel = 5
			//Polizeikommissarsanwärter     husky_coplevel = 6
			//Polizeikommissar            	husky_coplevel = 7
			//Polizeioberkommissar        	husky_coplevel = 8
			//Polizeihauptkommissar       	husky_coplevel = 9
			//Erster Polizeihauptkommissar  husky_coplevel = 10
			//Polizeirat                	husky_coplevel = 11
			//Polizeioberrat            	husky_coplevel = 12
			//Polizeidirektor            	husky_coplevel = 13
			//Leitender Polizeidirektor     husky_coplevel = 14
			//Polizeipräsident            	husky_coplevel = 15
			//Admin                			husky_coplevel = 16
			
			//license_cop_coppilot
			//license_cop_copboot
			//license_cop_copzivilfahnder
			//license_cop_copausbilder
			//license_cop_copsek
			//license_cop_copscharfschuetze
			//license_cop_copbereitschaftspolizei
			
		class cop_basic {
			title = "Polizei Ausrüstung";
			conditions = "call husky_coplevel >= 1";
			simple = 0;
			maxCart = 50;
			
			weapons[] = {
				{ "hgun_P07_snds_F", 2000, "call husky_coplevel >= 2",  ""}, //Tazer
				{ "arifle_SDAR_F", 25000,  "call husky_coplevel >= 2" , ""}, //SDAR
				{ "SMG_02_F", 22800,  "call husky_coplevel >= 2" , ""}, //Sting
				//{ "SMG_01_F", 24000, "call husky_coplevel >= 2" , ""}, //Vermin
				{ "SMG_05_F", 25500, "call husky_coplevel >= 2", ""}, //Protector
				//{ "arifle_CTAR_blk_F", 90000, "call husky_coplevel >= 4" , ""}, //CAR-95
				{ "arifle_SPAR_01_blk_F", 75000,  "call husky_coplevel >= 4" , ""}, //SPAR-16		
				{ "arifle_MXC_Black_F", 90000,  "call husky_coplevel >= 5" , ""}, //MXC Schwarz
				//{ "arifle_CTARS_blk_F", 162000, "call husky_coplevel >= 6" , ""}, //CAR-95 Trommelmag
				{ "arifle_MX_Black_F", 105000,  "call husky_coplevel >= 6" , ""}, //MX Schwarz
				{ "arifle_SPAR_02_blk_F", 150000, "call husky_coplevel >= 6" , ""}, //SPAR-16s
				//{ "srifle_DMR_07_blk_F", 120000, "call husky_coplevel >= 6" , ""}, //CMR-76
				{ "srifle_DMR_05_blk_F", 2200000, "call husky_coplevel >= 6" , ""},	//Cyrus
				{ "arifle_MX_GL_Black_F", 117000, "call husky_coplevel >= 6" , ""}, //MXGL
				{ "arifle_MSBS65_black_F", 320000, "call husky_coplevel >= 6", ""} //Promet
                //{ "arifle_MXM_Black_F", 165000, "call husky_coplevel >= 7" , ""}, //MXM SChwarz
				//{ "arifle_ARX_blk_F", 168000, "call husky_coplevel >= 7" , ""}, //Typ 115        
				//{ "arifle_SPAR_03_blk_F", 340000, "call husky_coplevel >= 9" , ""}, //SPAR-17      
				//{ "srifle_DMR_03_F", 305000, "call husky_coplevel >= 8" , ""}, //Mk-I EMR 
				//{ "srifle_EBR_F", 280000, "call husky_coplevel >= 8" , ""}, //Mk18
				//{ "srifle_DMR_02_F", 425000, "call husky_coplevel >= 10 && license_cop_copscharfschuetze" , ""} //MAR-10
			};

			magazines[] = {
				{ "G_40mm_SmokeYellow", 10000, "call husky_coplevel >= 6" , "Tränengas 40m"}, //Tränengas
				{ "16Rnd_9x21_red_Mag", 300, "call husky_coplevel >= 2" , ""}, //Tazer-Munition Handgun
				{ "B_556x45_dual", 300, "call husky_coplevel >= 2" , ""},
				{ "30Rnd_556x45_Stanag", 300, "call husky_coplevel >= 2" , ""}, //TRG MK20
				//{ "30Rnd_45ACP_Mag_SMG_01", 300, "call husky_coplevel >= 2", "" }, //Vermin
				{ "30Rnd_65x39_black_mag", 500, "call husky_coplevel >= 3" , ""}, //MX 30 Schuss + Katiba
				{ "150Rnd_556x45_Drum_Mag_F", 500, "call husky_coplevel >= 5" , ""}, //SPAR-16s
				{ "30Rnd_65x39_caseless_green", 500, "call husky_coplevel >= 5" , ""}, //Type 115
				{ "10Rnd_50BW_Mag_F", 20000, "call husky_coplevel >= 6" , ""}, //Type 115
				//{ "30Rnd_580x42_Mag_F", 350, "call husky_coplevel >= 4" , ""}, //CAR Magazin
				{ "10Rnd_762x54_Mag", 550,  "call husky_coplevel >= 4" , ""}, //Rahim
				{ "20Rnd_762x51_Mag",  650,  "call husky_coplevel >= 5" , ""}, //Mk14+Mk18+Spar17+Mk-I EMR
				{ "10Rnd_338_Mag", 700, "call husky_coplevel >= 7" , ""}, //MAR-10
				{ "30Rnd_65x39_caseless_msbs_mag", 2000, "call husky_coplevel >= 6", "" }, //Promet
				//{ "20Rnd_650x39_Cased_Mag_F", 500, "call husky_coplevel >= 6" , ""}, //CMR-76
				{ "30Rnd_65x39_caseless_mag",  500, "call husky_coplevel >= 5" , ""}, //MX
				{ "30Rnd_9x21_Mag_SMG_02",  300, "call husky_coplevel >= 2" , ""}, //Sting
				{ "10Rnd_93x64_DMR_05_Mag",  300, "call husky_coplevel >= 2" , ""} //Cyrus Mag
				//{ "10Rnd_9x21_Mag",  300, "call husky_coplevel >= 2" , ""}, //Pdw
				//{ "100Rnd_580x42_Mag_F", 500, "call husky_coplevel >= 2" , ""}, //CAR 100er Mags
				//{ "100Rnd_65x39_caseless_mag", 550,  "call husky_coplevel >= 2" , ""} //MX SW Mags
			};

			attachments[] = {
				{ "acc_flashlight_pistol", 250, "call husky_coplevel >= 2", "" },//Pistol Flashlight
				{ "acc_flashlight", 250, "call husky_coplevel >= 2", "" },
				{ "acc_pointer_IR", 250, "call husky_coplevel >= 2", "" },
				{ "bipod_01_F_blk", 250,  "call husky_coplevel >= 2", "" },
				{ "optic_MRD", 5000,  "call husky_coplevel >= 2", "" },
				{ "optic_Holosight", 5000, "call husky_coplevel >= 2", "" },
				{ "optic_MRCO", 14000,  "call husky_coplevel >= 2", "" },
				{ "optic_Arco", 12000, "call husky_coplevel >= 2", "" },
				{ "optic_Hamr", 15000, "call husky_coplevel >= 2", "" },
				{ "optic_ERCO_blk_F", 18000,  "call husky_coplevel >= 2", "" },
				{ "optic_AMS",  28000, "call husky_coplevel >= 2", ""},
				{ "optic_DMS", 25000,  "call husky_coplevel >= 4", "" },
				{ "optic_LRPS", 35000, "call husky_coplevel >= 8", "" },
				{ "muzzle_snds_acp",  2500, "call husky_coplevel >= 2", "" },
				{ "muzzle_snds_M",  3000, "call husky_coplevel >= 2", "" },
				{ "muzzle_snds_H", 2800, "call husky_coplevel >= 3", "" },
				{ "muzzle_snds_B", 3500, "call husky_coplevel >= 3", "" },
				{ "muzzle_snds_L",  3000, "call husky_coplevel >= 2", "" },
				{ "muzzle_snds_65_TI_blk_F", 28000,  "call husky_coplevel >= 2", ""},
				{ "muzzle_snds_338_black", 5000, "call husky_coplevel >= 7", ""},
				{ "muzzle_snds_93mmg", 5000, "call husky_coplevel >= 2", ""}
			};
			
			items[] = {
				{ "Binocular", 3000, "call husky_coplevel >= 1", "Fernglas" },
				{ "Rangefinder", 3000, "call husky_coplevel >= 1", "Entfernungsmesser" },
				{ "ItemGPS", 5000, "call husky_coplevel >= 1", "GPS" },
				{ "ItemRadio", 5000, "true", "Handy" },
				{ "ItemMap", 100 ,"call husky_coplevel >= 1", "Karte" },
				{ "ItemCompass", 100, "call husky_coplevel >= 1", "Kompass" },
				{ "ItemWatch", 100, "call husky_coplevel >= 1", "Uhr" },
				{ "NVGoggles", 5000, "call husky_coplevel >= 1", "Nachtsichtgerät" },
				{ "Chemlight_red", 300, "call husky_coplevel >= 1", "Knicklicht red" },
				{ "Chemlight_yellow", 300, "call husky_coplevel >= 1", "Knicklicht gelb" },
				{ "Chemlight_green", 300, "call husky_coplevel >= 1", "Knicklicht grün" },
				{ "Chemlight_blue", 300, "call husky_coplevel >= 1", "Knicklicht blau" },
				{ "HandGrenade_Stone", 10000, "call husky_coplevel >= 6" , "Blendgranate"}, //Flashbang
				{ "SmokeShellYellow", 10000, "call husky_coplevel >= 6" , "Tränengas"} //Tränengas
			};
		};
		
		//this addAction ["Bereitschaftspolizei Ausrüstung", MAV_shop_fnc_initWeaponShop, "cop_copbereitschaftspolizei"]; 
		class cop_copbereitschaftspolizei {
			title = "Bereitschaftspolizei Ausrüstung";
			conditions = "call husky_coplevel >= 1";
			simple = 0;
			maxCart = 20;
			
			weapons[] = {
				{ "hgun_P07_snds_F", 2000, "license_cop_copbereitschaftspolizei",  ""} //Tazer
			};

			magazines[] = {
				{ "16Rnd_9x21_red_Mag", 300, "license_cop_copbereitschaftspolizei" , ""} //Tazer-Munition Handgun
			};

			attachments[] = {	};
			
			items[] = {
				{ "Binocular", 3000, "license_cop_copbereitschaftspolizei", "Fernglas" },
				{ "Rangefinder", 3000, "license_cop_copbereitschaftspolizei", "Entfernungsmesser" },
				{ "ItemGPS", 5000, "license_cop_copbereitschaftspolizei", "GPS" },
				{ "ItemRadio", 5000, "license_cop_copbereitschaftspolizei", "Handy" },
				{ "ItemMap", 100 ,"license_cop_copbereitschaftspolizei", "Karte" },
				{ "ItemCompass", 100, "license_cop_copbereitschaftspolizei", "Kompass" },
				{ "ItemWatch", 100, "license_cop_copbereitschaftspolizei", "Uhr" },
				{ "NVGoggles", 5000, "license_cop_copbereitschaftspolizei", "Nachtsichtgerät" },
				{ "Chemlight_red", 300, "license_cop_copbereitschaftspolizei", "Knicklicht red" },
				{ "Chemlight_yellow", 300, "license_cop_copbereitschaftspolizei", "Knicklicht gelb" },
				{ "Chemlight_green", 300, "license_cop_copbereitschaftspolizei", "Knicklicht grün" },
				{ "Chemlight_blue", 300, "license_cop_copbereitschaftspolizei", "Knicklicht blau" }
			};
		};
		
		//this addAction ["SEK Waffen", MAV_shop_fnc_initWeaponShop, "SEKWaffen"]; 
		class SEKWaffen {
			title = "GSG9 Waffen";
			conditions = "license_cop_copsek || license_cop_copscharfschuetze";
			simple = 0;
			maxCart = 50;
	
			weapons[] = {
				//{ "arifle_TRG21_GL_F", 51000,  "call husky_coplevel >= 2", "" }, //TRG 21GL
				//{ "arifle_Mk20_GL_F", 57000,  "call husky_coplevel >= 3", "" }, //MK20 GL
				{ "arifle_SPAR_01_GL_blk_F",  81000,  "license_cop_copsek", "" }, //SPAR16 GL
				{ "arifle_CTAR_GL_blk_F", 96000,  "license_cop_copsek", "" }, //CAR-GL
				{ "arifle_MX_SW_Black_F",  228000,  "license_cop_copsek", "" }, //MX-SW
				{ "LMG_03_F", 288000,  "license_cop_copsek", "" }, //LIM
				{ "srifle_DMR_03_F",  220000,  "license_cop_copsek", "" }, //Mk-I EMR 
				{ "srifle_EBR_F",  280000,  "license_cop_copsek", "" }, //MK18
				{ "arifle_AK12_F",  250000,  "license_cop_copsek", "" }, //AK12
				{ "arifle_AK12_GL_F", 345000, "license_cop_copsek", "" }, //AK12GL
				//{ "LMG_Mk200_F",  425000,  "license_cop_copsek", "" }, //MK200
				{ "arifle_MSBS65_F", 670000, "license_cop_copsek", ""}, //Promet 
				{ "arifle_MSBS65_Mark_F", 800000, "license_cop_copsek", ""}, //Promet MR
				{ "arifle_RPK12_F", 1500000, "license_cop_copsek", ""}, //RPK
				{ "srifle_DMR_05_blk_F",  475000, "license_cop_copsek && license_cop_copscharfschuetze", "" }, //Cyrus
				{ "srifle_LRR_F",  600000,  "license_cop_copsek || license_cop_copscharfschuetze", "" }, //LRR
				{ "srifle_GM6_F", 725000,  "license_cop_copsek || license_cop_copscharfschuetze", "" }, //Lynx
				//{"arifle_CTARS_blk_F",  162000,  "license_cop_copsek", "" }, //CAR-95 1
				{ "arifle_SPAR_02_blk_F",  150000, "license_cop_copsek", "" }, //SPAR-16S
				{"srifle_DMR_03_F", 250000,  "license_cop_copsek", "" }, //Mk-I EMR 
				{ "srifle_DMR_02_F",  425000, "license_cop_copsek || license_cop_copscharfschuetze", "" } //MAR-10
			};

			magazines[] = {
				{ "30Rnd_556x45_Stanag", 300,  "license_cop_copsek", "" },
				{ "200Rnd_556x45_Box_F", 500,  "license_cop_copsek", "" },
				{ "20Rnd_762x51_Mag",  650,  "license_cop_copsek", "" },
				{ "30Rnd_762x39_Mag_F", 650,  "license_cop_copsek", "" },
				{ "200Rnd_65x39_cased_Box", 500,  "license_cop_copsek","" },
				{ "150Rnd_762x54_Box",  1000,  "license_cop_copsek", "" },
				{ "10Rnd_93x64_DMR_05_Mag",  800,  "license_cop_copsek", "" },
				{ "7Rnd_408_Mag",800,  "license_cop_copsek", "" },
				{ "7.62mm_75Rnd_AK12_mag", 1000, "license_cop_copsek", ""},
				{ "6.5mm_30Rnd_Promet_mag", 2000, "license_cop_copsek", "" },
				{ "5Rnd_127x108_Mag",  800, "license_cop_copsek", "" },
				{ "100Rnd_580x42_Mag_F", 450, "license_cop_copsek" ,"" },
				{ "150Rnd_556x45_Drum_Mag_F", 500,  "license_cop_copsek" ,""},
				{ "10Rnd_338_Mag",  125,  "license_cop_copsek"  ,""},
				{ "100Rnd_65x39_caseless_mag",  650,  "license_cop_copsek" ,""},
				{ "200Rnd_65x39_cased_Box",  800,  "license_cop_copsek" ,""},
				{ "1Rnd_SmokeYellow_Grenade_shell",  15000,  "license_cop_copsek"  ,"Trännen Gas"}
			};

			attachments[] = {
				{ "acc_flashlight_pistol",  250, "license_cop_copsek" , ""},//Pistol Flashlight
				{ "acc_flashlight",  250, "license_cop_copsek" , ""},
				{ "acc_pointer_IR",  250,  "license_cop_copsek" , ""},
				{ "bipod_01_F_blk",  250,  "license_cop_copsek", "" },
				{ "optic_MRD", 5000,  "license_cop_copsek" , ""},
				{ "optic_Holosight",  5000,  "license_cop_copsek" , ""},
				{ "optic_MRCO",  14000, "license_cop_copsek" , ""},
				{ "optic_Arco",  12000, "license_cop_copsek" , ""},
				{ "optic_Hamr",  15000, "license_cop_copsek" , ""},
				{ "optic_ERCO_blk_F",  18000, "license_cop_copsek", "" },
				{ "optic_DMS",  25000, "license_cop_copsek" , ""},
				{ "optic_LRPS",  35000, "license_cop_copsek", "" },
				{ "muzzle_snds_acp", 2500, "license_cop_copsek", "" },
				{ "muzzle_snds_M",  3000,  "license_cop_copsek", "" },
				{ "muzzle_snds_H_MG", 3000,  "license_cop_copsek", "" },
				{ "muzzle_snds_H",  2800,  "license_cop_copsek" , ""},
				{ "muzzle_snds_B", 3500, "license_cop_copsek", "" },
				{ "muzzle_snds_L", 3000, "license_cop_copsek", "" },
				{ "optic_AMS", 28000,  "license_cop_copsek", ""},
				{ "muzzle_snds_338_black", 5000,  "license_cop_copsek", ""},
				{ "muzzle_snds_93mmg", 5000,  "license_cop_copsek", ""}
			};
			
			items[] = {
				{ "B_UavTerminal", 30000, "license_cop_copsek", "Dohnen-Terminal" },
				{ "Binocular", 3000, "license_cop_copsek", "Fernglas" },
				{ "Rangefinder", 3000, "license_cop_copsek", "Entfernungsmesser" },
				{ "ItemGPS", 5000, "license_cop_copsek", "GPS" },
				{ "ItemRadio", 5000, "true", "Handy" },
				{ "ItemMap", 100 ,"license_cop_copsek", "Karte" },
				{ "ItemCompass", 100, "license_cop_copsek", "Kompass" },
				{ "ItemWatch", 100, "license_cop_copsek", "Uhr" },
				{ "NVGoggles", 5000, "license_cop_copsek", "Nachtsichtgerät" },
				{ "Chemlight_red", 300, "license_cop_copsek", "Knicklicht red" },
				{ "Chemlight_yellow", 300, "license_cop_copsek", "Knicklicht gelb" },
				{ "Chemlight_green", 300, "license_cop_copsek", "Knicklicht grün" },
				{ "Chemlight_blue", 300, "license_cop_copsek", "Knicklicht blau" },
				{ "HandGrenade_Stone", 10000, "license_cop_copsek" , "Blendgranate" }, //Flashbang
				{ "SmokeShellYellow", 10000, "license_cop_copsek" , "Tränengas"} //Tränengas
			};
		};

		//this addAction ["Sondereinsatz", MAV_shop_fnc_initWeaponShop, "sondereinsatz"]; 
		class sondereinsatz {
			title = "PSK Waffen";
			conditions = "call husky_coplevel >= 1 || license_cop_copscharfschuetze";
			simple = 0;
			maxCart = 50;
				
			weapons[] = {
				//{ "arifle_TRG21_GL_F", 51000,  "call husky_coplevel >= 2", "" }, //TRG 21GL
				//{ "arifle_Mk20_GL_F", 57000,  "call husky_coplevel >= 3", "" }, //MK20 GL
				{ "arifle_SPAR_01_GL_blk_F",  81000,  "call husky_coplevel >= 4", "" }, //SPAR16 GL
				{ "arifle_CTAR_GL_blk_F", 96000,  "call husky_coplevel >= 4", "" }, //CAR-GL
				{ "arifle_MX_SW_Black_F",  228000,  "call husky_coplevel >= 6", "" }, //MX-SW
				{ "LMG_03_F", 288000,  "call husky_coplevel >= 7", "" }, //LIM
				{ "srifle_DMR_03_F",  220000,  "call husky_coplevel >= 8", "" }, //Mk-I EMR 
				{ "srifle_EBR_F",  280000,  "call husky_coplevel >= 7", "" }, //MK18
				{ "arifle_AK12_F",  250000,  "call husky_coplevel >= 8", "" }, //AK12
				{ "arifle_AK12_GL_F", 345000, "call husky_coplevel >= 8", "" }, //AK12GL
				//{ "LMG_Mk200_F",  425000,  "call husky_coplevel >= 10", "" }, //MK200
				{ "srifle_DMR_05_blk_F",  475000, "call husky_coplevel >= 11 && license_cop_copscharfschuetze", "" }, //Cyrus
				{ "srifle_LRR_F",  600000,  "call husky_coplevel >= 9 && license_cop_copscharfschuetze", "" }, //LRR
				{ "srifle_GM6_F", 725000,  "call husky_coplevel >= 9 && license_cop_copscharfschuetze", "" }, //Lynx
				//{"arifle_CTARS_blk_F",  162000,  "call husky_coplevel >= 5", "" }, //CAR-95 1
				{ "arifle_SPAR_02_blk_F",  150000, "call husky_coplevel >= 5", "" } //SPAR-16S
			};

			magazines[] = {
				{ "30Rnd_556x45_Stanag", 300,  "", "" },
				{ "200Rnd_556x45_Box_F", 500,  "", "" },
				{ "20Rnd_762x51_Mag",  650,  "", "" },
				{ "30Rnd_762x39_Mag_F", 650,  "", "" },
				{ "200Rnd_65x39_cased_Box", 500,  "","" },
				{ "150Rnd_762x54_Box",  1000,  "", "" },
				{ "10Rnd_93x64_DMR_05_Mag",  800,  "", "" },
				{ "7Rnd_408_Mag",800,  "", "" },
				{ "5Rnd_127x108_Mag",  800, "", "" },
				{ "100Rnd_580x42_Mag_F", 450, "call husky_coplevel >= 1" ,"" },
				//{ "150Rnd_556x45_Drum_Mag_F", 500,  "call husky_coplevel >=1" ,""},
				{ "10Rnd_338_Mag",  125,  "call husky_coplevel >= 1"  ,""},
				{ "100Rnd_65x39_caseless_mag",  650,  "call husky_coplevel >= 2" ,""},
				{ "1Rnd_SmokeYellow_Grenade_shell",  15000,  "", "Tränen Gas" }
			};

			attachments[] = {
				{ "acc_flashlight_pistol",  250, "call husky_coplevel >= 1" , ""},//Pistol Flashlight
				{ "acc_flashlight",  250, "call husky_coplevel >= 2" , ""},
				{ "acc_pointer_IR",  250,  "call husky_coplevel >= 2" , ""},
				{ "bipod_01_F_blk",  250,  "call husky_coplevel >= 2", "" },
				{ "optic_MRD", 5000,  "call husky_coplevel >= 1" , ""},
				{ "optic_Holosight",  5000,  "call husky_coplevel >= 2" , ""},
				{ "optic_MRCO",  14000, "call husky_coplevel >= 2" , ""},
				{ "optic_Arco",  12000, "call husky_coplevel >= 2" , ""},
				{ "optic_Hamr",  15000, "call husky_coplevel >= 2" , ""},
				{ "optic_ERCO_blk_F",  18000, "call husky_coplevel >= 2", "" },
				{ "optic_DMS",  25000, "call husky_coplevel >= 4" , ""},
				{ "optic_LRPS",  35000, "call husky_coplevel >= 8", "" },
				{ "muzzle_snds_acp", 2500, "call husky_coplevel >= 2", "" },
				{ "muzzle_snds_M",  3000,  "call husky_coplevel >= 2", "" },
				{ "muzzle_snds_H_MG", 3000,  "call husky_coplevel >= 2", "" },
				{ "muzzle_snds_H",  2800,  "call husky_coplevel >= 3" , ""},
				{ "muzzle_snds_B", 3500, "call husky_coplevel >= 3", "" },
				{ "muzzle_snds_L", 3000, "call husky_coplevel >= 1", "" },
				{ "optic_AMS", 28000,  "call husky_coplevel >= 2", ""},
				{ "muzzle_snds_338_black", 5000,  "call husky_coplevel >= 7", ""},
				{ "muzzle_snds_93mmg", 5000,  "call husky_coplevel >= 1", ""}
			};
			
			items[] = {
				{ "Binocular", 3000, "call husky_coplevel >= 1", "Fernglas" },
				{ "Rangefinder", 3000, "call husky_coplevel >= 1", "Entfernungsmesser" },
				{ "ItemGPS", 5000, "call husky_coplevel >= 1", "GPS" },
				{ "ItemRadio", 5000, "true", "Handy" },
				{ "ItemMap", 100 ,"call husky_coplevel >= 1", "Karte" },
				{ "ItemCompass", 100, "call husky_coplevel >= 1", "Kompass" },
				{ "ItemWatch", 100, "call husky_coplevel >= 1", "Uhr" },
				{ "NVGoggles", 5000, "call husky_coplevel >= 1", "Nachtsichtgerät" },
				{ "Chemlight_red", 300, "call husky_coplevel >= 1", "Knicklicht red" },
				{ "Chemlight_yellow", 300, "call husky_coplevel >= 1", "Knicklicht gelb" },
				{ "Chemlight_green", 300, "call husky_coplevel >= 1", "Knicklicht grün" },
				{ "Chemlight_blue", 300, "call husky_coplevel >= 1", "Knicklicht blau" },
				{ "HandGrenade_Stone", 10000, "call husky_coplevel >= 6" , "Blendgranate"}, //Flashbang
				{ "SmokeShellYellow", 10000, "call husky_coplevel >= 6" , "Tränengas"} //Tränengas
			};
		};

		//this addAction ["copzivilfahnder Waffen", MAV_shop_fnc_initWeaponShop, "copzivilfahnderWeapons"]; 
		class copzivilfahnderWeapons {
			title = "Zivile Waffen";
			conditions = "call husky_coplevel >= 1 || license_cop_copzivilfahnder";
			simple = 0;
			maxCart = 50;
	
			weapons[] = {
				{ "hgun_P07_snds_F", 2000, "call husky_coplevel >= 2",  ""}, //Tazer
				{ "hgun_Rook40_F", 13000, "license_cop_copzivilfahnder", "" },
				{ "hgun_Pistol_01_F", 13000, "license_cop_copzivilfahnder", "" }, //Apex DLC
				{ "hgun_Pistol_heavy_02_F", 17500, "license_cop_copzivilfahnder", "" },
				{ "hgun_ACPC2_F", 15500, "license_cop_copzivilfahnder", "" },
				{ "SMG_05_F", 42000, "license_cop_copzivilfahnder", "" }, //Apex DLC
				{ "SMG_02_F", 38000, "license_cop_copzivilfahnder", "" }, //Apex DLC
				{ "SMG_01_F", 40000, "license_cop_copzivilfahnder", "" }, //Apex DLC
				{ "hgun_PDW2000_F", 45000, "license_cop_copzivilfahnder", "" }
			};
			magazines[] = {
				{ "G_40mm_SmokeYellow", 10000, "call husky_coplevel >= 6" , "Tränengas 40m"}, //Tränengas
				{ "16Rnd_9x21_red_Mag", 300, "call husky_coplevel >= 2" , ""}, //Tazer-Munition Handgun
				{ "16Rnd_9x21_Mag", 1000, "license_cop_copzivilfahnder", "" },
				{ "6Rnd_45ACP_Cylinder", 1000, "license_cop_copzivilfahnder", "" },
				{ "9Rnd_45ACP_Mag", 1000, "license_cop_copzivilfahnder", "" },
				{ "30Rnd_9x21_Mag", 1000, "license_cop_copzivilfahnder", "" },
				{ "30Rnd_45ACP_Mag_SMG_01", 1000, "license_cop_copzivilfahnder", "" },
				{ "30Rnd_9x21_Mag_SMG_02", 1000, "license_cop_copzivilfahnder", "" }, //Apex DLC
				{ "10Rnd_9x21_Mag", 1000, "license_cop_copzivilfahnder", "" } //Apex DLC
			};
			attachments[] = {
				{ "acc_flashlight_pistol", 1000, "license_cop_copzivilfahnder", "" },//Pistol Flashlight
				{ "optic_ACO_grn_smg", 2500, "license_cop_copzivilfahnder", "" },
				{ "optic_Holosight", 3000, "license_cop_copzivilfahnder", "" }
			};
			items[] = {
				{ "Binocular", 3000, "license_cop_copsek", "Fernglas" },
				{ "Rangefinder", 3000, "license_cop_copsek", "Entfernungsmesser" },
				{ "ItemGPS", 5000, "license_cop_copsek", "GPS" },
				{ "ItemRadio", 5000, "true", "Handy" },
				{ "ItemMap", 100 ,"license_cop_copsek", "Karte" },
				{ "ItemCompass", 100, "license_cop_copsek", "Kompass" },
				{ "ItemWatch", 100, "license_cop_copsek", "Uhr" },
				{ "NVGoggles", 5000, "license_cop_copsek", "Nachtsichtgerät" },
				{ "Chemlight_red", 300, "license_cop_copsek", "Knicklicht red" },
				{ "Chemlight_yellow", 300, "license_cop_copsek", "Knicklicht gelb" },
				{ "Chemlight_green", 300, "license_cop_copsek", "Knicklicht grün" },
				{ "Chemlight_blue", 300, "license_cop_copsek", "Knicklicht blau" },
				{ "HandGrenade_Stone", 10000, "license_cop_copsek" , "Blendgranate" }, //Flashbang
				{ "SmokeShellYellow", 10000, "license_cop_copsek" , "Tränengas"} //Tränengas
			};
		};

		
		//this addAction ["Rettungsdienst", MAV_shop_fnc_initWeaponShop, "med_basic"]; 
			//Praktikant            	husky_mediclevel = 1
			//Feuerwehrmannanwärter  	husky_mediclevel = 2
			//Feuerwehrmann        		husky_mediclevel = 3
			//Oberfeuerwehrmann       	husky_mediclevel = 4
			//Hauptfeuerwehrmann      	husky_mediclevel = 5
			//Löschmeister         		husky_mediclevel = 6
			//Oberlöschmeister          husky_mediclevel = 7
			//Hauptlöschmeister      	husky_mediclevel = 8
			//Brandmeister            	husky_mediclevel = 9
			//Oberbrandmeister          husky_mediclevel = 10
			//Hauptbrandmeister         husky_mediclevel = 11
			//Brandrat             		husky_mediclevel = 12
			//Feuerwehr Ausbilder       husky_mediclevel = 13
			//Co. Branddirektor         husky_mediclevel = 14
			//Branddirektor            	husky_mediclevel = 15
			//Admin            			husky_mediclevel = 16
		
			//license_med_KraftFahrzeug1
			//license_med_KraftFahrzeug2
			//license_med_KraftFahrzeug3
			//license_med_HeliLizenz1
			//license_med_HeliLizenz2
			//license_med_HeliLizenz3
			//license_med_wasserrettung
			//license_med_Loeschfahrzeug
			//license_med_Bergrettung1
			//license_med_Katastrophenschutz
			//license_med_ausbildermed
			//license_med_farmenmed
			
		class med_basic {
			title = "Rettungsdienst";
			conditions = "call husky_mediclevel >= 1";
			simple = 0;
			maxCart = 50;
				
			weapons[] = {
				{ "hgun_Pistol_Signal_F", 3000, "call husky_mediclevel >= 7", "Signalpistole" },
				{ "hgun_P07_snds_F", 13000, "call husky_mediclevel >= 14", "Taser" }
			};

			magazines[] = {
				{ "6Rnd_RedSignal_F", 300, "call husky_mediclevel >= 7", "Munition Signalpistole" },
				{ "16Rnd_9x21_red_Mag", 3000, "call husky_mediclevel >= 14", "Munition Taser" }
			};

			attachments[] = {
			};
			
			items[] = {
				{ "Binocular", 3000, "call husky_mediclevel >= 1", "Fernglas" },
				{ "ItemGPS", 5000, "call husky_mediclevel >= 1", "GPS" },
				{ "ItemRadio", 5000, "true", "Handy" },
				{ "ItemMap", 100 ,"call husky_mediclevel >= 1", "Karte" },
				{ "ItemCompass", 100, "call husky_mediclevel >= 1", "Kompass" },
				{ "ItemWatch", 100, "call husky_mediclevel >= 1", "Uhr" },
				{ "NVGoggles", 5000, "call husky_mediclevel >= 1", "Nachtsichtgerät" },
				{ "Chemlight_red", 300, "call husky_mediclevel >= 1", "Knicklicht red" },
				{ "Chemlight_yellow", 300, "call husky_mediclevel >= 1", "Knicklicht gelb" },
				{ "Chemlight_green", 300, "call husky_mediclevel >= 1", "Knicklicht grün" },
				{ "Chemlight_blue", 300, "call husky_mediclevel >= 1", "Knicklicht blau" }
			};
		};
		
		
		/////////////////////
		////Gruppierungen////
		/////////////////////
		//this addAction ["Waffenkammer 111th", MAV_shop_fnc_initWeaponShop, "th111"]; 
		class th111 {
			title = "Waffenkammer 111th";
			conditions = "license_civ_th111";
			simple = 0;
			maxCart = 50;
	
			
			weapons[] = {
				{ "hgun_Rook40_F", 3500, "license_civ_th111", "" }, //Rook 
				{ "hgun_Pistol_heavy_01_F", 3500, "license_civ_th111", "" },  //4-Five
				{ "hgun_ACPC2_F",3500, "license_civ_th111", "" }, //ACP
				{ "SMG_03C_TR_khaki", 80000, "license_civ_th111", "" }, //ADR	
				{ "SMG_03C_TR_black",  80000, "license_civ_th111", "" }, //ADR
				{ "arifle_AK12_F", 90000, "license_civ_th111", "" }, //AK12
				{ "srifle_DMR_03_khaki_F", 100000, "license_civ_th111", "" }, //MK1
				{ "srifle_DMR_03_tan_F", 100000, "license_civ_th111", "" }, //MK1
				{ "srifle_DMR_03_woodland_F", 100000, "license_civ_th111", "" }, //MK1
				{ "LMG_Mk200_F", 150000, "license_civ_th111", "" }, //MK200
				{ "arifle_MX_khk_F", 80000, "license_civ_th111", "" }, //MX
				{ "arifle_MX_F", 80000, "license_civ_th111", "" }, //MX
				{ "arifle_MX_SW_khk_F",  90000, "license_civ_th111", "" }, //MX-SW
				{ "arifle_MX_SW_F",  90000, "license_civ_th111", "" }, //MX-SW
				{ "SMG_05_F",  50000, "license_civ_th111", "" }, //Protector
				{ "arifle_AKM_F", 350000, "license_civ_rebel", "" }, //AKM
				{ "arifle_SPAR_03_khk_F",  100000, "license_civ_th111", "" }, //Spar17
				{ "arifle_SPAR_03_snd_F",  100000, "license_civ_th111", "" } //Spar17
				//{ "LMG_Zafir_F",  170000, "license_civ_th111", "" }// //Zafir
			};

			magazines[] = {
				{ "30Rnd_9x21_Mag", 1000, "license_civ_th111", "9x21 mm"}, //MX SW Mags
				{ "11Rnd_45ACP_Mag", 1000,  "license_civ_th111" , ".45 ACP"}, //MX Mag
				{ "9Rnd_45ACP_Mag", 1000,  "license_civ_th111" , ".45 ACP"}, //rook mag
				{ "50Rnd_570x28_SMG_03", 1000,  "license_civ_th111" , "5.7 mm"}, //rook mag
				{ "30Rnd_762x39_Mag_F", 1000,  "license_civ_th111" , "7.62x39 mm"}, //rook mag
				{ "30Rnd_762x39_Mag_Tracer_F", 1000,  "license_civ_th111" , "7.62x39 mm"}, //rook mag
				{ "20Rnd_762x51_Mag", 1000, "license_civ_th111" , "7.62x51 mm"}, //rook mag
				{ "200Rnd_65x39_cased_Box", 1000,  "license_civ_th111" , "6.5x39 mm"}, //rook mag
				{ "30Rnd_65x39_caseless_mag", 1000,  "license_civ_th111" , "6.5x39 mm"}, //rook mag
				{ "100Rnd_65x39_caseless_mag", 1000,  "license_civ_th111" , "6.5x39 mm"}, //rook mag
				{ "30Rnd_9x21_Mag_SMG_02", 1000, "license_civ_th111" , "9x21 mm"}, //rook mag
				{ "150Rnd_762x54_Box", 1000, "license_civ_th111" , "7.62x54 mm"}, //rook mag
				{ "3Rnd_SmokeYellow_Grenade_shell", 1800, "license_civ_th111", "" }, //Rauchgranate
				{ "3Rnd_SmokePurple_Grenade_shell", 1800, "license_civ_th111", "" } //Rauchgranate
			};

			attachments[] = {
				{ "acc_flashlight_pistol", 2500,  "license_civ_th111", "" },
				{ "optic_MRD",  2500,  "license_civ_th111", "" },
				{ "optic_ERCO_blk_F", 5000, "license_civ_th111", "" },
				{ "optic_ERCO_snd_F", 5000, "license_civ_th111", "" },
				{ "optic_ERCO_khk_F", 5000, "license_civ_th111", "" },
				{ "optic_Aco",  5000, "license_civ_th111", "" },
				{ "optic_Arco",  5000, "license_civ_th111", "" },
				{ "optic_Arco_ghex_F",  5000, "license_civ_th111", "" },
				{ "optic_MRCO",  5000, "license_civ_th111", "" },
				{ "optic_Hamr_khk_F",  5000, "license_civ_th111", "" },
				{ "optic_Hamr",  5000, "license_civ_th111", "" },
				{ "optic_NVS",  3000, "license_civ_th111", ""},
				{ "optic_Holosight_khk_F", 2800, "license_civ_th111", ""},
				{ "optic_Holosight",  2800, "license_civ_th111", ""},
				{ "optic_AMS_khk",2800, "license_civ_th111", ""},
				{ "optic_AMS_snd",  2800, "license_civ_th111", ""},
				{ "acc_pointer_IR", 2800, "license_civ_th111", ""},
				{ "acc_flashlight", 2800, "license_civ_th111", ""},
				{ "muzzle_snds_570", 2800, "license_civ_th111", ""},
				{ "muzzle_snds_B", 2800, "license_civ_th111", ""},
				{ "muzzle_snds_B_khk_F", 2800, "license_civ_th111", ""},
				{ "muzzle_snds_B_snd_F", 2800, "license_civ_th111", ""},
				{ "muzzle_snds_H_khk_F", 2800, "license_civ_th111", ""},
				{ "muzzle_snds_H_snd_F", 2800, "license_civ_th111", ""},
				{ "muzzle_snds_L",  2800, "license_civ_th111", ""},
				{ "optic_DMS",  2500, "license_civ_th111" , ""},
				{ "optic_LRPS",  3500, "license_civ_th111", "" }
			};
			
			items[] = {
				{ "Binocular", 3000, "license_civ_th111", "Fernglas" },
				{ "ItemGPS", 5000, "license_civ_th111", "GPS" },
				{ "ItemRadio", 5000, "true", "Handy" },
				{ "ItemMap", 100 ,"license_civ_th111", "Karte" },
				{ "ItemCompass", 100, "license_civ_th111", "Kompass" },
				{ "ItemWatch", 100, "license_civ_th111", "Uhr" },
				{ "NVGoggles", 5000, "license_civ_th111", "Nachtsichtgerät" },
				//{ "NVGogglesB_gry_F", 1700, "license_civ_th111", "Nachtsichtgerät" },
				//{ "NVGogglesB_grn_F", 1700, "license_civ_th111", "Nachtsichtgerät" },
				{ "NVGogglesB_blk_F",  1700, "license_civ_th111", "Nachtsichtgerät" },
				{ "NVGoggles_tna_F", 1700, "license_civ_th111", "Nachtsichtgerät" },
				{ "NVGoggles", 1700, "license_civ_th111", "Nachtsichtgerät" },
				{ "NVGoggles_INDEP",  1700, "license_civ_th111", "Nachtsichtgerät" },
				{ "NVGoggles_OPFOR", 1700, "license_civ_th111", "Nachtsichtgerät" },
				{ "Laserdesignator_01_khk_F", 1700, "license_civ_th111", "Laser-Entfernungsmesser" },
				{ "Laserdesignator_03",  1700, "license_civ_th111", "Laser-Entfernungsmesser" },
				{ "Laserdesignator", 1700, "license_civ_th111", "Laser-Entfernungsmesser" },
				{ "Chemlight_red", 300, "license_civ_th111", "Knicklicht red" },
				{ "Chemlight_yellow", 300, "license_civ_th111", "Knicklicht gelb" },
				{ "Chemlight_green", 300, "license_civ_th111", "Knicklicht grün" },
				{ "Chemlight_blue", 300, "true", "Knicklicht blau" }
			};
		};
		
		//this addAction ["Waffenkammer Staatliches Militär", MAV_shop_fnc_initWeaponShop, "sm"]; 
		class sm {
			title = "Waffenkammer Militär";
			conditions = "license_civ_sm";
			simple = 0;
			maxCart = 50;
	
			
			weapons[] = {
				{ "hgun_Rook40_F", 3500, "license_civ_sm", "" }, //Rook 
				{ "hgun_Pistol_heavy_01_green_F", 3500, "license_civ_sm", "" },  
				{ "arifle_MX_SW_Black_F",3500, "license_civ_sm", "" }, 
				{ "arifle_RPK12_F", 80000, "license_civ_sm", "" } 
				/*{ "SMG_03C_TR_black",  80000, "license_civ_sm", "" }, //ADR
				{ "arifle_AK12_F", 90000, "license_civ_sm", "" }, //AK12
				{ "srifle_DMR_03_khaki_F", 100000, "license_civ_sm", "" }, //MK1
				{ "srifle_DMR_03_tan_F", 100000, "license_civ_sm", "" }, //MK1
				{ "srifle_DMR_03_woodland_F", 100000, "license_civ_sm", "" }, //MK1
				{ "LMG_Mk200_F", 150000, "license_civ_sm", "" }, //MK200
				{ "arifle_MX_khk_F", 80000, "license_civ_sm", "" }, //MX
				{ "arifle_MX_F", 80000, "license_civ_sm", "" }, //MX
				{ "arifle_MX_SW_khk_F",  90000, "license_civ_sm", "" }, //MX-SW
				{ "arifle_MX_SW_F",  90000, "license_civ_sm", "" }, //MX-SW
				{ "SMG_05_F",  50000, "license_civ_sm", "" }, //Protector
				{ "arifle_AKM_F", 350000, "license_civ_rebel", "" }, //AKM
				{ "arifle_SPAR_03_khk_F",  100000, "license_civ_sm", "" }, //Spar17
				{ "arifle_SPAR_03_snd_F",  100000, "license_civ_sm", "" } //Spar17
				{ "LMG_Zafir_F",  170000, "license_civ_sm", "" }*/ //Zafir
			};

			magazines[] = {
				{ "16Rnd_9x21_Mag", 1000, "license_civ_sm", "9x21 mm"},
				{ "11Rnd_45ACP_Mag", 1000,  "license_civ_sm" , ".45 ACP"},
				//{ "9Rnd_45ACP_Mag", 1000,  "license_civ_sm" , ".45 ACP"}, 
				//{ "50Rnd_570x28_SMG_03", 1000,  "license_civ_sm" , "5.7 mm"}, 
				{ "75rnd_762x39_AK12_Mag_F", 1000,  "license_civ_sm" , "7.62x39 mm"}, 
				//{ "30Rnd_762x39_Mag_Tracer_F", 1000,  "license_civ_sm" , "7.62x39 mm"}, 
				//{ "20Rnd_762x51_Mag", 1000, "license_civ_sm" , "7.62x51 mm"}, 
				//{ "200Rnd_65x39_cased_Box", 1000,  "license_civ_sm" , "6.5x39 mm"}, 
				//{ "30Rnd_65x39_caseless_mag", 1000,  "license_civ_sm" , "6.5x39 mm"}, 
				{ "100Rnd_65x39_caseless_mag", 1000,  "license_civ_sm" , "6.5x39 mm"}
				//{ "30Rnd_9x21_Mag_SMG_02", 1000, "license_civ_sm" , "9x21 mm"}, 
				//{ "150Rnd_762x54_Box", 1000, "license_civ_sm" , "7.62x54 mm"}, 
				//{ "3Rnd_SmokeYellow_Grenade_shell", 1800, "license_civ_sm", "" }, //Rauchgranate
				//{ "3Rnd_SmokePurple_Grenade_shell", 1800, "license_civ_sm", "" } //Rauchgranate
			};

			attachments[] = {
				//{ "acc_flashlight_pistol", 2500,  "license_civ_sm", "" },
				//{ "optic_MRD",  2500,  "license_civ_sm", "" },
				{ "optic_ERCO_blk_F", 5000, "license_civ_sm", "" },
				//{ "optic_ERCO_snd_F", 5000, "license_civ_sm", "" },
				//{ "optic_ERCO_khk_F", 5000, "license_civ_sm", "" },
				//{ "optic_Aco",  5000, "license_civ_sm", "" },
				//{ "optic_Arco",  5000, "license_civ_sm", "" },
				//{ "optic_Arco_ghex_F",  5000, "license_civ_sm", "" },
				//{ "optic_MRCO",  5000, "license_civ_sm", "" },
				//{ "optic_Hamr_khk_F",  5000, "license_civ_sm", "" },
				//{ "optic_Hamr",  5000, "license_civ_sm", "" },
				//{ "optic_NVS",  3000, "license_civ_sm", ""},
				//{ "optic_Holosight_khk_F", 2800, "license_civ_sm", ""},
				//{ "optic_Holosight",  2800, "license_civ_sm", ""},
				//{ "optic_AMS_khk",2800, "license_civ_sm", ""},
				//{ "optic_AMS_snd",  2800, "license_civ_sm", ""},
				//{ "acc_pointer_IR", 2800, "license_civ_sm", ""},
				{ "acc_flashlight", 2800, "license_civ_sm", ""},
				//{ "muzzle_snds_570", 2800, "license_civ_sm", ""},
				{ "muzzle_snds_B", 2800, "license_civ_sm", ""},
				//{ "muzzle_snds_B_khk_F", 2800, "license_civ_sm", ""},
				//{ "muzzle_snds_B_snd_F", 2800, "license_civ_sm", ""},
				{ "muzzle_snds_H", 2800, "license_civ_sm", ""},
				//{ "muzzle_snds_H_snd_F", 2800, "license_civ_sm", ""},
				{ "muzzle_snds_L",  2800, "license_civ_sm", ""},
				{ "bipod_01_F_blk",  2500, "license_civ_sm" , ""}
				//{ "optic_LRPS",  3500, "license_civ_sm", "" }
			};
			
			items[] = {
				{ "Binocular", 3000, "", "Fernglas" },
				{ "ItemGPS", 5000, "", "GPS" },
				{ "ItemRadio", 5000, "true", "Handy" },
				{ "ItemMap", 100 ,"", "Karte" },
				{ "ItemCompass", 100, "", "Kompass" },
				{ "ItemWatch", 100, "", "Uhr" },
				{ "NVGoggles", 5000, "", "Nachtsichtgerät" },
				//{ "NVGogglesB_gry_F", 1700, "", "Nachtsichtgerät" },
				//{ "NVGogglesB_grn_F", 1700, "", "Nachtsichtgerät" },
				//{ "NVGogglesB_blk_F",  1700, "", "Nachtsichtgerät" },
				//{ "NVGoggles_tna_F", 1700, "", "Nachtsichtgerät" },
				//{ "NVGoggles", 1700, "", "Nachtsichtgerät" },
				/*{ "NVGoggles_INDEP",  1700, "", "Nachtsichtgerät" },
				{ "NVGoggles_OPFOR", 1700, "", "Nachtsichtgerät" },
				{ "Laserdesignator_01_khk_F", 1700, "", "Laser-Entfernungsmesser" },
				{ "Laserdesignator_03",  1700, "", "Laser-Entfernungsmesser" },*/
				{ "Laserdesignator", 1700, "", "Laser-Entfernungsmesser" }
				//{ "Chemlight_red", 300, "", "Knicklicht red" },
				//{ "Chemlight_yellow", 300, "", "Knicklicht gelb" },
				//{ "Chemlight_green", 300, "", "Knicklicht grün" },
				//{ "Chemlight_blue", 300, "true", "Knicklicht blau" }
			};
		};
		
		
	
		//this addAction ["copzivilfahnder Waffen", MAV_shop_fnc_initWeaponShop, "allesWeapons"]; 
		class allesWeapons {
			title = "Zivile Waffen";
			conditions = "true_1";
			simple = 0;
			maxCart = 50;
	
			weapons[] = {
				{ "hgun_P07_snds_F", 2000, "call husky_coplevel >= 2",  ""}, //Tazer
				{ "hgun_Rook40_F", 13000, "license_cop_copzivilfahnder", "" },
				{ "hgun_Pistol_01_F", 13000, "license_cop_copzivilfahnder", "" }, //Apex DLC
				{ "hgun_Pistol_heavy_02_F", 17500, "license_cop_copzivilfahnder", "" },
				{ "hgun_ACPC2_F", 15500, "license_cop_copzivilfahnder", "" },
				{ "SMG_05_F", 42000, "license_cop_copzivilfahnder", "" }, //Apex DLC
				{ "SMG_02_F", 38000, "license_cop_copzivilfahnder", "" }, //Apex DLC
				{ "SMG_01_F", 40000, "license_cop_copzivilfahnder", "" }, //Apex DLC
				{ "hgun_PDW2000_F", 45000, "license_cop_copzivilfahnder", "" }
			};
			magazines[] = {
				{ "G_40mm_SmokeYellow", 10000, "call husky_coplevel >= 6" , "Tränengas 40m"}, //Tränengas
				{ "16Rnd_9x21_red_Mag", 300, "call husky_coplevel >= 2" , ""}, //Tazer-Munition Handgun
				{ "16Rnd_9x21_Mag", 1000, "license_cop_copzivilfahnder", "" },
				{ "6Rnd_45ACP_Cylinder", 1000, "license_cop_copzivilfahnder", "" },
				{ "9Rnd_45ACP_Mag", 1000, "license_cop_copzivilfahnder", "" },
				{ "30Rnd_9x21_Mag", 1000, "license_cop_copzivilfahnder", "" },
				{ "30Rnd_45ACP_Mag_SMG_01", 1000, "license_cop_copzivilfahnder", "" },
				{ "30Rnd_9x21_Mag_SMG_02", 1000, "license_cop_copzivilfahnder", "" }, //Apex DLC
				{ "10Rnd_9x21_Mag", 1000, "license_cop_copzivilfahnder", "" } //Apex DLC
			};
			attachments[] = {
				{ "acc_flashlight_pistol", 1000, "true_1", "" },//Pistol Flashlight
				{ "optic_ACO_grn_smg", 2500, "true_1", "" },
				{ "optic_Holosight", 3000, "true_1", "" },
				{ "muzzle_snds_H", 3000, "true_1", "Sound Suppressor (6.5 mm)" },
				{ "muzzle_snds_L", 3000, "true_1", "Sound Suppressor (9 mm)" },
				{ "muzzle_snds_M", 3000, "true_1", "Sound Suppressor (5.56 mm)" },
				{ "muzzle_snds_B", 3000, "true_1", "Sound Suppressor (7.62 mm)" },
				{ "muzzle_snds_H_MG", 3000, "true_1", "Sound Suppressor LMG (6.5 mm)" },
				{ "muzzle_snds_H_SW", 3000, "true_1", "Sound Suppressor LMG (6.5 mm)" },
				{ "optic_Arco", 3000, "true_1", "ARCO" },
				{ "optic_Hamr", 3000, "true_1", "RCO" },
				{ "optic_Aco", 3000, "true_1", "ACO (Red)" },
				{ "optic_ACO_grn", 3000, "true_1", "ACO (Green)" },
				{ "optic_Aco_smg", 3000, "true_1", "ACO SMG (Red)" },
				{ "optic_ACO_grn_smg", 3000, "true_1", "ACO SMG (Green)" },
				{ "optic_Holosight", 3000, "true_1", "Mk17 Holosight" },
				{ "optic_Holosight_smg", 3000, "true_1", "Mk17 Holosight SMG" },
				{ "optic_SOS", 3000, "true_1", "MOS" },
				{ "acc_flashlight", 3000, "true_1", "Flashlight" },
				{ "acc_flashlight_smg_01", 3000, "true_1", "Flashlight" },
				{ "acc_flashlight_pistol", 3000, "true_1", "Pistol Flashlight" },
				{ "acc_pointer_IR", 3000, "true_1", "IR Laser Pointer" },
				{ "optic_MRCO", 3000, "true_1", "MRCO" },
				{ "muzzle_snds_acp", 3000, "true_1", "Sound Suppressor (.45 ACP)" },
				{ "optic_NVS", 3000, "true_1", "NVS" },
				{ "optic_Nightstalker", 3000, "true_1", "Nightstalker" },
				{ "optic_tws", 3000, "true_1", "TWS" },
				{ "optic_tws_mg", 3000, "true_1", "TWS MG" },
				{ "optic_DMS", 3000, "true_1", "DMS" },
				{ "optic_Yorris", 3000, "true_1", "Yorris J2" },
				{ "optic_MRD", 3000, "true_1", "MRD" },
				{ "optic_LRPS", 3000, "true_1", "LRPS" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
				{ "optic_Holosight", 3000, "true_1", "frdfdfdfdfdfdf" },
			};
			items[] = {
				{ "Binocular", 3000, "license_cop_copsek", "Fernglas" },
				{ "Rangefinder", 3000, "license_cop_copsek", "Entfernungsmesser" },
				{ "ItemGPS", 5000, "license_cop_copsek", "GPS" },
				{ "ItemRadio", 5000, "true", "Handy" },
				{ "ItemMap", 100 ,"license_cop_copsek", "Karte" },
				{ "ItemCompass", 100, "license_cop_copsek", "Kompass" },
				{ "ItemWatch", 100, "license_cop_copsek", "Uhr" },
				{ "NVGoggles", 5000, "license_cop_copsek", "Nachtsichtgerät" },
				{ "Chemlight_red", 300, "license_cop_copsek", "Knicklicht red" },
				{ "Chemlight_yellow", 300, "license_cop_copsek", "Knicklicht gelb" },
				{ "Chemlight_green", 300, "license_cop_copsek", "Knicklicht grün" },
				{ "Chemlight_blue", 300, "license_cop_copsek", "Knicklicht blau" },
				{ "HandGrenade_Stone", 10000, "license_cop_copsek" , "Blendgranate" }, //Flashbang
				{ "SmokeShellYellow", 10000, "license_cop_copsek" , "Tränengas"} //Tränengas
			};
		};
	};
};

#include "gui\weapon_gui_master.cpp"
