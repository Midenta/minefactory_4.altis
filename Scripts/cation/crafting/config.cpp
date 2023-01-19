/*
    File: config.cpp
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description: Master config for crafting system. 
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
//#include "..\..\script_macros.hpp"
#include "dialog\craft.hpp"
class Cation_Crafting {

    version = 5; // version 3.x -> 3 | 4.0 - 4.3 -> 4 | version 4.4+ -> 5
    duration = 0.2; //Dauer im Craftingvorgang für 1% in s (Mögliche Werte zwischen 0.1 und 10)
    
    //Texte
    Craftingmenu = "Crafting-Menü";
    CraftStats = "Sachen zum Bauen";
    CraftingMaterials = "Benötigte Sachen";
    CraftButton = "Herstellen!";
    Close = "Schließen";
    Craft = "Baue";
    NoMaterial = "Du hast nicht alle Materialien!";
    Process = "Du hast folgendes hergestellt:";
    Process_Stay = "Beweg dich nicht!";
	Notificationheadgear = "Du hast bereits etwas auf! Setz dies ab und versuch es nochmal.";
	Notificationglasses = "Du hast bereits etwas auf! Setz dies ab und versuch es nochmal.";
	NotificationUnifrom = "Du hast bereits etwas an! Mach dich nackt und versuch es nochmal.";
    NotificationVest = "Du hast bereits eine Veste! Pack die alte erst einmal weg.";
    NotificationBackpack = "Du hast bereits einen Rucksack! Pack den alten erstmal weg.";
    SelectItemFirst = "Du musst zuerst einen Gegenstand auswählen!";
    NothingNeeded = "Es wird nichts benötigt!";
    NoRoom = "Du hast nicht genug Platz für den Gegenstand.";
    Veh_Block = "Ein Fahrzeug blockiert gerade den Spawnpunkt";
    NoSpawnpoint = "Kein Spawnpunkt verfügbar";
    Color = "Farbe";

    category[] = {
		{
            "items",
            "Neue i-Items",
            {"ItemRadio","",{"eisenbarren",5,"glass",2},"","",0},
			{"ItemGPS","",{"eisenbarren",5,"glass",8},"","",0},
			{"NVGoggles","",{"eisenbarren",10,"glass",10},"","",0}
        },
        {
            "vitem",
            "--> Neue v-Items",
			{"glasflasche","",{"glass",3},"","",1},
			{"lockpick","",{"eisenbarren",5},"","",1},
			{"kabelbinder","",{"oil_processed",5},"","",1},
			{"schmerzmittel","",{"EphedrinV",8},"","",1},
			{"messer","",{"Stahl",1},"","",1},
            {"speedbomb","",{"schwarzpulverU",50,"holzbrettV",10,"Stahl",10},"","",1}
        },
		{
            "farming",
            "Neue Farming",
            {"holzbrettEdel","",{"holzbrettV",4},"","",1},
			{"edelwasser","",{"glasflasche",1,"waterBottle",2},"","",1},
			{"feuerwerks","",{"schwarzpulverU",5,"holzbrettV",1},"","",1},
            {"plastik","",{"oil_processed",3},"","",1},
			{"gummi","",{"oil_processed",3},"","",1}
        },
		{
            "headgear",
            "Neue Kopfbedeckungen",
            {"H_Hat_Tinfoil_F","",{"Aluminium",2},"","",0},
			{"H_Beret_gen_F","",{"baumwolleV",10},"","",0},
			{"H_WirelessEarpiece_F","",{"Aluminium",1},"","",0},
			{"H_HeadBandage_bloody_F","",{"baumwolleV",2},"","",0},
			{"H_HeadBandage_stained_F","",{"baumwolleV",2},"","",0},
            {"H_HeadBandage_clean_F","",{"baumwolleV",2},"","",0},
            {"H_HelmetB_TI_arid_F","",{"baumwolleV",8,"eisenbarren",2,"Aluminium",2},"","",0},
            {"H_HelmetB_Enh_tna_F","",{"baumwolleV",8,"eisenbarren",2,"Aluminium",2},"","",0},
            {"H_HelmetSpecB_wdl","",{"baumwolleV",8,"eisenbarren",2,"Aluminium",2},"","",0}
        },
		{
            "glasses",
            "Neue Brillen/Masken",
            {"G_AirPurifyingRespirator_01_F","",{"baumwolleV",8,"eisenbarren",2,"glass",2},"","",0},
            {"G_Blindfold_01_white_F","",{"baumwolleV",2},"","",0},
            {"G_Bandanna_beast","",{"baumwolleV",2},"","",0},
            {"G_Bandanna_blk","",{"baumwolleV",2},"","",0},
            {"G_Balaclava_lowprofile","",{"baumwolleV",4},"","",0},
            {"G_Balaclava_TI_tna_F","",{"baumwolleV",4},"","",0}
        },
        {
            "uniform",
            "Neue Uniformen",
            {"U_C_CBRN_Suit_01_White_F","",{"eisenbarren",5,"baumwolleU",5,"baumwolleV",15},"","",0},
            {"U_I_GhillieSuit","",{"BP_Suit_MkII",1,"baumwolleU",10,"baumwolleV",25},"","",0},
            {"U_O_GhillieSuit","",{"BP_Suit_MkII",1,"baumwolleU",10,"baumwolleV",25},"","",0},
            {"U_B_GhillieSuit","",{"BP_Suit_MkII",1,"baumwolleU",10,"baumwolleV",25},"","",0},
            {"U_O_FullGhillie_ard","",{"BP_Suit_MkIII",1,"baumwolleU",10,"baumwolleV",25},"","",0},
			{"U_O_FullGhillie_lsh","",{"BP_Suit_MkIII",1,"baumwolleU",10,"baumwolleV",25},"","",0},
            {"U_O_FullGhillie_sard","",{"BP_Suit_MkIII",1,"baumwolleU",10,"baumwolleV",25},"","",0},
            {"U_O_T_FullGhillie_tna_F","",{"BP_Suit_MkIII",1,"baumwolleU",10,"baumwolleV",25},"","",0},
            {"U_B_T_FullGhillie_tna_F","",{"BP_Suit_MkIII",1,"baumwolleU",10,"baumwolleV",25},"","",0},
			{"U_Rangemaster","",{"baumwolleU",10,"baumwolleV",25,"keycard",1},"","",0}
        },
		{
            "vest",
            "Neue Westen",
            {"V_SmershVest_01_F","",{"BP_Weste_MkI",1,"baumwolleU",5,"baumwolleV",8,"eisenbarren",2},"","",0},
            {"V_PlateCarrier_Kerry","",{"BP_Weste_MkI",1,"baumwolleU",5,"baumwolleV",8,"eisenbarren",2},"","",0},
            {"V_PlateCarrier1_wdl","",{"BP_Weste_MkII",1,"baumwolleU",8,"baumwolleV",10,"eisenbarren",5},"","",0},
            {"V_PlateCarrierIA1_dgtl","",{"BP_Weste_MkII",1,"baumwolleU",8,"baumwolleV",10,"eisenbarren",5},"","",0},
            {"V_CarrierRigKBT_01_EAF_F","",{"BP_Weste_MkIII",1,"baumwolleU",10,"baumwolleV",15,"eisenbarren",8},"","",0},
            {"V_CarrierRigKBT_01_Olive_F","",{"BP_Weste_MkIII",1,"baumwolleU",10,"baumwolleV",15,"eisenbarren",8},"","",0},
            {"V_PlateCarrierSpec_mtp","",{"BP_Weste_MkIV",1,"baumwolleU",10,"baumwolleV",25,"eisenbarren",10},"","",0},
            {"V_PlateCarrierGL_mtp","",{"BP_Weste_MkIV",1,"baumwolleU",10,"baumwolleV",25,"eisenbarren",10},"","",0}
        },
        {
            "backpack",
            "Neue Rucksäcke",
			{"B_CombinationUnitRespirator_01_F","",{"eisenbarren",10,"baumwolleV",2,"glass",2},"","",0},
            {"B_ViperHarness_khk_F","",{"eisenbarren",2,"baumwolleV",10},"","",0},
            {"B_CivilianBackpack_01_Sport_Red_F","",{"baumwolleV",2,"glass",2},"","",0},
            {"B_Parachute","",{"eisenbarren",10,"baumwolleV",2,"glass",2},"","",0},
            {"B_Bergen_sgg","",{"baumwolleU",5,"baumwolleV",5},"","",0},
            {"B_Bergen_blk","",{"baumwolleU",5,"baumwolleV",5},"","",0},
            {"B_Bergen_rgr","",{"baumwolleU",5,"baumwolleV",5},"","",0},
			{"B_Bergen_mcamo_F","",{"baumwolleU",20,"baumwolleV",3},"","",0}
        },
		{
            "weapon",
            "Waffen",
            {"LMG_Mk200_F","",{"BP_Waffe_MkV",1,"goldbar",10,"eisenbarren",10,"diamond_cut14",3},"","",0},
			{"LMG_Zafir_F","",{"BP_Waffe_MkV",1,"goldbar",12,"eisenbarren",8,"diamond_cut14",10},"","",0},
			{"MMG_02_camo_F","",{"BP_Waffe_MkV",1,"goldbar",21,"eisenbarren",12,"diamond_cut14",8},"","",0},
			{"MMG_01_hex_F","",{"BP_Waffe_MkV",1,"goldbar",19,"eisenbarren",22,"diamond_cut14",16},"","",0},
			{"srifle_GM6_camo_LRPS_F","",{"BP_Waffe_MkV",1,"goldbar",32,"eisenbarren",31,"diamond_cut14",24},"","",0}
        },
		{
            "mags",
            "Magazine",
            {"200Rnd_65x39_cased_Box_Tracer_Red","",{"BP_Extra_MkV",1,"eisenbarren",1,"goldbar",30},"","",0},
			{"150Rnd_762x54_Box_Tracer","",{"BP_Extra_MkV",1,"eisenbarren",1,"goldbar",35},"","",0},
			{"130Rnd_338_Mag","",{"BP_Extra_MkV",1,"eisenbarren",1,"goldbar",50},"","",0},
			{"150Rnd_93x64_Mag","",{"BP_Extra_MkV",1,"eisenbarren",1,"goldbar",55},"","",0},
			{"5Rnd_127x108_Mag","",{"BP_Extra_MkV",1,"eisenbarren",1,"goldbar",55},"","",0},
			{"5Rnd_127x108_APDS_Mag","",{"BP_Extra_MkV",1,"eisenbarren",1,"goldbar",70},"","",0}
        },
		{
            "anbauteile",
            "Neue Anbauteile",
            {"optic_Arco","",{"BP_Zubehoer_MkI",1,"glass",1},"","",0},
			{"optic_Holosight","",{"BP_Zubehoer_MkI",1,"glass",4},"","",0},
			{"optic_Hamr","",{"BP_Zubehoer_MkI",1,"glass",4},"","",0},
            {"acc_pointer_IR","",{"BP_Zubehoer_MkI",1,"eisenbarren",4,"glass",4},"","",0},
            {"acc_flashlight","",{"BP_Zubehoer_MkI",1,"eisenbarren",4,"glass",4},"","",0},
            {"muzzle_snds_acp","",{"BP_Zubehoer_MkI",1,"eisenbarren",4},"","",0},
            {"muzzle_snds_L","",{"BP_Zubehoer_MkI",1,"eisenbarren",4},"","",0},
			{"bipod_01_F_khk","",{"BP_Zubehoer_MkII",1,"eisenbarren",4},"","",0},
            {"bipod_01_F_mtp","",{"BP_Zubehoer_MkII",1,"eisenbarren",4},"","",0},
            {"bipod_01_F_snd","",{"BP_Zubehoer_MkII",1,"eisenbarren",4},"","",0},
            {"muzzle_snds_m_khk_F","",{"BP_Zubehoer_MkII",1,"eisenbarren",4},"","",0},
            {"muzzle_snds_m_snd_F","",{"BP_Zubehoer_MkII",1,"eisenbarren",4},"","",0},
            {"muzzle_snds_570","",{"BP_Zubehoer_MkII",1,"eisenbarren",4},"","",0},
            {"muzzle_snds_58_ghex_F","",{"BP_Zubehoer_MkII",1,"eisenbarren",4},"","",0},
            {"muzzle_snds_58_hex_F","",{"BP_Zubehoer_MkII",1,"eisenbarren",4},"","",0},
            {"muzzle_snds_65_TI_ghex_F","",{"BP_Zubehoer_MkIII",1,"eisenbarren",4},"","",0},
            {"muzzle_snds_H_snd_F","",{"BP_Zubehoer_MkIII",1,"eisenbarren",4},"","",0},
            {"muzzle_snds_H_khk_F","",{"BP_Zubehoer_MkIII",1,"eisenbarren",4},"","",0},
            {"optic_KHS_tan","",{"BP_Zubehoer_MkIII",1,"eisenbarren",4,"glass",6},"","",0},
            {"optic_AMS_khk","",{"BP_Zubehoer_MkIII",1,"eisenbarren",4,"glass",6},"","",0},
            {"optic_AMS_snd","",{"BP_Zubehoer_MkIII",1,"eisenbarren",4,"glass",6},"","",0},
            {"muzzle_snds_B_lush_F","",{"BP_Zubehoer_MkIV",1,"eisenbarren",4},"","",0},
            {"muzzle_snds_B_snd_F","",{"BP_Zubehoer_MkIV",1,"eisenbarren",4},"","",0},
            {"muzzle_snds_B_khk_F","",{"BP_Zubehoer_MkIV",1,"eisenbarren",4},"","",0},
            {"optic_LRPS_tna_F","",{"BP_Zubehoer_MkIV",1,"eisenbarren",4,"glass",6},"","",0},
            {"optic_LRPS_ghex_F","",{"BP_Zubehoer_MkIV",1,"eisenbarren",4,"glass",6},"","",0},
            {"muzzle_snds_93mmg_tan","",{"BP_Zubehoer_MkV",1,"eisenbarren",8},"","",0},
            {"muzzle_snds_338_green","",{"BP_Zubehoer_MkV",1,"eisenbarren",8},"","",0},
            {"muzzle_snds_338_sand","",{"BP_Zubehoer_MkV",1,"eisenbarren",8},"","",0},
            {"optic_Nightstalker","",{"BP_Zubehoer_MkV",1,"eisenbarren",8,"glass",16},"","",0},
            {"optic_tws","",{"BP_Zubehoer_MkV",1,"eisenbarren",8,"glass",16},"","",0}
        },
		
		
		//{Fahrzeug,Bedingung (default: ""),{benötigtes Item1, benötigte Anzahl des Item1, benötigtes Item2, benötigte Anzahl des Item2},"","",(1 für vItem | 0 für alle anderen Items)}
		//{Fahrzeug,Bedingung (default: ""),{benötigtes Item1, benötigte Anzahl des Item1, benötigtes Item2, benötigte Anzahl des Item2},"Skinname","Skinseite",(1 für vItem | 0 für alle anderen Items)}
		{
            "landvehicle", //Variable (HINWEIS: BITTE KEINE ANDERE VARIABLE FÜR LANDFAHRZEUGE VERWENDEN)
            "Fahrzeuge",
			{"C_Offroad_01_F","",{"bausatz_offroader_1",1,"craftingtool",1}," ","civ",0},
			{"C_Van_02_transport_F","",{"bausatz_van_1",1,"craftingtool",1}," ","civ",0},
			{"I_Truck_02_covered_F","",{"bausatz_zamak_1",1,"bausatz_zamak_2",1,"craftingtool",2}," ","civ",0},
			{"I_Truck_02_fuel_F","",{"bausatz_zamak_fuel_1",1,"bausatz_zamak_fuel_2",1,"craftingtool",2}," ","civ",0}
			/*{"C_SUV_01_F","",{"bausatz_fake_cop_suv_1",1,"bausatz_fake_cop_suv_2",1,"craftingtool",2},"Polizei","cop",0},
			{"C_SUV_01_F","",{"bausatz_fake_cop_suv_1",1,"bausatz_fake_cop_suv_2",1,"craftingtool",2},"textures\west\Police_Suv_german.paa","civ",0}*/
        },
        {
            "airvehicle",
            "Luftfahrzeuge",
			{"C_Heli_Light_01_civil_F","",{"bausatz_m900_1",1,"bausatz_m900_2",1,"craftingtool",2}," ","civ",0},
			{"B_Heli_Light_01_F","",{"bausatz_humming_1",1,"bausatz_humming_2",1,"bausatz_humming_3",1,"craftingtool",2}," ","civ",0}
        },
        {
            "watervehicle",
            "Wasserfahrzeuge",
            {"C_Rubberboat","",{"copper_refined",1},"","",0}  
        }
		/*
		{
            "sonstiges",
            "Sonstiges",
            {"B_Carryall_oli","",{"diamond_cut",1},"","",0}
        }*/
    };
		//{Item 1,Bedingung (default: ""),{benötigtes Item1, benötigte Anzahl des Item1, benötigtes Item2, benötigte Anzahl des Item2},"Skinname","Skinseite"(Skin nur bei Fahrzeugen),0 (für vItem | 1 für alle anderen Items)},
		//{Item 2,Bedingung (default: ""),{benötigtes Item1, benötigte Anzahl des Item1, benötigtes Item2, benötigte Anzahl des Item2},"Skinname","Skinseite" (Skin nur bei Fahrzeugen),0 (für vItem | 1 für alle anderen Items)} Kein Komma beim letzten!
 
 
		//{Fahrzeug,Bedingung (default: ""),{benötigtes Item1, benötigte Anzahl des Item1, benötigtes Item2, benötigte Anzahl des Item2},"","",(1 für vItem | 0 für alle anderen Items)}
		//{Fahrzeug,Bedingung (default: ""),{benötigtes Item1, benötigte Anzahl des Item1, benötigtes Item2, benötigte Anzahl des Item2},"Skinname","Skinseite",(1 für vItem | 0 für alle anderen Items)}
		
		
		
		//this addAction["Craften",{["Variablennamen"] spawn cat_crafting_fnc_craft}];
		//onButtonClick = "closeDialog 0; [""Variablennamen""] spawn cat_crafting_fnc_craft;";
    craftingStations[] = { //verfügbare Kategorien an verschiedenen Crafting Stationen
        /*{
            "craftingItems", //Variablenname
            "craftingItemsMarker", //Name des Spawnmarkers auf der Map (muss in der mission.sqm vorhanden seinen)
            {"item","weapon"} //Variablennamen der verfügbaren Kategorien
        }
		*/
		//this addAction["Craften",{["alles"] spawn cat_crafting_fnc_craft}];
		{
            "alles_1",
            "craft_uran",
            {"headgear","glasses","uniform","vest","backpack","weapon","mags","anbauteile","items","vitem","farming","landvehicle","airvehicle"}
        },
		{
            "craft_1",
            "craft_1", 
            {"weapon","mags","anbauteile","items","vitem","headgear","glasses","uniform","vest","backpack","landvehicle"}
        },	
		{
            "craftingVehicles",
            "craftingVehiclessMarker", 
            {"landvehicle","airvehicle","watervehicle"}
        },
		
		
			//Aktuell INGAME IM Z-Menü
		{
            "craft_uran",
            "craft_uran", 
            {"items","vitem","farming"}
        },

		//this addAction["Craften",{["fahrzeuge"] spawn cat_crafting_fnc_craft},"",0,false,false,"","",4];	//INGAME Crafting Area
		{
            "fahrzeuge",
            "fahrzeuge_1", 
            {"headgear","glasses","uniform","vest","backpack","weapon","mags","anbauteile","landvehicle","airvehicle"}
        }
    };
};