/* Salz Route */
class salt_unrefined {
	variable = "saltUnrefined";
	displayName = "STR_Item_Salt";
	weight = 6;
	buyPrice = -1;
	sellPrice = -1;
	illegal = false;
	edible = -1;
	icon = "icons\ico_saltUnprocessed.paa";
};
class salt_refined {
	variable = "saltRefined";
	displayName = "STR_Item_SaltR";
	weight = 3;
	buyPrice = -1;
	sellPrice = 1450;
	illegal = false;
	edible = -1;
	icon = "icons\ico_saltProcessed.paa";
};

/* Bauxit Route */
class bauxitU {
	variable = "bauxitU";
	displayName = "STR_Item_BauU";
	weight = 6;
	buyPrice = -1;
	sellPrice = -1;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\BauxitU.paa";
};
class bauxitV {
	variable = "bauxitV";
	displayName = "STR_Item_BauR";
	weight = 3;
	buyPrice = -1;
	sellPrice = 1700;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\BauxitV.paa";
};

/* Coaxium Route */
class coaxium_unprocessed {
	variable = "coaxiumUnprocessed";
	displayName = "STR_Item_CoaxiumU";
	weight = 10;
	buyPrice = -1;
	sellPrice = 25;
	illegal = true;
	icon = "icons\ico_coaxiumU.paa";
};
class coaxium {
	variable = "coaxium";
	displayName = "STR_Item_Coaxium";
	weight = 8;
	buyPrice = -1;
	sellPrice = 12000;
	illegal = true;
	edible = -1;
	icon = "icons\ico_coaxium.paa";
};

/* Wolfram Route */
class wolfram_unprocessed {
	variable = "wolframUnprocessed";
	displayName = "STR_Item_WolframU";
	weight = 10;
	buyPrice = -1;
	sellPrice = -1;
	illegal = true;
	icon = "icons\ico_wolframU.paa";
};
class wolfram {
	variable = "wolfram";
	displayName = "STR_Item_Wolfram";
	weight = 7;
	buyPrice = -1;
	sellPrice = 10000;
	illegal = true;
	edible = -1;
	icon = "icons\ico_wolfram.paa";
};

/* Honig/Nektar Route */
class nektar {
	variable = "nektar";
	displayName = "STR_Item_Nektar";
	weight = 4;
	buyPrice = -1;
	sellPrice = -1;
	icon = "icons\ico_nektar.paa";
};
class honig {
	variable = "honig";
	displayName = "STR_Item_Honig";
	weight = 2;
	buyPrice = -1;
	sellPrice = 1950;
	illegal = false;
	edible = -1;
	icon = "icons\ico_honig.paa";
};

/* Teigmixtur Route: Bubblewaffel|Softeis|Frozenjoghurt */
class teigmixtur {
	variable = "teigmixtur";
	displayName = "STR_Item_Teigmixtur";
	weight = 2;
	buyPrice = 500;
	sellPrice = -1;
	icon = "icons\ico_teigmixtur.paa";
};

/* Bubblewaffel Route + Item: teigmixtur */
class milch {
	variable = "milch";
	displayName = "STR_Item_Milch";
	weight = 6;
	buyPrice = -1;
	sellPrice = -1;
	icon = "icons\ico_milch.paa";
};
class bubblewaffel {
	variable = "bubblewaffel";
	displayName = "STR_Item_Bubblewaffel";
	weight = 3;
	buyPrice = -1;
	sellPrice = 5200;
	illegal = false;
	edible = -1;
	icon = "icons\ico_bubblewaffel.paa";
};

/* Softeis Route + Item: teigmixtur */
class suessesahne {
	variable = "suessesahne";
	displayName = "STR_Item_Suessesahne";
	weight = 6;
	buyPrice = -1;
	sellPrice = -1;
	icon = "icons\ico_suessesahne.paa";
};
class softeis {
	variable = "softeis";
	displayName = "STR_Item_Softeis";
	weight = 3;
	buyPrice = -1;
	sellPrice = 4100;
	illegal = false;
	edible = -1;
	icon = "icons\ico_softeis.paa";
};

