 /*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
 /*
 +++ Config Example +++
 New Vehicles:
 class Vehicle_Class_Name {
 pos[] = { x, y, z }; // coordinates relative to vehicle
 };
 vehicles with same coordinates (e.g. same vehicle, different skin & class):
 class Vehicle_Class_2: Vehicle_Class_Name {}; // "Vehicle_Class_2" gets the same attributes as "Vehicle_Class_Name"
 */
class emergLightVehicles {
	class C_SUV_01_F {
		pos[] = { 0.4, -0.05, 0.32 };
	};
	class Wraithlu_civ_noir {
		pos[] = { 0.5, 0.3, 1.62 };
	};
	class MrShounka_audia8_limo_Rework_p_noir_f {
		pos[] = { 0.5, 0.7, 0.73 };
		//pos[] = { 0.5, 0.7, 0.73 };{ -0.5, -1.7, 0.73 };		geht  ne	doppelt definiert
		//pos[] = { 0.5, 0.7, 0.73 },{ -0.5, -1.7, 0.73 };		geht  ne	fehler
		//pos[] = [{ 0.5, 0.7, 0.73 },{ -0.5, -1.7, 0.73 }];	geht  ne	fehler
	}; 
	class RS7lu_civ_noir {
		pos[] = { 0.4, -0.2, 1.54 };
	}; 
	class MrShounka_audiq7_Rework_noir_f {
		pos[] = { 0.4, 0.5, 1.03 };
	};
	class Mrshounka_bmwm6_Rework_noir_f {
		pos[] = { 0.4, -0.3, 1.37 };
	}; 
	class zorak_bmw_x6m_police {
		pos[] = { 0.4, -0.2, 0.94 };
	}; 
	class ML63lu_civ_noir {
		pos[] = { 0.4, 0, 1.78 };
	}; 
	class Urbanized_G65_black {
		pos[] = { 0.5, 0.1, 1.99 };
	}; 
};