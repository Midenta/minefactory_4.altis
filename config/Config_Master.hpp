#define true 1
#define false 0

/*
    Master settings for various features and functionality

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
class husky_SETTINGS {
	/* help menu */
    isSorting = 0;


    /* Logging and Security Settings*/
    /* Security Settings */
    spyGlass_toggle = false; //Spyglass On/Off Toggle --> True = On & False = Off
    /* Data Logging Settings */
    battlEye_friendlyLogging = true; //False [default] - Read the logs from the server.rpt. True - Read the logs from the publicVariable.log. NOTE: Due to how diag_log works it will log to both files either way and the setting is merely for beautification purposes.
    player_advancedLog = true; //False [default] - No advanced logging. True - Logs house purchase and sale, vehicle purchase, sale, and chop shopping, police arrests, and gang creations. Search for: advanced_log
    player_moneyLog = true; //False [default] - No money logging. True - Logs player bank deposits, withdraws, and transfers, gang bank deposits and withdraws, money picked up off of the ground, and player robbery. Search for: money_log
    player_deathLog = true; //False [default] - No death logging. True - Logs victim and killer, and vehicle or weapon if used, when a player dies. Search for: death_log

    /* Database Related Settings */
    /* Player Data Saving */
    save_virtualItems = true; //Save Virtual items (all sides)?
    saved_virtualItems[] = { "chip0","waterBottle", "rabbit", "tbacon", "kokosnuss", "banane", "redgull", "toolkit", "fuelFull", "gpstracker", "schmerzmittel", "morphin", "rabbit_raw", "hen_raw", "rooster_raw", "sheep_raw", "goat_raw", "donuts", "coffee", "sense", "machete", "bohrgeraet", "axt", "schaufel", "net", "sichel", "pickaxe", "reagenzglas", "metalldetektor", "flasche", "craftingtool" }; //Array of virtual items that can be saved on your player.
    saved_virtualItemsCop[] = { "chip0","gpstracker", "keycard", "radarfalle", "sos", "spikeStrip", "defusekit", "schmerzmittel", "morphin", "kabelbinder", "waterBottle", "rabbit", "tbacon", "kokosnuss", "banane", "redgull", "toolkit", "fuelFull", "donuts", "coffee" }; //Array of virtual items that can be saved on your player.
    saved_virtualItemsMed[] = { "chip0","defibrillator", "keycard", "gpstracker", "schmerzmittel", "morphin", "waterBottle", "rabbit", "tbacon", "kokosnuss", "banane", "redgull", "toolkit", "fuelFull", "donuts", "coffee" }; //Array of virtual items that can be saved on your player.
	save_playerStats = false; //Save food, water and damage (all sides)?
    save_civilian_weapons = true; //Allow civilians to save weapons on them?
    save_civilian_position = false; //Save civilian location?
    save_civilian_position_restart = false; //Save civilian location only between restarts. After a server restart you'll have to spawn again.
    /* !!!TO SAVE POSITION BETWEEN RESTARTS save_civilian_position MUST BE TRUE!!! */
    save_civilian_positionStrict = false; //Strip the player if possible combat-log?  WARNING: Server crashes and lack of reliable syncing can trigger this.

    /* Vehicle Data Saving */
    save_vehicle_virtualItems = false; //Save virtual items inside the vehicle (all sides)(-- See defined items on next line --)
    save_vehicle_items[] = { "redgull","coffee","waterBottle","apple","peach","tbacon","donuts","rabbit"};
    save_vehicle_inventory = false; //Save Arma inventory of vehicle to the database
    save_vehicle_fuel = false; //Save vehicle fuel level to the database (Impounded/Garaged).
    save_vehicle_damage = false; //Save vehicle damage to the database.
    save_vehicle_illegal = false; //This will allow cops to be advised when a vehicle, with illegal items in it, is impounded. This will also save illegal items as proof of crime, and needs "save_vehicle_virtualItems" set as true. Illegal items don't need to be set in save_vehicle_items[] for being saved, if it's enabled.

    /* Vehicle Spawn Veh Med | Cop */
    spawn_vehicle_cop[] = { 
        "B_MRAP_01_hmg_F",
        "I_MRAP_03_hmg_F",
        "C_Offroad_01_F",
        "B_MRAP_01_F",
        "I_MRAP_03_F",
        "C_SUV_01_F",
        "C_Hatchback_01_F",
        "C_Hatchback_01_sport_F",
        "B_Heli_Light_01_F",
        "B_Heli_Transport_01_F",
        "B_Truck_01_covered_F",
        "B_Truck_01_mover_F",
        "B_Truck_01_flatbed_F",
        "B_Truck_01_fuel_F",
        "I_Heli_light_03_unarmed_F",
        "B_T_VTOL_01_vehicle_F",
        "B_T_VTOL_01_infantry_F",
        "B_Heli_Transport_03_unarmed_F",
        "O_Heli_Transport_04_bench_F",
        "C_Van_02_vehicle_F",
        "C_Van_02_transport_F",
        "B_GEN_Van_02_transport_F",
        "B_GEN_Van_02_vehicle_F",
        "C_Van_02_medevac_F",
        "Quadbike_01_co",
        "B_Quadbike_01_F",
        "C_Van_01_box_F",
        "B_Truck_01_transport_F",
        "O_Truck_02_fuel_F",
        "O_Truck_03_covered_F",
        "B_APC_Tracked_01_CRV_F",
        "O_MRAP_02_F",
        "I_E_Offroad_01_covered_F",
        "I_E_Offroad_01_comms_F",
        "B_GEN_Offroad_01_covered_F",
        "B_GEN_Offroad_01_comms_F",
        "C_Offroad_01_covered_F",
        "C_Offroad_01_comms_F",
        "O_Truck_03_repair_F"
    };
    spawn_vehicle_med[] = { 
        "B_MRAP_01_hmg_F",
        "I_MRAP_03_hmg_F",
        "C_Offroad_01_F",
        "B_MRAP_01_F",
        "I_MRAP_03_F",
        "C_SUV_01_F",
        "C_Hatchback_01_F",
        "C_Hatchback_01_sport_F",
        "B_Heli_Light_01_F",
        "B_Heli_Transport_01_F",
        "B_Truck_01_covered_F",
        "B_Truck_01_mover_F",
        "B_Truck_01_flatbed_F",
        "B_Truck_01_fuel_F",
        "I_Heli_light_03_unarmed_F",
        "B_T_VTOL_01_vehicle_F",
        "B_T_VTOL_01_infantry_F",
        "B_Heli_Transport_03_unarmed_F",
        "O_Heli_Transport_04_bench_F",
        "C_Van_02_vehicle_F",
        "C_Van_02_transport_F",
        "B_GEN_Van_02_transport_F",
        "B_GEN_Van_02_vehicle_F",
        "C_Van_02_medevac_F",
        "Quadbike_01_co",
        "B_Quadbike_01_F",
        "C_Van_01_box_F",
        "B_Truck_01_transport_F",
        "O_Truck_02_fuel_F",
        "O_Truck_03_covered_F",
        "B_APC_Tracked_01_CRV_F",
        "O_MRAP_02_F",
        "I_E_Offroad_01_covered_F",
        "I_E_Offroad_01_comms_F",
        "B_GEN_Offroad_01_covered_F",
        "B_GEN_Offroad_01_comms_F",
        "C_Offroad_01_covered_F",
        "C_Offroad_01_comms_F",
        "O_Truck_03_repair_F"
    };
	/* Dynamic Market */
    /*	dynamic_market = false; //True enables Dynamic Market
    dynamic_market_persistence = true; //True makes price changes last across restarts
    end_time = 21600; //Last time to sync prices (Default: 4 hours)		//6	Stunden
    sync_rate = 900; //Seconds between syncs to database (Default: 15 minutes)
    adjustment_delay = 10; //Seconds it takes for price changes to hit the market (Default: 2 minutes)	//10 Sekunden
    //Order these by factor starting with a factor of 1 (Default: Illegal - 1, Natural Resources - 2, Hunting - 3)
    market_categories[] = { "------------Illegale Waren------------","--------Natürliche Ressourcen--------","-----Jagen und Sammeln-----"};
    */
	/* System Settings */
    /* ATM & Federal Reserve System Configurations */
    global_ATM = true; //Allow users to access any ATM on the map (Marked & Unmarked).
    noatm_timer = 10; //Time in minutes that players cannot deposit money after selling stolen gold.
    minimum_cops = 0; //Minimum cops required online to rob the Federal Reserve

    /*Death settings*/
    drop_weapons_onDeath = false; //Set true to enable weapon dropping on death. False (default) will delete player weapons on death, allowing them to be revived with them instead
	//drop_restricted_vitems[]={}; // V-Items die bei Tod nicht in die Box gelegt werden sollen.
	//lootbox_timer = 8; // //Zeit, bis die Kiste weg ist. Kann durch ändern der 3 (= 3 Minuten) geändert werden.
	//drop_iitems_onDeath = false; // true = I-Items (Waffen etc.) werden in die Box gelegt, false = I-Items werden nicht in die Box gelegt.

	//Drug Dealer - Drunken Cheetah
	enable_drugDealer = true;			//Enable/Disable dynamic dealer -- If false, drug dealer wont be on the map at all. Will be changed next version
	drugDealer_position_time = 50;		//In minutes		//50		//Der Drogendealer packt in 10 min seine sachen
	drugDealer_position_time2 = 10;		//In minutes		//10		//DD ist weg
	man_to_use = "C_man_hunter_1_F";	//Character/Object to use as the Drug Dealer

    /* Basic System Configurations */
    donor_level = false; //Enable the donor level set in database (var = husky_donorlevel; levels = 0,1,2,3,4,5). ATTENTION! Before enabling, read: https://www.bistudio.com/community/game-content-usage-rules & https://www.bistudio.com/monetization
    enable_fatigue = false; //Set to false to disable the ARMA 3 fatigue system.
    total_maxWeight = 50; //Static variable for the maximum weight allowed without having a backpack
    respawn_timer = 120; //How many seconds a player should wait, before being able to respawn. Minimum 5 seconds.

    /* Channel 7 News Station Configurations */
    news_broadcast_cost = 150000; //Cost for a player to send a news station broadcast.
    news_broadcast_cooldown = 20; //Time in minutes that is required between news station broadcasts. (Default = 20 minutes)
    news_broadcast_header_length = 60; //Number of characters that a header can consist of. Anything over this may clip. This depends on the font size and various other factors. Adjust with caution.

    /* Clothing System Configurations */
    //civ_skins = true; //Enable or disable civilian skins. Before enabling, you must add all the SEVEN files to textures folder. (It must be named as: civilian_uniform_1.jpg, civilian_uniform_2.jpg...civilian_uniform_6.jpg, civilian_uniform_7.jpg)
    cop_extendedSkins = true; //Enable or disable cop skins by level. Before enabling, you must add all the EIGHT files to textures folder. (It must be named as: cop_uniform.jpg + cop_uniform_1.jpg, cop_uniform_2.jpg...cop_uniform_6.jpg, cop_uniform_7.jpg; meaning cop_uniform = husky_coplevel=0, cop_uniform_1 = husky_coplevel=1, cop_uniform_2 = husky_coplevel=2, etc...)
    clothing_noTP = false;  //Disable clothing preview teleport? (true = no teleport. false = teleport)
    clothing_box = false; //true = teleport to a black box. false = teleport to somewhere on map. (It only affects the game if clothing_noTP is set as false)
    clothing_masks[] = { "H_Shemag_olive", "H_Shemag_khk", "H_Shemag_tan", "H_Shemag_olive_hs", "H_ShemagOpen_khk", "H_ShemagOpen_tan", "G_Balaclava_blk", "G_Balaclava_combat", "G_Balaclava_lowprofile", "G_Balaclava_oli", "G_Bandanna_aviator", "G_Bandanna_beast", "G_Bandanna_blk", "G_Bandanna_khk", "G_Bandanna_oli", "G_Bandanna_shades", "G_Bandanna_sport", "G_Bandanna_tan", "U_O_GhillieSuit", "U_I_GhillieSuit", "U_B_GhillieSuit", "H_RacingHelmet_1_black_F", "H_RacingHelmet_1_red_F", "H_RacingHelmet_1_white_F", "H_RacingHelmet_1_blue_F", "H_RacingHelmet_1_yellow_F", "H_RacingHelmet_1_green_F", "H_RacingHelmet_1_F", "H_RacingHelmet_2_F", "H_RacingHelmet_3_F", "H_RacingHelmet_4_F" };

    /* Escape Menu Configuration */
    escapeMenu_timer = 7; //Time required to pass before you can click the abort button in the escape menu.
    escapeMenu_displayExtras = true; //Display the players UID & serverName specified below in the escape menu.
    escapeMenu_displayText = "MineFactory.eu"; //Text displayed in the escape menu. Make it short.. around 20 characters.
	escapeMenu_BOTTOM_displayText = "MineFactory.eu";

    /* Fuel System Configurations */
    pump_service = false; //Allow users to use pump service on the map. Default = false
    fuel_cost = 83; //Cost of fuel per liter at fuel stations (if not defined for the vehicle already).		//83
    service_chopper = 1000; //Cost to service chopper at chopper service station(Repair/Refuel).
    fuelCan_refuel = 800; //Cost to refuel an empty fuel canister at the fuel station pumps. (Be wary of your buy/sell prices on fuel cans to prevent exploits...)

    /* Gang System Configurations */
    gang_price = 100000; //Gang creation price. --Remember they are persistent so keep it reasonable to avoid millions of gangs.
    gang_upgradeBase = 50000; //The base cost for purchasing additional slots in a gang
    gang_upgradeMultiplier = 2.5; //CURRENTLY NOT IN USE

    /* Housing System Configurations */
    house_limit = 3; //Maximum number of houses a player can own.
    houseGarage_buyPrice = 15500000;
    houseGarage_sellPrice = 3550000;
	//balacklisthouses[] = {{"ClassnamesdesHauses","MakerVaribale"},{"ClassnamesdesHauses_C","MakerVaribale_K"},{"ClassnamesdesHauses_D","MakerVaribale_A"}};
	//balacklisthouses[] = {"marker_556"};

    /* Hunting & Fishing System Configurations */
    animaltypes_fish[] = { "Salema_F", "Ornate_random_F", "Mackerel_F", "Tuna_F", "Mullet_F", "CatShark_F", "Turtle_F" }; //Classnames of fish you can catch
    animaltypes_hunting[] = { "Sheep_random_F", "Goat_random_F", "Hen_random_F", "Cock_random_F", "Rabbit_F", "LederU" }; //Classnames of aniamls you can hunt/gut

    /* Item-related Restrictions */
    restrict_medic_weapons = false; //Set to false to allow medics to use any weapon --true will remove ANY weapon they attempt to use (primary,secondary,launcher)
    restrict_clothingPickup = false; //Set to false to allow civilians to pickup/take any uniform (ground/crates/vehicles)
    restrict_weaponPickup = false; //Set to false to allow civilians to pickup/take any weapon (ground/crates/vehicles)
    restricted_uniforms[] = { "U_Rangemaster"};
    restricted_weapons[] = { "hgun_P07_snds_F"};

    /* Jail System Configurations */
    jail_seize_vItems[] = { "spikeStrip","lockpick","goldbar","blastingcharge","boltcutter","defusekit","heroin_unprocessed","heroin_processed","cannabis","marijuana","cocaine_unprocessed","cocaine_processed","turtle_raw" }; //Define VIRTUAL items you want to be removed from players upon jailing here. Use "jail_seize_inventory" for Arma inventory items.
    jail_seize_inventory = false; //Set to true to run the cop seize script on inmates. False will remove only weapons and magazines otherwise. (Basically used in case cops forget to seize items). [See Lines 106-111 below]
    sendtoJail_locations[] = { "Correctional_Facility" }; //Enter the variableName from the mission.sqm here to allow cops to send a person to jail at these locations.
    jail_forceWalk = false;

    /* Medical System Configurations */
    revive_cops = false; //true to enable cops the ability to revive everyone or false for only medics/ems.
    revive_civ = false; //true to enable civs the ability to revive everyone or false for only medics/ems or medic/ems/cops.
    revive_east = false; //true to enable opfor the ability to revive everyone or false for only medics/ems or medic/ems/cops.
    revive_fee = 40000; //Revive fee that players have to pay and medics only EMS(independent) are rewarded with this amount.
    hospital_heal_fee = 1000; //Fee to heal at a hospital NPC

    /* Paycheck & Bank System Configurations */
    bank_cop = 300000; //250000		//Amount of cash in bank for new cops
    bank_civ = 300000; //250000	 	//Amount of cash in bank for new civillians
    bank_med = 300000; //250000	 	//Amount of cash in bank for new medics

    paycheck_cop = 0; //Payment for cops
    paycheck_civ = 10000; //Payment for civillians
    paycheck_med = 0; //Payment for medics

    paycheck_period = 15; //Scaled in minutes
    bank_transferTax = .03; //Tax that player pays when transferring money from ATM. Tax = Amount * multiplier

    /* Player Job System Configurations */
    delivery_points[] = { "dp_1", "dp_2", "dp_3", "dp_4", "dp_5", "dp_6", "dp_7", "dp_8", "dp_9", "dp_10", "dp_11", "dp_12", "dp_13", "dp_14", "dp_15", "dp_16", "dp_17", "dp_18", "dp_19", "dp_20", "dp_21", "dp_22", "dp_23", "dp_24", "dp_25"};	//
    fuelTank_winMultiplier = 1; //Win Multiplier in FuelTank Missions. Increase for greater payout. Default = 1

    /* Search & Seizure System Configurations */
    seize_exempt[] = { "Chemlight_red", "Chemlight_yellow", "Chemlight_green", "Chemlight_blue", "optic_ACO_grn_smg" }; //Arma items that will not get seized from player inventories
    seize_uniform[] = { "U_Rangemaster" }; //Any specific uniforms you want to be seized from players
    seize_vest[] = { "V_TacVest_blk_POLICE" }; //Any specific vests you want to be seized from players
    seize_headgear[] = { "H_Cap_police" }; //Any hats or helmets you want seized from players
    seize_minimum_rank = 2; //Required minimum CopLevel to be able to seize items from players

    /* Vehicle System Configurations */
    chopShop_vehicles[] = { "Car", "Tank", "Air" }; //Vehicles that can be chopped. (Can add: "Ship" and possibly more -> look at the BI wiki...)
    vehicle_infiniteRepair[] = {false, false, true, false}; //Set to true for unlimited repairs with 1 toolkit. False will remove toolkit upon use. civilian, west, independent, east
    vehicleShop_rentalOnly[] = { "B_MRAP_01_hmg_F", "B_G_Offroad_01_armed_F", "B_Boat_Armed_01_minigun_F", "C_Kart_01_Blu_F", "C_Kart_01_Fuel_F", "C_Kart_01_Red_F", "C_Kart_01_Vrana_F", "O_T_LSV_02_armed_F", "I_G_Offroad_01_armed_F","B_T_LSV_01_armed_F", "B_APC_Tracked_01_CRV_F","Land_Device_slingloadable_F","Land_Cargo20_IDAP_F","Land_Cargo20_blue_F", "Land_Cargo20_brick_red_F", "Land_Cargo20_cyan_F", "Land_Cargo20_grey_F", "Land_Cargo20_light_blue_F", "Land_Cargo20_light_green_F", "Land_Cargo20_military_green_F", "Land_Cargo20_orange_F", "Land_Cargo20_red_F", "Land_Cargo20_sand_F", "Land_Cargo20_white_F", "Land_Cargo20_yellow_F","Box_NATO_AmmoVeh_F","B_Slingload_01_Fuel_F","Land_Pod_Heli_Transport_04_fuel_F", "Land_Device_assembled_F" }; //Vehicles that can only be rented and not purchased. (Last only for the session)
    vehicleShop_3D = 1; //Add preview 3D inside Shop vehicle.       Default : False

    /* Lootbox System Configurations */
    lootboxnormal_items[] = {"waterBottle","toolkit","zuckerV","fuelFull","rabbit","redgull","banane","chip1","BP_Weste_MkI","BP_Zubehoer_MkI","bausatz_zamak_1","bausatz_zamak_2"};
    lootboxnormal_money = 50000;
    lootboxepic_items[] = {"waterBottle","schwarzpulverV","kohle_verarbeitet","kabelbinder","schmerzmittel","chip2","fakeidcard","morphin","bausatz_zamak_fuel_1","bausatz_zamak_fuel_2","BP_Weste_MkII","BP_Suit_MkII"};
    lootboxepic_money = 100000;
    lootboxlegend_items[] = {"lockpick","coffee","goldbar","lockpickplus","Moonshine","redgull","diamond_cut14","schmerzmittel","chip2","brecheisen","chip1","bausatz_m900_1","bausatz_m900_2","BP_Zubehoer_MkIII","BP_Zubehoer_MkII","BP_Suit_MkIII"};
    lootboxlegend_money = 200000;

    /* Vehicle Purchase Prices */
    vehicle_purchase_multiplier_CIVILIAN = 1; //Civilian Vehicle Buy Price = Config_Vehicle price * multiplier
    vehicle_purchase_multiplier_COP = .25; //Cop Vehicle Buy Price = Config_Vehicle price * multiplier
    vehicle_purchase_multiplier_MEDIC = .10; //Medic Vehicle Buy Price = Config_Vehicle price * multiplier
    vehicle_purchase_multiplier_OPFOR = -1; // -- NOT IN USE -- Simply left in for east support.

    /* Vehicle Rental Prices */
    vehicle_rental_multiplier_CIVILIAN = .6; //Civilian Vehicle Rental Price = Config_Vehicle price * multiplier
    vehicle_rental_multiplier_COP = .1; //Cop Vehicle Rental Price = Config_Vehicle price * multiplier
    vehicle_rental_multiplier_MEDIC = .1; //Medic Vehicle Rental Price = Config_Vehicle price * multiplier
    vehicle_rental_multiplier_OPFOR = -1; // -- NOT IN USE -- Simply left in for east support.

    /* Vehicle Sell Prices */
    vehicle_sell_multiplier_CIVILIAN = .55; //Civilian Vehicle Garage Sell Price = Vehicle Buy Price * multiplier
    vehicle_sell_multiplier_COP = .05; //Cop Vehicle Garage Sell Price = Vehicle Buy Price * multiplier
    vehicle_sell_multiplier_MEDIC = .05; //Medic Vehicle Garage Sell Price = Vehicle Buy Price * multiplier
    vehicle_sell_multiplier_OPFOR = -1; // -- NOT IN USE -- Simply left in for east support.

    /* "Other" Vehicle Prices */
    vehicle_chopShop_multiplier = .15; //Chop Shop price for vehicles. TO AVOID EXPLOITS NEVER SET HIGHER THAN A PURCHASE/RENTAL multipler!   Payout = Config_vehicle Price * multiplier
    vehicle_storage_fee_multiplier = .01; //Pull from garage cost --> Cost takes the playersides Buy Price * multiplier
    vehicle_cop_impound_multiplier = .05; //TO AVOID EXPLOITS NEVER SET HIGHER THAN A PURCHASE/RENTAL multipler!   Payout = Config_vehicle Price * multiplier
	vehicle_cop_tempimpound_multiplier = .02;
	vehicle_cop_permimpound_multiplier = .01;

	/* Vehicle Insurance Prices */
	vehicle_insurance_multiplier_CIVILIAN = .25; //Civilian Vehicle Insurance Price = Vehicle Buy Price * multiplier
	vehicle_insurance_multiplier_COP = .1; //Cop Vehicle Insurance Price = Vehicle Buy Price * multiplier
	vehicle_insurance_multiplier_MEDIC = .1; //Medic Vehicle Insurance Price = Vehicle Buy Price * multiplier
	vehicle_insurance_multiplier_OPFOR = -1; // -- NOT IN USE -- Simply left in for east support.

    disableCommanderView = true; //false - Group leaders can access the commander view. true [default] - Group leaders cannot access the commander view.
                                 //Commander/tactical view is accessed via pressing . [NUM] by default. It raises the camera significantly higher and steeper above the player in order to give a boarder tactical view of the surrounding area.
    vehicle_impound_fee_multiplier = .2; //Pull from impound Garage cost --> Cost takes the playersides Buy Price * multiplier
    /* Wanted System Settings *
    /* crimes[] = {String, Bounty, Code} */
    crimes[] = {
		{"STR_Crime_1","20000","1"},
        {"STR_Crime_2","50000","2"},
        {"STR_Crime_3","5000","3"},
        {"STR_Crime_4","25000","4"},
        {"STR_Crime_5","10000","5"},
        {"STR_Crime_6","25000","6"},
        {"STR_Crime_7","25000","7"},
        {"STR_Crime_8","20000","8"},
        {"STR_Crime_9","35000","9"},
        {"STR_Crime_10","45000","10"},
        {"STR_Crime_11","50000","11"},
        {"STR_Crime_12","100000","12"},
        {"STR_Crime_13","50000","13"},
        {"STR_Crime_14","65000","14"},
        {"STR_Crime_15","60000","15"},
        {"STR_Crime_16","60000","16"},
        {"STR_Crime_17","1000","17"},
        {"STR_Crime_18","5000","18"},
        {"STR_Crime_19","10000","19"},
        {"STR_Crime_20","20000","20"},
        {"STR_Crime_21","25000","21"},
        {"STR_Crime_22","50000","22"},
        {"STR_Crime_23","25000","23"},
        {"STR_Crime_24","65000","24"},
        {"STR_Crime_25","20000","25"},
		{"STR_Crime_26","25000","26"},
		{"STR_Crime_27","60000","27"},
		{"STR_Crime_28","50000","28"},
		{"STR_Crime_29","100000","29"},
		{"STR_Crime_30","250000","30"},
		{"STR_Crime_31","100000","31"},
		{"STR_Crime_32","200000","32"},
		{"STR_Crime_33","250000","33"},
		{"STR_Crime_34","50000","34"},
		{"STR_Crime_35","75000","35"},
		{"STR_Crime_36","100000","36"},
		{"STR_Crime_37","300000","37"},
		{"STR_Crime_38","500000","38"},
		{"STR_Crime_39","50000","39"},
		{"STR_Crime_40","65000","40"},
		{"STR_Crime_41","50000","41"},
		{"STR_Crime_42","75000","42"},
		{"STR_Crime_43","30000","43"},
		{"STR_Crime_44","20000","44"},
		{"STR_Crime_45","50000","45"},
		{"STR_Crime_46","100000","46"},
		{"STR_Crime_47","150000","47"},
		{"STR_Crime_48","100000","48"},
		{"STR_Crime_49","150000","49"},
		{"STR_Crime_50","10000","50"},
		{"STR_Crime_51","100000","51"},
		{"STR_Crime_52","250000","52"},
		{"STR_Crime_53","350000","53"},
		{"STR_Crime_54","100000","54"},
		{"STR_Crime_55","200000","55"},
		{"STR_Crime_56","250000","56"},
		{"STR_Crime_57","50000","57"},
		{"STR_Crime_58","25000","58"},
		{"STR_Crime_59","40000","59"},
		{"STR_Crime_60","75000","60"},
		{"STR_Crime_61","50000","61"},
		{"STR_Crime_62","100000","62"},
		{"STR_Crime_63","65000","63"},
		{"STR_Crime_64","40000","64"},
		{"STR_Crime_65","10000","65"},
		{"STR_Crime_66","50000","66"},
		{"STR_Crime_67","100000","67"}
    };
};

