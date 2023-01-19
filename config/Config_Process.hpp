/*
*   class:
*       MaterialsReq (Needed to process) = Array - Format -> {{"ITEM CLASS",HOWMANY}}
*       MaterialsGive (Returned items) = Array - Format -> {{"ITEM CLASS",HOWMANY}}
*       Text (Progess Bar Text) = Localised String
*       NoLicenseCost (Cost to process w/o license) = Scalar
*
*   Example for multiprocess:
*
*   class Example {
*       MaterialsReq[] = {{"cocaine_processed",1},{"heroin_processed",1}};
*       MaterialsGive[] = {{"diamond_cut",1}};
*       Text = "STR_Process_Example";
*       //ScrollText = "Process Example";
*       NoLicenseCost = 4000;
*   };
*/

class ProcessAction {
    /*class oil {
        MaterialsReq[] = {{"oil_unprocessed",1}};
        MaterialsGive[] = {{"oil_processed",1}};
        Text = "STR_Process_Oil";
        //ScrollText = "Process Oil";
        NoLicenseCost = 1900;
    };*/

    class diamond {
        MaterialsReq[] = {{"diamond_uncut",1}};
        MaterialsGive[] = {{"diamond_cut",1}};
        Text = "STR_Process_Diamond";
        conditions = "";
        //ScrollText = "Cut Diamonds";
        NoLicenseCost = 20000;
    };

    class pilz_waschen {
        MaterialsReq[] = {{"pilz_unverarbeitet",1}};
        MaterialsGive[] = {{"pilz_verarbeitet1",1}};
        Text = "STR_Process_PilzWaschen";
        conditions = "";
        //ScrollText = "Process Heroin";
        NoLicenseCost = 4000;
    };

    class pilz_vermischen {
        MaterialsReq[] = {{"pilz_verarbeitet1",1}};
        MaterialsGive[] = {{"pilz_verarbeitet2",1}};
        Text = "STR_Process_PilzVermischen";
        conditions = "";
        //ScrollText = "Process Heroin";
        NoLicenseCost = 5000;
    };

    class plastikmuell {
        MaterialsReq[] = {{"plastikmuell",1}};
        MaterialsGive[] = {{"plastikflasche",1}};
        Text = "STR_Process_muelltrennen";
        conditions = "";
        //ScrollText = "Mix Cement";
        NoLicenseCost = 1250;
    };

	class salz {
        MaterialsReq[] = {{"salt_unrefined",1}};
        MaterialsGive[] = {{"salt_refined",1}};
        Text = "STR_Process_salz";
        conditions = "license_civ_salz";
        //ScrollText = "Cut Diamonds";
        NoLicenseCost = 20000;
    };


	//NEU

	class Bauxit {
        MaterialsReq[] = {{"bauxitU",1}};
        MaterialsGive[] = {{"bauxitV",1}};
        Text = "STR_Process_Baux";
        conditions = "license_civ_Bauxit";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 17500;
    };

    class coaxium {
        MaterialsReq[] = {{"coaxium_unprocessed",1}};
        MaterialsGive[] = {{"coaxium",1}};
        Text = "STR_Process_Coaxium";
        conditions = "license_civ_coaxium";
        //ScrollText = "Process Coaxium";
        NoLicenseCost = 300000;
    };

  	class wolfram {
        MaterialsReq[] = {{"wolfram_unprocessed",1}};
        MaterialsGive[] = {{"wolfram",1}};
        Text = "STR_Process_Wolfram";
        conditions = "license_civ_wolfram";
        //ScrollText = "Process Wolfram";
        NoLicenseCost = 300000;
    };

  	class honig {
        MaterialsReq[] = {{"nektar",1}};
        MaterialsGive[] = {{"honig",1}};
        Text = "STR_Process_Honig";
        conditions = "license_civ_honig";
        //ScrollText = "Process Honig";
        NoLicenseCost = 30000;
    };

      class milch {
            MaterialsReq[] = {{"milch",1},{"teigmixtur",1}};
            MaterialsGive[] = {{"bubblewaffel",1}};
            Text = "STR_Process_Milch";
            conditions = "license_civ_marcelloskueche";
            ScrollText = "Bubblewaffel herstellen";
            NoLicenseCost = 30000;
      };

