/* 

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
	
	
	Muster Beispiel
	class DeinBelibigerVariablename {
        variable = "DeinBelibigerVariablename";
        displayName = "Dein Belibiger Text";
        illegal = false;
        Text = "Dein Belibiger Bedigungs Text";
		icon = "icons\NArchi.paa"; /7 Dein Icon
    };
	
	
	
	ALTER TABLE `altishusky`.`players` ADD COLUMN `cop_Achievement` TEXT NOT NULL;
*/
class Achievement_cop {
	//////////////////////////////////////////////
	///				Achievement				   ///
	//////////////////////////////////////////////
    class FirstCar {
        variable = "FirstCar";
        displayName = "Erstes Auto";
        illegal = false;
        Text = "Kaufe dir dein Erstes Auto";
		icon = "icons\NArchi.paa";
    };
	
	class FirstStepgathering {
        variable = "FirstStepgathering";
        displayName = "Das Erstes mal Früchte ernten";
        illegal = false;
        Text = "Ernte zum ersten mal Früchte";
		icon = "icons\NArchi.paa";
    };
	
	class FirstStepofMining {
        variable = "FirstStepofMining";
        displayName = "Erze ab Bauen";
        illegal = false;
        Text = "Baue zum erstenmal Erze Ab";
		icon = "icons\NArchi.paa";
    };
	//Nur mit Tankstellen script
	/*
	class TheFirstTankeRob {
        variable = "TheFirstTankeRob";
        displayName = "Der erste Tankstellen Raub";
        illegal = false;
        Text = "Raube eine Tankstelle aus";
		icon = "icons\NArchi.paa";
    };
	*/
	class Proccecing {
        variable = "Proccecing";
        displayName = "Erste Verarbeitung";
        illegal = false;
        Text = "Verarbeite zum erstenmal";
		icon = "icons\NArchi.paa";
    };
	
	class ReapairCar {
        variable = "ReapairCar";
        displayName = "Erstmalige Auto Reparatur";
        illegal = false;
        Text = "Repariere zum erstenmal dein Auto";
		icon = "icons\NArchi.paa";
    };
	
	class Ganghideoutcapture {
        variable = "Ganghideoutcapture";
        displayName = "Gangversteck einnehmen";
        illegal = false;
        Text = "Nehmen mit deiner Gang ein Gangversteck ein";
		icon = "icons\NArchi.paa";
    };
	
	class TehfirstHouse {
        variable = "TehfirstHouse";
        displayName = "Das Erste Haus";
        illegal = false;
        Text = "Kauf dir dein Erstes Haus von deinem Geld";
		icon = "icons\NArchi.paa";
    };
	
	class Packetddeliverd {
        variable = "Packetddeliverd";
        displayName = "Packet angekommen";
        illegal = false;
        Text = "Liefere zum erstenmal ein Packet aus";
		icon = "icons\NArchi.paa";
    };
};