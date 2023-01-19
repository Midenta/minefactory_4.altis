/*
*    class:
*        variable = Variable Name
*        displayName = License Name
*        price = License Price
*        illegal = Illegal License
*        side = side indicator
*
*	Thieves
*
*	Minefactory.eu
*
*	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de!
*	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*
*/
class Licenses {
    //Civilian Licenses
    class driver {
        variable = "driver";
        displayName = "STR_License_Driver";
        price = 10000;
        illegal = false;
        side = "civ";
		description = "Zu Kaufen im Lizenzamt";
    };

    class trucking {
        variable = "trucking";
        displayName = "STR_License_Truck";
        price = 300000;
        illegal = false;
        side = "civ";
		description = "Zu Kaufen im Lizenzamt";
    };

    class truckingplus {
        variable = "truckingplus";
        displayName = "STR_License_truckingplus";
        price = 250000;
        illegal = false;
        side = "civ";
		description = "Zu Kaufen im Lizenzamt (für Gerät+ benötigt)";
    };

    class towing {								//Abschleppseil	//Nicht Aktiv
        variable = "towing";
        displayName = "STR_License_towing";
        price = 25000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Apschlepper";
    };

	class schwerlast {							//für Igiload
        variable = "schwerlast";
        displayName = "STR_License_schwerlast";
        price = 25000000;
        illegal = false;
        side = "civ";
		description = "Zu Kaufen im Lizenzamt (zum aufladen und kaufen von Container)";
    };

	class schwerlastplus {							//für Igiload
        variable = "schwerlastplus";
        displayName = "STR_License_schwerlastplus";
        price = 25000000;
        illegal = false;
        side = "civ";
		description = "Zu Kaufen im Lizenzamt (Container mit dem Hubschrauber anheben)";
    };

    class pilot {
        variable = "pilot";
        displayName = "STR_License_Pilot";
        price = 755000;
        illegal = false;
        side = "civ";
		description = "Zu Kaufen im Lizenzamt";
    };

    class Flugzeugpilot {
        variable = "Flugzeugpilot";
        displayName = "STR_License_flugzeugpilot";
        price = 1350000;
        illegal = false;
        side = "civ";
		description = "Zu Kaufen im Lizenzamt";
    };

	class jetpilot {
        variable = "jetpilot";
        displayName = "STR_License_jetpilot";
        price = 15000000;
        illegal = false;
        side = "civ";
    };

	class boat {
        variable = "boat";
        displayName = "STR_License_Boat";
        price = 20000;
        illegal = false;
        side = "civ";
		description = "Zu Kaufen im Lizenzamt";
    };

    class dive {
        variable = "dive";
        displayName = "STR_License_Diving";
        price = 15000;
        illegal = false;
        side = "civ";
		description = "Zu Kaufen im Lizenzamt";
    };

    class home {
        variable = "home";
        displayName = "STR_License_Home";
        price = 11111111;
        illegal = false;
        side = "civ";
		description = "Zu Kaufen bei Aladins Tepich";
    };

    class anwaltslizenz {							//für Anwälte
        variable = "anwaltslizenz";
        displayName = "STR_License_anwaltslizenz";
        price = 500000;
        illegal = false;
        side = "civ";
		description = "Zu Kaufen im Lizenzamt (Benötigt für Anwaltstätigkeiten)";
    };

    class gun {
        variable = "gun";
        displayName = "STR_License_Firearm";
        price = 250000;
        illegal = false;
        side = "civ";
		description = "Zu Kaufen in deinem Waffenladen des Vertrauens";
    };

	class gunplus {
        variable = "gunplus";
        displayName = "STR_License_Firearmplus";
        price = 150000;
        illegal = false;
        side = "civ";
		description = "Vergeben durch die Polizei";
    };

	class BetaTester {
        variable = "BetaTester";
        displayName = "STR_License_BetaTester";
        price = 10;
        illegal = false;
        side = "civ";
    };
	
	class erstehilfe {
        variable = "erstehilfe";
        displayName = "STR_License_erstehilfe";
        price = 15000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Rebellenausbilder";
    };