/* Frozenjoghurt Route + Item: teigmixtur */
class milchsaeure {
	variable = "milchsaeure";
	displayName = "STR_Item_Milchsaeure";
	weight = 6;
	buyPrice = -1;
	sellPrice = -1;
	icon = "icons\ico_milchsaeure.paa";
	liquid=false;
};
class frozenjoghurt {
	variable = "frozenjoghurt";
	displayName = "STR_Item_Frozenjoghurt";
	weight = 3;
	buyPrice = -1;
	sellPrice = 4500;
	illegal = false;
	edible = -1;
	icon = "icons\ico_frozenjoghurt.paa";
};

/* Erdbeere Route: Erdbeermarmelade|Strawberryhaze */
class erdbeere {
	variable = "erdbeere";
	displayName = "STR_Item_Erdbeere";
	weight = 4;
	buyPrice = -1;
	sellPrice = -1;
	icon = "icons\ico_erdbeere.paa";
};

/* Erdbeermarmelade Route */
class erdbeermarmelade {
	variable = "erdbeermarmelade";
	displayName = "STR_Item_Erdbeermarmelade";
	weight = 2;
	buyPrice = -1;
	sellPrice = 2250;
	illegal = false;
	edible = -1;
	icon = "icons\ico_erdbeermarmelade.paa";
};

/* Strawberryhaze Route + Item: Marijuana */
class strawberryhaze {
	variable = "strawberryhaze";
	displayName = "STR_Item_Strawberryhaze";
	weight = 5;
	buyPrice = -1;
	sellPrice = 10000;
	illegal = true;
	edible = -1;
	icon = "icons\ico_strawberryhaze.paa";
};

/* Ayahuasca Route */
class ayahuasca_unprocessed {
	variable = "ayahuascaUnprocessed";
	displayName = "STR_Item_AyahuascaU";
	weight = 10;
	buyPrice = -1;
	sellPrice = -1;
	illegal = true;
	icon = "icons\ico_ayahuascaU.paa";
};

class ayahuasca {
	variable = "ayahuasca";
	displayName = "STR_Item_Ayahuasca";
	weight = 5;
	buyPrice = -1;
	sellPrice = 7000;
	illegal = true;
	edible = -1;
	icon = "icons\ico_ayahuasca.paa";
};

/* Kybercrystal Route */
class kybercrystal_unprocessed {
	variable = "kybercrystalUnprocessed";
	displayName = "STR_Item_KybercrystalU";
	weight = 14;
	buyPrice = -1;
	sellPrice = -1;
	illegal = true;
	icon = "icons\ico_kybercrystalU.paa";
};
class kybercrystal {
	variable = "kybercrystal";
	displayName = "STR_Item_Kybercrystal";
	weight = 10;
	buyPrice = -1;
	sellPrice = 17500;
	illegal = true;
	edible = -1;
	icon = "icons\ico_kybercrystal.paa";
};

/* Baumwolle Route */
class baumwolleU {
	variable = "baumwolleU";
	displayName = "STR_Item_wolleU";
	weight = 6;
	buyPrice = -1;
	sellPrice = -1;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Baumwolle.paa";
};
class baumwolleV {
	variable = "baumwolleV";
	displayName = "STR_Item_wolleR";
	weight = 3;
	buyPrice = -1;
	sellPrice = 2500;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Seide.paa";
};

/* Chemiker Route */
class chemU {
	variable = "chemU";
	displayName = "STR_Item_chemiceU";
	weight = 10;
	buyPrice = -1;
	sellPrice = -1;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\ChemElementU.paa";
};
class chemV {
	variable = "chemV";
	displayName = "STR_Item_chemiceR";
	weight = 5;
	buyPrice = -1;
	sellPrice = 2200;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\ChemElementV.paa";
};

/* Diamantenschleifer Route */
class diamond_uncut {
	variable = "diamond_Uncut";
	displayName = "STR_Item_DiamondU";
	weight = 9;
	buyPrice = -1;
	sellPrice = -1;
	illegal = false;
	edible = -1;
	icon = "icons\ico_diamondUncut.paa";
};
class diamond_cut {
	variable = "diamond_Cut";
	displayName = "STR_Item_DiamondC";
	weight = 7;
	buyPrice = -1;
	sellPrice = 2900;
	illegal = false;
	edible = -1;
	icon = "icons\ico_diamondCut.paa";
};