      class suessesahne {
            MaterialsReq[] = {{"suessesahne",1},{"teigmixtur",1}};
            MaterialsGive[] = {{"softeis",1}};
            Text = "STR_Process_Suessesahne";
            conditions = "license_civ_marcelloskueche";
            ScrollText = "Softeis herstellen";
            NoLicenseCost = 30000;
      };

      class milchsaeure {
            MaterialsReq[] = {{"milchsaeure",1},{"teigmixtur",1}};
            MaterialsGive[] = {{"frozenjoghurt",1}};
            Text = "STR_Process_Milchsaeure";
            conditions = "license_civ_marcelloskueche";
            ScrollText = "Frozenjoghurt herstellen";
            NoLicenseCost = 30000;
      };

      class erdbeermarmelade {
          MaterialsReq[] = {{"erdbeere",1}};
          MaterialsGive[] = {{"erdbeermarmelade",1}};
          Text = "STR_Process_Erdbeermarmelade";
          conditions = "license_civ_erdbeermarmelade";
          //ScrollText = "Process Erdbeere";
          NoLicenseCost = 30000;
      };

      class strawberryhaze {
          MaterialsReq[] = {{"erdbeere",1},{"marijuana",1}};
          MaterialsGive[] = {{"strawberryhaze",1}};
          Text = "STR_Process_Strawberryhaze";
          conditions = "license_civ_strawberryhaze";
          //ScrollText = "Process Strawberryhaze";
          NoLicenseCost = 300000;
      };

      class ayahuasca {
          MaterialsReq[] = {{"ayahuasca_unprocessed",1}};
          MaterialsGive[] = {{"ayahuasca",1}};
          Text = "STR_Process_Ayahuasca";
          conditions = "license_civ_ayahuasca";
          //ScrollText = "Process Strawberryhaze";
          NoLicenseCost = 300000;
      };

  	class kybercrystal {
          MaterialsReq[] = {{"kybercrystal_unprocessed",1}};
          MaterialsGive[] = {{"kybercrystal",1}};
          Text = "STR_Process_Kybercrystal";
          conditions = "license_civ_kybercrystal";
          //ScrollText = "Process Kypercrystal";
          NoLicenseCost = 300000;
      };

	class Baumwolle {
        MaterialsReq[] = {{"baumwolleU",1}};
        MaterialsGive[] = {{"baumwolleV",1}};
        Text = "STR_Process_Baumw";
        conditions = "license_civ_Baumwolle";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 25000;
    };

	class Chemiker {
        MaterialsReq[] = {{"chemU",1}};
        MaterialsGive[] = {{"chemV",1}};
        Text = "STR_Process_chemece";
        conditions = "license_civ_Chemiker";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 25000;
    };

	class Diamantenreiniger {		//////////
        MaterialsReq[] = {{"diamond_uncut",1}};
        MaterialsGive[] = {{"diamond_cut",1}};
        Text = "STR_Process_Diamantenwaescher";
        conditions = "license_civ_Diamantenreiniger";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 20000;
    };

	class Diamantenschleifer {	////////////////////
        MaterialsReq[] = {{"diamond_cut",1}};
        MaterialsGive[] = {{"diamond_cut8",1}};
        Text = "STR_Process_Diamantenschleifer";
        conditions = "license_civ_Diamantenschleifer";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 125000;
    };

	class DiamantenVeredler {			///////////////
        MaterialsReq[] = {{"diamond_cut8",1}};
        MaterialsGive[] = {{"diamond_cut14",1}};
        Text = "STR_Process_Diamantenveredler";
        conditions = "license_civ_DiamantenVeredler";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 10000;
    };

	class Ephedrin {
        MaterialsReq[] = {{"EphedrinU",1}};
        MaterialsGive[] = {{"EphedrinV",1}};
        Text = "STR_Process_Ephedrinverarbeiter";
        conditions = "license_civ_Ephedrin";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 50000;
    };

	class Eisenverarbeitung {
        MaterialsReq[] = {{"eisenerz",1}};
        MaterialsGive[] = {{"eisenbarren",1}};
        Text = "STR_Process_Eisenverarbeitung";
        conditions = "license_civ_Eisenverarbeitung";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 225000;
    };

