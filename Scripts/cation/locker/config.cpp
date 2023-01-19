/*
    File: config.cpp
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description: Master config for locker system. 
*/
#include "locker.hpp"
class Cation_Locker {

    class language {
        #include "language.cpp"
    };

    locker_size_price[] = { // upgrade price and size stages - be aware reducing size in production may cause errors
        /*{100,10000}, //{size,price},
        {150,15000},
        {200,20000},
        {350,100000}*/
		
		{10,1000}, //INITPRICE
		{50,50000}, //LVL 2
		{100,100000}, //LVL 2
		{150,150000}, //LVL 3
		{250,250000}, //LVL 4
		{500,500000}, //LVL 5
		{750,750000}, //LVL 6
		{1000,1000000}, //LVL 7
		{1250,1250000}, //LVL 8
		{1500,1500000}, //LVL 9
		{1750,1750000}, //LVL 10
		{2000,2000000} //LVL 11
    };

    DebugMode = 1; // Debugmodus (1 = create log entries | 0 = do not create log entries)

    HeadlessSupport = 0; // Enable/Disable Headless client support. Default: 1 (1 = Enabled / 0 = Disabled)

    version = 5; // version 3.1.4.8 -> 3 | 4.0 - 4.3 -> 4 | version 4.4+ -> 5
    
    weightMultiplier = 0.25; // Weight Multiplier for ArmA Items

    distanceVehicle = 20; // Distance between player and vehicle
};
