/*
    File: stations.cpp
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description: Station configuration for crafting system.
*/
//Z Menü
class craftingItems {
    spawnmarker = ""; // name of marker where vehicle should spawn. Marker must be available on map
    categories[] = {"items","vitem","farming"}; // defined in categories.cpp: enter classnames
};

//CRAFTING STATION
class craftingClothes {
    spawnmarker = "fahrzeuge_1";
    categories[] = {"headgear","glasses","uniform","vest","backpack","weapon","mags","anbauteile","landvehicle","airvehicle"};
};

//ADMIN MENÜ
class craftinadmin {
    spawnmarker = "craft_uran";
    categories[] = {"headgear","glasses","uniform","vest","backpack","weapon","mags","anbauteile","items","vitem","farming","landvehicle","airvehicle"};
};