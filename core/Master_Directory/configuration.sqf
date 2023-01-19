#include "..\..\script_macros.hpp"
/*
    File: configuration.sqf
    Author:

    Description:
    Master husky Configuration File
    This file is to setup variables for the client, there are still other configuration files in the system
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

*****************************
****** Backend Variables *****
*****************************
*/
husky_query_time = time;
husky_action_delay = time;
husky_trunk_vehicle = objNull;
husky_session_completed = false;
husky_garage_store = false;
husky_session_tries = 0;
husky_net_dropped = false;
husky_siren_active = false;
husky_clothing_filter = 0;
husky_clothing_uniform = -1;
husky_redgull_effect = time;
husky_is_processing = false;
husky_bail_paid = false;
husky_impound_inuse = false;
husky_action_inUse = false;
husky_spikestrip = objNull;
husky_holzbox = objNull;
husky_sandsackecke = objNull;
husky_sandsackende = objNull;
husky_sandsackkurz = objNull;
husky_sandsackkurve = objNull;
husky_sandsacklang = objNull;
husky_knockout = false;
husky_interrupted = false;
husky_respawned = false;
husky_removeWanted = false;
husky_action_gathering = false;
tawvd_addon_disable = true;
husky_god = false;
husky_frozen = false;
husky_save_gear = [];
husky_container_activeObj = objNull;
husky_disable_getIn = false;
husky_disable_getOut = false;
husky_admin_debug = false;
husky_preview_3D_vehicle_cam = objNull;
husky_preview_3D_vehicle_object = objNull;
husky_preview_light = objNull;
husky_preview_3D_vehicle_cam_g = objNull;
husky_preview_3D_vehicle_object_g = objNull;
husky_preview_light_g = objNull;
husky_pos_exist = false;
husky_pos_attach = [];
husky_pos_exist_g = false;
husky_pos_attach_g = [];
husky_civ_position = [];
husky_markers = false;
husky_canpay_bail = true;
husky_storagePlacing = scriptNull;
gettingBought = 0;
husky_w_time = 0;
XY_nextBoost = 0;
husky_flashlight = false;

husky_sitting = objNull;

husky_firstConnect = false;
death_effect = false;

//husky_request_timer = false;
//diag_log "SetVariable";
player setVariable["husky_request_timer",false,true];

GeldGeben = true;

husky_Einsatzschild = false;
husky_EinsatzschildInUse = false;

husky_last_vehicles = [];
//husky_empInUse = false;

husky_isSuiciding = false;

husky_TankLaster = 1;

husky_SalzSpace = 1;

husky_uranSpace = 1;

//husky_GoldSpace = 1;

husky_hints=[];

husky_seatbelt = false;

husky_sos_cooldown = false;

husky_smartphoneTarget = ObjNull;

husky_cannotRepair = false;
//player setVariable ["husky_repairMan",false,true];


//gangsystem
husky_gangname_check = false;
husky_gangname_available = false;
husky_gang_atm = false;

//husky_nagelband_placey = [];
//husky_nagelband_limit = 2;

//Farbkorrektur in der Nacht
CHBN_adjustBrightness = 10;
CHBN_adjustColor = [1,1,1];

//Settings
husky_SETTINGS_enableNewsBroadcast = profileNamespace getVariable ["husky_enableNewsBroadcast",true];
husky_SETTINGS_enableSidechannel = profileNamespace getVariable ["husky_enableSidechannel",true];
//husky_SETTINGS_tagson = profileNamespace getVariable ["husky_SETTINGS_tagson",true];
husky_SETTINGS_revealObjects = profileNamespace getVariable ["husky_SETTINGS_revealObjects",true];
husky_SETTINGS_viewDistanceFoot = profileNamespace getVariable ["husky_viewDistanceFoot",2000];
husky_SETTINGS_viewDistanceCar = profileNamespace getVariable ["husky_viewDistanceCar",2000];
husky_SETTINGS_viewDistanceAir = profileNamespace getVariable ["husky_viewDistanceAir",2000];

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
husky_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
husky_maxWeight = husky_SETTINGS(getNumber,"total_maxWeight");
husky_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** husky Variables *******
*****************************
*/
husky_net_dropped = false;
husky_use_atm = true;
husky_is_arrested = false;
husky_is_alive = false;
husky_delivery_in_progress = false;
husky_thirst = 100;
husky_hunger = 100;
c126 = 0;

