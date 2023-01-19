/* 
	Author: Maximum
	Description: Placeables for the cop\medic sides.
	Disclaimer: Don't be a asshole and pass this off as your own or become a KAI and sell it for profit, Im releasing this for FREE... Credits: Killerty69 for a second pare of eyes when mine got to sleepy
	P.S. - Don't be a faggot like i know some of you all will be.
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

	Schilder wiki
	https://community.bistudio.com/wiki/Arma_3:_CfgVehicles_EMPTY

	Objektze müssen zusätzlich global in der configuration.sqf definiert werden.

	Ingametesten bzw schild anzeigen
	[] spawn 
{ 
 private _fire = "Land_SignRestrict_01_noPoweredVehicles_F" createVehicle position player; 
 sleep 5; 
 deleteVehicle _fire; 
};
*/
husky_barrier_active = false;
husky_barrier_activeObj = ObjNull;
husky_placeables =
[
	["Pylon","RoadCone_F"],//Kegel
	["Pylon mit Licht","RoadCone_L_F"],//Kegel
	["Holzabsperrung","RoadBarrier_F"],//Wände
	["Absperrband","TapeSign_F"],//Wände
	["Holzabsperrung mit Licht","RoadBarrier_small_F"],//Wände
	["Kunststoffabsperrung Orange","PlasticBarrier_03_orange_F"],//Wände
	["Betonabsperrung","Land_CncBarrier_stripes_F"],//Wände
	["Schranke","Land_BarGate_F"],//Tore
	["Panzersperre","Land_ConcreteHedgehog_01_F"],//Sonstiges
	["Sandsack (Ecke)","Land_BagFence_01_long_green_F"],//Wände
	["Sandsack (Rund)","Land_BagFence_01_round_green_F"],//Wände
	["Tragbares Licht","Land_PortableLight_single_F"],//Beleuchtung
	["Tragbares Licht (Doppelt)","Land_PortableLight_double_F"],//Beleuchtung
	["Tragbares Licht (neu)","Land_PortableLight_02_quad_yellow_F"],//Beleuchtung
	["Camping Stuhl","Land_CampingChair_V2_white_F"],//Sonstiges
	["Camping Tisch","Land_CampingTable_small_white_F"],//Sonstiges
	["Leiter","Land_PierLadder_F"],//Sonstiges
	["30 kmh","Land_SignRestrict_01_speedLimit_30_F"],//	
	["50 kmh","Land_SignRestrict_01_speedLimit_50_F"],//
	["70 kmh","Land_SignRestrict_01_speedLimit_70_F"],//
	["80 kmh","Land_SignRestrict_01_speedLimit_80_F"],//
	["Geschwindigkeit aufgehoben","Land_SignRestrict_01_speedLimit_end_F"],//
	["Zebrastreifen","Land_SignWarning_01_pedestrianCrossing_F"],//
	["Wasser","Land_SignWarning_01_ramp_F"],//
	["Steine","Land_SignWarning_01_rocks_F"],//
	["Steigung 11","Land_SignWarning_01_steepDown_F"],//
	["Senkung 11","Land_SignWarning_01_steepUp_F"],//
	["Personen","Land_SignWarning_01_stopOnRequest_F"],//
	["Bergig","Land_SignWarning_01_unevenRoad_F"],//
	["Arbeiten","Land_SignWarning_01_roadworks_F"],//
	["Vorfahrt","Land_SignWarning_01_junctionRoW_F"],//
	["Vorfahrt 2","Land_SignWarning_01_crossRoad_F"],//
	["Kreuzung","Land_SignWarning_01_junction_F"],//
	["Z Kurve rechts","Land_SignWarning_01_doubleBend_right_F"],//
	["Z Kurve links","Land_SignWarning_01_doubleBend_left_F"],//
	["Kurve rechts","Land_SignWarning_01_bend_right_F"],//
	["Kurve links","Land_SignWarning_01_bend_left_F"],//
	["Tiere 1","Land_SignWarning_01_herds_F"],//
	["Tiere 2","Land_SignWarning_01_animals_F"]	//
];
husky_bar_placey = [];