/* Diamantenschleifer Route + Item: Diamond_cut */
class diamond_cut8 {
	variable = "diamond_Cut8";
	displayName = "STR_Item_DiamondC8";
	weight = 5;
	buyPrice = -1;
	sellPrice = 5000;
	illegal = false;
	edible = -1;
	icon = "icons\ico_diamondCut.paa";
};

/* Diamantenverädler Route + Item: Diamond_cut8 */
class diamond_cut14 {
	variable = "diamond_Cut14";
	displayName = "STR_Item_DiamondC14";
	weight = 3;
	buyPrice = -1;
	sellPrice = 7400;
	illegal = false;
	edible = -1;
	icon = "icons\ico_diamondCut.paa";
};

/* Ephedrin Route */
class EphedrinU {
	variable = "EphedrinU";
	displayName = "STR_Item_epheU";
	weight = 8;
	buyPrice = -1;
	sellPrice = -1;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\EphedrinU.paa";
};
class EphedrinV {
	variable = "EphedrinV";
	displayName = "STR_Item_epheR";
	weight = 4;
	buyPrice = 39000;
	sellPrice = 5600;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\EphedrinV.paa";
};

/* Eisen Route */
class eisenerz {
	variable = "eisenErz";
	displayName = "STR_Item_IronOre";
	weight = 5;
	buyPrice = -1;
	sellPrice = -1;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Eisenerz.paa";
};
class eisenbarren {
	variable = "eisenBarren";
	displayName = "STR_Item_IronIngot";
	weight = 3;
	buyPrice = -1;
	sellPrice = 1100;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Eisenbarren.paa";
};

/* Psychedelika Route */
class frosch {
	variable = "frosch";
	displayName = "STR_Item_Frog";
	weight = 9;
	buyPrice = -1;
	sellPrice = -1;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Frosch.paa";
};
class LSD {
	variable = "LSD";
	displayName = "STR_Item_LSD";
	weight = 6;
	buyPrice = 50000;
	sellPrice = 6200;
	illegal = true;
	edible = -1;
	icon = "icons\uc-neu\LSD.paa";
};

/* Glass Route */
class sand {
	variable = "sand";
	displayName = "STR_Item_Sand";
	weight = 3;
	buyPrice = -1;
	sellPrice = -1;
	illegal = false;
	edible = -1;
	icon = "icons\ico_sand.paa";
};
class glass {
	variable = "glass";
	displayName = "STR_Item_Glass";
	weight = 1;
	buyPrice = -1;
	sellPrice = 880;
	illegal = false;
	edible = -1;
	icon = "icons\ico_glass.paa";
};

/* Holzbretter Route */
class holzbrettU {
	variable = "holzBrettU";
	displayName = "STR_Item_HolzBrettU";
	weight = 6;
	buyPrice = -1;
	sellPrice = -1;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Holzklotz.paa";
};
class holzbrettV {
	variable = "holzBrettV";
	displayName = "STR_Item_HolzBrettV";
	weight = 5;
	buyPrice = -1;
	sellPrice = 850;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Holzbrett.paa";
};

/* Gummi Route */
class kautschuk {
	variable = "kautschuk";
	displayName = "STR_Item_Kautschuk";
	weight = 6;
	buyPrice = -1;
	sellPrice = -1;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Kautschuk.paa";
};
class Gummi {
	variable = "gummi";
	displayName = "STR_Item_Gummi";
	weight = 5;
	buyPrice = -1;
	sellPrice = 1100;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Gummi.paa";
};

/* Kohle Route */
class kohle_unverarbeitet {
	variable = "kohleUnverarbeitet";
	displayName = "STR_Item_kohleU";
	weight = 5;
	buyPrice = -1;
	sellPrice = -1;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\KohleMined.paa";
};
class kohle_verarbeitet {
	variable = "kohleVerarbeitet";
	displayName = "STR_Item_kohleR";
	weight = 3;
	buyPrice = -1;
	sellPrice = 1600;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\KohleErz.paa";
};