	class Psychedelika {
        MaterialsReq[] = {{"frosch",1}};
        MaterialsGive[] = {{"lsd",1}};
        Text = "STR_Process_Frog";
        conditions = "license_civ_Psychedelika";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 50000;
    };

	class Glasbaessler {
        MaterialsReq[] = {{"sand",1}};
        MaterialsGive[] = {{"glass",1}};
        Text = "STR_Process_Glasverarbeiter";
        conditions = "license_civ_Glasbaessler";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 17500;
    };

	class Schreiner {
        MaterialsReq[] = {{"holzbrettU",1}};
        MaterialsGive[] = {{"holzbrettV",1}};
        Text = "STR_Process_Holzverarbeitung";
        conditions = "license_civ_Schreiner";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 15000;
    };

	class Kautshuktechnik {
        MaterialsReq[] = {{"kautschuk",1}};
        MaterialsGive[] = {{"Gummi",1}};
        Text = "STR_Process_Kautschukverarbeiter";
        conditions = "license_civ_Kautshuktechnik";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 17500;
    };

	class Kohle {
        MaterialsReq[] = {{"kohle_unverarbeitet",1}};
        MaterialsGive[] = {{"kohle_verarbeitet",1}};
        Text = "STR_Process_Kohle";
        conditions = "license_civ_Kohle";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 17500;
    };

	class Oelbohrer {
        MaterialsReq[] = {{"oil_unprocessed",1}};
        MaterialsGive[] = {{"oil_processed",1}};
        Text = "STR_Process_Oil";
        conditions = "license_civ_Oelbohrer";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 22500;
    };

	class cocaine {
        MaterialsReq[] = {{"cocaine_unprocessed",1}};
        MaterialsGive[] = {{"cocaine_processed",1}};
        Text = "STR_Process_Cocaine";
        conditions = "license_civ_cocaine";
        //ScrollText = "Process Cocaine";
        NoLicenseCost = 10200;
    };

    class SnoopDogg {
        MaterialsReq[] = {{"cannabis",1}};
        MaterialsGive[] = {{"marijuana",1}};
        Text = "STR_Process_Marijuana";
        conditions = "license_civ_SnoopDogg";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 42500;
    };

	class WillyWonka {
        MaterialsReq[] = {{"schokoU",1}};
        MaterialsGive[] = {{"schokoV",1}};
        Text = "STR_Process_Schoki";
        conditions = "license_civ_WillyWonka";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 17500;
    };

	class Dynamit {
        MaterialsReq[] = {{"schwarzpulverU",1}};
        MaterialsGive[] = {{"schwarzpulverV",1}};
        Text = "STR_Process_Dynamit";
        conditions = "license_civ_Dynamit";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 37500;
    };

	class Siliciumverarbeitung {
        MaterialsReq[] = {{"SiliciumU",1}};
        MaterialsGive[] = {{"SiliciumV",1}};
        Text = "STR_Process_Silic";
        conditions = "license_civ_Siliciumverarbeitung";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 15000;
    };

	class Weizenverarbeitung {
        MaterialsReq[] = {{"weizen",1}};
        MaterialsGive[] = {{"mehl",1}};
        Text = "STR_Process_Weizen";
        conditions = "license_civ_Weizenverarbeitung";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 12500;
    };

	class Suesswarenproduzent {
        MaterialsReq[] = {{"zuckerU",1}};
        MaterialsGive[] = {{"zuckerV",1}};
        Text = "STR_Process_Zuckerrohrverarbeitung";
        conditions = "license_civ_Suesswarenproduzent";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 20000;
    };

	class Moonshiner {
        MaterialsReq[] = {{"zuckerV",1}};		// {{"zuckerV",3},{"flasche",1}};
        MaterialsGive[] = {{"Moonshine",1}};
        Text = "STR_Process_Moonshine";
        conditions = "license_civ_Moonshiner";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 55000;
    };

	class Aluminiumverbreitung {
        MaterialsReq[] = {{"kohle_verarbeitet",1},{"chemV",1},{"bauxitV",1}};
        MaterialsGive[] = {{"Aluminium",1}};
        Text = "STR_Process_Alu";
        conditions = "license_civ_Aluminiumverbreitung";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 2800;
    };

