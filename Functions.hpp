/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/



class Socket_Reciever {
    tag = "SOCK";
    class SQL_Socket {
        file = "core\session";
		class syncGear;
        class dataQuery;
        class insertPlayerInfo;
        class requestReceived;
        class syncData;
        class updatePartial;
        class updateRequest;
		class forceRagdoll;
    };
};

class husky_Client_Core {
    tag = "husky";

    class Master_Directory {
        file = "core\Master_Directory";
        class initCiv;
        class initCop;
        class initMedic;
        class setupActions;
        class setupEVH;
        class survival;
        class welcomeNotification;
		class rankinfo;
		class spawn_musik;
		class slots;
		class adminevent;
		//class countdown;
    };

    class Actions {
        file = "core\actions";
        class arrestAction;
        class buyLicense;
        class captureHideout;
        class catchFish;
        class dpFinish;
        class dropFishingNet;
        class escortAction;
        class gather;
        class getDPMission;
        class gutAnimal;
        class healHospital;
        class impoundAction;
        class mine;
        class newsBroadcast;
        class packupSpikes;
        class pickupItem;
        class pickupMoney;
        class postBail;
        class processAction;
        class processActiongang;
        class pulloutAction;
        class putInCar;
        class removeContainer;
        class repairTruck;
        class restrainAction;
        class robAction;
        class searchAction;
        class searchVehAction;
        class seizePlayerAction;
        class serviceChopper;
        class stopEscorting;
        class storeVehicle;
        class surrender;
        class ticketAction;
        class unrestrain;
		class suicideBomb;
		class impoundPermAction;
		class impoundTempAction;
		class jaws;
		class packupholzbox;
		class packupSandsackkurz;
		class packupSandsackkurve;
		class packupSandsacklang;
		class packupSandsackende;
		class packupSandsackecke;
		class ticketAction_med;
        class processbar;
		//class takeOrgans;
    };

    class Admin {
        file = "core\admin";
        class adminCompensate;
        class adminDebugCon;
        class adminFreeze;
        class admingetID;
        class adminGodMode;
        class adminid;
        class admininfo;
        class adminMarkers;
        class adminMenu;
        class adminQuery;
        class adminSpectate;
        class adminTeleport;
        class adminTpHere;
    };

    class Civilian {
        file = "core\civilian";
        class civLoadout;
        class civMarkers;
        class demoChargeTimer;
        class freezePlayer;
        class jail;
        class jailMe;
        class knockedOut;
        class knockoutAction;
        class removeLicenses;
        class robPerson;
        class robReceive;
        class tazed;
        class civInteractionMenu;
		class tazedRubber;
		//class hasOrgan;
		//class clanponnygang;
		class gagAction;
		class gagged;
		class removeGagAction;
		//class tieing;
		//class tieingAction;
		class tieingActionb;
		class tieingb;
		//class untie;
		class untieb;
		class radarfalleMenu_sabotage;
		class loot;
		class toolbox;
        //class zeigenlizenz;
    };

    class Config {
        file = "core\config";
        class houseConfig;
        class itemWeight;
        class vehicleAnimate;
        class vehicleWeightCfg;
    };

    class Cop {
        file = "core\cop";
        class bountyReceive;
		class copcallmanagement {};
        class containerInvSearch;
        class copInteractionMenu;
        class copLights;
        class copLoadout;
        class copMarkers;
        class copSearch;
        class copSiren;
        class doorAnimate;
        class fedCamDisplay;
        class licenseCheck;
        class licensesRead;
        class questionDealer;
        class radar;
		class mobradar;
        class repairDoor;
        class restrain;
        class searchClient;
        class seizeClient;
        class sirenLights;
        class spikeStripEffect;
        class ticketGive;
        class ticketPaid;
        class ticketPay;
        class ticketPrompt;
        class vehInvSearch;
		class forceTicket;
		class seizeWeapon;
		class copSiren2;
		class copSiren3;
		class copSiren4;
		class copSiren5;
		class copEnter;
		class showArrestDialog;
		class arrestDialog_Arrest;
		class temp_impound;
		class perm_impound;
		class sosmarker;
		class copbackup;
		class broadcastParse;
		class fixdoor;
		class radarfalleMenu;
		class opencopcomputer;
		class repair_assavaten;
		class captureHideoutCop;
		class captureHideoutCop2;
		class captureHideoutCop3;
		class radarfalle_repair;
        class teargas;
    };

