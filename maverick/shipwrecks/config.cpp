/*
	Author: Maverick Applications
	Desc: Altis husky Shipwreck
*/

//Customize your settings to fit your server setup!
class Maverick_Shipwrecks {

    //How often (in seconds) should a shipwreck spawn, if no wreck is on the map?
    ShipwreckInterval = 1800; //1800 = 30min

    //Define the possible locations for your shipwrecks.
    //getPosATL format -> Get the position via: diag_log(getPosATL player) -> replace the [] with {}
	Positions[] = {
		{2737.484,16093.499,7.897}		//ÄNDERN	(2737.484,16093.499,7.897),(2737.484,16093.499,7.897),(.....)
	};

    //Define the radius, in which the wreck randomly spawns around the given center position
    Radius = 250;

    //Define the possible sets of virtual items the user can loot from the wreck.
	ShipLoot[] = {
		//{ { "itemname1", amount }, { "itemname2", amount }, { "itemname3", amount } }
		{ { "fakeidcard", 2 }, { "keycard", 2 } },
        { { "lootboxlegend", 3 } },
        { { "goldbar", 3 } }
	};

	//What shall be displayed as text to gather the items from the ship? (The text of the addAction ingame)
	ShipLootText = "Holen Sie die Beute zurück";

    //The message when the user has got all the loot successfully.
    ShipLootSuccess = "Du hast die Beute des Wracks erfolgreich für dich beansprucht!";

    //The message in case something fails, or the user can not carry all the items.
    ShipLootFail = "Du kannst nicht die ganze Beute tragen. Machen Sie zuerst etwas Platz!";

	//Define the message, that should appear when a shipwreck spawns (broadcasted to all clients).
	SpawnMSG = "Schiffswrack\n\nEin gesunkenes Schiff wurde geortet! Es könnte wichtige Gegenstände enthalten und wurde auf eurer Karte markiert!";

    //Define the message, that should appear when a shipwreck disappears after a user looted it (broadcasted to all clients).
	DeleteMSG = "Schiffswrack\n\nDas Schiff wurde erfolgreich geplündert und ist despawned!";
};