    //Illegal Licenses

/*
    class heroin {
        variable = "heroin";
        displayName = "STR_License_Heroin";
        price = 850000;
        illegal = true;
        side = "civ";
    };

    class marijuana {
        variable = "marijuana";
        displayName = "STR_License_Marijuana";
        price = 790500;
        illegal = true;
        side = "civ";
    };

    class FroschLizenz {
        variable = "froschlizenz";
        displayName = "STR_License_Frog";
        price = 519500;
        illegal = true;
        side = "civ";
    };*/

    class rebel {
        variable = "rebel";
        displayName = "STR_License_Rebel";
        price = 3000000;
        illegal = true;
        side = "civ";
		description = "Versteckt im tiefen Wald";
    };

    class miliz{
        variable = "miliz";
        displayName = "STR_License_Miliz";
        price = 17500000;
        illegal = false;
        side = "civ";
    };

    class schwarzmarkt {
        variable = "schwarzmarkt";
        displayName = "STR_License_Schwarzmarkt";
        price = 35000000;
        illegal = false;
        side = "civ";
    };

    class escort {
        variable = "escort";
        displayName = "STR_License_escort";
        price = 500000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Rebellenausbilder";
    };

    class folter {
        variable = "folter";
        displayName = "STR_License_folter";
        price = 3000000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Rebellenausbilder";
    };

    class pullout {
        variable = "pullout";
        displayName = "STR_License_pullout";
        price = 800000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Rebellenausbilder";
    };

	class restrain {
        variable = "restrain";
        displayName = "STR_License_fesseln";
        price = 250000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Rebellenausbilder";
    };

    class loot {
        variable = "loot";
        displayName = "STR_License_looten";
        price = 1250000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Rebellenausbilder";
    };
	
    /*
	class lootbox {
        variable = "lootbox";
        displayName = "STR_License_lootbox";
        price = 30000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Rebellenausbilder";
    };
    */
	


    //Cop Licenses
    class coppilot {
        variable = "coppilot";
        displayName = "STR_License_Pilot";
        price = 15000;
        illegal = false;
        side = "cop";
		description = "Wende dich an deinen Polizeiausbilder";
    };

    class copboot {
        variable = "copboot";
        displayName = "STR_License_copboot";
        price = 8000;
        illegal = false;
        side = "cop";
		description = "Wende dich an deinen Polizeiausbilder";
    };

    class copzivilfahnder {							//Zivilfahnder  Waffenfreigabe 1
        variable = "copzivilfahnder";
        displayName = "STR_License_copzivilfahnder";
        price = 8000;
        illegal = false;
        side = "cop";
		description = "Wende dich an deinen Polizeiausbilder";
    };

    class copbereitschaftspolizei {						//  Waffenfreigabe 2
        variable = "copbereitschaftspolizei";
        displayName = "STR_License_copbereitschaftspolizei";
        price = 750000;
        illegal = false;
        side = "cop";
  		description = "Wende dich an deinen Polizeiausbilder";
    };

    class copscharfschuetze {				//BKA Beamter
        variable = "copscharfschuetze";
        displayName = "STR_License_copscharfschuetzen";
        price = 8000;
        illegal = false;
        side = "cop";
    	description = "Wende dich an deinen Polizeiausbilder";
	};

	class copsek {						//sek beamter
        variable = "copsek";
        displayName = "STR_License_SEK";
        price = 0;
        illegal = false;
        side = "cop";
		description = "Wende dich an deinen Polizeiausbilder";
    };

	class copausbilder {      //copausbilder
        variable = "copausbilder";
        displayName = "STR_License_copausbilder";
        price = 8000;
        illegal = false;
        side = "cop";
		description = "Wende dich an deinen Polizeiausbilder";
    };

	class copdrohne {	//Drohnen Freigabe
        variable = "copdrohne";
        displayName = "STR_License_drohne_cop";
        price = 8000;
        illegal = false;
        side = "cop";
		description = "Wende dich an deinen Polizeiausbilder";
    };