    class Dialog_Controls {
        file = "dialog\function";
        class fms;
		class fms_med;
		//class willswieder;
		class impoundLBChange;
        class bankDeposit;
        class bankTransfer;
        class bankWithdraw;
        class displayHandler;
        class gangDeposit;
        class gangWithdraw;
        class garageLBChange;
        class impoundMenu;
        class progressBar;
        class safeFix;
        class safeInventory;
        class safeOpen;
        class safeTake;
        class sellGarage;
        class setMapPosition;
        class spawnConfirm;
        class spawnMenu;
        class spawnPointCfg;
        class spawnPointSelected;
        class unimpound;
        class vehicleGarage;
        class wireTransfer;
		//class bummelDieBummel;
		class farmboostquery;
		class farmboost;
		class booststatus;
		class bankDepositAll;
    };

	class DynMarket{
		file = "core\DynMarket";
		class bought;
		class update;
		class LoadIntoListbox;
		class ForcePrice;
		class DYNMARKET_getPrice;
	};
	
	//GAMBLING by Yasar-S
    class Gambling
	{
		file = "scripts\Gambling";
		class giveWinnerMoneyGambling {};
		class goingToHighBet {};
		class loadGamblingDia {};
		class setGamblingMoney {};
		class updateGamblingDatas {};
		class newGambler {};
		class gamblingTimer {};
		class getGamblingInfo {};
	};
	//Casino
    class Casino
	{
		file = "scripts\Casino";
		class giveWinnerMoneyGambling2 {};
		class goingToHighBet2 {};
		class loadGambling2Dia {};
		class setGambling2Money {};
		class updateGambling2Datas {};
		class newGambler2 {};
		class gambling2Timer {};
		class getGambling2Info {};
	};
	
	class Sperrzone
	{
		file = "scripts\Sperrzone";
		class checkSperrzone {};
		class getSperrzonePos {};
		class placeSperrzone {};
		class sperrZoneSliderStatus {};
        class SperrzoneDel {};
        class sperrZoneConfigureSlider {};
	};

	class Functions {
        file = "core\functions";
		class AAN;
		class sliderchangeticket;
		class aapps_sellObject;
        class calWeightDiff;
        class clearVehicleAmmo;
        class dropItems;
        class escInterupt;
        class fetchCfgDetails;
        class fetchDeadGear;
        class fetchVehInfo;
        class isDamaged;
        class giveDiff;
        class hideObj;
        class hudSetup;
        class hudUpdate;
        class inventoryClosed;
        class inventoryOpened;
        class isUIDActive;
        class loadDeadGear;
        class loadGear;
        class nearATM;
        class nearestDoor;
        class nearUnits;
        class numberText;
        class postNewsBroadcast;
        class pullOutVeh;
        class pushObject;
        class receiveItem;
        class receiveMoney;
        class revealObjects;
        class saveGear;
        class searchPosEmpty;
        class simDisable;
        class stripDownPlayer;
        //class tazeSound;
		class admin;
        class teleport;
        class whereAmI;
		class damagezone;
		class robstore;
		class Opener;
		class medico;
		class resetspeedblock;
		class garage_verkaufen;
		class seatbelt;
		class OutroCam;
		class timeToStr;
		class ClanHorn;
		class robKammer;
		class animation;
		class boothupe;
		class freemask;
		class waffenhaendlerabfrage;
		class waffenhaendlerabfrage_gang;
        class getlootbox;
		class eventLoadout;
		class atmaufbrechen {}; 
        class stringInWord {};
        class buildHint {};
    };