husky_istazed = false;
husky_isknocked = false;
husky_vehicles = [];

/*
    Master Array of items?
*/
//Setup variable inv vars.
{
    missionNamespace setVariable [ITEM_VARNAME(configName _x),0];
} forEach ("true" configClasses (missionConfigFile >> "VirtualItems"));

/* Setup the BLAH! */
{
    _varName = getText(_x >> "variable");
    _sideFlag = getText(_x >> "side");

    missionNamespace setVariable [LICENSE_VARNAME(_varName,_sideFlag),false];
} forEach ("true" configClasses (missionConfigFile >> "Licenses"));

husky_idcard_data = [];
husky_side_noidcard = false;

locker_loaddelay = false; 
locker_antispam = false;

//0 spawn husky_fnc_keymapper_postinit;

/*
**************************************
****** Placeables Variables *****
**************************************
*/
if(playerside in [west,independent]) then {
    player setVariable ["husky_bar_placey",[],true];
    player setVariable ["husky_barrier_active",false,true];
    player setVariable ["husky_barrier_activeObj",objNull,true];
};
husky_definePlaceables = //Array aller Absperrungen (Cop + Medic)
[
 "RoadCone_F",
 "RoadCone_L_F",
 "RoadBarrier_F",
 "TapeSign_F",
 "RoadBarrier_small_F",
 "PlasticBarrier_03_orange_F",
 "Land_CncBarrier_stripes_F",
 "Land_PortableLight_single_F",
 "Land_PortableLight_double_F",
 "Land_PortableLight_02_quad_yellow_F",
 "Land_BagFence_01_long_green_F",
 "Land_BagFence_01_round_green_F",
 "Land_ConcreteHedgehog_01_F",
 "Land_BarGate_F",
 "Land_CampingChair_V2_white_F",
 "Land_CampingTable_small_white_F",
 "WaterSpill_01_Large_New_F",
 "WaterTrail_01_New_F",
 "Tarp_01_Large_Yellow_F",
 "HazmatBag_01_F",
 "SpinalBoard_01_orange_F",
 "Land_Stretcher_01_F",
 "Land_EmergencyBlanket_02_discarded_F",
 "DeconShower_01_F",
 "DeconShower_02_F",
 "Tire_Van_02_Transport_F",
 "Tire_Van_02_Cargo_F",
 "Land_KartTyre_01_F",
 "Land_CanisterFuel_Red_F",
 "Land_CarBattery_02_F",
 "Land_WheelChock_01_F",
 "Land_EngineCrane_01_F",
 "Land_PierLadder_F",
 "Land_BloodBag_F",
 "Land_Defibrillator_F",
 "Land_RoadBarrier_01_F",
 "Land_SignRestrict_01_speedLimit_30_F",
 "Land_SignRestrict_01_speedLimit_50_F",
 "Land_SignRestrict_01_speedLimit_70_F",
 "Land_SignRestrict_01_speedLimit_80_F",
 "Land_SignRestrict_01_speedLimit_end_F",
 "Land_SignWarning_01_pedestrianCrossing_F",
 "Land_SignWarning_01_ramp_F",
 "Land_SignWarning_01_rocks_F",
 "Land_SignWarning_01_steepDown_F",
 "Land_SignWarning_01_steepUp_F",
 "Land_SignWarning_01_stopOnRequest_F",
 "Land_SignWarning_01_unevenRoad_F",
 "Land_SignWarning_01_roadworks_F",
 "Land_SignWarning_01_junctionRoW_F",
 "Land_SignWarning_01_junction_F",
 "Land_SignWarning_01_doubleBend_right_F",
 "Land_SignWarning_01_doubleBend_left_F",
 "Land_SignWarning_01_crossRoad_F",
 "Land_SignWarning_01_bend_left_F",
 "Land_SignWarning_01_bend_left_F",
 "Land_SignWarning_01_herds_F",
 "Land_SignWarning_01_animals_F"
];
husky_bar_limit = 100; //Maximale Anzahl Absperrungen pro Person

if(isNil {profileNamespace getVariable "husky_Unit_Bekannt_Perso_1"}) then {
	husky_Bekannte = [];
	profileNamespace setVariable ["husky_Unit_Bekannt_Perso_1",husky_Bekannte];
	saveProfileNamespace;
} else {
	husky_Bekannte = profileNamespace getVariable "husky_Unit_Bekannt_Perso_1";
};