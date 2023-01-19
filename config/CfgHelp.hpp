/*

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

*/

class husky_help_Menu {
    class husky_help {
        texts[] = { "links", "steuerung", "steuerungALLE", "steuerungCIV", "steuerungMED", "steuerungCOP", "anfaenger", "tempest", "Rohstoff", "Bananen", "Kokosnuesse", "Aluminium", "Bauxit", "Baumwolle", "ChemischeElemente", "Diamanten8Karat", "Diamanten14Karat", "dynamit", "Ephedrin", "Eisen", "Glas", "Holzbretter", "Kautschuk", "Kohle", "Kokain", "Kunststoff", "LSD", "Marjiuana", "Salz", "Schokolade", "Schildkroeten", "Zucker", "Moonshine", "Bananenkuchen", "Kokosnussbrot", "Kerosin", "Kraftstoff", "Silizium", "Stahl", "Uran_vorbereitung", "Uran", "Uran_zusatz", "Plutonium"};
    };
};
//class helpButton: husky_RscButtonMenu { idc = -1; onButtonClick = "call husky_fnc_helpMenu"; text = "Hilfe"; //--- ToDo: Localize; x = 0.26 + (6.25 / 19.8) + (1 / 250 / (safezoneW / safezoneH)); y = 0.66808 * safezoneH + safezoneY; w = 0.0644531 * safezoneW; h = 0.022 * safezoneH;};

class husky_help_text {
	class links {
        displayName = "Homepage";
        icon = "icons\ico_pickaxe.paa";
        description = "Besuche Unser <a href='Minefactory.eu'>>>Forum<<</a> für Ankündigungen, Bewerbungen und vieles mehr!";
    };

	class steuerung {
        displayName = "Animationen";
        icon = "icons\ico_pickaxe.paa";
        description = " shift + Num1 = Taekwondo <br/> shift + Num2 = Kniebeugen <br/> shift + Num3 = Schnelle Kniebeugen <br/> shift + Num4 = Liegestützen <br/> shift + Num5 = Pinkeln <br/> shift + Num6 = Hi <br/> shift + Num7 = Kopfnicken <br/> shift + Num8 = Mittelfinger (primär Waffe benötigt)";
    };

	class steuerungALLE {
        displayName = "Steuerung für alle";
        icon = "icons\ico_pickaxe.paa";
        description = " ENDE = Ohrstöpsel <br/>  F10 = Ausweiß zeigen <br/>shift + H = Waffe holstern <br/> T = Kofferraum <br/>  U = Fahrzeug auf-/abschliessen <br/> shift + R = Personen festnehmen <br/> shift + G = Niederschlagen <br/> shift + B = Ergeben <br/> K = EMP (Verfügbar in der Hellcat) <br/> Ö = Keycard benutzen  <br/>";
    };

	class steuerungCIV {
        displayName = "Steuerung Zivilisten";
        icon = "icons\ico_pickaxe.paa";
        description = "Windowstaste = Farmen<br/> 9 = Clan Hupe<br/>";
    };

	class steuerungMED {
        displayName = "Steuerung Rettungsdienst";
        icon = "icons\ico_pickaxe.paa";
        description = " F10 = Ausweiß zeigen<br/> F11 = Dienstausweiß zeigen<br/> Windowstaste auf Toten= Wiederbeleben<br/> Windowstaste auf Personen = Interaktionsmenü (Strafzettel,EHK etc.)<br/> Windowstaste auf Fahrzeuge = Interaktionsmenü (Abschleppen etc...)<br/> Strg + H Rank Menü<br/> Shift + P Mediziner Computer öffnen<br/> 0 = Blaulicht<br/> 9 = Sirene<br/>";
    };

	class steuerungCOP {
        displayName = "Steuerung Polizei";
        icon = "icons\ico_pickaxe.paa";
        description = " F10 = Ausweiß zeigen<br/> F11 = Dienstausweiß zeigen<br/>Windowstaste auf Personen = Interaktionsmenü (Strafzettel,Entwaffnen etc.)<br/> Windowstaste auf Fahrzeug = Interaktionsmenü (Beschlagnahmen etc...)<br/> Strg + H Rank Menü<br/> Shift + L Lasermessung (Rangefinder)<br/> Strg + F Sirenen Menü<br/> 0 = Blaulicht<br/> 9 = Sirene<br/> 8 = Zweite Sirene <br/> 7 = Dritte Sirene<br/>";
    };