class Toxic_Repair_Config {

    Cop_Repairing = false; //Allow cops to repair objects
    Medic_Repairing = true; //Allow medics to repair objects
    Civ_Repairing = false; //Allow civs to repair objects

    class Civilian {
        Repair_Reward = 5000; //How much they get per object they repair
        Cooldown = true; //If you want to have a cooldown on the repairing
        Cooldown_Time = 20; //Time is seconds for the cooldown between repairing
    };
    class Cop {
        Repair_Reward = 5000; //How much they get per object they repair
        Cooldown = true; //If you want to have a cooldown on the repairing
        Cooldown_Time = 15; //Time is seconds for the cooldown between repairing
    };
    class Medic {
        Repair_Reward = 1000; //How much they get per object they repair
        Cooldown = true; //If you want to have a cooldown on the repairing
        Cooldown_Time = 15; //Time is seconds for the cooldown between repairing
    };
};

class CfgServer {
    DatabaseName = "livoniahusky"; //Config name that'll be grep in the extdb-conf.ini. Default: [livoniahusky]
    DebugMode = 1; //Enable many server/hc debugging logs. Default: 0 (1 = Enabled / 0 = Disabled)
    HeadlessSupport = 1; //Enable/Disable Headless client support. Default: 1 (1 = Enabled / 0 = Disabled)
    /*
    Enabled: When HeadlessSupport is set to 1 (enabled), the server will run without fault when no Headless Client is connected. However, it will support the Headless Client if you choose to connect one.
    Disabled: If HeadlessSupport is set to 0 (disabled), the connection of a Headless Client will make no difference. This option will increase server performance a TINY but negligible amount.
    */
};

#include "Config_Clothing.hpp"
#include "Config_Licenses.hpp"
#include "Config_Vehicles.hpp"
#include "Config_vItems.hpp"
#include "Config_vItem_shops.hpp"
#include "Config_Weapons.hpp"
#include "Config_Gather.hpp"
#include "Config_SpawnPoints.hpp"
#include "Config_Process.hpp"
#include "Config_Housing.hpp"
#include "Config_Garages.hpp"
#include "Config_Debriefing.hpp"
#include "Config_Notifications.hpp"
#include "Config_Sounds.hpp"
//#include "Config_Server.hpp"
#include "CfgHelp.hpp"
#include "Config_Achievement.hpp"
#include "Config_Achievement_cop.hpp"
#include "Config_Achievement_med.hpp"
#include "Config_EmergLights.hpp"
#include "Config_VehiclesShops.hpp"
#include "Config_TankstellenRob.hpp"
#include "Config_Backpack.hpp"
#include "Config_InfoMenu.hpp"
#include "Config_LootBox.hpp"
#include "Config_Farmboost.hpp"
#include "perks_config.hpp"
#include "Config_SperrZone.hpp"
#include "Config_Placeables.hpp"
#include "Config_AirDopMission.hpp"