    class Housing {
        file = "core\housing";
        class buyHouse;
        class buyHouseGarage;
        class containerMenu;
        class copBreakDoor;
        class copHouseOwner;
        class garageRefund;
        class getBuildingPositions;
        class houseMenu;
        class initHouses;
        class lightHouse;
        class lightHouseAction;
        class lockHouse;
        class lockupHouse;
        class placeContainer;
        class PlayerInBuilding;
        class raidHouse;
        class sellHouse;
        class sellHouseGarage;
    };

    class Items {
        file = "core\items";
        class blastingCharge;
        class boltcutter;
        class defuseKit;
        class flashbang;
        class jerrycanRefuel;
        class jerryRefuel;
        class lockpick;
		class lockpickplus;
		class lockpickloot;
        class placestorage;
        class spikeStrip;
        class storageBox;
		class keycard;
		class GPSTracker;
		class bandages;
		class morphine;
		class speedBomb;
		//class smokeWall;
		class ehk;
		class holzbox;
		class Sandsackkurz;
		class Sandsackkurve;
		class Sandsacklang;
		class Sandsackende;
		class Sandsackecke;
		class boltcutgate;
		class brecheisen;
        class lootboxnormal;
        class lootboxepic;
        class lootboxlegend;
		//class storageBoxAdmin;
		class StihlSaege;
        class useFlashlight;
    };

    class Medical_System {
        file = "core\medical";
        class deathScreen;
		class medcallmanagement {};
        class medicLights;
        class medicLoadout;
        class medicMarkers;
        class medicRequest;
        class medicSiren;
        class medicSirenLights;
        class onPlayerKilled;
        class onPlayerRespawn;
        class requestMedic;
        class respawned;
        class revived;
        class revivePlayer;
        class revivePlayerCiv;
		class medInteractionMenu;
		class medicEnter;
		class ticketGive_med;
        class ticketPaid_med;
        class ticketPay_med;
        class ticketPrompt_med;
		class death_effect;
		class medicSirenbob;
		class openmedcomputer;
		class reset_var;
		class setdefveriable;
        class forcerespawn;
        class stabilisatePlayer;
        class verlangern;
    };

    class Network {
        file = "core\functions\network";
        class broadcast;
        class corpse;
        class jumpFnc;
        class say3D;
        class setFuel;
        class soundDevice;
    };

    class Player_Menu {
        file = "core\pmenu";
        class cellphone;
        class giveItem;
        class giveMoney;
        class keyDrop;
        class keyGive;
        class keyMenu;
        class p_openMenu;
        class p_updateMenu;
        class pardon;
        class removeItem;
        class s_onChar;
        class s_onCheckedChange;
        class s_onSliderChange;
        class settingsMenu;
        class updateViewDistance;
        class useItem;
		class smartphone;
		class newMsg;
		class showMsg;
		class physicalPhone;
		class revokeLicense;
		class revokeLicense_cop;
		class revokeLicense_med;
		class openAdminMenu;
    };

    class Shops {
        file = "core\shops";
        class atmMenu;
        class buyClothes {};
        class changeClothes {};
        class chopShopMenu;
        class chopShopSelection;
        class chopShopSell;
		class clothingFilter {};
		class clothingMenu {};
		class clothingSelection {};
        class fuelLBchange;
        class fuelStatOpen;
        class levelCheck;
        class vehicleShop3DPreview;
        class vehicleShopBuy;
        class vehicleShopEnd3DPreview;
        class vehicleShopInit3DPreview;
        class vehicleShopLBChange;
        class vehicleShopMenu;
        class virt_buy;
        class virt_menu;
		class virt_sellAll;
        class virt_sell;
        class virt_update;
        class virt_selection;
        class virt_selectionSell;
        class virt_buy_sell;
        class weaponShopBuySell;
		class weaponShopFilter;
		class weaponShopMenu;
		class weaponShopSelection;
        class impoundedmenu;
		class licenses;
		class 3dPreviewDisplay;
        class 3dPreviewExit;
        class 3dPreviewInit;
		class vehicleGarage3DPreview;
        class virt_buy_ec;
        class vehicleShopBuyEC;
        class weaponShopBuySellEC;
        class buyClothesEC;
    };