	class coperstehilfe {		//Erste-hile Ausbildung 	(nutzen
        variable = "coperstehilfe";
        displayName = "STR_License_erstehilfe";
        price = 15000000;
        illegal = false;
        side = "cop";
		description = "Wende dich an deinen Polizeiausbilder";
    };
	/*
	class homec {
        variable = "homec";
        displayName = "STR_License_Home";
        price = 750000;
        illegal = false;
        side = "cop";
		description = "-";
    };*/



    //Medic Licenses
    /*class mAir {
        variable = "mAir";
        displayName = "STR_License_Pilot";
        price = 15000;
        illegal = false;
        side = "med";
		description = "Wende dich an deinen Feuerwehrausbilder";
    };*/

	class KraftFahrzeug1 {
        variable = "KraftFahrzeug1";
        displayName = "STR_License_KraftFahrzeug1";
        price = 5000;
        illegal = false;
        side = "med";
		description = "Wende dich an deinen Feuerwehrausbilder";
    };

	class KraftFahrzeug2 {
        variable = "KraftFahrzeug2";
        displayName = "STR_License_KraftFahrzeug2";
        price = 10000;
        illegal = false;
        side = "med";
		description = "Wende dich an deinen Feuerwehrausbilder";
    };

	class KraftFahrzeug3 {
        variable = "KraftFahrzeug3";
        displayName = "STR_License_KraftFahrzeug3";
        price = 15000;
        illegal = false;
        side = "med";
		description = "Wende dich an deinen Feuerwehrausbilder";
    };

	class HeliLizenz1 {
        variable = "HeliLizenz1";
        displayName = "STR_License_HeliLizenz1";
        price = 20000;
        illegal = false;
        side = "med";
		description = "Wende dich an deinen Feuerwehrausbilder";
    };

	class HeliLizenz2 {
        variable = "HeliLizenz2";
        displayName = "STR_License_HeliLizenz2";
        price = 40000;
        illegal = false;
        side = "med";
		description = "Wende dich an deinen Feuerwehrausbilder";
    };

	class HeliLizenz3 {
        variable = "HeliLizenz3";
        displayName = "STR_License_HeliLizenz3";
        price = 60000;
        illegal = false;
        side = "med";
		description = "Wende dich an deinen Feuerwehrausbilder";
    };

	class wasserrettung {
        variable = "wasserrettung";
        displayName = "STR_License_wasserrettung";
        price = 5000;
        illegal = false;
        side = "med";
		description = "Wende dich an deinen Feuerwehrausbilder";
    };

	class Loeschfahrzeug {					//Löschfahrzeug
        variable = "Loeschfahrzeug";
        displayName = "STR_License_Loeschfahrzeug";
        price = 5000;
        illegal = false;
        side = "med";
		description = "Wende dich an deinen Feuerwehrausbilder";
    };

	class Bergrettung1 {
        variable = "Bergrettung1";
        displayName = "STR_License_Bergrettung1";
        price = 5000;
        illegal = false;
        side = "med";
		description = "Wende dich an deinen Feuerwehrausbilder";
    };

	/*class Bergrettung2 {
        variable = "Bergrettung2";
        displayName = "STR_License_Bergrettung2";
        price = 15000;
        illegal = false;
        side = "med";
		description = "Wende dich an deinen Feuerwehrausbilder";
    };*/

	class Katastrophenschutz {
        variable = "Katastrophenschutz";
        displayName = "STR_License_Katastrophenschutz";
        price = 15000;
        illegal = false;
        side = "med";
		description = "Wende dich an deinen Feuerwehrausbilder";
    };

	class ausbildermed {
        variable = "ausbildermed";
        displayName = "STR_License_copausbilder";
        price = 15000;
        illegal = false;
        side = "med";
		description = "Wende dich an deinen Feuerwehrausbilder";
    };

	/*class homem {
        variable = "homem";
        displayName = "STR_License_Home";
        price = 750000;
        illegal = false;
        side = "med";
		description = "-";
    };*/

