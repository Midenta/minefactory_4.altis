//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/*
 * Script by 	: MrFrost (https://steamcommunity.com/id/mrfrostlp)
 *                Deathman (https://steamcommunity.com/id/deathman2002)
 *
 * Edited by 	: [YourName]
 *
 * ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 * Support via
 * Discord:         MrFrost#1897
 * Native-Network:  https://native-network.net/user/5883-mrfrost/
 * ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
 *
 * Hereby I forbid the publication under a different name, as original or modified, without my explicit permission.
 * This script was developed explicitly for the Native-Network community. 
 * It is not allowed to use, publish or sell it on other platforms without my explicit permission.
 * It is not allowed to remove or edit this header (except for the line "Edited by :").
 */

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////// Config ///////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class InfoMenu_Master {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ///////////////////////////////////////////////// Main Settings //////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    InfoMenu_Main_Title = "MineFactory Wiki"; //Here you can set the main title that will be displayed above the selection. "" means "Info Menu" by default.

    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    class Categories {

    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////// Information ///////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    /*
        * Here you can make all settings for the info menu. The entries must be created as follows:
        * 
        * class Category_1 {                                                                       <--You can name this class anything you like.
        *      displayname = "Example Category 1";                                                 <--This is the name that will be displayed for the category.
        *      Cath_title = "Example Category Title 1";                                            <--The title that is displayed when you click on the category.
        *      Cath_text = "<t size='1.0' color='#ffffff'>Example Category 1</t>";                 <--This text is displayed when you select the category and not the entries.
        *      Cath_picture = "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_exit_cross_ca.paa";   <--The icon that is displayed next to the category. "" means no Icon.
        *      entries[] = {
        *          {
        *              "Example Entry 1",                                                           <--Name of the entry.
        *              "Example Title 1",                                                           <--The title above the text.
        *              "<t size='1.0' color='#ffffff'>This is a Example by MrFrost</t>",            <--The text that is displayed when you click on the entry.
        *              "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_exit_cross_ca.paa"           <--The icon that is displayed in front of the entry. "" means no Icon.
        *          },
        *          {
        *              "Example Entry 2",                                                           <--Name of the entry.
        *              "Example Title 1",                                                           <--The title above the text.
        *              "<t size='1.0' color='#ffffff'>This is a Example by MrFrost</t>",            <--The text that is displayed when you click on the entry.
        *              "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_exit_cross_ca.paa"           <--The icon that is displayed in front of the entry. "" means no Icon.
        *          }
        *      };
        * };
        *
        * Here you can learn how to format the text: https://community.bistudio.com/wiki/Structured_Text
        * 
        */
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    ////////////////////////////////////////////////// Wiki entries //////////////////////////////////////////////////
    //////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        
        class Welcome {
            displayname = "Willkommen";
            Cath_title = "Willkommen";
            Cath_text = "<img size=15.0 image='images\Banner_Arma_3.jpg'/><t color='#FFFFFFFF' size='1'><t color='#FF8000' size='1.2'><br/><br/>Halle!</t><br/><br/><a href='https://forum.Minefactory.eu/forum/'>	Besuche Unser Forum um Bekanntmachung, Bewerbungen und vieles mehr zu nutzen!	</a></t>";
            Cath_picture = "\A3\ui_f\data\GUI\Rsc\RscDisplayDLCContentBrowser\platform_ca.paa";
            entries[] = {};
        };

        //////////////////////////////////////////////////////////////////////////////////////////////////////////////

        class Category_1 {
            displayname = "Steuerung";
            Cath_title = "Steuerung";
            Cath_text = "<t size='1.0' color='#ffffff'>Steuerung</t>";
            Cath_picture = "\A3\ui_f\data\GUI\Rsc\RscDisplayMain\menu_tutorials_ca.paa";
            entries[] = {
				{
                    "Animationen",
                    "Animationen",
                    " shift + Num1 = Taekwondo <br/> shift + Num2 = Kniebeugen <br/> shift + Num3 = Schnelle Kniebeugen <br/> shift + Num4 = Liegest??tzen <br/> shift + Num5 = Pinkeln <br/> shift + Num6 = Hi <br/> shift + Num7 = Kopfnicken <br/> shift + Num8 = Mittelfinger (prim??r Waffe ben??tigt)",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArsenal\voice_ca.paa"
                },
                {
                    "Steuerung Alle",
                    "Steuerung Alle",
                    " ENDE = Ohrst??psel <br/> F10 = Ausweis zeigen <br/> shift + H = Waffe holstern <br/> T = Kofferraum <br/>  U = Fahrzeug auf-/abschliessen <br/> shift + R = Personen festnehmen <br/> shift + G = Niederschlagen <br/> shift + B = Ergeben <br/> Shift + L = Schulterlampe <br/> K = EMP (Verf??gbar in der Hellcat) <br/> ?? = Keycard benutzen  <br/> STRG = Tuning Chip nutzen",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArsenal\map_ca.paa"
                },
                {
                    "Steuerung Zivilisten",
                    "Steuerung Zivilisten",
                    "Windowstaste = Farmen und interagieren am Spieler und Fahrzeug<br/> 9 = Clan Hupe<br/>",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArsenal\voice_ca.paa"
                },
                {
                    "Steuerung Feuerwehr",
                    "Steuerung Feuerwehr",
                    " F10 = Ausweis zeigen<br/> F11 = Dienstausweis zeigen<br/> Windowstaste auf Toten= Wiederbeleben<br/> Windowstaste auf Personen = Interaktionsmen?? (Strafzettel,EHK etc.)<br/> Windowstaste auf Fahrzeuge = Interaktionsmen?? (Abschleppen etc...)<br/> H = Rank Men?? (am Spieler) <br/> Shift + O = Mediziner Computer ??ffnen <br/> Shift + ?? = Sperrzonen-System <br/> 0 = Blaulicht<br/> 9 = Sirene<br/>",
                    "\A3\ui_f\data\GUI\Cfg\Notifications\tridentFriendly_ca.paa"
                },
				{
                    "Steuerung Polizei",
                    "Steuerung Polizei",
                    " F10 = Ausweis zeigen<br/> F11 = Dienstausweis zeigen<br/>Windowstaste auf Personen = Interaktionsmen?? (Strafzettel,Entwaffnen etc.)<br/> Windowstaste auf Fahrzeug = Interaktionsmen?? (Beschlagnahmen etc...)<br/> H = Rank Men?? (am Spieler) <br/> Shift + L Lasermessung (Rangefinder)<br/> Strg + F Sirenen Men??<br/> Shift + ?? = Sperrzonen-System <br/> 0 = Blaulicht<br/> 9 = Sirene<br/> 8 = Zweite Sirene <br/> 7 = Dritte Sirene<br/>",
                    "\A3\ui_f\data\GUI\Cfg\Notifications\tridentFriendly_ca.paa"
                }
            };
        };

        //////////////////////////////////////////////////////////////////////////////////////////////////////////////

        class Category_2 {
            displayname = "Einstieg f??r Neulinge";
            Cath_title = "Einstieg f??r Neulinge";
            Cath_text = "<t size='1.0' color='#ffffff'>Einstieg f??r Neulinge</t>";
            Cath_picture = "\A3\ui_f\data\GUI\Rsc\RscDisplayArsenal\goggles_ca.paa";
            entries[] = {
				{
                    "Newbie-Schutz",
                    "Newbie-Schutz",
                    "Beim ersten betreten des Servers erh??lst du vom System einen Schutz f??r Neulinge. <br/> Der Schutz ist f??r 6 Stunden aktiv. <br/> In dieser zeit kannst du nicht Ausgeraubt, Niedergeschlagen oder get??tet werden. <br/> Solltest du jedoch in der Zeit eine Waffe aufheben, so erlicht dein Newbie-Schutz und du kannst diese Vorteile nicht mehr nutzen!",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                },
                {
                    "Neulings Farmrouten",
                    "Neulings Farmrouten",
                    " Gute Anf??nger Routen sind:<br/> -Glas<br/> -Bauxit<br/> -Kohle<br/> -M??lldeponie",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                }
            };
        };

        //////////////////////////////////////////////////////////////////////////////////////////////////////////////

        class Category_3 {
            displayname = "Farming";
            Cath_title = "Farming";
            Cath_text = "<t size='1.0' color='#ffffff'>Farming</t>";
            //Cath_picture = "\A3\ui_f\data\GUI\Rsc\RscDisplayArsenal\handgun_ca.paa";
			Cath_picture = "icons\ico_pickaxe.paa";
            entries[] = {
                {
                    "Rohstoff",
                    "Rohstoff",
                    "(Werkzeug,Lizenz) - Abbau - Verarbeitung > Verkauf",
                    "icons\ico_pickaxe.paa"
                },
				{
                    "M??lldeponie",
                    "M??lldeponie",
                    "(keine,Metalldetektor) M??lldeponie > zuf??llige Items sammeln (Metalldetektor im Menu anw??hlen und benutzen klicken)",
                    "icons\hg-neu\Metalldetector.paa"
                },
				{
                    "Aluminium",
                    "Aluminium",
                    "(keine,Aluminiumverbreitung,600000) Chemische Stoffe + Kohle + Bauxit > Aluminium Schmelze > Metallh??ndler",
                    "icons\uc-neu\Alu.paa"
                },
				{
				    "Ayahuasca", 
					"Ayahuasca",
					"(keine,Ayahuasca Koechel,700000) Ayahuasca Feld -Ayahuasca Koechel > Drogendealer",
					"icons\ico_ayahuasca.paa"
				},
                {
                    "Bananen",
                    "Bananen",
                    "(keine, keine) - Bananenfeld > Supermarkt",
                    "icons\uc-neu\Banane.paa"
                },
                
				{
                    "Bananenkuchen",
                    "Bananenkuchen",
                    "(keine, Bananenkuchen-Rezept,175000) Bananen - Mehl - B??ckerei > S????warenladen",
                    "icons\uc-neu\Bananenbrot.paa"
                },
                {
                    "Bauxit",
                    "Bauxit",
                    "(Spitzhacke, Bauxit) Bauxit - Bauxit Verarbeiter > Bauxith??ndler",
                    "icons\uc-neu\BauxitV.paa"
                },
                {
                    "Baumwolle",
                    "Baumwolle",
                    "(keine, Baumwolle Verabeiter,250000) Baumwollplantage - Baumwoll Verabeiter > Stoffh??ndler",
                    "icons\uc-neu\Seide.paa"
                },
				{
				    "Bubblewaffel",
					"Bubblewaffel",
					"(keine, Marcelloskueche,500000) Molkerei > Marcellos Geheim Mixtur bei Marcellosfoodtruck kaufen > 1 Marcellos Geheim Mixtur + 1 Milch > Bubblewaffel backen = 1 Bubblewaffel > Marcellosfoodtruck",
					"icons\ico_bubblewaffel.paa"
				},
                {
                    "Chemische Elemente",
                    "Chemische Elemente",
                    "(Reagenzglas,Chemiker,250000) Chemische Elemente - Chemiefabrik > Chemieh??ndler",
                    "icons\uc-neu\ChemElementV.paa"
                },
				{
				    "Coaxium ",
					"Coaxium",
					"(Spitzhacke,Coaxium Raffinerie,1250000) Coaxium Mine -Coaxium Raffinerie > Schmuggler",
					"icons\ico_coaxium.paa"
				},
                {
                    "Diamanten 8 Karat",
                    "Diamanten 8 Karat",
                    "(Spitzhacke, Diamantenreiniger,200000 und Diamantenschleifer,125000) Diamantenmine - Diamanten reinigen - Diamantenschleifen > Diamantenh??ndler",
                    "icons\ico_diamondCut.paa"
                },
                {
                    "Diamanten 24 Karat",
                    "Diamanten 24 Karat",
                    "(Spitzhacke, DiamantenVeredler,100000) Diamantenmine - Diamanten reinigen - Diamantenschleifen - Diamantenveredelung > Diamantenh??ndler",
                    "icons\ico_diamondCut.paa"
                },
                {
                    "Dynamit",
                    "Dynamit",
                    "(Spitzhacke, Dynamit Hersteller,375000) Schwarzpulver Abbaugebit - Dynamit Hersteller > Dynamit h??ndler",
                    "icons\uc-neu\Dynamit.paa"
                },
				{
                    "Ephedrin",
                    "Ephedrin",
                    "(Sichel, Ephedrinverarbeiter,500000) Ephedrinfeld - Ephedrinverarbeiter > Apotheke",
                    "icons\uc-neu\EphedrinV.paa"
                },
				{
				    "Erdbeermarmelade",
                    "Erdbeermarmelade",
                    "(keine,Opas Marmeladen H??tte,50000) Erdbeerfeld -Opas Marmeladen H??tte > Altis Markt",
		            "icons\ico_erdbeermarmelade.paa"
				},
                {
                    "Eisen",
                    "Eisen",
                    "(Spitzhacke, Eisenverarbeitung,225000) Eisenmine - Eisenverarbeitung > Metallh??ndler",
                    "icons\uc-neu\Eisenbarren.paa"
                },
				{
				    "Frozenjoghurt", 
					"Frozenjoghurt",
					"(keine, marcelloskueche,500000) Milchs??ure > Marcellos Geheim Mixtur bei Marcellosfoodtruck kaufen > 1 Marcellos Geheim Mixtur + 1 Milchs??ure > Frozenjoghurt zapfen = 1 Frozenjoghurt > Marcellosfoodtruck",
					"icons\ico_frozenjoghurt.paa"
				},
                {
                    "Glas",
                    "Glas",
                    "(Schaufel, Glasbl??ser,175000) Sandgrube - Glasherstellung > Glash??ndler",
                    "icons\ico_glass.paa"
                },
                {
                    "Holzbretter",
                    "Holzbretter",
                    "(Axt, Schreiner)Wald - Holzverarbeitung > Holzh??ndler",
                    "icons\uc-neu\Holzbrett.paa"
                },
				{
					"Honig", 
					"Honig",
				    "(keine, Imker,50000) Bienenstock -Imker > Altis Markt",
					"icons\ico_honig.paa"
				},
                {
                    "Kautschuk",
                    "Kautschuk",
                    "(Axt, Verfahrenstechnicker f??r Kautshuktechnik,175000) Kautschukplantage - Kautschukverarbeiter > Gummih??ndler",
                    "icons\uc-neu\Gummi.paa"
                },
				{
                    "Kerosin",
                    "Kerosin",
                    "(keine, Kerosinhersteller,1250000) Roh??l(verarbeitet) - 2x Chemische Stoffe - Kraftstoffverarbeitung > Treibstoffhandel",
                    "icons\uc-neu\Kerosin.paa"
                },
                {
                    "Kohle",
                    "Kohle",
                    "(Spitzhacke, Kohleverarbeitung,175000) Kohlemine - Kohleverarbeitung > Kohleh??ndler",
                    "icons\uc-neu\KohleErz.paa"
                },
				{
                    "Kokain",
                    "Kokain",
                    "(Sichel, Kokainausbildung,620000) Kokain Feld - Kokainverarbeiter > Drogendealer",
                    "icons\ico_cocaineProcessed.paa"
                },
				{
                    "Kokosnuss",
                    "Kokosnuss",
                    "(keine, keine) - Kokosnussfeld > Supermarkt",
                    "icons\uc-neu\Kokosnuss.paa"
                },
				{
                    "Kokosnussbrot",
                    "Kokosnussbrot",
                    "(keine, Kokosnussbrot-Rezept,175000) Kokosn??sse - Mehl - B??ckerei > S????warenladen",
                    "icons\uc-neu\Kokosbrot.paa"
                },
                {
                    "Kraftstoff",
                    "Kraftstoff",
                    "(keine, Kraftstoffherstellung,300000) Erd??l - ??lverarbeitung - Kraftstoffverarbeitung > Treibstoffhandel",
                    "icons\uc-neu\Kraftstoff.paa"
                },
				{
				    "Kybercrystal", 
					"Kybercrystal",
					"(Spitzhacke, Kybercrystalschmelze,2000000) zerbochene Kybercrystale -Kybercrystal Schmelze > Schmuggler",
					"icons\ico_kybercrystal.paa"
				},
                {
                    "Kunststoff",
                    "Kunststoff",
                    "(Bohrger??t, ??lverarbeitung,225000) Erd??lfeld - ??lverarbeitung > Kunststoffh??ndler",
                    "icons\ico_oilProcessed.paa"
                },
                {
                    "LSD",
                    "LSD",
                    "(Netz, Psychedelika,500000) Fr??sche - Froschverarbeiter > Drogendealer",
                    "icons\uc-neu\LSD.paa"
                },
                {
                    "Marihuana",
                    "Marihuana",
                    "(Sichel, Snoop Dogg,425000) Cannabisfeld - Cannabisverarbeiter > Drogendealer",
                    "icons\ico_marijuana.paa"
                },
				{
                    "Moonshine",
                    "Moonshine",
                    "(Sense, Moonshiner,550000) Zuckerrohrfeld - Zuckerrohr Verarbeiter - Moonshinebrennerei > Bar",
                    "icons\uc-neu\Moonshine.paa"
                },
				{
                    "Salz",
                    "Salz",
                    "(Spitzhacke, Salzverarbeitung,350000) | Nur mit Cessna transportierbar) Salzfeld - Salzverarbeiter > Salzh??ndler",
                    "icons\ico_saltProcessed.paa"
                },
                {
                    "Schokolade",
                    "Schokolade",
                    "(Machete, Willy Wonka,175000) Kakaofeld - Schokoladenfabrik > Schokoladenh??ndler",
                    "icons\uc-neu\Milja.paa"
                },
                {
                    "Schildkroeten",
                    "Schildkroeten",
                    "(Taucheranzug-Sdar, - ) Tauchen",
                    "icons\ico_turtleRaw.paa"
                },
				{
                    "Silizium",
                    "Silizium",
                    "(Spitzhacke,Siliciumverarbeitung,150000) Siliziumabbau - Siliziumverarbeiter > Siliziumh??ndler",
                    "icons\uc-neu\SiliciumV.paa"
                },
                {
				    "Softeis",
					"Softeis",
					"(keine,marcelloskueche,500000) S??ssesahne > Marcellos Geheim Mixtur bei Marcellosfoodtruck kaufen > 1 Marcellos Geheim Mixtur + 1 S??ssesahne > Softeis zapfen = 1 Softeis > Marcellosfoodtruck",
					"icons\ico_softeis.paa"
				},
				{
                    "Stahl",
                    "Stahl",
                    "(keine,Stahlschmied,400000) 2x Eisenbarren - 1x Kohle -Stahlschmiede > Metallh??ndler",
                    "icons\uc-neu\Stahl.paa"
                },
                {
				    "Strawberryhaze", 
					"Strawberryhaze",
					"(keine,Strawberryhaze Produktion,850000) Erdbeerfeld > Erdbeere + (Sichel, Snoop Dogg) Cannabisfeld - Cannabisverarbeiter > Marihuana > Strawberryhaze Produktion 1 Erdbeere + 1 Marihuana = Strawberryhaze > Drogendealer",
					"icons\ico_strawberryhaze.paa",
				},
				{
				    "Wolfram",
					"Wolfram",
					"(Spitzhacke,Wolfram Raffinerie,1250000) Wolfram Mine -Wolfram Raffinerie > Schmuggler",
					"icons\ico_wolfram.paa"
				},
                {
                    "Zucker",
                    "Zucker",
                    "(Sense, S????warenproduzent,200000) Zuckerrohrfeld - Zuckerrohr Verarbeiter > Zucker h??ndler",
                    "icons\uc-neu\Zucker.paa"
                },
                {
                    "Uran_vorbereitung",
                    "Uranroute - Vorbereitung",
                    "Spitzhacke ,Schutzkleidung (Schutzanzug, Maske und Gasflasche) craften, Schwerlast Berechtigung, Hemtt Pritch, Ger??te Aufbau, Lagerplatz (Schliessfach)",
                    "icons\hg-neu\Uraninierz.paa"
                },
                {
                    "Uran",
                    "Uranroute",
                    "(Spitzhacke) Uranabbaugebiet - Uraninitl??ser,285000 - Uraninit Trockner,285000 - Zentrifuge,285000 - Uranylnitratw??scher,285000 - Uranlabor,285000 - Uranverdichter,285000 > Uranh??ndler",
                    "icons\hg-neu\YellowCake.paa"
                },
                {
                    "Uran_zusatz",
                    "Uranroute - Zusatz",
                    "Uraninitl??ser + Schwefels??ure(Chemie Handel); Uraninit Trockner + Ammoniak(Ammoniak Vorkommen); Zentrifuge + Salpeters??ure(Chemie Handel); Uranylnitratw??scher + Tributylphosphat(Tributylphosphat Vorkommen)",
                    "icons\hg-neu\reinesUran.paa"
                },
                {
                    "Plutonium",
                    "Plutonium",
                    "(keine,Atomkraftwerk,625000) Reines Uran - Atomkraftwerk > Plutoniumh??ndler",
                    "icons\hg-neu\Plutonium.paa"
                },
                {
                    "Akten (nur f??r Polizei)",
                    "Akten (nur f??r Polizei)",
                    "(keine,keine) Polizei Revier Kavla - Aktenschredder > Altpapierh??ndler",
                    "icons\uc-neu\Bauplan.paa"
                }
            };
        };
		
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////
		class Category_6 {
            displayname = "Farming Hilfe";
            Cath_title = "Farming Hilfe";
            Cath_text = "<t size='1.0' color='#ffffff'>Alle Wichtigen Informationen zum Logistik-System, Farmen mit Tempest usw.!</t>";
            Cath_picture = "\A3\ui_f\data\GUI\Rsc\RscDisplayMain\menu_tutorials_ca.paa";
            entries[] = {
                {
                    "Tempest Info",
                    "Tempest Info",
                    "Tempest Ger??t f??r 15.500.000,00 $ (Standard ArmA 3 Version) Baut ab | LKW-F??hrerschein ben??tigt<br/>Tempest Ger??t f??r 65.000.000,00 $ (Gr??ne Tanoa Version) <br/>Baut ab und Verarbeitet | LKW-Plus-F??hrerschein ben??tigt<br/> Tipp: Tempest Ger??te haben einen sehr hohen Sprit verbrauch, es empfiehlt sich ein Tank LKW auf die Farmtour mit zu nehmen.",
                    "\A3\ui_f\data\GUI\Rsc\RscPendingInvitation\desynchigh_ca.paa"
                },
                {
                    "Logistik-System",
                    "Logistik-System",
                    "Mit einem Hemtt Pritche, Offroader und Truck k??nnen Container aufgeladen werden um mehr Lagerkapazit??ten zu erhalten.<br/> Lizenz: Schwerlast Berechtigung (25.000.000 ???) (Nachkauf reloggen) <br/> 1. Hemmt Pritsche kaufen/mieten bzw. ausparken <br/> 2. Container kaufen/mieten<br/> 3. R??ckw??rts mit dem Hemmt an den/die Container Heranfahren <br/> 4. im Scrollmen?? die Option zum aufladen ausw??hlen <br/> ",
                    "\A3\ui_f\data\GUI\Rsc\RscPendingInvitation\desynchigh_ca.paa"
                },
                {
                    "DP-Mission",
                    "DP-Mission",
                    "Bei DP-Missonen m??ssen Paket von Punkt A zu Punkt B gebracht werden. <br/> Dazu einfach an einem nahegelegenen DP Punkt ein Packet annehmen und es zum angezeigten Punkt bringen. <br/> Dabei erhaltet ihr Geld und m??glicherwei??e ein Bauplan oder andere Items. <br/> Tipp: Solltet ihr nicht mehr wissen wo das Packet hin muss, kann es nachgelesen werden. <br/> Dazu einfach die Karte ??ffnen und oben links auf den Punkt Information klicken.",
                    "\A3\ui_f\data\GUI\Rsc\RscPendingInvitation\desynchigh_ca.paa"
                },
                {
                    "Fuel-Mission",
                    "Fuel-Mission",
                    "??hnlich wie bei DP Mission k??nnt ihr Treibstoff an Tankstellen liefern und daf??r ein gutes Endgeld verdienen. <br/> 1. Mit einem Fahrzeug mit Tank (Truck, Zamak, Tempest, Hemmt, Taru Tank) zum Kraftstoff und Kerosin Verarbeiter begeben <br/> 2. Win-Taste am Fahrzeug bet??tigen und den Button mir Lagern dr??cken <br/> 3. Zur n??chsten Tankstelle begeben <br/> 4. Win-Taste am Fahrzeug bet??tigen und den Butoon mit huskyrn dr??cken",
                    "\A3\ui_f\data\GUI\Rsc\RscPendingInvitation\desynchigh_ca.paa"
                }
            };
        };
		
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////
		class Category_5 {
            displayname = "Tankstellen, ATM & Zentralbank";
            Cath_title = "Tankstellen, ATM & Zentralbank";
            Cath_text = "<t size='1.0' color='#ffffff'>Alle Wichtigen Informationen zu Tankstellen, Geldautomaten und Zentralbank Raub??berf??llen!</t>";
            Cath_picture = "\A3\ui_f\data\GUI\Rsc\RscDisplayMain\menu_tutorials_ca.paa";
            entries[] = {
				{
                    "Tankstellen",
                    "Tankstellen",
                    "Ben??tigte Cops: 2<br/>Beute: 15.000??? + 20.000 ??? zuf??llig<br/>Werkzeug: Waffe (Pistole oder Gewehr)",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                },
				{
                    "Geldautomaten",
                    "Geldautomaten",
                    "Ben??tigte Cops: 2<br/>Beute: 60.000??? + 30.000 ??? zuf??llig<br/>Werkzeug: Bolzenschneider (verbraucht sich)",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                },
				{
                    "Zentralbank",
                    "Zentralbank",
                    "Ben??tigte Cops: 6<br/>Beute: Goldbarren (Menge variiert je nach Spielerzahl und Serverzeit)<br/>Werkzeug: Bolzenschneider f??r das Bankgeb??ude, Sprengstoff f??r den Tresor, Brechstange f??r die Bankgel??nde Tore",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                },
				{
                    "Assavatenkammer Polizei HQ Kavala",
                    "Assavatenkammer Polizei HQ Kavala",
                    "Ben??tigte Cops: 4<br/>Beute: Inhalt der Beschlagnahmten Waffen/Gegenst??nde/Kleidung usw.<br/>Werkzeug: Bolzenschneider (verbraucht sich)",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                }
            };
        };
		
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////
		class Category_7 {
            displayname = "Rebellen";
            Cath_title = "Rebellen";
            Cath_text = "<t size='1.0' color='#ffffff'>Alle Wichtigen Informationen zum Rebellen, deren Waffen, Fahrzeuge und Co.!</t>";
            Cath_picture = "\A3\ui_f\data\GUI\Rsc\RscDisplayMain\menu_tutorials_ca.paa";
            entries[] = {
				{
                    "Allgemein",
                    "Allgemein",
                    "Rebellenshops schaltest du nacheinander frei.<br/>Du musst zuerst den Tamaulipas kaufen, anschlie??end den Zugang zum Tierra Caliente und zum Schluss das Sinaloa Kartell.",
                    "\A3\ui_f\data\GUI\Rsc\RscPendingInvitation\desynchigh_ca.paa"
                },
                {
                    "Tamaulipas",
                    "Tamaulipas",
                    "Der Tamaulipas ist der erste Weg im Leben eines jeden rebellen. <br/>Hier kannst du einfache Waffen, Kleidungen und Fahrzeuge erwerben.",
                    "\A3\ui_f\data\GUI\Rsc\RscPendingInvitation\desynchigh_ca.paa"
                },
                {
                    "Tierra Caliente",
                    "Tierra Caliente",
                    "Nachdem du bereits einen Zugang zum Tamaulipas erhalten hast, bist du nun in der Lage dir den Zugriff auf Tierra Caliente zu erwerben. <br/> Anschlie??end hast du Zugriff auf leichte milit??rische Waffen, Kleidung und Fahrzeuge. ",
                    "\A3\ui_f\data\GUI\Rsc\RscPendingInvitation\desynchigh_ca.paa"
                },
                {
                    "Sinaloa Kartell",
                    "Sinaloa Kartell",
                    "Das Sinaloa Kartell ist die Endstufe eines jeden Rebellen.<br/> Ab nun kannst du exklusive milit??r Waffen, Kleidung und Fahrzeuge kaufen.",
                    "\A3\ui_f\data\GUI\Rsc\RscPendingInvitation\desynchigh_ca.paa"
                },
                {
                    "Lizenzen",
                    "Lizenzen",
                    "Wichtig f??r dein Leben als Rebelle sind folgende drei Lizenzen:<br/> *Fessel-Training (erm??glicht es dir, andere Personen mit Kabelbindern fest zu nehmen) <br/> * Escort-Tarining (dadurch kannst du gefesselte Personen tragen [Windows Taste auf Person]) <br/> *Pullout-Traing (bringt dir die F??higkeit, Personen aus fahrzeugen zu ziehen) <br/> *Loot-Traing (erm??glicht es dir, an gefesselten Personen das I-Inventar zu ??ffnen) <br/> *Folter-Traing (erm??glicht es dir, Augenbinde und Knebel an gefesselten Personen zu nutzen) ",
                    "\A3\ui_f\data\GUI\Rsc\RscPendingInvitation\desynchigh_ca.paa"
                }
            };
        };
		
		//////////////////////////////////////////////////////////////////////////////////////////////////////////////
		class Category_8 {
            displayname = "Crafting";
            Cath_title = "Crafting";
            Cath_text = "<t size='1.0' color='#ffffff'>Alle Wichtigen Informationen zum Crafting!</t>";
            Cath_picture = "\A3\ui_f\data\GUI\Rsc\RscDisplayMain\menu_tutorials_ca.paa";
            entries[] = {
                {
                    "Crafting",
                    "Crafting",
                    "Das Crafting ist eine M??glichkeit diverse Sachen aus erfarmten Items herzustellen. Du kannst das Crafting-System in deinem Z-Men?? f??r kleine Items nutzen und das gro??e Crafting-System in der Crafting-Zone (Altis) <br/> Weitere Infos folgen",
                    "\A3\ui_f\data\GUI\Rsc\RscPendingInvitation\desynchigh_ca.paa"
                },
                {
                    "Baupl??ne",
                    "Baupl??ne",
                    "Baupl??ne f??r diverse Crafting Rezepte findest du wie folgt:<br/> *Zuf??llig bei DP-Misisonen <br/> *Zuf??llig auf der M??lldeponie <br/> *durch Events <br/> *bei Side-MIssionen (Konvoi, Schiffsfrack, Airdrop)",
                    "\A3\ui_f\data\GUI\Rsc\RscPendingInvitation\desynchigh_ca.paa"
                }
            };
        };
		
        //////////////////////////////////////////////////////////////////////////////////////////////////////////////
		class Category_4 {
            displayname = "* Changelog";
            Cath_title = "Changelog";
            Cath_text = "<t size='1.0' color='#ffffff'>Changelog</t>";
            Cath_picture = "\A3\ui_f\data\GUI\Rsc\RscDisplayMain\menu_tutorials_ca.paa";
            entries[] = {
                {
                    "* 10.02.2022",
                    "10.02.2022",
                    " + Auktionshaus am Kavala Marktplatz <br/> +Air-Drop-System <br/> *Verbesserung des Crafting-Systems <br/> +Waffen im crafting <br/> *Medic-Anfordern Btn ist wieder im Todes-Bildschirm (keine automatische Anforderung mehr) <br/> *Leitern und andere Objekte von den platzierbaren Items der Cops/Medics buggen nicht mehr im Boden <br/> *diverse interne Fehlerbehebungen und Verbesserungen",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                }, 
                {
                    "08.02.2022",
                    "08.02.2022",
                    " *Tempor??res Z-Men?? <br/> +Fallschirm beim ausseigen aus Helikoptern <br/> *Panzer haben kein Gesch??tz mehr <br/> *diverse interne Fehlerbehebungen und Verbesserungen",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                }, 
                {
                    "06.02.2022",
                    "06.02.2022",
                    " +Schlie??fach f??r das Firmen/Gang Levelsystem zur Item-Abgabe am Markt hinzugef??gt <br/> +Neues Sperrzone-System f??r Polizei <br/> +neues Nametag-System <br/> +Uran Lagerbox f??r das Haus <br/> +Taschenlampe (ohne Waffe; Shift + L zum aktivieren) <br/> +Rebellen k??nnen Karte des illegalen kaufen und Cops geben (Cops sehen dann Illegales auf der Karte) <br/> +platzierbare Schilder f??r Cop/Medic <br/> *Firmen und Gruppierungs-System im Forum wurde angepasst <br/> *Casino Zeit Anzeige wurde verbessert <br/> *Benzinkanister ??berall einlagerbar <br/> *Radioaktive Zone wurde gefixt (verursacht keien Laggs oder globale Verstrahlung mehr) <br/> *Spawn Intro kommt nur noch beim ersten join <br/> *Cops k??nnen wieder auf das Inventar von gefesselten Personen zugreifen <br/> *Zellen am Cop Air HQ nutzbar <br/> *Performance Verbesserung <br/> *Stivo wurde gefixt <br/> *Anpassung Marihuana Route  <br/> *Anpassung Container Preise <br/> *diverse interne Fehlerbehebungen und Verbesserungen",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                }, 
                {
                    "03.02.2022",
                    "03.02.2022",
                    " +Stabilisieren von bewustlosen Personen (Windows Taste auf Person, Ben??tigt Erste-Hilfe-Kit) <br/> +Zeigen diverser Ausweise und Lizenzen m??glich <br/> *Vorbereitung f??r Erste-Hilfe-Lehrg??nge bei den Sanit??tern (erm??glicht es, Bewustlose Personen zu reanimieren) <br/> *Fix der Medic Notruf verwaltung und Benachrichtigung <br/> *Tanksystem tepor??r angepasst <br/> -Mauer entfernt <br/> *Performance Verbesserung <br/> *diverse interne Fehlerbehebungen und Verbesserungen",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                }, 
                {
                    "31.01.2022",
                    "31.01.2022",
                    " *Defibrilator hat eine 10% Chance, dass der Revive scheitert <br/> +Augenbinde und Knebel (Folter Lizenz ben??tigt) <br/> +Firmen- und Gruppierungskleidungen eingef??gt <br/> +Neues Tr??nengas <br/> *diverse interne Fehlerbehebungen und Verbesserungen ",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                },
                {
                    "26.01.2022",
                    "26.01.2022",
                    " +Defibrilator hat eine 20% Chance, dass der Revive scheitert <br/> +automatisches Respawn bei Ablauf des Countdowns im todes Bildschirm <br/> +Clan Hupe nutzbar mit 9 <br/> +Blaulicht f??r Hemtt <br/> +Medics k??nnen nun auch Fuel-Mission machen <br/> +Medics k??nnen Kaputte Objekte Reparieren <br/> *Stivo wurde tempor??r entfernt und durch Kai ersetzt <br/> +Marker und Nachricht bei Blitzer Sabotage und Tor aufbrechen <br/> *Strider und Ifrid Skin fehler behoben <br/> +Gambling f??r Cops/Medcis <br/> *diverse interne Fehlerbehebungen und Verbesserungen ",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                },
                {
                    "24.01.2022",
                    "24.01.2022",
                    " +Clan Hupe nutzbar mit shift + 0 <br/> +Cops/Medics k??nnen Tuning Chips auch nutzen <br/> *weitere Fahrzeuge aufladbar (Hemtt Pritche) <br/> *Kills in PvP Zone bingen HG-Coins <br/> *Taser sollte jetzt mehr Tasern <br/> *diverse interne Fehlerbehebungen und Verbesserungen ",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                },
                {
                    "23.01.2022",
                    "23.01.2022",
                    " *weitere Uniform der Cops f??r Civs nutzbar <br/> *Anpassung Cop Systeme <br/> +neues Training zum Looten von gefesselten Personen <br/> +Cops k??nnen Tuning Chips auch nutzen <br/> *weitere Fahrzeuge aufladbar (Hemtt Pritche) <br/> *Kills in PvP Zone bingen HG-Coins <br/> *Taser sollte jetzt mehr Tasern <br/> *diverse interne Fehlerbehebungen und Verbesserungen ",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                },
                {
                    "21.01.2022",
                    "21.01.2022",
                    " *Fix Container (Lizenz kaufen und nur neue Container kaufen, Container Garagen entfernt) <br/> *Versicherung ist bei gechipten Fahrzeugen teurer <br/> +neue Rucks??cke und Quad Skins f??r Medic/Cop <br/> +SEK Skins f??r Cop <br/> *Fahrzeuge werden nicht automatisch in die Garage zur??ck gesetzt (Ausnahme ist der Restart)<br/> *ein Keks f??r Stivo wurde hinzugef??gt <br/> *diverse interne Fehlerbehebungen und Verbesserungen ",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                },
                {
                    "20.01.2022",
                    "20.01.2022",
                    " -Farmboost bis auf Wiederruf entfernt! <br/> *Anpassung M??lldeponie<br/> *Fix Crafting-Zone + Einparken gecrafteter Fahrzeuge<br/> *Bergen-Rucksack nur Craftbar und ab Tierra Caliente <br/> *diverse interne Fehlerbehebungen und Verbesserungen ",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                },
                {
                    "17.01.2022",
                    "17.01.2022",
                    " *Anpassung M??lldeponie<br/> *Anpassung Crafting-Zone <br/> *Tempor??r die Namestags entfernt und die klar Namen im Z-Menu wieder hinzugef??gt <br/> *diverse interne Fehlerbehebungen und Verbesserungen <br/> *Zentralbank ab 7 Cops",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                },
                {
                    "16.01.2022",
                    "16.01.2022",
                    " +Autofarm hinzugef??gt<br/> *gekaufte Fahrzeuge k??nnen direkt wieder ausgeparkt werden <br/> *Fix im Markt-System <br/> *Fix in den Side-Missionen<br/> +Tuning-Chips werden in der Garage angezeigt<br/> *interne Verbesserungen im Code<br/> *verkaufen von Fahrzeugen aus Garage<br/> *Schrotth??ndler (Chop Shop)<br/> *Schlie??fach kaufbar per EC <br/> *Sound beim Fahrzeug aufbrechen <br/> *Gambling Anpassung <br/> *mal wieder der Stivo <br/> *Crafting-Zone verbessert <br/> *Neuer Fahrzeugh??ndler Kavala und Versch??nerung des Kavala Polizei HQ <br/> *Crafting-Zone nach Kavala verschoben <br/> +M??lldeponie zum Teile sammeln <br/> +DP-Missionen geben Items (Baupl??ne u.a.)",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                },
				{
                    "13.01.2022",
                    "13.01.2022",
                    " -Autofarm entfernt<br/> *Anpassung Cop R??nge <br/> *??berarbeitung Rebellen Shops <br/> *Medic Xian, SUV und Huron Skin<br/> *??berarbeitung Polizei Shops <br/> +Crafting Update Teil 1 <br/> *Assavatenkammer Polizei HQ Kavala speichert nun den Inhalt <br/> *Tuning Chips werden beim Abschleppen und Beschlagnehmen nicht entfernt (Cop Shop extra Item) <br/> +neuer Marktplatz",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                },
				{
                    "10.01.2022",
                    "10.01.2022",
                    " *Vorbereitung f??r Update bei Cop/Medic<br/> +Best??tigungs Abfrage zum Fahrzeug verkaufen <br/> *Anpassung Gambling Anzeige <br/> *neue Platzierbare Objekte f??r Cops/Medic <br/>  +Casino am Markt (h??here Eins??tze, l??ngere Runden) <br/> *Meldungen bei der Bank <br/> *diverse kleine Anpassungen <br/> *Vorbereitung f??r das neue Crafting",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                },
				{
                    "09.01.2022",
                    "09.01.2022",
                    " *Fix Systemseitig <br/> +Gambling System <br/> *Anpassung ben??tigte Cop f??r Bank und ATM Raub <br/> *Vorbereitung f??r Update bei Cop/Medic <br/> *Tuning Chips bis zum 12.01.2021 kaufbar <br/> *Geb??ude am Markt sind nicht mehr kaufbar",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                },
				{
                    "03.01.2022",
                    "03.01.2022",
                    " *Fix Skins Medics<br/> +Tuning-Chips (Nur Kurze Zeit erh??ltlich bei Soroya Performance)(STRG zum benutzen)<br/> *Anpassung des Sprit Verbrauches",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                },
				{
                    "31.12.2021",
                    "31.12.2021",
                    " *Fix diverser Verarbeiter<br/> *<br/> +Neues Sperrzonen-System (Shift+??)<br/> *neue platzierbare Items f??r Cop/Medic<br/> *Marker an der Grenze<br/> *Tore Grenze sind Standardm????ig offen<br/> *Hi Stivo <br/> *Fix Keykart <br/> *Anpassung diverser V-Item Pl??tze <br/> *Tempestger??t Plus neue Routen hinzugef??gt <br/> *Gang HQ Verarbeiten hinzugef??gt <br/> +Server Restart Nachricht<br/> Golf von Pyrgos Br??cke hat Schutzplanken bekommen und Leitern<br/>",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                },
				{
                    "29.12.2021",
                    "29.12.2021",
                    " *Anpassung Marker<br/> +Nagelband Sound<br/> *Skin Hemett Pritche<br/> *Medics haben Hemtt Pritche statt Cargo<br/> *AAN News Anzeige 60 statt 30 Sekunden<br/> *Fix Rebellen Kleidungsshop<br/> *Info Men?? Angepasst<br/> +Meldung beim Start des Gang Gebiet Einnehmen <br/> *Fix der Verarbeiter <br/> *Tempor??r das Gang HQ Verarbeiten entfernt <br/>",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                },
				{
                    "Day One Patch",
                    "Day One Patch",
                    " *Tampulin oben rechts f??r Cops ausgeblendet<br/> *Mobiles Radar Toleranz von 10 auf 5 kmh<br/> *Anpassung Hud Position<br/> -Anschnallgurt aus Hud entfernt<br/> *Absperrungsmen?? nach Benutzung wieder ??ffnen<br/> *Tanken mit EC Geld<br/> -Lootbox entfernt (Wunsch der Community)<br/> *Dauer Benzinkanister verringert<br/> +Morphin (heilt direkt 100%)<br/> +neues Schlie??fach-System<br/> +Cops/Medics k??nnen Ingame R??nge und Lizenzen verteilen",
                    "\A3\ui_f\data\GUI\Rsc\RscDisplayArcadeMap\icon_steam_ca.paa"
                }
            };
        };
    };
};

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////