    class Vehicle {
        file = "core\vehicle";
        class addVehicle2Chain;
        class colorVehicle;
        class deviceMine;
        class FuelRefuelcar;
        class fuelStore;
        class fuelSupply;
        class lockVehicle;
        class openInventory;
        class vehiclecolor3DRefresh;
        class vehicleOwners;
        class vehicleWeight;
        class vehInventory;
        class vehStoreItem;
        class vehTakeItem;
        class vInteractionMenu;
		class vehTakeAllItem;
		class vehStoreAllItem;
		class deviceMineplus;
		class plate;
		class changePlate;
		class vehiclecolor3DRefreshGarage;
        class insureCar {};
		class chipboost;
		class chiptune;
		class sellVehicle;
    };

	class allianceapps_idcard {
		file = "core\idcard";
		class idcard_NameCheck;
		class idcard;
		class idcard_Created;
		class show_idcard;
    };

    class idlicense {
		file = "core\idlicense";
        class importentdocumentinteraction {};
        class documents_show {};
		class lzeigen;
		class ldriver;
    };

/*
	class allianceapps_locker_pages {
	file = "core\locker\changedialog";
		class locker_gear {};
		class locker_items {};
		class locker_virt {};
		class locker_weapons {};
	};*/
	/*
	class allianceapps_keymapper {
	file = "core\keymapper";
		class keymapper_build {};
		class keymapper_init {};
		class keymapper_postinit {};
	};*/

	class emp {
	file = "core\emp";
		class openEmpMenu {};
		class isEmpOperator {};
		class scanVehicles {};
		class warnVehicle {};
		class empVehicle {};
		class vehicleWarned {};
		class vehicleEmpd {};
	};

	class Speedtrap	{
		file = "core\speedtrap";
        class speedtrap {};
        class speedtrapGetPhotoList {};
        class speedtrapActivate {};
        class speedtrapSetSpeedLimit {};
        class speedtrapRemove {};
        class speedtrapAdd {};
        class trapped {};
        class trappedFlash {};
        class setSpeedtrapLimit {};
	};

	class AApps_gangs {
        file = "core\gangs";
        class gang_openDialog {};
        class gang_initFunctions {};
        class gang_leave {};
        class gang_buyrent {};
        class gang_desc {};
        class gang_changegroup {};
        class gang_permission {};
        class gang_findGang {};
        class gang_settings {};
        class gang_kickinvite {};
        class gang_hqlist {};
        class gang_hqupgrades {};
		class areaCapture {};
    };

	class notification {
		file = "scripts\husky\notificationSystem";
		class createNotification {};
    };

	class huskys {
		file = "scripts\husky";
		class craftitems;
		class craftitem;
		//class pauseMenu {};
		//class gathertrash;
		//class lock {};
		//class unlock {};
		class steamName;
		//class ragdolloderso {};
		//class boltcutDoor;
        //class fixdoor;
		//class repairSystem {};
		//class repairJobMenu {};
		class einsatzschild;
		class MobileCopStationLocal;
		class MobileCopStationPillar;
		class copSit;
		class copStand;
		class wanted_aktuallisieren;
		class zip_viewinventory;
		class zip_civ_viewinventory;
		class recoil;
		class trunk_clear;
		//class alice_shop;
		//class TorKancken;
		class safefixauto;
		//class bankmincops;
		class gangcheck;
		//class blacklisthaus;
		class radArea;
		class radInv;
		class radCheck;
		class admindienst;
		class admindienstende;
		class aktenschrank;
		//class reb_lizenz;
        //class rdmzone;
        class killerdaten;
        class Paradrop;
    };