	class anfaenger {
        displayName = "Anfänger Tipps";
        icon = "icons\ico_pickaxe.paa";
        description = " Gute Anfänger Routen sind:<br/> -Glas<br/> -Bauxit<br/> -Kohle";
    };

	class tempest {
	    displayName = "Tempest Info";
	    icon = "icons\ico_pickaxe.paa";
	    description = "Tempest Gerät für 15.500.000,00 € (Standard ArmA 3 Version) Baut ab | LKW-Führerschein benötigt<br/>Tempest Gerät für 65.000.000,00 € (Grüne Tanoa Version) <br/>Baut ab und Verarbeitet | LKW-Plus-Führerschein benötigt<br/> Tipp: Tempest Geräte haben einen sehr hohen Sprit verbrauch, es empfiehlt sich ein Tank LKW auf die Farmtour mit zu nehmen.";
	};

	class logistik {
	    displayName = "Logistik-System";
	    icon = "icons\ico_pickaxe.paa";
	    description = "Tempest Gerät für 15.500.000,00 € (Standard ArmA 3 Version) Baut ab | LKW-Führerschein benötigt<br/>Tempest Gerät für 65.000.000,00 € (Grüne Tanoa Version) <br/>Baut ab und Verarbeitet | LKW-Plus-Führerschein benötigt<br/> Tipp: Tempest Geräte haben einen sehr hohen Sprit verbrauch, es empfiehlt sich ein Tank LKW auf die Farmtour mit zu nehmen.";
	};

	class fuelmission {
	    displayName = "Fuel-Mission";
	    icon = "icons\ico_pickaxe.paa";
	    description = "Tempest Gerät für 15.500.000,00 € (Standard ArmA 3 Version) Baut ab | LKW-Führerschein benötigt<br/>Tempest Gerät für 65.000.000,00 € (Grüne Tanoa Version) <br/>Baut ab und Verarbeitet | LKW-Plus-Führerschein benötigt<br/> Tipp: Tempest Geräte haben einen sehr hohen Sprit verbrauch, es empfiehlt sich ein Tank LKW auf die Farmtour mit zu nehmen.";
	};

	class hilfreiches {
	    displayName = "Nützliches";
	    icon = "icons\ico_pickaxe.paa";
	    description = " Gute Anfänger Routen sind:<br/> -Glas -Bauxit -Kohle<br/> ==============<br/>Tempest Gerät für 15.500.000,00 € (Standard ArmA 3 Version) Baut ab | LKW-Führerschein benötigt<br/>Tempest Gerät für 65.000.000,00 € (Grüne Tanoa Version) <br/>Baut ab und Verarbeitet | LKW-Plus-Führerschein benötigt<br/> Tipp: Tempest Geräte haben einen sehr hohen Sprit verbrauch, es empfiehlt sich ein Tank LKW auf die Farmtour mit zu nehmen.";
	};
	//<br/> ==============<<br/> Bei DP-Missonen müssen Paket von Punkt A zu Punkt B gebracht werden. <br/>Dazu einfach an einem nahegelegenen DP Punkt ein Packet annehmen und es zum angezeigten Punkt bringen. Dazu einfach an einem nahegelegenen DP Punkt ein Packet annehmen und es zum angezeigten Punkt bringen.<br/> Tipp: Solltet ihr nicht mehr wissen wo das Packet hin muss, kann es nachgelesen werden. Dazu einfach die Karte öffnen und oben links auf den Punkt Information klicken.<br/> ==============<<br/> Ähnlich wie bei DP Mission könnt ihr Treibstoff an Tankstellen liefern und dafür ein gutes Endgeld verdienen. <br/>1. Mit einem Fahrzeug mit Tank (Truck, Zamak, Tempest, Hemmt, Taru Tank) zum Kraftstoff & Kerosin Verarbeiter begeben <br/>2. Win-Taste am Fahrzeug betätigen und den Button mir [Lagern] drücken <br/>3. Zur nächsten Tankstelle begeben <br/>4. Win-Taste am Fahrzeug betätigen und den Butoon mit [huskyrn] drücken <br/> ==============<br/>Erweitertes FAchtsystem nutzen<br/>Voraussetzung:<br/>1. LKW-Führerschein (benötigt für den Hemmt Pritsche)<br/>2. Schwerlast-Berechtigung (benötigt um Container zu kaufen/mieten und auf den Hemmt aufzuladen)<br/> Durchführung:<br/> 1. Hemmt Pritsche kaufen/mieten bzw. ausparken<br/> 2. Container kaufen/mieten bzw. ausparken<br/> 3. Rückwärts mit dem Hemmt an den/die Container Heranfahren<br/>4. im Scrollmenü die Option zum aufladen auswählen

