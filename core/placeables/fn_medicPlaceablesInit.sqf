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
	["Pylon","RoadCone_F"],
	["Pylon mit Licht","RoadCone_L_F"],
	["Holzabsperrung","RoadBarrier_F"],
	["Absperrband","TapeSign_F"],
	["Holzabsperrung mit Licht","RoadBarrier_small_F"],
	["Kunststoffabsperrung Orange","PlasticBarrier_03_orange_F"],
	["Betonabsperrung","Land_CncBarrier_stripes_F"],
	["Schranke","Land_BarGate_F"],
	["Panzersperre","Land_ConcreteHedgehog_01_F"],
	["Tragbares Licht","Land_PortableLight_single_F"],
	["Tragbares Licht (Doppelt)","Land_PortableLight_double_F"],
	["Tragbares Licht (neu)","Land_PortableLight_02_quad_yellow_F"],
	["Camping Stuhl","Land_CampingChair_V2_white_F"],
	["Camping Tisch","Land_CampingTable_small_white_F"],
	["Pfuetze (gross)","WaterSpill_01_Large_New_F"],
	["Pfuetze (klein)","WaterTrail_01_New_F"],
	//["Plane (gross,gelb)","Tarp_01_Large_Yellow_F"],
	["Gefahrgut-Sack","HazmatBag_01_F"],
	["Spinal Board","SpinalBoard_01_orange_F"],
	["Feldbett","Land_Stretcher_01_F"],
	["Notdecke","Land_EmergencyBlanket_02_discarded_F"],
	["Defibrillator","Land_Defibrillator_F"],
	["Blutkonserve","Land_BloodBag_F"],
	["Reifen Typ A","Tire_Van_02_Transport_F"],
	["Reifen Typ B","Tire_Van_02_Cargo_F"],
	["Reifen Typ C","Land_KartTyre_01_F"],
	["Benzinkanister","Land_CanisterFuel_Red_F"],
	["Autobatterie","Land_CarBattery_02_F"],
	["Unterlegkeil","Land_WheelChock_01_F"],
	["Leiter","Land_PierLadder_F"],
	["30 kmh","Land_SignRestrict_01_speedLimit_30_F"],	
	["50 kmh","Land_SignRestrict_01_speedLimit_50_F"],
	["70 kmh","Land_SignRestrict_01_speedLimit_70_F"],
	["80 kmh","Land_SignRestrict_01_speedLimit_80_F"],
	["Geschwindigkeit aufgehoben","Land_SignRestrict_01_speedLimit_end_F"],
	["Zebrastreifen","Land_SignWarning_01_pedestrianCrossing_F"],
	["Wasser","Land_SignWarning_01_ramp_F"],
	["Steine","Land_SignWarning_01_rocks_F"],
	["Steigung 11","Land_SignWarning_01_steepDown_F"],
	["Senkung 11","Land_SignWarning_01_steepUp_F"],
	["Personen","Land_SignWarning_01_stopOnRequest_F"],
	["Bergig","Land_SignWarning_01_unevenRoad_F"],
	["Arbeiten","Land_SignWarning_01_roadworks_F"],
	["Vorfahrt","Land_SignWarning_01_junctionRoW_F"],
	["Vorfahrt 2","Land_SignWarning_01_crossRoad_F"],
	["Kreuzung","Land_SignWarning_01_junction_F"],
	["Z Kurve rechts","Land_SignWarning_01_doubleBend_right_F"],
	["Z Kurve links","Land_SignWarning_01_doubleBend_left_F"],
	["Kurve rechts","Land_SignWarning_01_bend_right_F"],
	["Kurve links","Land_SignWarning_01_bend_left_F"],
	["Tiere 1","Land_SignWarning_01_herds_F"],
	["Tiere 2","Land_SignWarning_01_animals_F"]
	//["Tragbarer Motorkran","Land_EngineCrane_01_F"]
	/*,
	["Dekontaminiation (klein)","DeconShower_01_F"],
	["Dekontaminiation (gross)","DeconShower_02_F"]*/
];
husky_bar_placey = [];