	/*
	class huskysalice {
		file = "scripts\husky\aliceshop";
		class postNewsBroadcast_alice;
		class newsBroadcast_alice;
		class AAN_alice;
    };*/

	class ablaulicht {
		file = "scripts\ablaulicht";
		class lights;
		class lightsOn;
		//class lightss;
		//class lightsOns;
	};

	class effekte {
		file = "Scripts\husky\effekte";
		class alcool;
		class alcoolTest;
		class assomer;
		class cannabis;
		class cocaine;
		class drogueTest;
		class heroine;
		class tazer;
		class tremblements;
		class animal;
    };

	class CellPhone {
		file = "core\cellphone";
		class cellPhoneCheck {};
		class setupCellPhone {};
		class messagesMenu {};
		class lbChanged {};
		class deleteMessage {};
		class replyMessage {};
	};

	class EventHandlers {
        file = "core\EventHandlers";
        class accType;
        class actionKeyHandler;
        class animSync;
		class handleDamage;
		class handleHeal;
        class handleInv;
        class handleItem;
		class keyHandler;
		class onFired;
        class onTakeItem;
        class playerSkins;
        class playerTags;
    };

	class wanted_system {
		file = "core\wanted_system";
		class wantedAddP;
        class wantedInfo;
        class wantedList;
        class wantedMenu;
		class wantedGrab;
	};


    class Placeables {
        file = "core\placeables";
        class placeablesInit;
        class medicPlaceablesInit;
        class placeablesMenu;
        class placeablesRemoveAll;
        class placeablePlace;
        class placeableCancel;
        class placeablesPlaceComplete;
        class placeablesMenuPreview;
    };

	class autosave {
		file = "scripts\derleon\autosave";
		class autoSaveInv {};
	};

	class polizeicomputer {
		file = "core\polizeicomputer";
        class auswahl;
        class bericht;
        class pcdb;
        class pcdb1;
        class pcdb2;
        class pcdbdelete;
        class Polizeicomputer;
        class polizeicomputerdatabaseinfo;
        class polizeicomputerdatabaseinfo1;
        class Polizeicomputerinfo;
		class Polizeicomputerinfo1;
		class Polizeicomputerstart;
		class scheinentzug;
		class scheinentzugnow;
		class statusupdate;
		class Textinfo;
		class textinfoausgabe;
		class FahndungMeldung;
    };

	class mediccomputer {
		file = "core\mediccomputer";
        class auswahl_med;
        class bericht_med;
        class pcdb_med;
        class pcdb1_med;
        class pcdb2_med;
        class pcdbdelete_med;
        class Polizeicomputer_med;
        class polizeicomputerdatabaseinfo_med;
        class polizeicomputerdatabaseinfo1_med;
        class Polizeicomputerinfo_med;
		class Polizeicomputerinfo1_med;
		class Polizeicomputerstart_med;
		class statusupdate_med;
		class Textinfo_med;
		class textinfoausgabe_med;
    };

    class Sperri {
        file = "core\Sperrzone";
        class SperrInit;
        class SperrMap;
        class SperrCreateGlobal;
        //Deleting
        class SperrDeleteinit;
        class SperrDeleteChange;
        class SperrDeleteing;
        class SperrDeleteingAll;
        //ZoneMessage
        class SperrZoneActivation;
		//class beispiel;
    };

    class airdopinv {
        file = "core\airdopcase";
        class airInventory;
        class airOpen;
        class airStore;
        class airTake;
    };

	class Bugtracker {
        file = "Scripts\MrFrost\Bugtracker";
        class Bugtracker {};
    };