	class Rohstoff {
        displayName = "Rohstoff";
        icon = "icons\ico_pickaxe.paa";
        description = "(Werkzeug,Lizenz) - Abbau - Verarbeitung > Verkauf";
    };

    class Bananen {
        displayName = "Bananen";
        icon = "icons\uc-neu\Banane.paa";
        description = "(keine, keine) - Bananenfeld > Supermarkt";
    };

    class Kokosnuesse {
        displayName = "Kokosnüsse";
        icon = "icons\uc-neu\Kokosnuss.paa";
        description = "(keine, keine) - Kokosnussfeld > Supermarkt";
    };

	class Bauxit {
        displayName = "Bauxit";
        icon = "icons\uc-neu\BauxitV.paa";
        description = "(Spitzhacke, Bauxit) Bauxitvorkommen - Bauxit Verarbeiter > Bauxithändler";
    };

	class Baumwolle {
        displayName = "Baumwolle";
        icon = "icons\uc-neu\Seide.paa";
        description = "(keine, Baumwolle) Baumwollplantage - Baumwoll Verabeiter > Stoffhändler";
    };

	class ChemischeElemente {
        displayName = "Chemische Elemente";
        icon = "icons\uc-neu\ChemElementV.paa";
        description = "(Reagenzglas, Chemiker) Chemische Elemente - Chemiefabrik > Chemiehändler";
    };

	class Diamanten8Karat {
        displayName = "Diamanten 8 Karat";
        icon = "icons\ico_diamondCut.paa";
        description = "(Spitzhacke, Diamantenreiniger und Diamantenschleifer) Diamantenmine - Diamanten reinigen - Diamantenschleifen > Diamantenhändler";
    };

	class Diamanten14karat {
        displayName = "Diamanten 24 Karat";
        icon = "icons\ico_diamondCut.paa";
        description = "(Spitzhacke, DiamantenVeredler) Diamantenmine - Diamanten reinigen - Diamantenschleifen - Diamantenveredelung > Diamantenhändler";
    };

	class dynamit {
        displayName = "Dynamit";
        icon = "icons\uc-neu\Dynamit.paa";
        description = "(Spitzhacke, Dynamit) Schwarzpulver Abbaugebit - Dynamit Hersteller > Dynamit Händler";
    };

	class Ephedrin {
        displayName = "Ephedrin";
        icon = "icons\uc-neu\EphedrinV.paa";
        description = "(Sichel, Ephedrin) Ephedrinfeld - Ephedrinverarbeiter > Apotheke";
    };

	class Eisen {
        displayName = "Eisen";
        icon = "icons\uc-neu\Eisenbarren.paa";
        description = "(Spitzhacke, Schmied) Eisenmine - Eisenverarbeitung > Metallhändler";
    };

	class Glas {
        displayName = "Glas";
        icon = "icons\ico_glass.paa";
        description = "(Schaufel, Glasbläßer) Sandgrube - Glasherstellung > Glashändler";
    };

	class Holzbretter {
        displayName = "Holzbretter";
        icon = "icons\uc-neu\Holzbrett.paa";
        description = "(Axt, Schreiner) Wald - Holzverarbeitung > Holzhändler";
    };

	class Kautschuk {
        displayName = "Kautschuk";
        icon = "icons\uc-neu\Gummi.paa";
        description = "(Axt, Verfahrenstechnicker für Kautshuktechnik) Kautschukplantage - Kautschukverarbeiter > Gummihändler";
    };

	class Kohle {
        displayName = "Kohle";
        icon = "icons\uc-neu\KohleErz.paa";
        description = "(Spitzhacke, Kohle) Kohlemine - Kohleverarbeitung > Kohlehändler";
    };
	
