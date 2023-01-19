/*
    Author: Ermen07
*/

#define false 0
#define true 1

class Ermen_EasyFarmingConfig {

    // General Settings //

    varCash = "husky_cash";
    varBank = "husky_atmbank";

    canGoldBarStoreOnlyInLandVeh = true; // Show goldbar store and profit only for land vehicle

    // Resource Settings //

    resourceAddFromConfig = true; // Automatically add all resources from Config_vItems (VirtualItems)
    resourceRealisticFarming = false; // Enable it if you have Realistic Farming installed (Use Realistic Farming Config)

    resourceBlacklistConfig[] = {"defibrillator","spikeStrip","defusekit","coffee","donuts","goat","sheep","rooster","hen","fuelEmpty","norecoil","sos","lootboxlegend","lootboxepic","lootboxnormal","stihlsaege","chip0","chip1","chip2","chip3","chip4","chip5","chip6","fakeidcard","kidney","scalpel","holzbox","sandsackecke","sandsackende","sandsackkurz","sandsackkurve","sandsacklang","smokeWall","regalklein","regalgross","storagefest1","storagefest2","storagefest3","storagefest4","storageflussig1","storageflussig2","storageflussig3","lootbox","einsatzschild","money","drogtest","alctest","radarfalle","speedbomb","bandages","doener","doenerspecial","schmerzmittel","EHK","gpstracker","tueterp","kabelbinder","keycard","defibrillator","toolkit","fuelEmpty","fuelFull","spikeStrip","lockpick","lockpickplus","lockpickloot","blastingcharge","boltcutter","boltcuttergate","brecheisen","defusekit","redgull","pilz_verarbeitet1","pilz_verarbeitet2","pilz_unverarbeitet","donuts","Reagenzglas","Sichel","pickaxe","net","Schaufel","Axt","Bohrgeraet","Machete","Sense","craftingtool","holzbrettEdel","glasflasche","edelwasser","messer","BP_Suit_MkI","BP_Suit_MkII","BP_Suit_MkIII","BP_Weste_MkI","BP_Weste_MkII","BP_Weste_MkIII","BP_Weste_MkIV","BP_Waffe_MkI","BP_Waffe_MkII","BP_Waffe_MkIII","BP_Waffe_MkIV","BP_Waffe_MkV","BP_Zubehoer_MkI","BP_Zubehoer_MkII","BP_Zubehoer_MkIII","BP_Zubehoer_MkIV","BP_Zubehoer_MkV","BP_Extra_MkI","BP_Extra_MkII","BP_Extra_MkIII","BP_Extra_MkIV","BP_Extra_MkV","bausatz_zamak_1","bausatz_zamak_2","bausatz_zamak_fuel_1","bausatz_zamak_fuel_2","bausatz_m900_1","bausatz_m900_2","bausatz_humming_1","bausatz_humming_2","bausatz_humming_3","bausatz_offroader_1","bausatz_van_1","bausatz_fake_cop_suv_1","bausatz_fake_cop_suv_2"};

    // Shop Type (found in items config > VirtualShops), Markers
    resourceShopTypeMarkers[] = {
        {"market",{"Gen_3_1","Gen_3_1_1","Gen_3_1_1_1","Gen_3_1_1_3","Gen_3_1_1_2"}},
        {"fishmarket",{"fish_market_1"}},
        {"gang",{"gang_area_1","gang_area_2","gang_area_3"}},
        {"wongs",{"turle_dealer_1","turle_dealer","turle_dealer_2"}},
        {"drugdealer",{"Dealer_1","Dealer_1_3","Dealer_1_4"}},
        {"oil",{"oil_trader"}},
        {"cement",{"oil_trader_3_1"}},
        {"diamond",{"diamond_trader"}},
        {"glass",{"glass_trader"}},
        {"iron",{"iron_copper_trader"}},
        {"salt",{"iron_copper_trader"}},
        {"gold",{"gold_bar_dealer"}}
    };

    // Process Type (found in process config > ProcessAction), Markers
    resourceProcessTypeMarkers[] = {
        {"oil",{"OilP"}},
        {"diamond",{"diamond_processing"}},
        {"heroin",{"heroin_p"}},
        {"copper",{"copper_mine_1"}},
        {"iron",{"iron_processing"}},
        {"sand",{"sand_processing"}},
        {"salt",{"salt_processing"}},
        {"cocaine",{"cocaine processing"}},
        {"marijuana",{"Weed_p_1"}},
        {"cement",{"rock_processing"}}
    };

    // If you have a dynamic market
    resourceMarketSystem = "config"; // Options: config (Default from config) | ryantts (RyanTTs Dynamic Market System) | market (Black Lagoon)

    resourceShowBuyPrice = true;
    resourceShowSellPrice = true;
    resourceShowWeight = true;
    resourceShowLegal = true;
    resourceShowCanGather = true;
    resourceShowRequiredItem = true;
    resourceShowProcessedIn = true;

    // Vehicle Settings //

    vehicleAddFromConfig = true; // Automatically add all vehicles from Config_Vehicles (huskyCfgVehicles)