/* Oil Route */
class oil_unprocessed {
	variable = "oilUnprocessed";
	displayName = "STR_Item_OilU";
	weight = 10;
	buyPrice = -1;
	sellPrice = -1;
	illegal = false;
	edible = -1;
	icon = "icons\ico_oilUnprocessed.paa";
};
class oil_processed {
	variable = "oilProcessed";
	displayName = "STR_Item_OilP";
	weight = 6;
	buyPrice = -1;
	sellPrice = 2600;
	illegal = false;
	edible = -1;
	icon = "icons\ico_oilProcessed.paa";
};

/* Kokain Route */
class cocaine_unprocessed {
	variable = "cocaineUnprocessed";
	displayName = "STR_Item_CocaineU";
	weight = 9;
	buyPrice = -1;
	sellPrice = -1;
	illegal = true;
	edible = -1;
	icon = "icons\ico_cocaineUnprocessed.paa";
	processedItem = "cocaine_processed";
};
class cocaine_processed {
	variable = "cocaineProcessed";
	displayName = "STR_Item_CocaineP";
	weight = 4;
	buyPrice = 28000;
	sellPrice = 4000;
	illegal = true;
	edible = -1;
	icon = "icons\ico_cocaineProcessed.paa";
};

/* Kannabis Route */
class cannabis {
	variable = "cannabis";
	displayName = "STR_Item_Cannabis";
	weight = 9;
	buyPrice = -1;
	sellPrice = -1;
	illegal = true;
	edible = -1;
	icon = "icons\ico_cannabis.paa";
	processedItem = "marijuana";
};
class marijuana {
	variable = "marijuana";
	displayName = "STR_Item_Marijuana";
	weight = 5;
	buyPrice = 45000;
	sellPrice = 5000;
	illegal = true;
	edible = -1;
	icon = "icons\ico_marijuana.paa";
};

/* Schokoladen Route */
class schokoU {
	variable = "schokoU";
	displayName = "STR_Item_schokiU";
	weight = 6;
	buyPrice = -1;
	sellPrice = -1;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\SchokiU.paa";
};
class schokoV {
	variable = "schokoV";
	displayName = "STR_Item_schokiR";
	weight = 4;
	buyPrice = -1;
	sellPrice = 1400;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Milja.paa";
};

/* Schwarzpulver Route */
class schwarzpulverU {
	variable = "schwarzpulverU";
	displayName = "STR_Item_SchwarzpulverU";
	weight = 9;
	buyPrice = -1;
	sellPrice = -1;
	illegal = true;
	edible = -1;
	icon = "icons\uc-neu\Dynamit.paa";
};
class schwarzpulverV {
	variable = "schwarzpulverV";
	displayName = "STR_Item_SchwarzpulverV";
	weight = 7;
	buyPrice = -1;
	sellPrice = 4200;
	illegal = true;
	edible = -1;
	icon = "icons\uc-neu\Dynamit.paa";
};

/* Silicium Route */
class SiliciumU {
	variable = "SiliciumU";
	displayName = "STR_Item_silcU";
	weight = 6;
	buyPrice = -1;
	sellPrice = -1;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\SiliciumU.paa";
};
class SiliciumV {
	variable = "SiliciumV";
	displayName = "STR_Item_silcR";
	weight = 3;
	buyPrice = -1;
	sellPrice = 720;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\SiliciumV.paa";
};

/* Mehl Route */
class weizen {
	variable = "weizen";
	displayName = "STR_Item_Weizen";
	weight = 4;
	buyPrice = -1;
	sellPrice = -1;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Weizen.paa";
};
class mehl {
	variable = "mehl";
	displayName = "STR_Item_Mehl";
	weight = 2;
	buyPrice = -1;
	sellPrice = 450;
	illegal = false;
	edible = -1;
	icon = "icons\ico_cocaineProcessed.paa";
};

/* Zucker Route */
class zuckerU {
	variable = "zuckerU";
	displayName = "STR_Item_zuckerU";
	weight = 6;
	buyPrice = -1;
	sellPrice = -1;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Zuckerrohr.paa";
};
class zuckerV {
	variable = "zuckerV";
	displayName = "STR_Item_zuckerR";
	weight = 3;
	buyPrice = -1;
	sellPrice = 1800;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Zucker.paa";
};

