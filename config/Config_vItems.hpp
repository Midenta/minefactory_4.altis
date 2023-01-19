/*
*		Thieves
*
*		Minefactory.eu
*
*		Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
*		Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

class VirtualItems {
    #include "Config_FarmingItems.hpp"
    #include "Config_CraftingItems.hpp"
    #include "Config_CopMedCivItems.hpp"
    #include "Config_AllSideItems.hpp"
    //#include "..\Scripts\cation\craftingV2\config\plans.cpp"

    class plastikmull {//UNKOWN
        variable = "plastikmull";
        displayName = "STR_Item_plastikmull";
        weight = 5;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\hg-neu\plastikmull.paa";
    };
    class metalldose {//UNKOWN
        variable = "metalldose";
        displayName = "STR_Item_metalldose";
        weight = 5;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\hg-neu\metalldose.paa";
    };
    class dreck {//UNKOWN
        variable = "dreck";
        displayName = "STR_Item_dreck";
        weight = 5;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\hg-neu\dreck.paa";
    };

	class norecoil {//UNKOWN
		variable = "norecoil";
		displayName = "STR_Item_norecoil_kit";
		weight = 25;
		buyPrice = 500000;
		sellPrice = 0;
		illegal = true;
		edible = -1;
		icon = "a3\3den\data\cfg3den\history\pasteitems_ca.paa";
	};

	class kidney {//UNKOWN
        variable = "kidney";
        displayName = "STR_Item_Kidney";
        weight = 20;
        buyPrice = 75000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "";
    };

	class scalpel {//UNKOWN
        variable = "scalpel";
        displayName = "STR_Item_Scalpel";
        weight = 5;
        buyPrice = 15000;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "";
    };

	class smokeWall {//UNKOWN
        variable = "smokeWall";
        displayName = "STR_item_smokeWall";
        weight = 2;
        buyPrice = 2800;
        sellPrice = 0;
        illegal = true;
        edible = -1;
        icon = "";
    };

	class regalklein {//UNKOWN
        variable = "regalklein";
        displayName = "STR_Item_regalklein";
        weight = 10;
        buyPrice = 50000;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_storageSmall.paa";
    };

	class regalgross {//UNKOWN
        variable = "regalgross";
        displayName = "STR_Item_regalgross";
        weight = 10;
        buyPrice = 100000;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_storageBig.paa";
    };

    class storagefest3 {//UNKOWN
        variable = "storagefest3";
        displayName = "STR_Item_storagefest3";
        weight = 30;
        buyPrice = 15000000;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_storageSmall.paa";
    };

    class storagefest4 {//UNKOWN
        variable = "storagefest4";
        displayName = "STR_Item_storagefest4";
        weight = 40;
        buyPrice = 25000000;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_storageSmall.paa";
    };

	class storageflussig3 {//UNKOWN
        variable = "storageflussig3";
        displayName = "STR_Item_storageflussig3";
        weight = 40;
        buyPrice = 25000000;
        sellPrice = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_storageBig.paa";
    };

	class lootbox {//UNKOWN
        variable = "lootbox";
        displayName = "STR_Item_lootbox";
        weight = 10;
        buyPrice = 1500;
        sellPrice = 1250;
        illegal = false;
        edible = -1;
        icon = "icons\ico_storageSmall.paa";
    };

	class einsatzschild {//UNKOWN
		variable = "einsatzschild";
		displayName = "STR_Item_einsatzschild";
		weight = 10;
		buyPrice = 100;
		sellPrice = 10;
		illegal = false;
		edible = -1;
		//icon = "icons\ico_money.paa";
    };

    class money {//UNKOWN
		variable = "money";
		displayName = "STR_Item_Money";
		weight = 0;
		buyPrice = -1;
		sellPrice = -1;
		illegal = false;
		edible = -1;
		icon = "icons\ico_money.paa";
    };

	class speedbomb {//UNKOWN
		description = "efwnjofewo";
        variable = "speedbomb";
        displayName = "STR_Item_SpeedBomb";
        weight = 10;
        buyPrice = 100000;
        sellPrice = 90000;
        illegal = true;
        edible = -1;
        icon = "icons\uc-neu\ico_speedbomb.paa";
    };

	class morphine {//UNKOWN
        variable = "morphine";
        displayName = "STR_Item_Morphine";
        weight = 1;
        buyPrice = 1500;
        sellPrice = 300;
        illegal = true;
        edible = -1;
        icon = "icons\uc-neu\Morphine.paa";
    };

    class bandages {//UNKOWN
        variable = "bandages";
        displayName = "STR_Item_Bandages";
        weight = 2;
        buyPrice = 200;
        sellPrice = 50;
        illegal = false;
        edible = -1;
        icon = "icons\uc-neu\ico_bandages.paa";
    };

	class EHK {//UNKOWN
		variable = "EHK";
		displayName = "STR_Item_Verbandskasten";
		weight = 5;
		buyPrice = 3000;
		sellPrice = 2000;
		illegal = false;
		edible = -1;
	};

	class tueterp {//UNKOWN
		variable = "tueterp";
		displayName = "STR_Item_TueteRP";
		weight = 5;
		buyPrice = 350000;
		sellPrice = -10000;
		illegal = false;
		edible = -1;
		icon = "icons\uc-neu\TueteRP.paa";
	};

    //Misc

    class fuelEmpty {//UNKOWN
        variable = "fuelEmpty";
        displayName = "STR_Item_FuelE";
        weight = 2;
        buyPrice = -1;
        sellPrice = 100;
        illegal = false;
        edible = -1;
        icon = "icons\ico_fuelEmpty.paa";
    };

	 class lockpickloot {//UNKOWN
        variable = "lockpickloot";
        displayName = "STR_Item_Lockpicklootbox";
        weight = 5;
        buyPrice = 10050;
        sellPrice = 5075;
        illegal = true;
        edible = -1;
        icon = "icons\ico_lockpick.paa";
    };

    class plastikmuell {//UNKOWN
        variable = "plastikmuell";
        displayName = "STR_Item_plastikmuell";
        weight = 9;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\Muell.paa";
    };

    //Drugs
    class pilz_unverarbeitet {//UNKOWN
        variable = "pilzUnverarbeitet";
        displayName = "STR_Item_PilzU";
        weight = 12;
        buyPrice = -1;
        sellPrice = -1;
        illegal = false;
        edible = -1;
        icon = "icons\PilzUnv.paa";
        processedItem = "heroin_processed";
    };

    class pilz_verarbeitet1 {//UNKOWN
        variable = "pilzVerarbeitet1";
        displayName = "STR_Item_PilzV1";
        weight = 8;
        buyPrice = 3500;
        sellPrice = 2560;
        illegal = false;
        edible = -1;
        icon = "icons\PilzVer.paa";
    };

    class pilz_verarbeitet2 {//UNKOWN
        variable = "pilzVerarbeitet2";
        displayName = "STR_Item_PilzV2";
        weight = 8;
        buyPrice = 8000;
        sellPrice = 5100;
        illegal = true;
        edible = -1;
        icon = "icons\MagicMush.paa";
    };

    //Drink

    //Food
    class apple {//UNKOWN
        variable = "apple";
        displayName = "STR_Item_Apple";
        weight = 1;
        buyPrice = 65;
        sellPrice = 50;
        illegal = false;
        edible = 10;
        icon = "icons\ico_apple.paa";
    };

    class peach {//UNKOWN
        variable = "peach";
        displayName = "STR_Item_Peach";
        weight = 1;
        buyPrice = 68;
        sellPrice = 55;
        illegal = false;
        edible = 10;
        icon = "icons\ico_peach.paa";
    };

    class hen {//UNKOWN
        variable = "hen";
        displayName = "STR_Item_Hen";
        weight = 1;
        buyPrice = 115;
        sellPrice = 85;
        illegal = false;
        edible = 65;
        icon = "icons\ico_wholeChicken.paa";
    };

    class rooster {//UNKOWN
        variable = "rooster";
        displayName = "STR_Item_Rooster";
        weight = 115;
        buyPrice = 90;
        sellPrice = 85;
        illegal = false;
        edible = 45;
        icon = "icons\ico_chickenDrumstick.paa";
    };

    class sheep {//UNKOWN
        variable = "sheep";
        displayName = "STR_Item_Sheep";
        weight = 2;
        buyPrice = 155;
        sellPrice = 115;
        illegal = false;
        edible = 100;
        icon = "icons\ico_lambChop.paa";
    };

    class goat {//UNKOWN
        variable = "goat";
        displayName = "STR_Item_Goat";
        weight = 2;
        buyPrice = 175;
        sellPrice = 135;
        illegal = false;
        edible = 100;
        icon = "icons\ico_muttonLeg.paa";
    };

    class legalefitems {//UNKOWN
        variable = "legalefitems";
        displayName = "STR_Item_Legalefitems";
        weight = 2;
        buyPrice = -1;
        sellPrice = 40;
		varPrice = 1;
        maxPrice = 200;
        minPrice = 150;
        factor = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_bubblewaffel.paa";
    };

    class illegalefitems {//UNKOWN
        variable = "illegalefitems";
        displayName = "STR_Item_Illegalefitems";
        weight = 2;
        buyPrice = -1;
        sellPrice = 40;
		varPrice = 1;
        maxPrice = 200;
        minPrice = 150;
        factor = 0;
        illegal = false;
        edible = -1;
        icon = "icons\ico_bubblewaffel.paa";
    };

    class plastik {//UNKOWN
        variable = "plastik";
        displayName = "STR_Item_plastik";
        weight = 5;
        buyPrice = -1;
        sellPrice = 1100;			//3054	3454
        illegal = false;
        edible = -1;
        icon = "icons\uc-neu\Gummi.paa";
    };

	class LederU {//UNKOWN
        variable = "LederU";
        displayName = "STR_Item_LederU";
        weight = 5;
        buyPrice = -1;
        sellPrice = 500;
        illegal = false;
        edible = -1;
        //icon = "icons\uc-neu\Sense.paa";
    };

	class LederV {//UNKOWN
        variable = "LederV";
        displayName = "STR_Item_LederV";
        weight = 5;
        buyPrice = -1;
        sellPrice = 1000;
        illegal = false;
        edible = -1;
        //icon = "icons\uc-neu\Sense.paa";
    };

	class vLederV {//UNKOWN
        variable = "vLederV";
        displayName = "STR_Item_vLederV";
        weight = 5;
        buyPrice = -1;
        sellPrice = 1000;
        illegal = false;
        edible = -1;
        //icon = "icons\uc-neu\Sense.paa";
    };

	//====================================================
};