    vehicleBlacklistConfig[] = {"Default","B_G_Offroad_01_F","Land_CargoBox_V1_F","Box_IND_Grenades_F","B_supplyCrate_F","B_Boat_Transport_01_F","B_Truck_01_medical_F","B_MRAP_01_F","B_MRAP_01_hmg_F","O_MRAP_02_F","B_Heli_Light_01_stripped_F","C_Boat_Civil_01_police_F","B_G_Offroad_01_armed_F","O_T_LSV_02_unarmed_F","B_Boat_Armed_01_minigun_F","O_Truck_03_medical_F","B_Heli_Transport_01_F","I_Truck_02_medical_F"};

    // Shop Type (found in vehicles config > CarShops), Markers
    vehicleShopTypeMarkers[] = {
        {"civ_car",{"car1_1","car1_2","car1_1_1","car1_2_1_1"}},
        {"kart_shop",{"kart_shop_text_1"}},
        {"civ_truck",{"civ_truck_shop1","civ_truck_shop1_1"}},
        {"civ_air",{"airshop"}},
        {"civ_ship",{"boat_2","boat_2_1","boat_2_1_1"}}
    };

    vehicleShowBuyPrice = true;
    vehicleShowRentalPrice = true;
    vehicleShowMaxSpeed = true;
    vehicleShowPassengerSeats = false;
    vehicleShowFuel = true;
    vehicleShowVSpace = true;
    vehicleShowCanBuy = true;
    vehicleShowCanStore = true;
    vehicleShowProfit = true;

    // Text Settings //

    // Font https://community.bistudio.com/wiki/FXY_File_Format#Arma3
    textHeaderFont = "RobotoCondensed";
    textTitleFont = "RobotoCondensedLight"; 
    textDescriptionFont = "RobotoCondensedLight";
    textInfoFont = "RobotoCondensedLight";

    // In format RGB or ARGB
    textHeaderColor = "#FFFFFF";
    textTitleColor = "#FFFFFF";
    textDescriptionColor = "#FFFFFF";
    textInfoColor = "#FFFFFF";

    // The multiplier for the value of control config property size
    textHeaderSize = 1;
    textTitleSize = 1;
    textDescriptionSize = 1;
    textInfoSize = 1;
    pictureTitleSize = 1;

    // Parameter can be 'left', 'center', 'right'
    textHeaderAlign = "center";
    textTitleAlign = "center";
    textDescriptionAlign = "center";
    textInfoAlign = "center";

    // Parameter can be '0' (no shadow), '1' (classic shadow, can be colored), '2' outline (always black)
    textHeaderShadow = 1;
    textTitleShadow = 1;
    textDescriptionShadow = 1;
    textInfoShadow = 1;

    // Translations //

    easyFarming = "Farming Hilfe";
    currency = "$";
    yes = "ja";
    no = "nein";
    none = "keiner";
    nothingSelected = "Nichts ausgewählt";
    buyPrice = "Einkaufspreis: ";
    sellPrice = "Verkaufspreis: ";
    rentalPrice = "Mietpreis: ";
    legal = "Legal: ";
    weight = "Gewicht: ";
    maxSpeed = "Höchstgeschwindigkeit: ";
    fuelCapacity = "Tank: ";
    vSpaceCapacity = "T-Inv: ";
    passengerSeats = "Sitzplätze: ";
    requiredItem = "Benötigtes Item: ";
    processedIn = "Verarbeitet zu: ";
    canGather = "Sammelbar: ";
    canBuy = "Kaufbar: ";
    missingMoney = "(Fehlendes Geld)";
    missingCash = "(Fehlendes Bargeld)";
    missingItem = "(Fehlendes Benötigtes Item)";
    missingLicense = "(Fehlende Lizenz)";
    missingConditions = "(Fehlende Kondition)";
    missingConditionsLicense = "(Fehlende Lizenz oder Bedarf)";
    canStore = "Kann Lagern: ";
    profit = "Profit: ";
    noZones = "Keine Zone Gefunden";
    gather = "Sammeln: ";
    process = "Verarbeiten: ";
    shop = "Shop: ";
    buy = "Kaufen: ";
    sell = "Verkaufen: ";
};

class Ermen_FarmingHelperResources {
    // Here you can add more resources or replace info from existing ones
    /*
    class copper_unrefined {
        name = "Copper Unrefined";
        description = "This is a description example";
        buyPrice = 750;
        sellPrice = 350;
        weight = 2;
        illegal = false;
        requiredItem = "pickaxe";
        requiredLicense = "";
        requiredConditions = "";
        icon = "icons\ico_copperOre.paa";
        picture = "icons\ico_copperOre.paa";
        processedIn[] = {"copper_refined"};
        gatherMarkers[] = {"marker1","marker2"};
        processMarkers[] = {"marker1","marker2"};
        shopMarkers[] = {"marker1","marker2"};
    };
    */
};

class Ermen_FarmingHelperVehicles {
    // Here you can add more vehicles or replace info from existing ones
    /*
    class C_Scooter_Transport_01_F {
        name = "Quad";
        description = "This is a description example";
        price = 1;
        maxSpeed = 1;
        fuel = 1;
        passengerSeats = 1;
        vspace = 1;
        requiredConditions = "";
        icon = "icons\ico_pickaxe.paa";
        picture = "icons\ico_pickaxe.paa";
        shopMarkers[] = {"marker1","marker2"};
    };
    */
};