	class zugfuehrer {
        variable = "zugfuehrer";
        displayName = "STR_License_zugfuehrer";
        price = 15000;
        illegal = false;
        side = "med";
		description = "Wende dich an deinen Feuerwehrausbilder";
    };

	class notarzt {
        variable = "notarzt";
        displayName = "STR_License_notarzt";
        price = 15000;
        illegal = false;
        side = "med";
		description = "Wende dich an deinen Feuerwehrausbilder";
    };


	class farmenmed {
        variable = "farmenmed";
        displayName = "STR_License_farmenmed";
        price = 15000;
        illegal = false;
        side = "med";
		description = "Wende dich an deinen Feuerwehrausbilder";
    };




	//Neue Farmrouten

	class Baeckereiban {
        variable = "Baeckereiban";
        displayName = "STR_License_Baeckereiban";
        price = 175000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deiner Bäckerei";
    };

	class Baeckereikok {
        variable = "Baeckereikok";
        displayName = "STR_License_Baeckereikok";
        price = 175000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deiner Bäckerei";
    };

    class Baumwolle {
        variable = "Baumwolle";
        displayName = "STR_License_Baumwolle";
        price = 250000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Baumwolle";
    };

	class Bauer {
        variable = "Bauer";
        displayName = "STR_License_Bauer";
        price = 25000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Bauer";
    };

	class Bauxit {
        variable = "Bauxit";
        displayName = "STR_License_Mineur";
        price = 175000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Bauxitverarbeiter";
    };

	class Diamantenreiniger {
        variable = "Diamantenreiniger";
        displayName = "STR_License_Diamantenreiniger";
        price = 200000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Diamantenreiniger";
    };

    class Diamantenschleifer {
        variable = "Diamantenschleifer";
        displayName = "STR_License_Diamantenschleifer";
        price = 125000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Diamantenschleifer";
    };

	class DiamantenVeredler {
        variable = "DiamantenVeredler";
        displayName = "STR_License_DiamantenVeredler";
        price = 100000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem DiamantenVeredler";
    };

    class Eisenverarbeitung {
        variable = "Eisenverarbeitung";
        displayName = "STR_License_Eisenverarbeitung";
        price = 225000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Schmied";
    };

    class erdbeermarmelade {
        variable = "erdbeermarmelade";
        displayName = "STR_License_Erdbeermarmelade";
        price = 50000;
        illegal = false;
        side = "civ";
    };

	class Glasbaessler {
        variable = "Glasbaessler";
        displayName = "STR_License_Glasblaser";		//Glasbläßer
        price = 175000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Glasbläser";
    };

    class honig {
        variable = "honig";
        displayName = "STR_License_Honig";
        price = 50000;
        illegal = false;
        side = "civ";
    };

	class Kautshuktechnik {
        variable = "Kautshuktechnik";
        displayName = "STR_License_Kautshuk";			//Verfahrenstechniker für Kautshuktechnik
        price = 175000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Verfahrenstechniker für Kautshuktechnik";
    };

	class Kohle {
        variable = "Kohle";
        displayName = "STR_License_Kohle";
        price = 175000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Kohle";
    };

	class krafstoffhersteller {
        variable = "krafstoffhersteller";
        displayName = "STR_License_krafstoffhersteller";
        price = 300000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem krafstoffhersteller";
    };

    class marcelloskueche {
        variable = "marcelloskueche";
        displayName = "STR_License_Marcelloskueche";
        price = 500000;
        illegal = false;
        side = "civ";
    };

	class Oelbohrer {
        variable = "Oelbohrer";
        displayName = "STR_License_Oilbohrer";			//Ölbohrer
        price = 225000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Ölbohrer";
    };

    class salz {
        variable = "salz";
        displayName = "STR_License_Salt";
        price = 350000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Salzverarbeiter";
    };

	class Schreiner {
        variable = "Schreiner";
        displayName = "STR_License_Schreiner";
        price = 150000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Schreiner";
    };

    class Siliciumverarbeitung {
        variable = "Siliciumverarbeitung";
        displayName = "STR_License_Siliciumverarbeitung";
        price = 150000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Siliciumverarbeitung";
    };

