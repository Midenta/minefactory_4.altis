/*
    File: categories.cpp
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description: Category configuration for crafting system.
    Version: 1.1
    1.0 - Initial release
    1.1 - Enhancement: Added option to specify experience points player receives when items was crafted successfully
    {"headgear","glasses","uniform","vest","backpack","weapon","mags","anbauteile","items","vitem","farming","landvehicle","airvehicle"}

    displayName = "STR_WEAPON"; // defined in language.cpp
    class hgun_P07_F {
        itemsReq[] = { // required items as list {"ITEMNAME",AMOUNT}, {"ITEMNAME",AMOUNT}
            {"diamond_cut",2}
        };
        conditions = ""; // enter conditions
        minlevel = ""; // defined in levels.cpp: enter classname
        plan = ""; // defined in plans.cpp: enter classname
        skin = ""; // skin (defined in Config_Vehicles.hpp) - only used for vehicles
        skinSide = ""; // skinSide eg. civ, cop, reb etc. (defined in Config_Vehicles.hpp) - only used for vehicles
        vItem = false; // if is vItem
        time = 30; // time to craft item - must be positive
        nickName = ""; // nickName of item: Leave blank ("") if you want to use the default display name. Translations are defined in <mission>/stringtable.xml
        ep = 1; // experience points player receives when item was crafted successfully - must be positive
    };
*/

class items {
    displayName = "STR_Items";
    class copper_refined {
        itemsReq[] = {
            {"iron_refined",2}
        };
        conditions = "";
        minlevel = "";
        plan = "";
        skin = "";
        skinSide = "";
        vItem = false;
        time = 30;
        nickName = "";
        ep = 1;
    };
};

class vitem {
    displayName = "STR_VItems";
    class copper_refined {
        itemsReq[] = {
            {"iron_refined",2}
        };
        conditions = "";
        minlevel = "";
        plan = "";
        skin = "";
        skinSide = "";
        vItem = true;
        time = 30;
        nickName = "";
        ep = 1;
    };
};

class farming {
    displayName = "STR_farm";
    class copper_refined {
        itemsReq[] = {
            {"iron_refined",2}
        };
        conditions = "";
        minlevel = "";
        plan = "";
        skin = "";
        skinSide = "";
        vItem = true;
        time = 30;
        nickName = "";
        ep = 1;
    };
};

class weapon {
    displayName = "STR_WEAPON";

    class arifle_ARX_blk_F {
        itemsReq[] = {
            {"diamond_cut",4},
            {"copper_refined",1}
        };
        conditions = "";
        minlevel = "";
        plan = "";
        skin = "";
        skinSide = "";
        vItem = false;
        time = 60;
        nickName = "STR_Item_SuperCrazyWeapon"; // example for overriding displayname of item. 
        ep = 1;
    };
};

class mags {
    displayName = "STR_Magazine";
    class copper_refined {
        itemsReq[] = {
            {"iron_refined",2}
        };
        conditions = "";
        minlevel = "";
        plan = "";
        skin = "";
        skinSide = "";
        vItem = false;
        time = 30;
        nickName = "";
        ep = 1;
    };
};

class anbauteile {
    displayName = "STR_Anbauteile";
    class copper_refined {
        itemsReq[] = {
            {"iron_refined",2}
        };
        conditions = "";
        minlevel = "";
        plan = "";
        skin = "";
        skinSide = "";
        vItem = false;
        time = 30;
        nickName = "";
        ep = 1;
    };
};


class headgear {
    displayName = "STR_Kopfbedeckungen";
    class U_IG_Guerilla1_1 {
        itemsReq[] = {
            {"copper_refined",1}
        };
        conditions = "";
        minlevel = "";
        plan = "";
        skin = "";
        skinSide = "";
        vItem = false;
        time = 60;
        nickName = "";
        ep = 1;
    };
};

class glasses {
    displayName = "STR_Brillen";
    class U_IG_Guerilla1_1 {
        itemsReq[] = {
            {"copper_refined",1}
        };
        conditions = "";
        minlevel = "";
        plan = "";
        skin = "";
        skinSide = "";
        vItem = false;
        time = 60;
        nickName = "";
        ep = 1;
    };
};

class uniform {
    displayName = "STR_UNIFORM";
    class U_IG_Guerilla1_1 {
        itemsReq[] = {
            {"copper_refined",1}
        };
        conditions = "";
        minlevel = "";
        plan = "";
        skin = "";
        skinSide = "";
        vItem = false;
        time = 60;
        nickName = "";
        ep = 1;
    };
};

class vest {
    displayName = "STR_VEST";
    class V_Press_F {
        itemsReq[] = {
            {"copper_refined",1}
        };
        conditions = "";
        minlevel = "";
        plan = "";
        skin = "";
        skinSide = "";
        vItem = false;
        time = 30;
        nickName = "";
        ep = 1;
    };
};

class backpack {
    displayName = "STR_BACKPACK";
    class B_Carryall_oli {
        itemsReq[] = {
            {"diamond_cut",1}
        };
        conditions = "";
        minlevel = "";
        plan = "";
        skin = "";
        skinSide = "";
        vItem = false;
        time = 30;
        nickName = "";
        ep = 1;
    };
};




class landvehicle {
    displayName = "STR_LANDVEHICLE";
    class C_SUV_01_F {
        itemsReq[] = {
            {"copper_refined",1},
            {"diamond_cut",2}
        };
        conditions = "";
        minlevel = "";
        plan = "";
        skin = "Dark Red";
        skinSide = "civ";
        vItem = false;
        time = 60;
        nickName = "";
        ep = 1;
    };
};

class airvehicle {
    displayName = "STR_AIRVEHICLE";
    class C_Heli_Light_01_civil_F {
        itemsReq[] = {
            {"copper_refined",1},
            {"diamond_cut",2}
        };
        conditions = "";
        minlevel = "";
        plan = "";
        skin = "Civ Blue";
        skinSide = "civ";
        vItem = false;
        time = 90;
        nickName = "";
        ep = 1;
    };
};

class watervehicle {
    displayName = "STR_WATERVEHICLE";
    class C_Rubberboat {
        itemsReq[] = {
            {"copper_refined",1}
        };
        conditions = "";
        minlevel = "";
        plan = "";
        skin = "";
        skinSide = "";
        vItem = false;
        time = 60;
        nickName = "";
        ep = 1;
    };
};