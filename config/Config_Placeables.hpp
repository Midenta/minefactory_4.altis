class Placeables_Master {

	class cop_placables {
		title = "";
		conditions = "";
		side = "cop";
		class Catogary {
			class cop_placables_walls {
				displayname = "Wände";
				conditions = "";
				objects[] = {
					{ "RoadBarrier_F", "Holzabsperrung", "" },
					{ "TapeSign_F", "Absperrband", "" },
					{ "RoadBarrier_small_F", "Holzabsperrung mit Licht", "" },
					{ "PlasticBarrier_03_orange_F", "Kunststoffabsperrung Orange", "" },
					{ "Land_CncBarrier_stripes_F", "Betonabsperrung", "" },
					{ "Land_BagFence_01_long_green_F", "Sandsack (Ecke)", "" },
					{ "Land_BagFence_01_round_green_F", "Sandsack (Rund)", "" }
				};
			};
			class cop_placables_moveings {
				displayname = "Tore";
				conditions = "";
				objects[] = {
					{ "Land_BarGate_F", "Schranke", "" }
				};
			};
			class cop_placables_Kegel {
				displayname = "Kegel";
				conditions = "";
				objects[] = {
					{ "RoadCone_F", "Pylon", "" },
					{ "RoadCone_L_F", "Pylon mit Licht", "" }
				};
			};
			class cop_placables_lampes {
				displayname = "Beleuchtung";
				conditions = "";
				objects[] = {
					{ "Land_PortableLight_single_F", "Tragbares Licht", "" },
					{ "Land_PortableLight_double_F", "Tragbares Licht (Doppelt)", "" },
					{ "Land_PortableLight_02_quad_yellow_F", "Tragbares Licht (neu)", "" }
				};
			};
			class cop_placables_roadsigns {
				displayname = "Straßenschilder";
				conditions = "";
				objects[] = {
					{ "Land_SignRestrict_01_speedLimit_30_F", "30 kmh", "" },
					{ "Land_SignRestrict_01_speedLimit_50_F", "50 kmh", "" },
					{ "Land_SignRestrict_01_speedLimit_70_F", "70 kmh", "" },
					{ "Land_SignRestrict_01_speedLimit_80_F", "80 kmh", "" },
					{ "Land_SignRestrict_01_speedLimit_end_F", "Geschwindigkeit aufgehoben", "" },
					{ "Land_SignWarning_01_pedestrianCrossing_F", "Zebrastreifen", "" },
					{ "Land_SignWarning_01_ramp_F", "Wasser", "" },
					{ "Land_SignWarning_01_rocks_F", "Steine", "" },
					{ "Land_SignWarning_01_steepDown_F", "Steigung 11", "" },
					{ "Land_SignWarning_01_steepUp_F", "Senkung 11", "" },
					{ "Land_SignWarning_01_stopOnRequest_F", "Personen", "" },
					{ "Land_SignWarning_01_unevenRoad_F", "Bergig", "" },
					{ "Land_SignWarning_01_roadworks_F", "Arbeiten", "" },
					{ "Land_SignWarning_01_junctionRoW_F", "Vorfahrt", "" },
					{ "Land_SignWarning_01_crossRoad_F", "Vorfahrt 2", "" },
					{ "Land_SignWarning_01_junction_F", "Kreuzung", "" },
					{ "Land_SignWarning_01_doubleBend_right_F", "Z Kurve rechts", "" },
					{ "Land_SignWarning_01_doubleBend_left_F", "Z Kurve links", "" },
					{ "Land_SignWarning_01_bend_right_F", "Kurve rechts", "" },
					{ "Land_SignWarning_01_bend_left_F", "Kurve links", "" },
					{ "Land_SignWarning_01_herds_F", "Tiere 1", "" },
					{ "Land_SignWarning_01_animals_F", "Tiere 2", "" }
				};
			};
			class cop_placables_others {
				displayname = "Sonstiges";
				conditions = "";
				objects[] = {
					{ "Land_ConcreteHedgehog_01_F", "Panzersperre", "" },
					{ "Land_CampingChair_V2_white_F", "Camping Stuhl", "" },
					{ "Land_CampingTable_small_white_F", "Camping Tisch", "" },
					{ "Land_PierLadder_F", "Leiter", "" }
				};
			};
		};
	};
};