	class Stahlschmied {
        variable = "Stahlschmied";
        displayName = "STR_License_Stahlschmiede";
        price = 400000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Stahlschmied";
    };

    class Suesswarenproduzent {
        variable = "Suesswarenproduzent";
        displayName = "STR_License_Suesswarenproduzent";			//Süßwarenproduzent
        price = 200000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Süßwarenproduzent";
    };

	class TintenfischQuetscher {
        variable = "TintenfischQuetscher";
        displayName = "STR_License_TintenfischQuetscher";
        price = 55000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem TintenfischQuetscher";
    };

    class Weizenverarbeitung {
        variable = "Weizenverarbeitung";
        displayName = "STR_License_Weizenverarbeitung";
        price = 125000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Weizenverarbeiter";
    };

	class WillyWonka {
        variable = "WillyWonka";
        displayName = "STR_License_Schokolade";
        price = 175000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem WillyWonka";
    };

	class uranverarbeiter1 {
        variable = "uranverarbeiter1";
        displayName = "STR_License_uranverarbeiter1";
        price = 285000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Uranverarbeiter";
    };

	class uranverarbeiter2 {
        variable = "uranverarbeiter2";
        displayName = "STR_License_uranverarbeiter2";
        price = 285000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Uranverarbeiter";
    };

	class uranverarbeiter3 {
        variable = "uranverarbeiter3";
        displayName = "STR_License_uranverarbeiter3";
        price = 285000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Uranverarbeiter";
    };

	class uranverarbeiter4 {
        variable = "uranverarbeiter4";
        displayName = "STR_License_uranverarbeiter4";
        price = 285000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Uranverarbeiter";
    };

	class uranverarbeiter5 {
        variable = "uranverarbeiter5";
        displayName = "STR_License_uranverarbeiter5";
        price = 285000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Uranverarbeiter";
    };

	class uranverarbeiter6 {
        variable = "uranverarbeiter6";
        displayName = "STR_License_uranverarbeiter6";
        price = 285000;
        illegal = false;
        side = "civ";
		description = "Zu kaufen bei deinem Uranverarbeiter";
    };





	//Illegal

    class Aluminiumverbreitung {
        variable = "Aluminiumverbreitung";
        displayName = "STR_License_Aluminium";
        price = 600000;
        illegal = true;
        side = "civ";
    };

    class ayahuasca {
        variable = "ayahuasca";
        displayName = "STR_License_Ayahuasca";
        price = 700000;
        illegal = true;
        side = "civ";
    };

    class Chemiker {
        variable = "Chemiker";
        displayName = "STR_License_Chemiker";
        price = 250000;
        illegal = true;
        side = "civ";
		description = "Zu kaufen bei deinem Chemiker";
    };

    class coaxium {
        variable = "coaxium";
        displayName = "STR_License_Coaxium";
        price = 1250000;
        illegal = true;
        side = "civ";
    };
    class cocaine {
        variable = "cocaine";
        displayName = "STR_License_Cocaine";
        price = 620000;
        illegal = true;
        side = "civ";
    };

	class Dynamit {
        variable = "Dynamit";
        displayName = "STR_License_Dynamit";
        price = 375000;
        illegal = true;
        side = "civ";
		description = "Zu kaufen bei deinem Sprengmeister";
    };

	class Ephedrin {
        variable = "Ephedrin";
        displayName = "STR_License_Ephedrin";
        price = 500000;
        illegal = true;
        side = "civ";
		description = "Zu kaufen bei deinem Ephedrin";
    };

	class Gourmet {
        variable = "Gourmet";
        displayName = "STR_License_Gourmet";
        price = 250000;
        illegal = true;
        side = "civ";
		description = "Zu kaufen bei deinem Gourmetkoch";
    };

	class kerosinhersteller {
        variable = "kerosinhersteller";
        displayName = "STR_License_kerosinhersteller";
        price = 1250000;
        illegal = true;
        side = "civ";
		description = "Zu kaufen bei deinem Kerosinhersteller";
    };