	class Kokain {
        displayName = "Kokain";
        icon = "icons\ico_cocaineProcessed.paa";
        description = "(Sichel, Kokainausbildung) Kokain Feld - Kokainverarbeiter > Drogendealer";
    };

	class Kunststoff {
        displayName = "Kunststoff";
        icon = "icons\ico_oilProcessed.paa";
        description = "(Bohrgerät, Ölbohrer) Erdölfeld - Ölverarbeitung > Kunststoffhändler";
    };

	class LSD {
        displayName = "LSD";
        icon = "icons\uc-neu\LSD.paa";
        description = "(Netz, Psychedelika) Frösche - Froschverarbeiter > Drogendealer";
    };

	class Marjiuana {
        displayName = "Marihuana";
        icon = "icons\ico_marijuana.paa";
        description = "(Sichel, Snoop Dogg) Cannabisfeld - Cannabisverarbeiter > Drogendealer";
    };

	class Salz {
        displayName = "Salz";
        icon = "icons\ico_saltProcessed.paa";
        description = "(Spitzhacke, Salzverarbeitung | Nur mit Cessna transportierbar) Salzfeld - Salzverarbeiter > Salzhändler";
    };

	class Schokolade {
        displayName = "Schokolade";
        icon = "icons\uc-neu\Milja.paa";
        description = "(Machete, Willy Wonka) Kakaofeld - Schokoladenfabrik > Schokoladenhändler";
    };

	class Schildkroeten {
        displayName = "Schildkröten";
        icon = "icons\ico_turtleRaw.paa";
        description = "(Taucheranzug-Sdar, - ) Tauchen";
    };

	class Zucker {
        displayName = "Zucker";
        icon = "icons\uc-neu\Zucker.paa";
        description = "(Sense, Süßwarenproduzent) Zuckerrohrfeld - Zuckerrohr Verarbeiter > Zucker Händler";
    };

	class Moonshine {
        displayName = "Moonshine";
        icon = "icons\uc-neu\Moonshine.paa";
        description = "(Sense, Moonshiner) Zuckerrohrfeld - Zuckerrohr Verarbeiter - Moonshinebrennerei > Bar";
    };

	class Bananenkuchen {
        displayName = "Bananenkuchen";
        icon = "icons\uc-neu\Bananenbrot.paa";
        description = "(keine, Bananenkuchen-Rezept) Bananen - Mehl - Bäckerei > Süßwarenladen";
    };

	class Kokosnussbrot {
        displayName = "Kokosnussbrot";
        icon = "icons\uc-neu\Kokosbrot.paa";
        description = "(keine, Kokosnussbrot-Rezept) Kokosnüsse - Mehl - Bäckerei > Süßwarenladen";
    };

	class Kerosin {
        displayName = "Kerosin";
        icon = "icons\uc-neu\Kerosin.paa";
        description = "(keine, Kerosinhersteller) Heizöl - 2x Chemische Stoffe - Kraftstoffverarbeitung > Treibstoffhandel";
    };

	class Kraftstoff {
        displayName = "Kraftstoff";
        icon = "icons\uc-neu\Kraftstoff.paa";
        description = "(keine, Krafstoffherstellung) Heizöl - Ölverarbeitung - Kraftstoffverarbeitung > Treibstoffhandel";
    };

	class silizium {
        displayName = "Silizium";
        icon = "icons\uc-neu\SiliciumV.paa";
        description = "(Spitzhacke,Siliciumverarbeitung) Siliziumabbau - Siliziumverarbeiter > Siliziumhändler";
    };

	class Stahl {
        displayName = "Stahl";
        icon = "icons\uc-neu\Stahl.paa";
        description = "(keine,Stahlschmied) 2x Eisenbarren - Kohle -Stahlschmiede > Metallhändler";
    };

	class Aluminium {
        displayName = "Aluminium";
        icon = "icons\uc-neu\Alu.paa";
        description = "(keine,Aluminiumverbreitung) 1x Kohle (Verarbeitet) - 1x Bauxit (Verarbeitet) - 1x ChemischeElemente (Verarbeitet) -Aluminiumverbreitung > Metallhändler";
    };
	
