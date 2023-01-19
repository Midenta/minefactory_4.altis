/*
*    FORMAT:
*        STRING (Conditions) - Must return boolean :
*            String can contain any amount of conditions, aslong as the entire
*            string returns a boolean. This allows you to check any levels, licenses etc,
*            in any combination. For example:
*                "call husky_coplevel && license_civ_someLicense"
*            This will also let you call any other function.
*
*		Thieves
*
*		Thieves-Gaming.de
*
*		Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
*		Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
class VirtualShops {
    //Virtual Shops
    /////////////////////
    ////Staat////////////
    /////////////////////
    //this addAction[localize"STR_Shops_Market",husky_fnc_virt_menu,"med_market",0,false,false,"","",4];
    class med_market {
        name = "STR_Shops_Market";
        side = "med";
        conditions = "call husky_mediclevel >= 1";
        class Catogary {
            class V_Item_Allgemein_Drink {
                displaname = "Trinken";
                conditions = "";
                items[] = {
                    "coffee",
                    "waterBottle",
                    "redgull"
                };
            };
            class V_Item_Allgemein_Eat {
                displaname = "Essen";
                conditions = "";
                items[] = {
                    "donuts",
                    "rabbit",
                    "kokosnuss",
                    "banane",
                    "schmerzmittel",
					"morphin"
                };
            };
            class V_Item_Allgemein_Tool {
                displaname = "Werkzeug";
                conditions = "";
                items[] = {
                    "lockpick",
                    "lockpickplus",
                    "toolkit",
                    "kabelbinder",
                    "fuelFull",
                    "flashlightshoulder",
                    "defibrillator",
                    "gpstracker",
                    "keycard",
                    "chip0",
                    "chip1",
                    "chip2",
                    "chip3",
                    "chip4",
                    "chip5"
                };
            };
        };
    };

    //this addAction[localize"STR_Shops_Cop",husky_fnc_virt_menu,"cop",0,false,false,"","",4];
    class cop {
        name = "STR_Shops_Cop";
        side = "cop";
        conditions = "call husky_coplevel >= 1";
        class Catogary {
            class V_Item_Allgemein_Drink {
                displaname = "Trinken";
                conditions = "";
                items[] = {
                    "coffee",
                    "waterBottle",
                    "redgull"
                };
            };
            class V_Item_Allgemein_Eat {
                displaname = "Essen";
                conditions = "";
                items[] = {
                    "donuts",
                    "rabbit",
                    "kokosnuss",
                    "banane",
                    "schmerzmittel",
					"morphin"
                };
            };
            class V_Item_Allgemein_Tool {
                displaname = "Werkzeug";
                conditions = "";
                items[] = {
                    "lockpick",
                    "lockpickplus",
                    "toolkit",
                    "kabelbinder",
                    "keycard",
                    "sos",
                    "flashlightshoulder",
                    "radarfalle",
                    "spikeStrip",
                    "fuelFull",
                    "defusekit",
                    "gpstracker",
                    "boltcuttergate",
                    "brecheisen",
					"stihlsaege",
                    "chip0",
                    "chip1",
                    "chip2",
                    "chip3"
                };
            };
        };
    };

    //this addAction[localize"STR_Shops_Cop_copbereitschaftspolizei",husky_fnc_virt_menu,"cop_copbereitschaftspolizei",0,false,false,"","",4];
    class cop_copbereitschaftspolizei {
        name = "STR_Shops_Cop_copbereitschaftspolizei";
        side = "cop";
        conditions = "license_cop_copbereitschaftspolizei";
        class Catogary {
            class V_Item_Allgemein_Drink {
                displaname = "Trinken";
                conditions = "";
                items[] = {
                    "coffee",
                    "waterBottle",
                    "redgull"
                };
            };

            class V_Item_Allgemein_Eat {
                displaname = "Essen";
                conditions = "";
                items[] = {
                    "donuts",
                    "rabbit",
                    "kokosnuss",
                    "banane",
                    "schmerzmittel",
					"morphin"
                };
            };

            class V_Item_Allgemein_Tool {
                displaname = "Werkzeug";
                conditions = "";
                items[] = {
                    "toolkit",
                    "keycard",
                    "radarfalle",
                    "flashlightshoulder",
                    "fuelFull",
                    "gpstracker",
                    "chip0",
                    "chip1",
                    "chip2",
                    "chip3"
                };
            };
        };
    };


    //this addAction[localize"STR_Shops_Cop_zivil",husky_fnc_virt_menu,"cop_zivil",0,false,false,"","",4];
    class cop_zivil {
        name = "STR_Shops_Cop_zivil";
        side = "cop";
        conditions = "license_cop_copzivilfahnder";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = {
				"donuts",
				"coffee",
				"waterBottle",
				"rabbit",
				"kokosnuss",
				"banane",
				"redgull",
				"lockpick",
				"lockpickplus",
                "flashlightshoulder",
				"toolkit",
				"fakeidcard",
				"sos",
				"kabelbinder",
				"keycard",
				"radarfalle",
				"spikeStrip",
				"fuelFull",
				"defusekit",
				"gpstracker",
				"schmerzmittel",
				"morphin"
				};
            };

			class V_Item_farm {
                displaname = "Farm-Items";
                conditions = "";
                items[] = {
				"sense",
				"machete",
				"bohrgeraet",
				"axt",
				"schaufel",
				"net",
				"sichel",
				"pickaxe",
				"reagenzglas",
				"flasche",
                "metalldetektor"
				};
            };
        };
    };

	class cop_akten {
        name = "STR_Shops_Cop_aktenschrank";
        side = "cop";
        conditions = "call husky_coplevel >= 1";
        class Catogary {
            class V_Item_Akten_I {
                displaname = "Akten I";
                conditions = "";
                items[] = { "akteni"};
            };
			class V_Item_Akten_II {
                displaname = "Akten II";
                conditions = "";
                items[] = { "aktenii"};
            };
			class V_Item_Akten_III {
                displaname = "Akten III";
                conditions = "";
                items[] = { "akteniii"};
            };
        };
    };

	class cop_aktenmuell {
        name = "STR_Shops_Cop_altpapier";
        side = "cop";
        conditions = "call husky_coplevel >= 1";
        class Catogary {
            class V_Item_Akten_Is {
                displaname = "Akten I";
                conditions = "";
                items[] = { "aktenischredder"};
            };
			class V_Item_Akten_IIs {
                displaname = "Akten II";
                conditions = "";
                items[] = { "akteniischredder"};
            };
			class V_Item_Akten_IIIs {
                displaname = "Akten III";
                conditions = "";
                items[] = { "akteniiischredder"};
            };
        };
    };

    /////////////////////
    ////Gruppierungen////
    /////////////////////
    //this addAction[localize"STR_Shops_Market111",husky_fnc_virt_menu,"market111",0,false,false,"","",4];
    class market111 {
        name = "STR_Shops_Market111";
        side = "civ";
        conditions = "license_civ_th111";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "waterBottle", "rabbit", "tbacon", "redgull", "toolkit", "fuelFull", "gpstracker", "keycard", "kabelbinder", "schmerzmittel", "holzbox", "sandsackecke", "sandsackende", "sandsackkurve", "sandsackkurz", "sandsacklang"  };
            };
        };
    };

    //this addAction[localize"STR_Shops_Marketsm",husky_fnc_virt_menu,"marketsm",0,false,false,"","",4];
    class marketsm {
        name = "STR_Shops_Marketsm";
        side = "civ";
        conditions = "license_civ_sm";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "waterBottle", "rabbit", "tbacon", "redgull", "toolkit", "fuelFull", "gpstracker", "keycard", "kabelbinder", "schmerzmittel", "holzbox", "sandsackecke", "sandsackende", "sandsackkurve", "sandsackkurz", "sandsacklang"  };
            };
        };
    };

    //this addAction[localize"STR_Shops_Market_vaiphy",husky_fnc_virt_menu,"vaiphy",0,false,false,"","",4];
    class vaiphy {
        name = "STR_Shops_Market_vaiphy";
        side = "civ";
        conditions = "license_civ_vaiphy";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "waterBottle", "rabbit", "tbacon", "redgull", "toolkit", "fuelFull", "gpstracker", "kabelbinder", "schmerzmittel", "fakeidcard", "boltcuttergate", "brecheisen"};
            };
        };
    };

    //this addAction[localize"STR_Shops_Market",husky_fnc_virt_menu,"alice",0,false,false,"","license_civ_alice",4];
    class alice {
        name = "STR_Shops_Market";
        side = "civ";
        conditions = "license_civ_alice";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "waterBottle", "rabbit", "toolkit", "schmerzmittel", "gpstracker", "fuelFull", "lockpick", "lockpickplus" };
            };
        };
    };

    //this addAction[localize"STR_Shops_Market",husky_fnc_virt_menu,"psa",0,false,false,"","license_civ_psa",4];
    class psa {
        name = "STR_Shops_Market_psa";
        side = "civ";
        conditions = "license_civ_psa";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = {
				    "waterBottle",
				    "rabbit",
				    "redgull",
				    "toolkit",
				    "schmerzmittel",
				    "morphin",
                    "flashlightshoulder",
				    "gpstracker",
				    "fuelFull",
				    "kabelbinder",
				    "lockpick",
				    "lockpickplus",
				    "boltcuttergate",
				    "brecheisen",
				    "stihlsaege"
				};
            };
        };
    };

	//this addAction[localize"STR_Shops_Market",husky_fnc_virt_menu,"lafamilia",0,false,false,"","license_civ_lafamilia",4];
    class lafamilia {
        name = "STR_Shops_Market_lafamilia";
        side = "civ";
        conditions = "license_civ_lafamilia";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "waterBottle", "rabbit", "redgull", "toolkit", "schmerzmittel", "gpstracker", "fuelFull", "kabelbinder", "schmerzmittel", "lockpick" };
            };
        };
    };

    /////////////////////
    ////Civ//////////////
    /////////////////////

    //this addAction[localize"STR_Shops_Market",husky_fnc_virt_menu,"market",0,false,false,"","",4];
    class market {
        name = "STR_Shops_Market";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = {
				"waterBottle",
				"honig",
				"erdbeermarmelade",
				"edelwasser",
				"rabbit",
				"tbacon",
				"kokosnuss",
				"banane",
				"redgull",
				"toolkit",
				"fuelFull",
				"feuerwerks",
                "flashlightshoulder",
				"gpstracker",
				"schmerzmittel",
				"morphin",
				"rabbit_raw",
				"hen_raw",
				"rooster_raw",
				"sheep_raw",
				"goat_raw"
				};
            };

			class V_Item_fisch {
                displaname = "Fisch";
                conditions = "";
                items[] = {
				"salema_raw",
				"salema",
				"ornate_raw",
				"ornate",
				"mackerel_raw",
				"mackerel",
				"tuna_raw",
				"tuna",
				"mullet_raw",
				"mullet",
				"catshark_raw",
				"catshark"
				};
            };
        };
    };

    //this addAction[localize"STR_Shops_Werkzeuge",husky_fnc_virt_menu,"baumarkt",0,false,false,"","",4];
    class baumarkt {
        name = "STR_Shops_Werkzeuge";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = {
				"sense",
				"machete",
				"bohrgeraet",
				"axt",
				"schaufel",
				"net",
				"sichel",
				"pickaxe",
				"reagenzglas",
				"flasche",
				"craftingtool",
                "metalldetektor"
				};
            };
        };
    };

    //this addAction[localize"STR_Shops_Rebel",husky_fnc_virt_menu,"rebel",0,false,false,"","",4];
    class rebel {
        name = "STR_Shops_Rebel";
        side = "civ";
        conditions = "license_civ_rebel";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = {
				"waterBottle",
				"rabbit",
				"redgull",
				"tbacon",
				"lockpick",
				"toolkit",
				"fuelFull",
				"gpstracker",
				"fakeidcard",
				"kabelbinder",
				"schmerzmittel",
				"morphin",
                "flashlightshoulder",
				"boltcutter",
				"blastingcharge",
				"boltcuttergate",
				"brecheisen"/*,
				"holzbox",
				"sandsackecke",
				"sandsackende",
				"sandsackkurve",
				"sandsackkurz",
				"sandsacklang"*/
				};
            };
        };
    };

    //this addAction[localize"STR_Shops_Rebel",husky_fnc_virt_menu,"rebel",0,false,false,"","",4];
    class miliz {
        name = "STR_Shops_Miliz";
        side = "civ";
        conditions = "license_civ_miliz";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = {
				"waterBottle",
				"rabbit",
				"redgull",
				"tbacon",
				"lockpick",
				"toolkit",
				"fuelFull",
				"gpstracker",
				"fakeidcard",
				"kabelbinder",
                "Augenbinde",
                "knebel",
                "flashlightshoulder",
				"schmerzmittel",
				"morphin",
				"boltcutter",
				"blastingcharge",
				"boltcuttergate",
				"brecheisen",
				"holzbox",
				"sandsackecke",
				"sandsackende",
				"sandsackkurve",
				"sandsackkurz",
				"sandsacklang"
				};
            };
        };
    };
    //this addAction[localize"STR_Shops_Rebel",husky_fnc_virt_menu,"rebel",0,false,false,"","",4];
    class schwarzmarkt {
        name = "STR_Shops_Schwarzmarkt";
        side = "civ";
        conditions = "license_civ_schwarzmarkt";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = {
				"waterBottle",
				"rabbit",
				"redgull",
				"tbacon",
				"lockpick",
				"toolkit",
				"fuelFull",
				"gpstracker",
				"fakeidcard",
				"kabelbinder",
                "Augenbinde",
                "knebel",
                "flashlightshoulder",
				"schmerzmittel",
				"morphin",
				"boltcutter",
				"blastingcharge",
				"boltcuttergate",
				"brecheisen",
				"holzbox",
				"sandsackecke",
				"sandsackende",
				"sandsackkurve",
				"sandsackkurz",
				"sandsacklang"
				};
            };
        };
    };

    //this addAction[localize"STR_Shops_Gang",husky_fnc_virt_menu,"gang",0,false,false,"","",4];
    class gang {
        name = "STR_Shops_Gang";
        side = "civ";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = {
				"waterBottle",
				"rabbit",
				"redgull",
				"tbacon",
				"lockpick",
				"toolkit",
				"fuelFull",
				"gpstracker",
                "flashlightshoulder",
				"fakeidcard",
				"kabelbinder",
				"schmerzmittel",
				"morphin"
				};
            };
        };
    };

    //this addAction[localize"STR_Shops_Moebel",husky_fnc_virt_menu,"moebel",0,false,false,"","",4];
    class moebel {
        name = "STR_Shops_Moebel";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "storagefest1", "storagefest2", "storageflussig1", "storageflussig2", "storageuran1" };
            };
        };
    };

    //this addAction[localize"STR_Shops_Wongs",husky_fnc_virt_menu,"wongs",0,false,false,"","",4];
    class wongs {
        name = "STR_Shops_Wongs";
        side = "civ";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "turtle_soup", "turtle_raw" };
            };
        };
    };

    //this addAction[localize"STR_Shops_silversdoener",husky_fnc_virt_menu,"silversdoener",0,false,false,"","",4];
    class silversdoener {
        name = "STR_Shops_silversdoener";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "doener" };	//,"doenerspecial"
            };
        };
    };

    //this addAction[localize"STR_Shops_Coffee",husky_fnc_virt_menu,"coffee",0,false,false,"","",4];
    class coffee {
        name = "STR_Shops_Coffee";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "coffee", "donuts" };
            };
        };
    };

    //this addAction[localize"STR_Shop_Station_Coffee",husky_fnc_virt_menu,"f_station_coffee",0,false,false,"","",4];
    class f_station_coffee {
        name = "STR_Shop_Station_Coffee";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "coffee", "donuts", "redgull", "toolkit", "fuelFull"};
            };
        };
    };
	
	//this addAction[localize"STR_Shops_Market_tuning",husky_fnc_virt_menu,"tuning",0,false,false,"","",4];
    class tuning {
        name = "STR_Shops_Market_tuning";
        side = "civ";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Wartungs-Items";
                conditions = "";
                items[] = { "gpstracker", "fuelFull", "toolkit" };
            };
			class V_Item_chips {
                displaname = "Tuning-Items";
                conditions = "";
                items[] = { "chip0" };
            };
        };
    };

    //this addAction[localize"STR_Shops_StoffHandel",husky_fnc_virt_menu,"stoffhandel",0,false,false,"","",4];
    class stoffhandel {
        name = "STR_Shops_StoffHandel";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "baumwolleV" };
            };
        };
    };

    //this addAction[localize"STR_Shops_DynamitAnkauf",husky_fnc_virt_menu,"dynamitankauf",0,false,false,"","",4];
    class dynamitankauf {
        name = "STR_Shops_DynamitAnkauf";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "schwarzpulverV" };
            };
        };
    };

    //this addAction[localize"STR_Shops_Oil",husky_fnc_virt_menu,"oil",0,false,false,"","",4];
    class oil {
        name = "STR_Shops_Oil";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "oil_processed", "fuelFull" };
            };
        };
    };

    //this addAction[localize"STR_Shops_FishMarket",husky_fnc_virt_menu,"fishmarket",0,false,false,"","",4];
    class fishmarket {
        name = "STR_Shops_FishMarket";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "salema_raw", "salema", "ornate_raw", "ornate", "mackerel_raw", "mackerel", "tuna_raw", "tuna", "mullet_raw", "mullet", "catshark_raw", "catshark" };
            };
        };
    };

    //this addAction[localize"STR_Shops_DreckigerDan",husky_fnc_virt_menu,"DreckigerDan",0,false,false,"","",4];
    class DreckigerDan {
        name = "STR_Shops_DreckigerDan";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "dan_joint" };
            };
        };
    };

    //this addAction[localize"STR_Shops_Salt",husky_fnc_virt_menu,"salt",0,false,false,"","",4];
    class salt {
        name = "STR_Shops_Salt";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "salt_refined" };
            };
        };
    };

    //this addAction[localize"STR_Shops_Gold",husky_fnc_virt_menu,"gold",0,false,false,"","",4];
    class gold {
        name = "STR_Shops_Gold";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "goldbar" };
            };
        };
    };

    //this addAction[localize"STR_Shops_Plastik",husky_fnc_virt_menu,"PlastikHaendler",0,false,false,"","",4];
    class PlastikHaendler {
        name = "STR_Shops_Plastik";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "plastikflasche"};
            };
        };
    };

    //NEU

    class Bauxit {
        name = "STR_Shops_Bauxithaendler";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "bauxitV" };
            };
        };
    };

    class Baumwolle {
        name = "STR_Shops_StoffHandel";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "baumwolleV" };
            };
        };
    };

    class Chemiker {
        name = "STR_Shops_Chemiehaendler";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "chemV", "schwefelsaeure", "salpetersaeure" }; // Für Uran update
            };
        };
    };

    class Diamantenhaendler {
        name = "STR_Shops_Diamantenhaendler";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "diamond_Cut", "diamond_cut8", "diamond_cut14" };
            };
        };
    };

    class Ephedrin {
        name = "STR_Shops_Apotheke";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "EphedrinV" };
            };
        };
    };

    class Eisenverarbeitung {
        name = "STR_Shops_Eisenhaendler";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "eisenbarren", "Aluminium", "Stahl", "bauxitV" };
            };
        };
    };

    class Gourmet {
        name = "STR_Shops_Froschhaendler";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "frogSchenkel" };
            };
        };
    };

    class Glasbaessler {
        name = "STR_Shops_Glashaendler";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "glass" };
            };
        };
    };

    class Schreiner {
        name = "STR_Shops_Holzhaendler";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "holzbrettV", "holzBrettEdel" };
            };
        };
    };

    class diamond {								//////////////
        name = "STR_Shops_Diamond";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = {  "diamond_Cut","diamond_cut8", "diamond_cut14" };
            };
        };
    };

    class Kautshuktechnik {
        name = "STR_Shops_Gummihaendler";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "Gummi" };
            };
        };
    };

    class Kohle {
        name = "STR_Shops_kohlehaendler";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "kohle_verarbeitet" };
            };
        };
    };

    class Oelbohrer {
        name = "STR_Shops_Heizoelhaendler";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "oil_processed" };
            };
        };
    };

    class Schokoladenhaendler {
        name = "STR_Shops_Schokoladenhaendler";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "schokoV" };
            };
        };
    };

    class Schwefelhaendler {
        name = "STR_Shops_Schwefelhaendler";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "schwefelV" };
            };
        };
    };

    class Siliciumhandel {
        name = "STR_Shops_Siliciumhandel";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "SiliciumV" };
            };
        };
    };

    class Weizenhaendler {
        name = "STR_Shops_Weizenhaendler";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "mehl", "Kokosnussbrot", "Bananenkuchen" };
            };
        };
    };

    class Zuckerrohrhaendler {
        name = "STR_Shops_Zuckerrohrhaendler";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "zuckerV" };
            };
        };
    };

    class Bar {
        name = "STR_Shops_Bar";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "Moonshine","Bier","Wein","Wodka","Rum" };
            };
        };
    };

    class Suesswarenproduzent {
        name = "STR_Shops_Suesswarenlanden";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "mehl","Bananenkuchen","Kokosnussbrot","schokoV" };
            };
        };
    };

    class Treibstoffhandel {
        name = "STR_Shops_Treibstoffhandel";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "Kerosin","Kraftstoff" };
            };
        };
    };

    class drugdealer {
        name = "STR_Shops_DrugDealer";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = {"marijuana", "cocaine_processed", "EphedrinV", "LSD", "ayahuasca", "strawberryhaze"};
            };
        };
    };

    class jetroute {
        name = "STR_Shops_DrugDealer";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = {"marijuana", "cocaine_processed", "EphedrinV", "LSD"};
            };
        };
    };

    class uranhaendler {
        name = "STR_Shops_uranhaendler";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = {"reines_uran" };
            };
        };
    };

    class plutoniumhaendler {
        name = "STR_Shops_plutoniumhaendler";
        side = "";
        conditions = "";
        class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = {"plutonium" };
            };
        };
    };

    class schmuggler {
          name = "STR_Shops_Schmuggler";
          side = "civ";
          conditions = "";
		  class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "coaxium", "wolfram", "kybercrystal" };
            };
        };
    };

      class marcellosfoodtruck {
            name = "STR_Shops_Marcellosfoodtruck";
            side = "civ";
            conditions = "";
			class Catogary {
            class V_Item_Allgemein {
                displaname = "Items";
                conditions = "";
                items[] = { "bubblewaffel", "softeis", "teigmixtur", "frozenjoghurt" };
            };
        };
	};
};
