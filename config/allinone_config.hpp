/*
    File: allinone_config.hpp
    Author: ArmaServices.net Dev Team (Armaservices.net)
    Description: Master config for All-In-One Lootbox.

    Developer notes: 
    	1. Lootbox classname should be described in Config_Vehicles.hpp to have a trunk space, and also have to be a vanilla cargo object to have real inventory space.
    	2. If cleanOnEmpty is disabled - timeToLive parameter is considered as a deletion timestamp.
*/

class allinone_config {
	// Techincal
	currencyVariable = "husky_cash"; // Currency to drop, can be "husky_gold" for example.
	cacheClass = "Land_PlasticCase_01_small_gray_F"; // Classname of the cache object.
	timeToLive = 15; // Minutes before the dropped cache will be cleared of the map.
	cleanOnEmpty = 2; // 0 - disable cleanup by all meanings, 1 - leave cache until timeToLive passed, 2 - clean cache when emptied.
};