	class erdbeermarmelade {
        displayName = "Erdbeermarmelade";
        icon = "icons\ico_erdbeermarmelade.paa";
        description = "(keine) Erdbeerfeld -Opas Marmeladen Hütte > Altis Markt";
    };
	
	class honig {
        displayName = "Honig";
        icon = "icons\ico_honig.paa";
        description = "(keine) Bienenstock -Imker > Altis Markt";
    };
	
	class bubblewaffel {
        displayName = "Bubblewaffel";
        icon = "icons\ico_bubblewaffel.paa";
        description = "(keine) Molkerei > Marcellos Geheim Mixtur bei Marcellosfoodtruck kaufen > 1 Marcellos Geheim Mixtur + 1 Milch > Bubblewaffel backen = 1 Bubblewaffel > Marcellosfoodtruck";
    };
	
	class frozenjoghurt {
        displayName = "Frozenjoghurt";
        icon = "icons\ico_frozenjoghurt.paa";
        description = "(keine) Milchsäure > Marcellos Geheim Mixtur bei Marcellosfoodtruck kaufen > 1 Marcellos Geheim Mixtur + 1 Milchsäure > Frozenjoghurt zapfen = 1 Frozenjoghurt > Marcellosfoodtruck";
    };
	
	class softeis {
        displayName = "Softeis";
        icon = "icons\ico_softeis.paa";
        description = "(keine) Süssesahne > Marcellos Geheim Mixtur bei Marcellosfoodtruck kaufen > 1 Marcellos Geheim Mixtur + 1 Süssesahne > Softeis zapfen = 1 Softeis > Marcellosfoodtruck";
    };
	
	class strawberryhaze {
        displayName = "Strawberryhaze";
        icon = "icons\ico_strawberryhaze.paa";
        description = "(keine) Erdbeerfeld > Erdbeere + (Sichel, Snoop Dogg) Cannabisfeld - Cannabisverarbeiter > Marihuana > Strawberryhaze Produktion 1 Erdbeere + 1 Marihuana = Strawberryhaze > Drogendealer";
    };
	
	class ayahuasca {
        displayName = "Ayahuasca";
        icon = "icons\ico_ayahuasca.paa";
        description = "(keine) Ayahuasca Feld -Ayahuasca Koechel > Drogendealer";
    };
	
	class wolfram {
        displayName = "Wolfram";
        icon = "icons\ico_wolfram.paa";
        description = "(Spitzhacke) Wolfram Mine -Wolfram Raffinerie > Schmuggler";
    };
	
	class coaxium {
        displayName = "Coaxium";
        icon = "icons\ico_coaxium.paa";
        description = "(Spitzhacke) Coaxium Mine -Coaxium Raffinerie > Schmuggler";
    };
	
	class kybercrystal {
        displayName = "Kybercrystal";
        icon = "icons\ico_kybercrystal.paa";
        description = "(Spitzhacke) zerbochene Kybercrystale -Kybercrystal Schmelze > Schmuggler";
    };
	
	class Uran_vorbereitung {
        displayName = "Uranroute - Vorbereitung";
        icon = "icons\hg-neu\Uraninierz.paa";
        description = "Spitzhacke ,Schutzkleidung (Schutzanzug, Maske und Gasflasche) craften, Schwerlast Berechtigung, Hemtt Pritch, Geräte Aufbau, Lagerplatz (Schliessfach)";
    };
	
	class Uran {
        displayName = "Uranroute";
        icon = "icons\hg-neu\YellowCake.paa";
        description = "(Spitzhacke) Uranabbaugebiet - Uraninitlöser - Uraninit Trockner - Zentrifuge - Uranylnitratwäscher - Uranlabor - Uranverdichter > Uranhändler";
    };
	class Uran_zusatz {
        displayName = "Uranroute - Zusatz";
        icon = "icons\hg-neu\reinesUran.paa";
        description = "Uraninitlöser + Schwefelsäure(Chemie Handel); Uraninit Trockner + Ammoniak(Ammoniak Vorkommen); Zentrifuge + Salpetersäure(Chemie Handel); Uranylnitratwäscher + Tributylphosphat(Tributylphosphat Vorkommen)";
    };

	class Plutonium {
        displayName = "Plutonium";
        icon = "icons\hg-neu\Plutonium.paa";
        description = "(keine,Atomkraftwerk) Reines Uran - Atomkraftwerk > Plutoniumhändler";
    };
};