/* Moonshine Route + Item: zuckerV */
class Moonshine {
	variable = "Moonshine";
	displayName = "STR_Item_Moonshine";
	weight = 4;
	buyPrice = 35000;
	sellPrice = 4700;
	illegal = true;
	edible = -1;
	icon = "icons\uc-neu\Moonshine.paa";
};

/* Aluminium Route + Item: kohle_verarbeitet|chemV|bauxitV */
class Aluminium {
	variable = "Aluminium";
	displayName = "STR_Item_Aluminium";
	weight = 2;
	buyPrice = -1;
	sellPrice = 8500;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Alu.paa";
};

/* Bananenkuchen Route + Item: mehl */
class banane {
	variable = "banane";
	displayName = "STR_Item_Banane";
	weight = 2;
	buyPrice = -1;
	sellPrice = 40;
	varPrice = 1;
	factor = 0;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Banane.paa";
};
class Bananenkuchen {
	variable = "Bananenkuchen";
	displayName = "STR_Item_Bananenkuchen";
	weight = 4;
	buyPrice = -1;
	sellPrice = 790;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Bananenbrot.paa";
};

/* Kokosnussbrot Route + Item: mehl */
class kokosnuss {
	variable = "kokosnuss";
	displayName = "STR_Item_Kokosnuss";
	weight = 3;
	buyPrice = -1;
	sellPrice = 60;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Kokosnuss.paa";
};
class Kokosnussbrot {
	variable = "Kokosnussbrot";
	displayName = "STR_Item_Kokosnussbrot";
	weight = 4;
	buyPrice = -1;
	sellPrice = 920;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Kokosbrot.paa";
};

/* Kerosin Route + Item: oil_processed|chemV */
class Kerosin {
	variable = "Kerosin";
	displayName = "STR_Item_Kerosin";
	weight = 6;
	buyPrice = -1;
	sellPrice = 27700;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Kerosin.paa";
};

/* Kraftstoff Route + Item: oil_processed */
class Kraftstoff {
	variable = "Kraftstoff";
	displayName = "STR_Item_Kraftstoff";
	weight = 4;
	buyPrice = -1;
	sellPrice = 1600;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Kraftstoff.paa";
};

/* Stahl Route + Item: eisenbarren|kohle_verarbeitet */
class Stahl {
	variable = "Stahl";
	displayName = "STR_Item_Stahl";
	weight = 5;
	buyPrice = -1;
	sellPrice = 8600;
	illegal = false;
	edible = -1;
	icon = "icons\uc-neu\Stahl.paa";
};

/* Uraninitlösung Route */
class uraniniterz {
	variable = "uraniniterz";
	displayName = "STR_Item_uraniniterz";
	weight = 12;
	buyPrice = -1;
	sellPrice = 1000;
	illegal = false;
	edible = -1;
	icon = "icons\hg-neu\Uraninierz.paa";
};
class schwefelsaeure {
	variable = "schwefelsaeure";
	displayName = "STR_Item_schwefelsaeure";
	weight = 1;
	buyPrice = 5000;
	sellPrice = 1000;
	illegal = false;
	edible = -1;
	icon = "icons\hg-neu\Schwefelsaeure.paa";
};
class uraninitloesung {
	variable = "uraninitloesung";
	displayName = "STR_Item_uraninitloesung";
	weight = 11;
	buyPrice = -1;
	sellPrice = 1000;
	illegal = false;
	edible = -1;
	icon = "icons\hg-neu\Uraniniloesung.paa";
};

/* Uraninit Route + Item: uraninitloesung */
class ammoniak {
	variable = "ammoniak";
	displayName = "STR_Item_ammoniak";
	weight = 1;
	buyPrice = -1;
	sellPrice = 1000;
	illegal = false;
	edible = -1;
	icon = "icons\hg-neu\Ammoniak.paa";
};
class yellow_cake {
	variable = "yellow_cake";
	displayName = "STR_Item_yellow_cake";
	weight = 10;
	buyPrice = -1;
	sellPrice = 1000;
	illegal = false;
	edible = -1;
	icon = "icons\hg-neu\YellowCake.paa";
};