    class kybercrystal {
        variable = "kybercrystal";
        displayName = "STR_License_Kybercrystal";
        price = 2000000;
        illegal = true;
        side = "civ";
    };

	class Moonshiner {
        variable = "Moonshiner";
        displayName = "STR_License_Moonshiner";
        price = 550000;
        illegal = true;
        side = "civ";
		description = "Zu kaufen bei deinem Moonshiner";
    };

    class Psychedelika {
        variable = "Psychedelika";											/////////
        displayName = "STR_License_Psychedelika";
        price = 500000;
        illegal = true;
        side = "civ";
		description = "Zu kaufen bei deinem Psychedelika";
    };

	class Scarface {								////////////////////////
        variable = "Scarface";
        displayName = "STR_License_Scarface";
        price = 250000;
        illegal = true;
        side = "civ";
		description = "Zu kaufen bei deinem Scarfacer";
    };

    class SnoopDogg {
        variable = "SnoopDogg";
        displayName = "STR_License_Marjiuana";
        price = 425000;
        illegal = true;
        side = "civ";
		description = "Zu kaufen bei deinem SnoopDogg";
    };

    class strawberryhaze {
        variable = "strawberryhaze";
        displayName = "STR_License_Strawberryhaze";
        price = 850000;
        illegal = true;
        side = "civ";
    };

    class uranverarbeiter7 {
        variable = "uranverarbeiter7";
        displayName = "STR_License_uranverarbeiter7";
        price = 625000;
        illegal = true;
        side = "civ";
		description = "Zu kaufen bei deinem Uranverarbeiter";
    };

    class wolfram {
        variable = "wolfram";
        displayName = "STR_License_Wolfram";
        price = 1250000;
        illegal = true;
        side = "civ";
    };







	//GRUPPIERUNGEN


    class hallo {
        variable = "hallo";
        displayName = "STR_License_hallo";
        price = 1000000;
        illegal = false;
        side = "civ";
		description = "";
    };


	class th111 {
        variable = "th111";
        displayName = "STR_License_111th";
        price = 10;
        illegal = false;
        side = "civ";
	};

	class soraya {
        variable = "soraya";
        displayName = "STR_License_soraya";
        price = 10;
        illegal = false;
        side = "civ";
	};

	class sm {
        variable = "sm";
        displayName = "STR_License_sm";
        price = 10;
        illegal = false;
        side = "civ";
	};

	//////////////
	////GANGS/////
	//////////////

	class ponnygang {
        variable = "ponnygang";
        displayName = "STR_License_PONNY_Gang";
        price = 1000000;
        illegal = false;
        side = "civ";
		description = "";
    };

	class alice {
        variable = "alice";
        displayName = "STR_License_alice";
        price = 1000000;
        illegal = false;
        side = "civ";
		description = "";
    };

	class baum {
        variable = "baum";
        displayName = "STR_License_baum";
        price = 1000000;
        illegal = false;
        side = "civ";
		description = "";
    };

    class psa {
        variable = "psa";
        displayName = "STR_License_psa";
        price = 1000000;
        illegal = false;
        side = "civ";
		description = "";
    };

    /*
	class vaiphy {
        variable = "vaiphy";
        displayName = "STR_License_vaiphy";
        price = 1000000;
        illegal = false;
        side = "civ";
		description = "";
    };

	class lafamilia {
        variable = "lafamilia";
        displayName = "STR_License_lafamilia";
        price = 1000000;
        illegal = false;
        side = "civ";
		description = "";
    };*/

    class soa {
        variable = "soa";
        displayName = "STR_License_soa";
        price = 1000000;
        illegal = false;
        side = "civ";
		description = "";
    };

    class UmbrellaCorps {
        variable = "UmbrellaCorps";
        displayName = "STR_License_UmbrellaCorps";
        price = 1000000;
        illegal = false;
        side = "civ";
		description = "";
    };

    class HausRecht {
        variable = "HausRecht";
        displayName = "STR_License_HausRecht";
        price = 1000000;
        illegal = false;
        side = "civ";
		description = "";
    };
};