	class Baeckereiban {
        MaterialsReq[] = {{"banane",1},{"mehl",1}};
        MaterialsGive[] = {{"Bananenkuchen",1}};
        Text = "STR_Process_banbrot";
        conditions = "license_civ_Baeckereiban";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 17500;
    };

	class Baeckereikok {
        MaterialsReq[] = {{"kokosnuss",1},{"mehl",1}};
        MaterialsGive[] = {{"Kokosnussbrot",1}};
        Text = "STR_Process_kokokuchen";
        conditions = "license_civ_Baeckereikok";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 17500;
    };

	class kerosinhersteller {
        MaterialsReq[] = {{"oil_processed",1},{"chemV",2}};
        MaterialsGive[] = {{"Kerosin",1}};
        Text = "STR_Process_Kero";
        conditions = "license_civ_kerosinhersteller";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 72500;
    };

	class krafstoffhersteller {
        MaterialsReq[] = {{"oil_processed",1}};
        MaterialsGive[] = {{"Kraftstoff",1}};
        Text = "STR_Process_benz";
        conditions = "license_civ_krafstoffhersteller";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 30000;
    };

	class Stahlschmied {
        MaterialsReq[] = {{"eisenbarren",2},{"kohle_verarbeitet",1}};
        MaterialsGive[] = {{"Stahl",1}};
        Text = "STR_Process_Stahlschmiede";
        conditions = "license_civ_Stahlschmied";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 40000;
    };

	class uranverarbeiter1 {
        MaterialsReq[] = {{"uraniniterz",1},{"schwefelsaeure",1}};
        MaterialsGive[] = {{"uraninitloesung",1}};
        Text = "STR_Process_uranverarbeiter1";
        conditions = "license_civ_uranverarbeiter1";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 18000;
    };

	class uranverarbeiter2 {
        MaterialsReq[] = {{"uraninitloesung",1},{"ammoniak",1}};
        MaterialsGive[] = {{"yellow_cake",1}};
        Text = "STR_Process_uranverarbeiter2";
        conditions = "license_civ_uranverarbeiter2";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 18000;
    };

	class uranverarbeiter3 {
        MaterialsReq[] = {{"yellow_cake",1},{"salpetersaeure",1}};
        MaterialsGive[] = {{"rohes_uranylnitrat",1}};
        Text = "STR_Process_uranverarbeiter3";
        conditions = "license_civ_uranverarbeiter3";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 18000;
    };

	class uranverarbeiter4 {
        MaterialsReq[] = {{"rohes_uranylnitrat",1},{"tributylphosphat",1}};
        MaterialsGive[] = {{"reines_uranylnitrat",1}};
        Text = "STR_Process_uranverarbeiter4";
        conditions = "license_civ_uranverarbeiter4";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 18000;
    };

	class uranverarbeiter5 {
        MaterialsReq[] = {{"reines_uranylnitrat",1}};
        MaterialsGive[] = {{"rohes_uran",1}};
        Text = "STR_Process_uranverarbeiter5";
        conditions = "license_civ_uranverarbeiter5";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 18000;
    };

	class uranverarbeiter6 {
        MaterialsReq[] = {{"rohes_uran",1}};
        MaterialsGive[] = {{"reines_uran",1}};
        Text = "STR_Process_uranverarbeiter6";
        conditions = "license_civ_uranverarbeiter6";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 18000;
    };

	class uranverarbeiter7 {
        MaterialsReq[] = {{"reines_uran",1}};
        MaterialsGive[] = {{"plutonium",1}};
        Text = "STR_Process_uranverarbeiter7";
        conditions = "license_civ_uranverarbeiter7";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 18000;
    };

	class akteni {
        MaterialsReq[] = {{"akteni",1}};
        MaterialsGive[] = {{"aktenischredder",1}};
        Text = "STR_Process_akteni";
        conditions = "";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 0;
    };
	class aktenii {
        MaterialsReq[] = {{"aktenii",1}};
        MaterialsGive[] = {{"akteniischredder",1}};
        Text = "STR_Process_aktenii";
        conditions = "";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 0;
    };
	class akteniii {
        MaterialsReq[] = {{"akteniii",1}};
        MaterialsGive[] = {{"akteniiischredder",1}};
        Text = "STR_Process_akteniii";
        conditions = "";
        //ScrollText = "Harvest sonstwas";
        NoLicenseCost = 0;
    };
};