/* Zentrifuge Route + Items: yellow_cake */
class salpetersaeure {
	variable = "salpetersaeure";
	displayName = "STR_Item_salpetersaeure";
	weight = 1;
	buyPrice = 5000;
	sellPrice = 1000;
	illegal = false;
	edible = -1;
	icon = "icons\hg-neu\Salpetersaeure.paa";
};
class rohes_uranylnitrat {
	variable = "rohes_uranylnitrat";
	displayName = "STR_Item_rohes_uranylnitrat";
	weight = 9;
	buyPrice = -1;
	sellPrice = 1000;
	illegal = false;
	edible = -1;
	icon = "icons\hg-neu\rohesUranylnitrat.paa";
};

/* Uranylnitrat Route + Item: rohes_uranylnitrat */
class tributylphosphat {
	variable = "tributylphosphat";
	displayName = "STR_Item_tributylphosphat";
	weight = 1;
	buyPrice = -1;
	sellPrice = 1000;
	illegal = false;
	edible = -1;
	icon = "icons\hg-neu\Tributylphosphat.paa";
};
class reines_uranylnitrat {
	variable = "reines_uranylnitrat";
	displayName = "STR_Item_reines_uranylnitrat";
	weight = 8;
	buyPrice = -1;
	sellPrice = 1000;
	illegal = false;
	edible = -1;
	icon = "icons\hg-neu\reinesUranylnitrat.paa";
};

/* Rohe Uran Route + Item: reines_uranylnitrat */
class rohes_uran {
	variable = "rohes_uran";
	displayName = "STR_Item_rohes_uran";
	weight = 7;
	buyPrice = -1;
	sellPrice = 1000;
	illegal = false;
	edible = -1;
	icon = "icons\hg-neu\RohesUran.paa";
};

/* Reine Uran Route + Item: rohes_uran */
class reines_uran {
	variable = "reines_uran";
	displayName = "STR_Item_reines_uran";
	weight = 6;
	buyPrice = -1;
	sellPrice = 1000;
	illegal = false;
	edible = -1;
	icon = "icons\hg-neu\reinesUran.paa";
};

/* plutonium Route + Item: reines_uran */
class plutonium {
	variable = "plutonium";
	displayName = "STR_Item_plutonium";
	weight = 5;
	buyPrice = -1;
	sellPrice = 1000;
	illegal = true;
	edible = -1;
	icon = "icons\hg-neu\plutonium.paa";
};

/* Polizei Route */

/* Akten I vernichten Route */
class akteni {
	variable = "akteni";
	displayName = "STR_Item_akteni";
	weight = 8;
	buyPrice = 10000;
	sellPrice = -1;
	illegal = true;
	edible = -1;
	icon = "icons\uc-neu\Bauplan.paa";
};
class aktenischredder {
	variable = "aktenischredder";
	displayName = "STR_Item_aktenischredder";
	weight = 8;
	buyPrice = -1;
	sellPrice = 4000;
	illegal = true;
	edible = -1;
	icon = "icons\uc-neu\Bauplan.paa";
};

/* Akten II vernichten Route */
class aktenii {
	variable = "aktenii";
	displayName = "STR_Item_aktenii";
	weight = 10;
	buyPrice = 10000;
	sellPrice = -1;
	illegal = true;
	edible = -1;
	icon = "icons\uc-neu\Bauplan.paa";
};
class akteniischredder {
	variable = "akteniischredder";
	displayName = "STR_Item_akteniischredder";
	weight = 10;
	buyPrice = -1;
	sellPrice = 4000;
	illegal = true;
	edible = -1;
	icon = "icons\uc-neu\Bauplan.paa";
};

/* Akten III vernichten Route */
class akteniii {
	variable = "akteniii";
	displayName = "STR_Item_akteniii";
	weight = 12;
	buyPrice = 10000;
	sellPrice = -1;
	illegal = true;
	edible = -1;
	icon = "icons\uc-neu\Bauplan.paa";
};

class akteniiischredder {
	variable = "akteniiischredder";
	displayName = "STR_Item_akteniiischredder";
	weight = 12;
	buyPrice = -1;
	sellPrice = 4000;
	illegal = true;
	edible = -1;
	icon = "icons\uc-neu\Bauplan.paa";
};