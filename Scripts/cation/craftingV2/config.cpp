/*
    File: config.cpp
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description: Master config for crafting system. 
*/
#include "dialog\master.hpp"
class Cation_CraftingV2 {

    class categories {
        #include "..\..\..\config\Crafting\Config_Categories.cpp"
    };

    class language {
        #include "config\language.cpp"
    };

    class levels {
        #include "..\..\..\config\Crafting\Config_Levels.cpp"
    };

    class plans {
        #include "..\..\..\config\Crafting\Config_Plans.cpp"
    };

    class rarities {
        #include "config\rarities.cpp"
    };

    class stations {
        #include "..\..\..\config\Crafting\Config_Stations.cpp"
    };

    version = 5; // version 4.4+ -> 5

    DebugMode = 1; // Debugmodus (1 = create log entries | 0 = do not create log entries)

    HeadlessSupport = 0; // Enable/Disable Headless client support. Default: 1 (1 = Enabled / 0 = Disabled)
    
};