class husky_car_Menu {
    class husky_CarMenu {
        texts[] = { "B_Quadbike_01_F","C_Hatchback_01_F","C_Offroad_01_F","C_Offroad_02_unarmed_F","C_SUV_01_F","C_Hatchback_01_sport_F","C_Van_01_transport_F","C_Van_01_box_F","C_Van_01_fuel_F","C_Van_02_transport_F","C_Van_02_vehicle_F","I_Truck_02_fuel_F","I_Truck_02_transport_F","I_Truck_02_covered_F","O_Truck_03_fuel_F","O_Truck_03_transport_F","O_Truck_03_covered_F","B_Truck_01_fuel_F","B_Truck_01_transport_F","B_Truck_01_covered_F","B_Truck_01_box_F","C_Heli_Light_01_civil_F","B_Heli_Light_01_F","O_Heli_Light_02_unarmed_F","I_Heli_Transport_02_F","B_Heli_Transport_03_unarmed_F","O_Heli_Transport_04_F","O_Heli_Transport_04_box_F","C_Plane_Civil_01_F","C_Plane_Civil_01_racing_F","I_C_Plane_Civil_01_F","B_T_VTOL_01_infantry_F","B_T_VTOL_01_vehicle_F","C_Rubberboat","C_Boat_Civil_01_F","B_SDV_01_F","C_Boat_Transport_02_F","C_Scooter_Transport_01_F","B_T_LSV_01_unarmed_F","O_T_LSV_02_unarmed_F","I_G_Offroad_01_armed_F","O_T_LSV_02_armed_F","O_MRAP_02_F","B_T_MRAP_01_F"};
    };
};

class husky_bug {
    class bug_settings{
        useDB = true;
        useA3Log = false;
    };
};

class husky_market {
    class marketList {
        items[] = { "eisenErz", "eisenBarren", "holzBrettU", "holzBrettV", "kautschuk", "gummi", "weizen", "mehl", "schokoU", "schokoV", "bauxitU", "bauxitV", "baumwolleU", "baumwolleV", "zuckerU", "zuckerV", "SiliciumU", "SiliciumV", "oilUnprocessed", "oilProcessed", "kohleUnverarbeitet", "kohleVerarbeitet", "sand", "glass", "diamond_Uncut", "diamond_Cut", "diamond_Cut8", "diamond_Cut14", "chemU", "chemV", "schwarzpulverU", "schwarzpulverV", "frosch", "frogSchenkel", "LSD", "cannabis", "marijuana", "EphedrinU", "EphedrinV", "Aluminium", "Kokosnussbrot", "Bananenkuchen", "Kerosin", "Kraftstoff", "Stahl", "waterBottle", "rabbit", "tbacon", "kokosnuss", "banane", "redgull", "toolkit", "fuelFull", "gpstracker", "schmerzmittel", "rabbit_raw", "hen_raw", "rooster_raw", "sheep_raw", "goat_raw","sense", "machete", "bohrgeraet", "axt", "schaufel", "net", "sichel", "pickaxe", "reagenzglas", "flasche", "kabelbinder" , "schmerzmittel", "boltcutter", "blastingcharge", "holzbox", "sandsackecke", "sandsackende", "sandsackkurve", "sandsackkurz", "sandsacklang"};
    };
};

class husky_license {
    class licenseList {
        items[] = {"driver","boat","pilot","trucking","truckingplus","schwerlast","gun","gunplus","dive","home","Flugzeugpilot","rebel","restrain","escort","pullout","militaer","Bauxit","Baumwolle","Chemiker","Diamantenreiniger","Diamantenschleifer","DiamantenVeredler","Dynamit","Ephedrin","Glasbaessler","Schreiner","Kautshuktechnik","Kohle","Oelbohrer","Psychedelika","SnoopDogg","WillyWonka","Suesswarenproduzent","Moonshiner","Baeckereiban","Baeckereikok","kerosinhersteller","krafstoffhersteller","Siliciumverarbeitung","Stahlschmied","uranverarbeiter1","uranverarbeiter2","uranverarbeiter3","uranverarbeiter4","uranverarbeiter5","uranverarbeiter6","uranverarbeiter7"};
    };
};
