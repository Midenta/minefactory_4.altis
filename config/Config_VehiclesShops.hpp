class CarShops {
    /*
    *    ARRAY FORMAT:
    *        0: STRING (Classname)
    *        1: STRING (Condition)
    *    FORMAT:
    *        STRING (Conditions) - Must return boolean :
    *            String can contain any amount of conditions, aslong as the entire
    *            string returns a boolean. This allows you to check any levels, licenses etc,
    *            in any combination. For example:
    *                "call husky_coplevel && license_civ_someLicense"
    *            This will also let you call any other function.
    *
    *   BLUFOR Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_WEST
    *   OPFOR Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_EAST
    *   Independent Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_GUER
    *   Civilian Vehicle classnames can be found here: https://community.bistudio.com/wiki/Arma_3_CfgVehicles_CIV
	*
	*
	/* Vehicle kauf Prices */
    // vehicle_purchase_multiplier_CIVILIAN = 1; //Civilian Vehicle Buy Price = Config_Vehicle price * multiplier
    // vehicle_purchase_multiplier_COP = .2; //Cop Vehicle Buy Price = Config_Vehicle price * multiplier
    // vehicle_purchase_multiplier_MEDIC = .2; //Medic Vehicle Buy Price = Config_Vehicle price * multiplier
    // vehicle_purchase_multiplier_OPFOR = -1; // -- NOT IN USE -- Simply left in for east support.
	
    /* Vehicle miet Prices */
    // vehicle_rental_multiplier_CIVILIAN = .60; //Civilian Vehicle Rental Price = Config_Vehicle price * multiplier
    // vehicle_rental_multiplier_COP = .1; //Cop Vehicle Rental Price = Config_Vehicle price * multiplier
    // vehicle_rental_multiplier_MEDIC = .1; //Medic Vehicle Rental Price = Config_Vehicle price * multiplier
    // vehicle_rental_multiplier_OPFOR = -1; // -- NOT IN USE -- Simply left in for east support.

    /* Vehicle verkauf Prices */
    // vehicle_sell_multiplier_CIVILIAN = .55; //Civilian Vehicle Garage Sell Price = Vehicle Buy Price * multiplier
    // vehicle_sell_multiplier_COP = .05; //Cop Vehicle Garage Sell Price = Vehicle Buy Price * multiplier
    // vehicle_sell_multiplier_MEDIC = .05; //Medic Vehicle Garage Sell Price = Vehicle Buy Price * multiplier
    // vehicle_sell_multiplier_OPFOR = -1; // -- NOT IN USE -- Simply left in for east support.

    /* "Andere" Vehicle Prices */
    // vehicle_chopShop_multiplier = .25; //Chop Shop price for vehicles. TO AVOID EXPLOITS NEVER SET HIGHER THAN A PURCHASE/RENTAL multipler!   Payout = Config_vehicle Price * multiplier
    // vehicle_storage_fee_multiplier = .01; //Pull from garage cost --> Cost takes the playersides Buy Price * multiplier
    // vehicle_cop_impound_multiplier = .05; //TO AVOID EXPLOITS NEVER SET HIGHER THAN A PURCHASE/RENTAL multipler!   Payout = Config_vehicle Price * multiplier
	/*
	*		Thieves
	*
	*		Minefactory.eu
	*
	*		Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	*		Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
    */
	//this addAction[localize "STR_MAR_Car_shop",husky_fnc_vehicleShopMenu,["civ_car",civilian,["civ_car_3","civ_car_3_1"],"civ","Bruce's New & Used Auto's"]]; this setVariable ["realname", "Car Shop"];
    class civ_car {
        side = "civ";
        conditions = "license_civ_driver";
        vehicles[] = {
            { "B_Quadbike_01_F", "" },
            { "C_Hatchback_01_F", "" },
            { "C_Offroad_01_F", "" },
			{ "C_Offroad_02_unarmed_F", "" }, //Apex DLC
            { "C_Offroad_01_covered_F", ""}, //Contact DLC
            { "C_SUV_01_F", "" },
            { "C_Hatchback_01_sport_F", "" },
			{ "C_Van_01_transport_F", "" },
            { "C_Van_01_box_F", "" },
			{ "C_Van_01_fuel_F", "" },	
			{ "C_Van_02_transport_F", "" },
			{ "C_Van_02_vehicle_F", "" },
			{ "C_Tractor_01_F", "" }
        };
    };

    class kart_shop {
        side = "civ";
        conditions = "";
        vehicles[] = {
            { "C_Kart_01_Blu_F", "" },
            { "C_Kart_01_Fuel_F", "" },
            { "C_Kart_01_Red_F", "" },
            { "C_Kart_01_Vrana_F", "" }
        };
    };

	//this addAction[localize"STR_MAR_Truck_Shop",husky_fnc_vehicleShopMenu,["civ_truck",civilian,"civ_truck_1","civ","Bruce's New & Used Trucks"]];
    class civ_truck {
        side = "civ";
        conditions = "license_civ_trucking";
        vehicles[] = {	
			{ "I_Truck_02_fuel_F", "" },
            { "I_Truck_02_transport_F", "" },
            { "I_Truck_02_covered_F", "" },
			{ "O_Truck_03_fuel_F", "" },
            { "O_Truck_03_transport_F", "" },
            { "O_Truck_03_covered_F", "" },
			{ "O_Truck_03_fuel_F", "" },
			{ "O_Truck_03_device_F", "" },
			{ "O_T_Truck_03_device_ghex_F", "license_civ_truckingplus" },
			{ "B_Truck_01_fuel_F", "" },		
			{ "B_Truck_01_transport_F", "" },
			{ "B_Truck_01_cargo_F", "" },							 //Contact DLC
			{ "B_Truck_01_covered_F", "" },
            { "B_Truck_01_box_F", "" },
			{ "B_Truck_01_flatbed_F", "license_civ_schwerlast" }							 //Contact DLC
        };
    };
	
	//STR_MAR_Container
    class civ_truck_container {
        side = "civ";
		conditions = "license_civ_schwerlast";
        vehicles[] = {				//Container klein
            { "Land_Cargo20_white_F", "" },				//Container
            { "Land_Cargo20_red_F", "" },				//Container
			{ "Land_Cargo20_blue_F", "" },				//Container
			{ "Land_Cargo20_military_green_F", "" },	//Container
			{ "Land_Cargo20_yellow_F", "" },			//Container
			//{ "Land_Cargo40_grey_F", "" },			//Container
			{ "Land_Pod_Heli_Transport_04_fuel_F", "" },//Container Fuel
			{ "B_Slingload_01_Fuel_F", "" },			//Container Fuel
			{ "Land_Device_slingloadable_F", "" }		//Gerät Aufbau Uran
			//{ "Land_Cargo20_IDAP_F", "" }			    //URAN
			//{ "Land_Device_assembled_F", "" }			//Gerät Aufbau Uran		//Deaktiviert, Simulation Enable funzt ne
        };
    };

	//this addAction[localize"STR_MAR_Helicopter_Shop", husky_fnc_vehicleShopMenu,["civ_air",civilian,"civ_air_1","civ","Zivile Luftfahrzeuge"]];  
    class civ_air {
        side = "civ";
        conditions = "license_civ_pilot";
        vehicles[] = {
            { "C_Heli_Light_01_civil_F", "" },
            { "B_Heli_Light_01_F", "" },
            { "O_Heli_Light_02_unarmed_F", "" },
			{ "I_Heli_Transport_02_F", "" },
			{ "O_Heli_Transport_04_fuel_F", "" },
			{ "B_Heli_Transport_03_unarmed_F", "" },
			{ "O_Heli_Transport_04_F", "" },
            //{ "I_E_Heli_Light_03_unarmed_F", ""},
			{ "O_Heli_Transport_04_box_F", "" }	
        };
    };
	
	//this addAction[localize"STR_MAR_Helicopter_Shop", husky_fnc_vehicleShopMenu,["civ_flugzeug",civilian,"civ_air_2","civ","Zivile Luftfahrzeuge"]];  
	class civ_flugzeug {
		side = "civ";
		conditions = "license_civ_Flugzeugpilot";
        vehicles[] = {
            { "C_Plane_Civil_01_racing_F", "" },
            { "C_Plane_Civil_01_F", "" },
            { "I_C_Plane_Civil_01_F", "" },
			{ "B_T_VTOL_01_infantry_F", "" },
            { "B_T_VTOL_01_vehicle_F", "" }
        };
	};

	//this addAction[localize"STR_MAR_Boat_Shop",husky_fnc_vehicleShopMenu,["civ_ship",civilian,"civ_ship_1","civ","Billy's Boat Rentals & Ownership"]]; 
    class civ_ship {
        side = "civ";
        conditions = "";
        vehicles[] = {
            { "C_Rubberboat", "" },
            { "C_Boat_Civil_01_F", "" },
            { "B_SDV_01_F", "" },
            { "C_Boat_Transport_02_F", "" }, //Apex DLC
            { "C_Scooter_Transport_01_F", "" } //Apex DLC
        };
    };

	//this addAction[localize"STR_MAR_W_E_Vehicle Shop",husky_fnc_vehicleShopMenu,["reb_car",civilian,["reb_v_1","reb_v_1_1"],"reb","Rebel Motorpool - Western Side"],0,false,false,"","",4];
    class reb_car {
        side = "civ";
        conditions = "license_civ_rebel";
        vehicles[] = {
            { "B_Quadbike_01_F", "" },
            { "B_G_Offroad_01_F", "" },
			{ "I_E_Offroad_01_covered_F", ""},
			{ "I_E_Offroad_01_comms_F", ""},
			{ "C_Van_02_vehicle_F", "" },
			{ "B_T_LSV_01_unarmed_F", "" },	
			{ "O_T_LSV_02_unarmed_F", "" },		
			{ "I_G_Offroad_01_armed_F", "" }
        };
    };
	
	//this addAction[localize"STR_MAR_Helicopter_Shop", husky_fnc_vehicleShopMenu,["reb_air",civilian,["civ_air_2"],"civ","Luftfahrzeuge"]];
	class reb_air {
        side = "civ";
        conditions = "license_civ_rebel";
        vehicles[] = {
            { "C_Heli_Light_01_civil_F", "" },
            { "B_Heli_Light_01_F", "" },
            { "O_Heli_Light_02_unarmed_F", "" },
			{ "I_Heli_Transport_02_F", "" },
			{ "B_Heli_Transport_03_unarmed_F", "" },
			{ "O_Heli_Transport_04_F", "" },
            //{ "I_E_Heli_Light_03_unarmed_F", ""},
			{ "O_Heli_Transport_04_box_F", "" }	
        };
    };
	
	class miliz_car {
        side = "civ";
        conditions = "license_civ_miliz";
        vehicles[] = {
            { "C_Offroad_01_F", "" },
			{ "I_E_Offroad_01_covered_F", ""},
			{ "I_E_Offroad_01_comms_F", ""},
            { "C_Offroad_02_unarmed_F", "" },  
            { "C_SUV_01_F", "" },
            { "C_Hatchback_01_sport_F", "" },
            { "B_G_Van_02_vehicle_F", "" },
            { "C_Van_02_transport_F", "" },
            { "O_T_LSV_02_unarmed_F", "" },
			{ "O_MRAP_02_F", "" },
            { "B_MRAP_01_F", "" },
			{ "B_G_Offroad_01_armed_F", "" },
			{ "O_T_LSV_02_armed_F", "" }
          };
    };
	
	class schwarzmarkt_car {
        side = "civ";
        conditions = "license_civ_schwarzmarkt";
        vehicles[] = {
            { "C_Offroad_01_F", "" },
			{ "I_E_Offroad_01_covered_F", ""},
			{ "I_E_Offroad_01_comms_F", ""},
            { "C_Offroad_02_unarmed_F", "" },  
            { "C_SUV_01_F", "" },
            { "C_Hatchback_01_sport_F", "" },
            { "B_G_Van_02_vehicle_F", "" },
            { "C_Van_02_transport_F", "" },
            { "O_T_LSV_02_unarmed_F", "" },
			{ "O_MRAP_02_F", "" },
            { "B_MRAP_01_F", "" },
			{ "I_MRAP_03_F", "" },
			{ "B_G_Offroad_01_armed_F", "" },
			{ "O_T_LSV_02_armed_F", "" },	//Qillin Minigun
            { "O_APC_Wheeled_02_rcws_F", "" }, //Marid
            { "I_LT_01_AT_F", "" }, //Kleiner Panzer
            { "O_Heli_Attack_02_F", "" } //Kajman
          };
    };
	
	//Praktikant            	husky_mediclevel = 1
	//Feuerwehrmannanwärter  	husky_mediclevel = 2
	//Feuerwehrmann        		husky_mediclevel = 3
	//Oberfeuerwehrmann       	husky_mediclevel = 4
	//Hauptfeuerwehrmann      	husky_mediclevel = 5
	//Löschmeister         		husky_mediclevel = 6
	//Oberlöschmeister          husky_mediclevel = 7
	//Hauptlöschmeister      	husky_mediclevel = 8
	//Brandmeister            	husky_mediclevel = 9
	//Oberbrandmeister          husky_mediclevel = 10
	//Hauptbrandmeister         husky_mediclevel = 11
	//Brandrat             		husky_mediclevel = 12
	//Feuerwehr Ausbilder       husky_mediclevel = 13
	//Co. Branddirektor         husky_mediclevel = 14
	//Branddirektor            	husky_mediclevel = 15
	//Admin            			husky_mediclevel = 16

	//license_med_KraftFahrzeug1
	//license_med_KraftFahrzeug2
	//license_med_KraftFahrzeug3
	//license_med_HeliLizenz1
	//license_med_HeliLizenz2
	//license_med_HeliLizenz3
	//license_med_wasserrettung
	//license_med_Loeschfahrzeug
	//license_med_Bergrettung1
	//license_med_Katastrophenschutz
	//license_med_ausbildermed
	//license_med_farmenmed


	//this addAction[localize"STR_MAR_W_E_Vehicle Shop",husky_fnc_vehicleShopMenu,["med_shop",independent,"","med","Feuerwehr"]];  
    class med_shop {
        side = "med";
        conditions = "license_med_KraftFahrzeug1";
        vehicles[] = {
			{ "B_Quadbike_01_F", "" },		//
            { "C_Offroad_01_F", "license_med_KraftFahrzeug1" },
            { "C_Offroad_02_unarmed_F", "license_med_KraftFahrzeug1" },
			{ "C_SUV_01_F", "license_med_KraftFahrzeug2" },
            { "C_Hatchback_01_sport_F", "license_med_KraftFahrzeug3" },
			{ "B_Truck_01_mover_F", "license_med_KraftFahrzeug1" },
            //{ "C_Van_02_medevac_F", "license_med_KraftFahrzeug1" },
            //{ "C_Van_02_transport_F", "call husky_mediclevel >= 2" },
            { "B_Truck_01_fuel_F", "license_med_Loeschfahrzeug" },
			//{ "B_MRAP_01_F", "" },
            //{ "O_MRAP_02_F", "" },
			{ "B_Truck_01_flatbed_F", "license_med_KraftFahrzeug3" }
            //{ "B_APC_Tracked_01_CRV_F", "license_med_Katastrophenschutz" } 
            
        };
    };

	//this addAction[localize"STR_MAR_Helicopter_Shop", husky_fnc_vehicleShopMenu,["med_air_hs",independent,"medic_air_1","med","Feuerwehr"]]; 
    class med_air_hs {
        side = "med";
        conditions = "license_med_HeliLizenz1 || license_med_HeliLizenz2 || license_med_HeliLizenz3";
        vehicles[] = {
            { "B_Heli_Light_01_F", "license_med_HeliLizenz1" },
            { "O_Heli_Light_02_unarmed_F", "license_med_HeliLizenz2" },
            { "I_Heli_Transport_02_F", "license_med_Helilizenz3" },
			{ "B_Heli_Transport_03_unarmed_F", "license_med_Helilizenz3" },
			{ "O_T_VTOL_02_infantry_F", "license_med_Helilizenz3" }
        };
    };
	
	//this addAction[localize"STR_MAR_Boat_Shop",husky_fnc_vehicleShopMenu,["med_boat",civilian,"med_ship_1","med","Boote"]];  
	class med_boat {
        side = "med";
        conditions = "license_med_wasserrettung";
        vehicles[] = {
            { "B_Boat_Transport_01_F", "" },
            { "C_Boat_Civil_01_police_F", "" },
            { "C_Boat_Transport_02_F", "" } //Apex DLC
        };
    };
	
	//Praktikant                	husky_coplevel = 1
	//Polizeimeisteranwärter        husky_coplevel = 2
	//Polizeimeister            	husky_coplevel = 3
	//Polizeiobermeister            husky_coplevel = 4
	//Polizeihauptmeister           husky_coplevel = 5
	//Polizeikommissarsanwärter     husky_coplevel = 6
	//Polizeikommissar            	husky_coplevel = 7
	//Polizeioberkommissar        	husky_coplevel = 8
	//Polizeihauptkommissar       	husky_coplevel = 9
	//Erster Polizeihauptkommissar  husky_coplevel = 10
	//Polizeirat                	husky_coplevel = 11
	//Polizeioberrat            	husky_coplevel = 12
	//Polizeidirektor            	husky_coplevel = 13
	//Leitender Polizeidirektor     husky_coplevel = 14
	//Polizeipräsident            	husky_coplevel = 15
	//Admin                			husky_coplevel = 16
	
	//license_cop_coppilot
	//license_cop_copboot
	//license_cop_copzivilfahnder
	//license_cop_copausbilder
	//license_cop_copsek
	//license_cop_copscharfschuetze
	//license_cop_copbereitschaftspolizei


	//this addAction[localize"STR_MAR_W_E_Vehicle Shop",husky_fnc_vehicleShopMenu,["cop_car",west,"cop_car_3","cop","Polizei Fahrzeuge"]];  
    class cop_car {
        side = "cop";
        conditions = "call husky_coplevel >= 1";
        vehicles[] = {
			{ "B_Quadbike_01_F", "" },	//
			//{ "C_Offroad_02_unarmed_F", "" },                             //Apex DLC
            { "C_Offroad_01_F", "call husky_coplevel >= 2" },				//Offroader
			{ "C_Offroad_01_covered_F", "call husky_coplevel >= 2" },		//Offroader
			{ "C_Offroad_01_comms_F", "call husky_coplevel >= 2" },			//Offroader
			{ "C_Offroad_02_unarmed_black_F", "call husky_coplevel >= 3" },	//MB4WD
			{ "B_GEN_Van_02_vehicle_F","call husky_coplevel >= 5" },		//Van Cop
			{ "B_GEN_Van_02_transport_F", "call husky_coplevel >= 3" },		//Van Cop
            { "C_SUV_01_F", "call husky_coplevel >= 3" },					//SUV
			{ "C_Hatchback_01_sport_F", "call husky_coplevel >= 3" },		//Sport Limo
            { "B_T_LSV_01_unarmed_CTRG_F", "call husky_coplevel >= 5" },	//Prowler    
			{ "B_MRAP_01_F", "call husky_coplevel >= 6" },					//Hunter
			{ "I_MRAP_03_F","call husky_coplevel >= 15" }                	//Strider
        };
    };
	
	//this addAction[localize"STR_MAR_Helicopter_Shop", husky_fnc_vehicleShopMenu,["cop_car_copbereitschaftspolizei",west,"cop_car_4","cop","Polizei Luftfahrzeuge"]]; 
    
	class cop_car_copbereitschaftspolizei {
        side = "cop";
        conditions = "license_cop_copbereitschaftspolizei";
        vehicles[] = {
            //{ "C_Offroad_01_F", "license_cop_copbereitschaftspolizei" },			//Offroader
            { "C_SUV_01_F", "license_cop_copbereitschaftspolizei" }				//SUV
			//{ "C_Offroad_01_covered_F", "license_cop_copbereitschaftspolizei"},	 //Contact DLC
			//{ "C_Offroad_01_comms_F", "license_cop_copbereitschaftspolizei"} 		//Contact DLC
        };
    };

	//this addAction[localize"STR_MAR_Helicopter_Shop", husky_fnc_vehicleShopMenu,["cop_air",west,"cop_air_2_1","cop","Polizei Luftfahrzeuge"]]; 
    class cop_air {
        side = "cop";
        conditions = "license_cop_coppilot";
        vehicles[] = {
            { "B_Heli_Light_01_F", "license_cop_coppilot" },				//Hummingbird
            { "I_Heli_light_03_unarmed_F", "license_cop_coppilot" },		//Hellcat	//ONLY COPS KAUFBAR DA JEDER DIE EMP FUNKTION NUTZEN KANN
			{ "B_Heli_Transport_03_black_F", "license_cop_coppilot" },      //Huron
			{ "B_Heli_Attack_01_F", "license_cop_coppilot" },			    //Blackfoot
			{ "B_Heli_Transport_01_F", "license_cop_coppilot" } 			//Ghosthawk
        };
    };

	//this addAction[localize"STR_MAR_Boat_Shop",husky_fnc_vehicleShopMenu,["cop_ship",civilian,"cop_ship_1","cop","Boote"]];  
    class cop_ship {
        side = "cop";
        conditions = "license_cop_copboot";
        vehicles[] = {
            { "B_Boat_Transport_01_F", "" },
            { "C_Boat_Civil_01_police_F", "" },
            { "C_Boat_Transport_02_F", "" }, //Apex DLC
			{ "C_Scooter_Transport_01_F", "" },
            { "B_Boat_Armed_01_minigun_F", "call husky_coplevel >= 16" },
            { "B_SDV_01_F", "call husky_coplevel >= 6" }
        };
    };
	
	class cop_car_zivil {
        side = "cop";
        conditions = "license_cop_copzivilfahnder";
        vehicles[] = {
			{ "B_Quadbike_01_F", "" },
            { "C_Hatchback_01_F", "" },
            { "C_Offroad_01_F", "" },
			{ "C_Offroad_02_unarmed_F", "" }, //Apex DLC
            { "C_SUV_01_F", "" },
            { "C_Hatchback_01_sport_F", "" },
			{ "C_Van_01_transport_F", "" },
            { "C_Van_01_box_F", "" },
			{ "C_Van_01_fuel_F", "" },	
			{ "C_Van_02_transport_F", "" },
			{ "C_Van_02_vehicle_F", "" }, 
			{ "C_Kart_01_Blu_F", "" },
            { "C_Kart_01_Fuel_F", "" },
            { "C_Kart_01_Red_F", "" },
            { "C_Kart_01_Vrana_F", "" },
			{ "I_Truck_02_fuel_F", "" },
            { "I_Truck_02_transport_F", "" },
            { "I_Truck_02_covered_F", "" },
			{ "O_Truck_03_fuel_F", "" },
            { "O_Truck_03_transport_F", "" },
            { "O_Truck_03_covered_F", "" },
			{ "O_Truck_03_device_F", "" },
			{ "B_Truck_01_fuel_F", "" },		
			{ "B_Truck_01_transport_F", "" },
			{ "B_Truck_01_covered_F", "" },
            { "B_Truck_01_box_F", "" },
			{ "B_Quadbike_01_F", "" },
            { "B_G_Offroad_01_F", "" },
			{ "B_T_LSV_01_unarmed_F", "" },	
			{ "O_T_LSV_02_unarmed_F", "" },			
			{ "C_Van_02_vehicle_F", "" },
			{ "I_G_Offroad_01_armed_F", "" },
			{ "O_T_LSV_02_armed_F", "" },
			{ "B_T_MRAP_01_F", "" },
			{ "O_MRAP_02_F", "" },		
			{ "C_Heli_Light_01_civil_F", "" },
            { "B_Heli_Light_01_F", "" },
            { "O_Heli_Light_02_unarmed_F", "" },
			{ "I_Heli_Transport_02_F", "" },
			{ "B_Heli_Transport_03_unarmed_F", "" },
			{ "O_Heli_Transport_04_F", "" },
			{ "O_Heli_Transport_04_box_F", "" }
        };
    };
	
	/////////////////////
	////Gruppierungen////
	/////////////////////
	/*TH111*/
	class th111_car {
        side = "civ";
        conditions = "license_civ_th111";
        vehicles[] = {
            { "C_SUV_01_F", "" }
        };
    };
	
	class th111_air {
        side = "civ";
        conditions = "license_civ_th111";
        vehicles[] = {
            { "B_Heli_Light_01_F", "" }
        };
    };
	
	/*SM*/
	class sm_car {
        side = "civ";
        conditions = "license_civ_sm";
        vehicles[] = {
            { "C_SUV_01_F", "" },
			{ "I_E_Offroad_01_covered_F", ""}, //Contact DLC
            { "I_E_Offroad_01_comms_F", ""}, //Contact DLC
			{ "B_G_Van_02_transport_F", "" },
			{ "B_G_Van_02_vehicle_F", "" },
			{ "B_T_LSV_01_unarmed_F", "" },
			{ "B_T_MRAP_01_F", "" },
			{ "I_MRAP_03_F", "" },
			{ "I_MRAP_03_F", "" },
			{ "O_Truck_03_device_F", "" },
			{ "O_T_Truck_03_device_ghex_F", "" },
            { "B_Truck_01_mover_F", "" },
            { "B_Truck_01_covered_F", "" },
			{ "B_Truck_01_flatbed_F", "" },
			{ "B_Truck_01_cargo_F", "" },
			{ "B_Truck_01_fuel_F", "" },			//Container klein
            { "Land_Cargo20_white_F", { "", "", -1 } },				//Container
            { "Land_Cargo20_red_F", { "", "", -1 } },				//Container
			{ "Land_Cargo20_blue_F", { "", "", -1 } },				//Container
			{ "Land_Cargo20_military_green_F", { "", "", -1 } },	//Container
			{ "Land_Cargo20_yellow_F", { "", "", -1 } },			//Container
            { "Land_Cargo20_IDAP_F", { "", "", -1 } }				//Container
        };
    };
	
	class sm_air {
        side = "civ";
        conditions = "license_civ_sm";
        vehicles[] = {
            { "B_Heli_Light_01_F", "" }, //Hummingbird
			{ "O_Heli_Light_02_unarmed_F", "" }, //Orca
			{ "I_Heli_Transport_02_F", "" }, //Mohawk
			{ "B_Heli_Transport_03_unarmed_F", "" }, //Huron
			{ "B_Heli_Transport_01_F", "" } //Ghosthawk
        };
    };
	
	/*vaiphy*/
	class civ_vaiphy_car {
        side = "civ";
        conditions = "license_civ_vaiphy";
        vehicles[] = {
            { "C_SUV_01_F", "" }
        };
    };
	
	class civ_vaiphy_air {
        side = "civ";
        conditions = "license_civ_vaiphy";
        vehicles[] = {
            { "B_Heli_Light_01_F", "" }
        };
    };
	
	/*PSA*/
	class civ_psa_car {
        side = "civ";
        conditions = "license_civ_psa";
        vehicles[] = {
			{ "C_SUV_01_F", "" },
			{ "I_E_Offroad_01_covered_F", ""}, //Contact DLC
            { "I_E_Offroad_01_comms_F", ""}, //Contact DLC
			{ "B_G_Van_02_transport_F", "" },
			{ "B_G_Van_02_vehicle_F", "" },
			{ "B_T_LSV_01_unarmed_F", "" },
			{ "B_MRAP_01_F", "" },
			{ "I_MRAP_03_F", "" },
			{ "O_Truck_03_device_F", "" },
			{ "O_T_Truck_03_device_ghex_F", "" },
            { "B_Truck_01_mover_F", "" },
            { "B_Truck_01_covered_F", "" },
			{ "B_Truck_01_flatbed_F", "" },
			{ "B_Truck_01_cargo_F", "" },
			{ "B_Truck_01_fuel_F", "" },			//Container klein
			{ "Land_Cargo20_military_green_F", { "", "", -1 } }, 	//Container
            { "B_G_Offroad_01_armed_F", "" },
			{ "O_T_LSV_02_armed_F", "" },	//Qillin Minigun
            { "O_APC_Wheeled_02_rcws_F", "" }, //Marid
            { "I_LT_01_scout_F", "" },          //Kleiner Panzer  
            { "I_LT_01_AT_F", "" },          //Kleiner Panzer  
            { "B_APC_Tracked_01_CRV_F", "" },
            { "B_AFV_Wheeled_01_cannon_F", "" },
            { "B_MBT_01_mlrs_F", "" },
            { "C_IDAP_UGV_01_F", "" }
        };
    };
	
	class civ_psa_air {
        side = "civ";
        conditions = "license_civ_psa";
        vehicles[] = {
            { "B_Heli_Light_01_F", "" }, //Hummingbird
			{ "O_Heli_Light_02_unarmed_F", "" }, //Orca
			{ "I_Heli_Transport_02_F", "" }, //Mohawk
			{ "B_Heli_Transport_03_unarmed_F", "" }, //Huron
			{ "B_Heli_Transport_01_F", "" }, //Ghosthawk
            { "O_Heli_Attack_02_F", "" } //Kajman
        };
    };
	/*
		this addAction[localize "STR_MAR_Car_shop",husky_fnc_vehicleShopMenu,["civ_psa_car",civilian,["psa_car"],"civ","Zivile Bodenfahrzeuge"],0,true,true,"","license_civ_psa",4]; 
		this addAction[localize"STR_Garage_Title",  {   if (husky_HC_isActive) then {    [getPlayerUID player,playerSide,"Car",player] remoteExecCall ["HC_fnc_getVehicles",HC_husky]; } else { [getPlayerUID player,playerSide,"Car",player] remoteExecCall ["TON_fnc_getVehicles",2];}; husky_garage_type = "Car";  createDialog "husky_impound_menu";  disableSerialization;  ctrlSetText[2802,"Fetching Vehicles...."];  husky_garage_sp = "psa_car"; },"",0,false,false,"","license_civ_psa",4];      
		this addAction[localize"STR_MAR_Store_vehicle_in_Garage",husky_fnc_storeVehicle,"",0,false,false,"",'!husky_garage_store',4];
		
		this addAction[localize"STR_MAR_Helicopter_Shop", husky_fnc_vehicleShopMenu,["civ_psa_air",civilian,"psa_air","civ","Zivile Luftfahrzeuge"],0,true,true,"","license_civ_psa",4];    
		this addAction[localize"STR_Garage_Title",  {   if (husky_HC_isActive) then {    [getPlayerUID player,playerSide,"Air",player] remoteExecCall ["HC_fnc_getVehicles",HC_husky]; } else { [getPlayerUID player,playerSide,"Air",player] remoteExecCall ["TON_fnc_getVehicles",2];};  createDialog "husky_impound_menu";  disableSerialization;  ctrlSetText[2802,"Fetching Vehicles...."];  husky_garage_sp = "psa_air"; husky_garage_type = "Air"; },"",0,false,false,"","license_civ_psa",4];    
		this addAction[localize"STR_MAR_Store_vehicle_in_Garage",husky_fnc_storeVehicle,"",0,false,false,"",'!husky_garage_store',4];
	*/

	/*lafamilia*/
	class civ_lafamilia_car {
        side = "civ";
        conditions = "license_civ_lafamilia";
        vehicles[] = {
            { "C_SUV_01_F", "" }
        };
    };
	
	class civ_lafamilia_air {
        side = "civ";
        conditions = "license_civ_lafamilia";
        vehicles[] = {
            { "B_Heli_Light_01_F", "" }
        };
    };
	/*
		this addAction[localize "STR_MAR_Car_shop",husky_fnc_vehicleShopMenu,["civ_lafamilia_car",civilian,["lafamilia_car"],"civ","Zivile Bodenfahrzeuge"],0,true,true,"","license_civ_psa",4]; 
		this addAction[localize"STR_Garage_Title",  {   if (husky_HC_isActive) then {    [getPlayerUID player,playerSide,"Car",player] remoteExecCall ["HC_fnc_getVehicles",HC_husky]; } else { [getPlayerUID player,playerSide,"Car",player] remoteExecCall ["TON_fnc_getVehicles",2];}; husky_garage_type = "Car";  createDialog "husky_impound_menu";  disableSerialization;  ctrlSetText[2802,"Fetching Vehicles...."];  husky_garage_sp = "lafamilia_car"; },"",0,false,false,"","license_civ_psa",4];      
		this addAction[localize"STR_MAR_Store_vehicle_in_Garage",husky_fnc_storeVehicle,"",0,false,false,"",'!husky_garage_store',4];
		
		this addAction[localize"STR_MAR_Helicopter_Shop", husky_fnc_vehicleShopMenu,["civ_lafamilia_air",civilian,"lafamilia_air","civ","Zivile Luftfahrzeuge"],0,true,true,"","license_civ_psa",4];    
		this addAction[localize"STR_Garage_Title",  {   if (husky_HC_isActive) then {    [getPlayerUID player,playerSide,"Air",player] remoteExecCall ["HC_fnc_getVehicles",HC_husky]; } else { [getPlayerUID player,playerSide,"Air",player] remoteExecCall ["TON_fnc_getVehicles",2];};  createDialog "husky_impound_menu";  disableSerialization;  ctrlSetText[2802,"Fetching Vehicles...."];  husky_garage_sp = "lafamilia_air"; husky_garage_type = "Air"; },"",0,false,false,"","license_civ_psa",4];    
		this addAction[localize"STR_MAR_Store_vehicle_in_Garage",husky_fnc_storeVehicle,"",0,false,false,"",'!husky_garage_store',4];
	*/
};


