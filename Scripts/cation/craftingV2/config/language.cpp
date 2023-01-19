/*
    File: language.cpp
    Author: B4v4r!4n_Str!k3r (julianbauer@cationstudio.com)
    Licence: THIS FILE AND EXTRACTS OF IT IS THE MINDSET OF CATIONSTUDIO
             AND ONLY AUTHORIZED PEOPLE/SERVERS ARE ALLOWED TO USE IT.
    Description: 
    Language config for crafting system.
    It is possible to add more translations.
    Following languages are supportes by ArmA 3:
    English, Czech, French, Spanish, Italian, Polish, Portuguese, Russian, German, Korean, Japanese
    Version: 1.3
    1.0 - Initial release
    1.1 - New translations for enhancement: If plan is already used, don't use it again.
    1.2 - New translation for enhancement: Move while crafting
    1.3 - New translation for enhancement: Added option to specify experience points player receives when items was crafted successfully
*/
defaultLanguage = "German";

class English {
    NotEnoughItemsHeading = "Not enough items";
    NotEnoughItems = "You don't have all required items. You lack: %1.";
    Title = "Crafting";
    Items = "Items";
    Plans = "Blueprints";
    Back = "Back";
    Craft = "Craft";
    PlanLearned = "Blueprint %1 successfully learned.";
    PlanAlreadyLearned = "You already learned blueprint %1!";
    PlanRemoved = "You removed blueprint %1 from your mind.";
    LevelUp = "Level up! New crafting level: %1";
    LevelDown = "Level down! New crafting level: %2";
    NoCategories = "No categories available";
    NoItems = "No items available";
    NoPlans = "No blueprints available";
    AllPlans = "All blueprints";
    OwnedPlans = "Owned blueprints";
    LackedPlans = "Lacked blueprints";
    NoPlanRequired = "No blueprint needed";
    RequiredPlan = "Required blueprint";
    Available = "available";
    RequiredItems = "Required items";
    RequiredLevel = "Required level";
    ExperiencePoints = "Experience points";
    Spawnpoint = "Spawnpoint";
    NotFound = "not found";
    NotLearned = "not learned yet";
    Yes = "Yes";
    No = "No";
    Learned = "Learned";
    Rarity = "Rarity";
    AlreadyInProcess = "An crafting progress is already in progress.";
    SelectStorage = "Select a storage space for your crafted item.";
    Inventory = "Inventory";
    Locker = "Locker";
    Found = "found";
    SpawnPointBlocked = "A vehicle is blocking the spawn point";
    NotEnoughSpace = "In your storage location isn't enoght space to store the item";
    Error = "Aborted: An error occured during crafting progress.";
    ErrorDistance = "Aborted: You moved to far away from starting point while crafting.";
    Success = "%1x %2 successfully crafted.";
    Crafting = "Crafting";
    STR_WEAPON = "Wepons";
    STR_UNIFORM = "Uniforms";
    STR_BACKPACK = "Backpacks";
    STR_VEST = "Vests";
    STR_ITEM = "Items";
    STR_LANDVEHICLE = "Land Vehicles";
    STR_AIRVEHICLE = "Aircrafts";
    STR_WATERVEHICLE = "Boats";
    STR_LEVEL_NOOB = "Noob";
    STR_LEVEL_APPRENTICE = "Apprentice";
    STR_LEVEL_CRAFTSMAN = "Craftsman";
    STR_LEVEL_MASTER = "Master";
    STR_LEVEL_MACHINE = "Machine";
    STR_LEVEL_FACTORY = "Factory";
    STR_RARITY_NORMAL = "normal";
    STR_RARITY_RARE = "rare";
    STR_RARITY_PRECIOUS = "precious";
    STR_RARITY_EPIC = "epic";
};

class German {
    NotEnoughItemsHeading = "Nicht genügend Items";
    NotEnoughItems = "Du hast nicht alle benötiten items. Dir fehlen: %1.";
    Title = "Crafting";
    Items = "Items";
    Plans = "Baupläne";
    Back = "Zurück";
    Craft = "Bauen";
    PlanLearned = "Bauplan %1 erfolgreich erlernt.";
    PlanAlreadyLearned = "Du hast den Bauplan %1 schon erlernt!";
    PlanRemoved = "Du hast den Bauplan %1 vergessen.";
    LevelUp = "Level up! Neues Crafting Level: %1";
    LevelDown = "Level down! Neues Crafting Level: %1";
    NoCategories = "Keine Kategorien verfügbar";
    NoItems = "Keine Items verfügbar";
    NoPlans = "Keine Baupläne verfügbar";
    AllPlans = "Alle Baupläne";
    OwnedPlans = "Erlernte Baupläne";
    LackedPlans = "Fehlende Baupläne";
    NoPlanRequired = "Kein Plan benötigt";
    RequiredPlan = "Benötigter Plan";
    Available = "vorhanden";
    RequiredItems = "Benötigte Items";
    RequiredLevel = "Benötigtes Level";
    ExperiencePoints = "Erfahrungspunkte";
    Spawnpoint = "Spawnpunkt";
    NotFound = "nicht gefunden";
    NotLearned = "noch nicht erlernt";
    Yes = "Ja";
    No = "Nein";
    Learned = "Erlernt";
    Rarity = "Seltenheit";
    AlreadyInProcess = "Ein Craftingvorgang wird aktuell schon ausgeführt.";
    SelectStorage = "Wähle einen Lagerort für dein gebautes Item aus.";
    Inventory = "Inventar";
    Locker = "Schließfach";
    Found = "gefunden";
    SpawnPointBlocked = "Ein Fahrzeug blockiert den Spawnpunkt";
    NotEnoughSpace = "In deinem Lagerort ist nicht genügend Platz für das Item vorhanden";
    Error = "Abbruch: Fehler während Craftingvorgang.";
    ErrorDistance = "Abbruch: Du hast dich während dem Craftingvorgang zu weit vom Startpunkt entfernt.";
    Success = "%1x %2 erfolgreich gebaut.";
    Crafting = "Baue";
    STR_ITEM = "Neue Items";
    STR_VItems = "Neue v-Items";
    STR_farm = "Neue Farming";
    STR_WEAPON = "Waffen";
    STR_Magazine = "Magazine";
    STR_Anbauteile = "Neue Anbauteile";
    STR_Kopfbedeckungen = "Neue  Kopfbedeckungen";
    STR_Brillen = "Neue  Brillen/Masken";
    STR_UNIFORM = "Neue  Uniformen";
    STR_VEST = "Neue  Vesten";
    STR_BACKPACK = "Neue Rucksäcke";
    STR_LANDVEHICLE = "Bodenfahrzeuge";
    STR_AIRVEHICLE = "Flugzeuge";
    STR_WATERVEHICLE = "Boote";
    STR_LEVEL_NOOB = "Anfänger";
    STR_LEVEL_APPRENTICE = "Auszubildender";
    STR_LEVEL_CRAFTSMAN = "Handwerker";
    STR_LEVEL_MASTER = "Meister";
    STR_LEVEL_MACHINE = "Maschine";
    STR_LEVEL_FACTORY = "Fabrik";
    STR_RARITY_NORMAL = "normal";
    STR_RARITY_RARE = "selten";
    STR_RARITY_PRECIOUS = "kostbar";
    STR_RARITY_EPIC = "episch";
};