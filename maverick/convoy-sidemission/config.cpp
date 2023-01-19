/*--------------------------------------------------------------------------
    Author:		Bytex Digital
    Website:	https://bytex.digital

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/

class Maverick_ConvoySidemission
{
	class Config
	{
		ConfigPool[] 							= {"GoldBarTransport"};  //,"WeaponTransport"
		ForceConfigAtIndex 						= 1;
		SleepTime								= 12600;   //12600
		MakePlayersHostileFor					= 300;
		TimeoutBetweenMarkers					= 12600;
		SidesNotAttackable[]					= {};
		AIDifficulty[] = {
												{"aimingAccuracy", 2},
												{"aimingShake", 2},
												{"aimingSpeed", 2},
												{"endurance", 2},
												{"spotDistance", 2},
												{"spotTime", 2},
												{"courage", 1},
												{"reloadSpeed", 1},
												{"commanding", 2},
												{"general", 2}
		};
	};
	class ConvoyConfigurationsPool
	{
		/*********************** EXAMPLE TRANSPORT FOR VIRTUAL ITEMS ***********************/
		class GoldBarTransport
		{
			class MapConfiguration
			{
				showMapMarker					= 1;
				text							= "Gold Transport";
			};

			class AIUnits
			{
				gear[] = {
												"H_HelmetSpecB_blk", // Headgear
												"", // Glasses
												"U_Rangemaster", // Uniform
												"V_PlateCarrier1_blk", // Vest
												"", // Backpack
												{"arifle_SPAR_01_snd_F", "30Rnd_556x45_Stanag_Sand", 6}, // Primary weapon, ammo and how many magazines
												{"", "", 5} // Secondary weapon, ammo and how many magazines
				};
			};

			class Messages
			{
				// Enable messages?
				enabled							= 1;

				// Mission started announcement
				startAnnouncementHeader			= "Gold Transport";
				startAnnouncementDescription	= "Der bewachte Transporter der Federal Reserve transportiert derzeit größere Mengen an Gold.";

				// Mission objective completed
				stoppedAnnouncementHeader		= "Gold Transporter gestoppt";
				stoppedAnnouncementDescription	= "Der Goldtransporter wurde gestoppt.";

				// Mission completed announcement
				endAnnouncementHeader			= "Gold Transport beendet";
				endAnnouncementDescription  	= "Die Mission ist beendet.";
			};

			class Vehicles
			{
				// Vehicle configuration
				vehiclesInOrder[]				= {"B_MRAP_01_F","B_Truck_01_box_F","O_T_LSV_02_armed_F","B_MRAP_01_F"};
				vehiclesSpawnMarkersInOrder[]	= {"mav_convoy_spawn1","mav_convoy_spawn2","mav_convoy_spawn3","mav_convoy_spawn4"};
				vehiclesInheritDirection		= 1;
				mainVehicleAtIndex				= 2;
				maxSpeed						= 70;
				removeVehiclesAfterSeconds		= 1800;
				additionalUnitsAmount			= 15;
			};

			class Route
			{
				// Route configuration
				markers[] 						= {"mav_convoy_waypoint1","mav_convoy_waypoint2","mav_convoy_waypoint3","mav_convoy_waypoint4","mav_convoy_waypoint5"};
			};

			class Loot
			{
				type 							= "virtual";
				container						= "Land_CargoBox_V1_F";
				data[] = {
												{"goldbar", 30}
				};
			};
		};


		/*********************** EXAMPLE TRANSPORT FOR REAL ITEMS ***********************/
		class WeaponTransport
		{
			class MapConfiguration
			{
				showMapMarker					= 1;
				text							= "Waffen Transport";
			};

			class AIUnits
			{
				gear[] = {
												"H_HelmetSpecB_blk", // Headgear
												"", // Glasses
												"U_Rangemaster", // Uniform
												"V_PlateCarrier1_blk", // Vest
												"", // Backpack
												{"arifle_MXM_RCO_pointer_snds_F", "30Rnd_65x39_caseless_mag", 6}, // Primary weapon, ammo and how many magazines
												{"", "", 5} // Secondary weapon, ammo and how many magazines
				};
			};

			class Messages
			{
				// Enable messages?
				enabled							= 1;

				// Mission started announcement
				startAnnouncementHeader			= "Waffen Transport";
				startAnnouncementDescription	= "Die örtliche Armee transportiert derzeit größere Mengen an Waffen mit Bodenfahrzeugen durch Altis.";

				// Mission objective completed
				stoppedAnnouncementHeader		= "Waffen Transporter gestoppt";
				stoppedAnnouncementDescription	= "Der Waffentransporter wurde gestoppt.";

				// Mission completed announcement
				endAnnouncementHeader			= "Waffen Transport beendet";
				endAnnouncementDescription  	= "Die Mission ist beendet.";
			};

			class Vehicles
			{
				// Vehicle configuration
				vehiclesInOrder[]				= {"B_MRAP_01_F","B_Truck_01_box_F","O_T_LSV_02_armed_F","B_MRAP_01_F"};
				vehiclesSpawnMarkersInOrder[]	= {"mav_convoy_spawn1","mav_convoy_spawn2","mav_convoy_spawn3","mav_convoy_spawn4"};
				vehiclesInheritDirection		= 1;
				mainVehicleAtIndex				= 2;
				maxSpeed						= 70;
				removeVehiclesAfterSeconds		= 1200;
				additionalUnitsAmount			= 15;
			};

			class Route
			{
				// Route configuration
				markers[] 						= {"mav_convoy_waypoint1","mav_convoy_waypoint2","mav_convoy_waypoint3","mav_convoy_waypoint4","mav_convoy_waypoint5"};
			};

			class Loot
			{
				type 							= "real";
				container						= "Land_CargoBox_V1_F";
				data[] = {
												{"srifle_EBR_F", 2, "WEAPON"},
												//{"arifle_AK12U_lush_F", 1, "WEAPON"},
												//{"arifle_ARX_blk_F", 1, "WEAPON"},
												//{"arifle_TRG20_F", 1, "WEAPON"},
												//{"arifle_SDAR_F", 1, "WEAPON"},
												//{"hgun_Pistol_heavy_01_F", 1, "WEAPON"},
												//{"SMG_01_F", 1, "WEAPON"},
												{"optic_Arco_blk_F", 3, "ITEM"},
												//{"optic_AMS", 2, "ITEM"},
												{"20Rnd_762x51_Mag", 4, "MAGAZINE"},
												//{"11Rnd_45ACP_Mag", 4, "MAGAZINE"},
												//{"30Rnd_556x45_Stanag", 6, "MAGAZINE"},
												//{"30Rnd_45ACP_Mag_SMG_01_Tracer_Red", 4, "MAGAZINE"},
												{"B_Bergen_mcamo_F", 2, "BACKPACK"}
				};
			};
		};
	};
};