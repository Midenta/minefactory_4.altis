class CfgGather {
	class Resources {
		class apple {
		amount = 5;
		zones[] = { "apple_1", "apple_2", "apple_3", "apple_4" };
		item = "";
		Sound = "harvest";
		zoneSize = 30;
		};

		class peach {
		amount = 5;
		zones[] = { "peaches_1", "peaches_2", "peaches_3", "peaches_4" };
		item = "";
		Sound = "harvest";
		zoneSize = 30;
		};

		class pilz_unverarbeitet {
		amount = 4;
		zones[] = { "pilz_1" };
		item = "";
		Sound = "harvest";
		zoneSize = 30;
		};

		/*
		class cocaine_unprocessed {
			amount = 3;
			zones[] = { "cocaine_1" };
			item = "";
			zoneSize = 30;
		};

		class cannabis {
			amount = 3;
			zones[] = { "weed_1" };
			item = "";
			zoneSize = 30;
		};*/

		//NEU

		class coaxium_unprocessed {
            amount = 4;
            zones[] = { "coaxium_1" };
            item = "pickaxe";
            zoneSize = 30;
        };

		class wolfram_unprocessed {
            amount = 4;
            zones[] = { "wolfram_1" };
            item = "pickaxe";
            zoneSize = 30;
        };

		class nektar {
            amount = 4;
            zones[] = { "honig_1" };
            item = "";
            zoneSize = 30;
        };

        class milch {
        	amount = 3;
        	zones[] = { "milch_1" };
        	item = "";
        	zoneSize = 30;
        };

        class milchsaeure {
            amount = 3;
            zones[] = { "milchsaeure_1" };
            item = "";
            zoneSize = 30;
        };

        class suessesahne {
            amount = 3;
            zones[] = { "suessesahne_1" };
            item = "";
            zoneSize = 30;
        };

        class erdbeere {
            amount = 4;
            zones[] = { "erdbeere_1" };
            item = "";
            zoneSize = 30;
        };

	   	 class kybercrystal_unprocessed {
            amount = 2;
            zones[] = { "kybercrystal_1" };
            item = "pickaxe";
            zoneSize = 30;
        };

        class ayahuasca_unprocessed {
                amount = 3;
                zones[] = { "ayahuasca_1" };
                item = "";
                zoneSize = 30;
        };

		class banane {
			amount = 5;
			zones[] = { "Bananen_1","Bananen_2","Bananen_3" };
			item = "";
			Sound = "harvest";
			zoneSize = 30;
		};

		class kokosnuss {
			amount = 5;
			zones[] = { "Kokosnussfeld_1","Kokosnussfeld_2","Kokosnussfeld_3" };
			item = "";
			Sound = "harvest";
			zoneSize = 30;
		};

		class baumwolleU {
			amount = 5;
			zones[] = { "Baumwollplantage_1" };
			item = "";
			Sound = "harvest";
			zoneSize = 30;
		};


		class weizen {
			amount = 4;
			zones[] = { "Weizenfeld_1","Weizenfeld_2","Weizenfeld_3" };
			item = "Sense";
			//  mined[] = { "weizen" };
			Sound = "harvest";
			zoneSize = 30;
		};

		class zuckerU {
			amount = 4;
			zones[] = { "Zuckerrohrfeld_1" };
			item = "Sense";
			//mined[] = { "zuckerU" };
			Sound = "harvest";
			zoneSize = 30;
		};

		class schokoU {
			amount = 4;
			zones[] = { "Kakaofeld_1" };
			item = "Machete";
			//mined[] = { "schokoU" };
			Sound = "harvest";
			zoneSize = 30;
		};


		class kautschuk {
			amount = 4;
			zones[] = { "Kautschukplantage_1" };
			item = "Axt";
			//mined[] = { "kautschuk" };
			Sound = "harvest";
			zoneSize = 30;
		};


		class cocaine_unprocessed {
			amount = 4;
			zones[] = { "Kokainplantage_1" };
			item = "Sichel";
			//mined[] = { "cocaine_Unprocessed" };
			Sound = "harvest";
			zoneSize = 30;
		};

		class cannabis {
			amount = 4;
			zones[] = { "Cannabisfeld_1" };
			item = "sichel";
			//mined[] = { "cannabis" };
			Sound = "harvest";
			zoneSize = 30;
		};

		class plastikmuell {
			amount = 3;
			zones[] = { "plastik_im_wasser" };
			item = "net";
			//mined[] = { "plastikmuell" };
			Sound = "mining";
			zoneSize = 30;
		};

	};

	/*

	this addAction[localize"STR_Process_Cocaine",husky_fnc_processAction,"cocaine",0,false,false,"",' husky_inv_cocaineUnprocessed > 0 && !husky_is_processing && !husky_action_inUse || husky_inv_cocaineUnprocessed > 0 && !husky_is_processing && !husky_action_inUse && license_med_farmenmed || husky_inv_cocaineUnprocessed > 0 && !husky_is_processing && !husky_action_inUse && license_cop_copzivilfahnder ',4];
	this addAction[format ["%1 ($%2)",localize (getText(missionConfigFile >> "Licenses" >> "cocaine" >> "displayName")), [(getNumber(missionConfigFile >> "Licenses" >> "cocaine" >> "price"))] call husky_fnc_numberText],husky_fnc_buyLicense,"cocaine",0,false,false,"",' !license_civ_cocaine',4];

	this addAction[localize"STR_Process_Oil",husky_fnc_processAction,"Oelbohrer",0,false,false,"",' husky_inv_oilunprocessed > 0 && !husky_is_processing && !husky_action_inUse || husky_inv_oilunprocessed > 0 && !husky_is_processing && !husky_action_inUse && license_med_farmenmed || husky_inv_oilunprocessed > 0 && !husky_is_processing && !husky_action_inUse && license_cop_copzivilfahnder ',4];
	this addAction[format ["%1 ($%2)",localize (getText(missionConfigFile >> "Licenses" >> "Oelbohrer" >> "displayName")), [(getNumber(missionConfigFile >> "Licenses" >> "Oelbohrer" >> "price"))] call husky_fnc_numberText],husky_fnc_buyLicense,"Oelbohrer",0,false,false,"",' !license_civ_Oelbohrer',4];


	This block can be set using percent,if you want players to mine only one resource ,just leave it as it is.
	Example:
	class copper_unrefined
	{
	amount = 2;
	zones[] = { "copper_mine" };
	item = "pickaxe";
	mined[] = { "copper_unrefined" };
	This will make players mine only copper_unrefined
	Now let's go deeper
	Example 2:
	class copper_unrefined
	{
	amount = 2;
	zones[] = { "copper_mine" };
	item = "pickaxe";
	mined[] = { {"copper_unrefined",0,25},{"iron_unrefined",25,95},{"diamond_uncut",95,100} };
	};
	This will give :
	25(±1)% to copper_unrefined;
	70(±1)% to iron_unrefined;
	5%(±1)% to diamond_uncut;

	! Watch Out !
	If percents are used,you MUST put more than 1 resource in the mined parameter
	mined[] = { {"copper_unrefined",0,25} }; NOT OK (But the script will work)
	mined[] = { {"copper_unrefined",0,45 },{"iron_unrefined",45} };  NOT OK (The script won't work )
	mined[] = { {"copper_unrefined",0,45},{"copper_unrefined",80,100} }; NOT OK
	mined[] = { "copper_unrefined" }; OK
	mined[] = { {"copper_unrefined",0,35} , { "iron_unrefined" ,35,100 } }; OK
	*/

	class Minerals {
		class salt_unrefined {
			amount = 4;
			zones[] = { "salt_mine" };
			item = "pickaxe";
			mined[] = { "salt_unrefined" };
			Sound = "mining";
			zoneSize = 200;
		};

		class frog {
			amount = 4;
			zones[] = { "FroschSumpf_1" };
			item = "net";
			mined[] = { "frosch" };
			Sound = "harvest";
			zoneSize = 100;
		};

		class bauxitU {
			amount = 4;
			zones[] = { "Bauxit_1" };
			item = "pickaxe";
			mined[] = { "bauxitU" };
			Sound = "mining";
			zoneSize = 30;
		};

		class chemU {
			amount = 4;
			zones[] = { "ChemischeElemente_1" };
			item = "Reagenzglas";
			mined[] = { "chemU" };
			Sound = "mining";
			zoneSize = 30;
		};

		class diamonduncut {
			amount = 4;
			zones[] = { "Diamantenmine_1" };
			item = "pickaxe";
			mined[] = { "diamond_uncut" };
			Sound = "mining";
			zoneSize = 30;
		};

		class EphedrinU {
			amount = 4;
			zones[] = { "Ephedrinfeld_1" };
			item = "Sichel";
			mined[] = { "EphedrinU" };
			Sound = "mining";
			zoneSize = 30;
		};

		class iron_unrefined {
			amount = 2;
			zones[] = { "Eisenmine_1" };
			item = "pickaxe";
			mined[] = { "eisenErz" };
			Sound = "mining";
			zoneSize = 30;
		};

		class sand {
			amount = 4;
			zones[] = { "Sandgrube_1" };
			item = "Schaufel";
			mined[] = { "sand" };
			Sound = "mining";
			zoneSize = 30;
		};

		class holzbrettU {
			amount = 4;
			zones[] = { "Holzabbau_1" };
			item = "axt";
			mined[] = { "holzBrettU" };
			Sound = "mining";
			zoneSize = 30;
		};


		class kohle_unverarbeitet {
			amount = 4;
			zones[] = { "Kohlemine_1" };
			item = "Pickaxe";
			mined[] = { "kohle_unverarbeitet" };
			Sound = "mining";
			zoneSize = 30;
		};

		class oil_unprocessed {
			amount = 4;
			zones[] = { "Erdoelfeld_1" };
			item = "Bohrgeraet";
			mined[] = { "oil_unprocessed" };
			Sound = "mining";
			zoneSize = 30;
		};

		/*class frog {
			amount = 2;
			zones[] = { "Froesche_1" };
			item = "Netz";
			mined[] = { "frog" };
			Sound = "harvest";
			zoneSize = 30;
		};*/


		class SiliciumU {
			amount = 4;
			zones[] = { "Siliciumabbau_1" };
			item = "pickaxe";
			mined[] = { "SiliciumU" };
			Sound = "mining";
			zoneSize = 30;
		};

		class schwarzpulverU {
			amount = 4;
			zones[] = { "Schwarzpulver_1" };
			item = "pickaxe";
			mined[] = { "schwarzpulverU" };
			Sound = "mining";
			zoneSize = 30;
		};

		class uraniniterz {
			amount = 6;
			zones[] = { "uraniniterz" };
			item = "pickaxe";
			mined[] = { "uraniniterz" };
			Sound = "mining";
			zoneSize = 30;
		};

		class ammoniak {
			amount = 4;
			zones[] = { "ammoniak" };
			item = "pickaxe";
			mined[] = { "ammoniak" };
			Sound = "mining";
			zoneSize = 30;
		};

		class tributylphosphat {
			amount = 4;
			zones[] = { "tributylphosphat" };
			item = "pickaxe";
			mined[] = { "tributylphosphat" };
			Sound = "mining";
			zoneSize = 30;
		};

	};
};