    class auktionshaus {
        file = "core\auktionshaus";
        class ah_load {};
        class ah_buy {};
        class ah_receiver {};
        class ah_loadInventory {};
        class ah_sell {};
        class ah_checkItem {};
        class ah_takeBack {};
        class ah_select {};
    };

	/*
	class Economy {
        file="core\economy";
        class marketGrab;
        class openEconomy;
        class retrievePrices;
        class updateEconomy;
        class updatePrice;
    };*/

	/*
	class mapFilter {
        file = "core\mapFilter";
        class TreeSel;
        class addMrkrs;
        class MrkrSel;
        class LocSel;
    };*/

	/*
	class Achievement{
		file = "core\Achievement";
		class Achievementupdate;
		class getAchievement;
		class Achievementupdate_cop;
		class getAchievement_cop;
		class Achievementupdate_med;
		class getAchievement_med;
	};*/
	/*
	class Garage {
        file = "core\Garage";
        class vehicleGarage3DPreview;
        class vehicleGarageEnd3DPreview;
        class vehicleGarageInit3DPreview;
        class vehicleGarageMenu;
		class vehicleGarageLBChange;
    };
	*/

    /*class lockpick {
        file = "core\lockpick";
        class breakLPick {};
        class checkLock {};
        class keyDown {};
        class keyUp {};
        class mBtnDown {};
        class mBtnUp {};
        class moveLPick {};
        class openLPick {};
        class prepare {};
        class rotateLPick {};
        class shakeLPick {};
    };*/

	/*
	class tuning{
		file = "core\tuning\tuning";
		class tuningshop_LBchange {};
		class tuningshop_menu {};
		class tuningshop_vehicleLBchange {};
	};

	class tuning{
		file = "core\tuning\tuning\hupen";
		class tuningshop_hupeLBchange {};
		class tuningshop_hupen {};
		class tuningshop_hupenmenu {};
	};

	class tuning{
		file = "core\tuning\tuning\smokescreen";
		class tuningshop_smokescreenLBchange {};
		class tuningshop_smokescreenmenu {};
		class tuningshop_smokescreen {};
	};

	class tuning{
		file = "core\tuning\tuning\ubodylights";
		class tuningshop_ubodylightsLBchange {};
		class tuningshop_ubodylightsmenu {};
		class tuningshop_ubodylights {};
	};

	class tuning{
		file = "core\tuning\tuning\verschiedenes";
		class tuningshop_verschiedenesLBchange {};
		class tuningshop_verschiedenesmenu {};
		class tuningshop_verschiedenes {};
	};
	*/

	class helpmenu {
		file = "scripts\husky\helpmenu";
		#include "scripts\husky\helpmenu\CfgFunctions.hpp"
	};
	class carMenu {
		file = "scripts\husky\carMenu";
		#include "scripts\husky\carMenu\CfgFunctions.hpp"
	};
	class marktMenu {
		file = "scripts\husky\marktMenu";
		#include "scripts\husky\marktMenu\CfgFunctions.hpp"
	};
	class lizenzMenu {
		file = "scripts\husky\lizenzMenu";
		#include "scripts\husky\lizenzMenu\CfgFunctions.hpp"
	};
	/*
	class bugtracker {
		file = "scripts\husky\bugtracker";
		#include "scripts\husky\bugtracker\CfgFunctions.hpp"
	};

	class zMenu {
		file = "dialog\zMenu";
		#include "dialog\zMenu\CfgFunctions.hpp"
	};
	*/
};

class MrFrostScripts {
    tag = "MrFrost";

    class InfoMenu {
        file = "Scripts\MrFrost\InfoMenu";
        class InfoMenuCreate {};
        class InfoMenuSelectionClick {};
	};
};


class Toxic_Functions {
    tag = "Toxic";
    class Toxic_Main {
        file = "core\Toxic";
        class repairSystem;
		class busMenu;
        class busStart;
        class repairJobMenu;
    };
};
