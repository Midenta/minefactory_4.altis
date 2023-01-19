/*
	File: Config_Newbie.hpp
`	Author: nflug
	Description: Config for the Newbie System, buyable at ArmaServices.net

	# Do not share or resell this file!
	# You are allowed to change everything in this file!
*/

class Config_Newbie {
	
	//Here you can change the messages etc.
	localize_prefix       = "Frischling";
	localize_prefix_color = "#139822";
	
	localize_newbieOver     = "Dein Frischlingsschutz ist absofort abgelaufen du kannst nun sterben und ausgeraubt werden!";
	localize_notAllowedItem = "Du hast etwas in Besitz genommen was gegen deinen Frischlingsschutz verstößt nun hast du ihn verloren!";
	localize_cantBeKnocked  = "Du kannst diese Person nicht niederschlagen da er/sie ein Frischling ist!";
	localize_cantBeRobbed   = "Du kannst diese Person nicht ausrauben da er/sie ein Frischling ist!";
	
	//Here you can enable the timer & set it (in seconds). If the time is over it will remove the newbie status from the player
	time_enabled = true;
	time         = 21600;
	
	//Here you can change the disallowed items. So if a player pickup one of these items the system will remove the newbie status from the player
	notAllowedItems[] = {"blastingcharge", "wolfram_unprocessed", "wolfram", "turtle_raw", "defusekit", "brecheisen", "boltcuttergate", "boltcutter", "kybercrystal_unprocessed", "kybercrystal", "ayahuasca_unprocessed", "ayahuasca", "strawberryhaze", "coaxium_unprocessed", "coaxium", "LSD", "kybercrystal", "cannabis", "marijuana", "cocaine_unprocessed", "cocaine_processed", "plutonium", "sos", "fakeidcard", "kidney", "scalpel", "holzbox", "sandsackecke", "sandsackende", "sandsackkurz", "sandsackkurve", "ayahuasca", "sandsacklang", "smokeWall", "drogtest", "alctest", "radarfalle", "akteni", "aktenii", "akteniii", "speedbomb", "morphine", "kabelbinder", "keycard", "spikeStrip", "lockpickplus", "goldbar"};
	
	//Here you can set if all weapons are disallowed & the weapons who are allowd
	disallowWeapons  = true;
	allowedWeapons[] = {"Item_Binocular", "Item_Rangefinder"};
	
	//Here you can change if all damage should ignored if someone is a newbie
	damageAllowed = false;
	
	//Here you can change if the timer with the newbie time should be visible for the player & how the timer text should look like (%1 is the time)
	enable_timer = true;
	timer_text   = "Frischling: %1";
	
	//Here you can set if the player can not be knocked down
	knockdownAllowed = false;
	
	//Here you can set if the player can not be robbed
	robbingAllowed = false;
	
	//Here you can enable & set the nametag for the player above the head (if playerTags enabled) (you can use HTML Style)
	enable_nameTag = true;
	nameTag        = "[FRISCHLING]<br/>";
	
};