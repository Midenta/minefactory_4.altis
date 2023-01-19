/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden au�er von Thieves-Gaming.de!
*/

#define true 1
#define false 0

class Leonbeeser_Settings {
	
	/*Set true to false and any kind of number to 0 to deaktivate the function*/
	/*In this brackets [] you can find the default settings e.g. [false] or [4]*/
	
/*autosave*/
	autosaveInterval = 300; //in sekunden	// Automatic saving intervall in minutes default [15]	
	lockManuelSync = false; // locks manuel sync [true]
	lockSyncTime = 60; // IN SEKUNDEN		//Time in minutes [1] for locking manuel sync after automatic saving; ONLY ACTIVE IF lockManuelSync is set to true!
	chatInfo = false; // Turn to false if you don�t like to see a saving message, [true] to got a message in system chat
	advancedChatInfo = false; // Turn to false, if you don�t like to see extra informations, eg. Manual Saving is now blocked for 1 Minute; ONLY ACTIVE IF chatInfo is set to true!
	waitforManSave = true; // [True] for waiting until manuel saves has been copleted; (recommended, saves server traffic)
};


/*
class Message_Settings {

noBar = false; 
sound = "Hint"; 
soundSec = "Hint"; 
noSound = false; 
noSoundSec = true; 
rscLayer = 20; 
kindOfCutRsc = "PLAIN"; 
fadein = 0.2; 
baseTitel = "Notification"; 
baseColor = "lightblue"; 
};
class Colors {


class red {
rgba[] = { 0.92, 0, 0.51, 0.7 };
};
class orange {
rgba[] = { 0.92, 0.51, 0, 0.7 };
};
class yellow {
rgba[] = { 0.96, 0.9, 0, 0.7 };
};
class green {
rgba[] = { 0.16, 0.95, 0, 0.7 };
};
class turquoise {
rgba[] = { 0.79, 0, 0, 0.7 };
};
class lightblue {
rgba[] = { 0, 0.49, 0.8, 0.7 };
};
class blue {
rgba[] = { 0, 0.11, 0.74, 0.7 };
};
class darkblue {
rgba[] = { 0.05, 0.03, 0.38, 0.7 };
};
class purple {
rgba[] = { 0.37, 0.06, 0.56, 0.7 };
};
class pink {
rgba[] = { 0.7, 0.22, 0.46, 0.7 };
};
};
*/