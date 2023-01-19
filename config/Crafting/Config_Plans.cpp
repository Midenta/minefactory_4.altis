/*
    File: plans.cpp
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description: Plan configuration for crafting system.
    Version: 1.1
    1.0 - Initial release
    1.1 - Fix for version 5 (from 25.12.2019 and newer) of framework: add attribute drinkable = -1;
*/
class copper_refined_plan { // classname
    variable = "copper_refined_plan"; // must be same as classname
    displayName = "STR_PLAN_COPPER"; // defined in <mission>/stringtable.xml
    rarity = "normal"; // defined in rarities.cpp
    icon = "scripts\cation\craftingV2\icons\normal.paa"; // path to icon
    weight = 1; // item weight - do not edit
    buyPrice = -1; // buy price - do not edit
    sellPrice = 0; // sell price - do not edit
    illegal = false; // if plan is illegal
    edible = -1; // edible - do not edit
    drinkable = -1; // drinkable - do not edit
};

class diamond_cut_plan { // classname
    variable = "diamond_cut_plan"; // must be same as classname
    displayName = "STR_PLAN_DIAMOND"; // defined in <mission>/stringtable.xml
    rarity = "rare"; // defined in rarities.cpp
    icon = "scripts\cation\craftingV2\icons\rare.paa"; // path to icon
    weight = 1; // item weight - do not edit
    buyPrice = -1; // buy price - do not edit
    sellPrice = 0; // sell price - do not edit
    illegal = false; // if plan is illegal
    edible = -1; // edible - do not edit
    drinkable = -1; // drinkable - do not edit
};