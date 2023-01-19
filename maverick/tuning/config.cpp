/*
	Author: Maverick Applications
	Tuning shop for husky
*/

class Maverick_Tuning
{

	// Map configs
	class Altis
	{
		class Camera
		{
			pos[] = {23675.1,17200.1,2.00144};
			target[] = {23671,17199.4,2.40144};
		};
		class Vehicle
		{
			pos[] = {23669.4,17200.8,1.15015};
			dir = 124.622;
		};
		class Building
		{
			type = "Land_i_Shed_Ind_F";
			pos[] = {23664.2,17196.9,1};
			dir = 0;
		};
	};

	class Tanoa
	{
		class Camera
		{
			pos[] = {1248.85,7316.04,1.78436};
			target[] = {1245.08,7315.57,2.24174};
		};
		class Vehicle
		{
			pos[] = {1243,7317.14,0.774192};
			dir = 127.67;
		};
		class Building
		{
			type = "Land_i_Shed_Ind_F";
			pos[] = {1238.47,7312.86,1};
			dir = 0;
		};
	};
	
	class Malden
	{
		class Camera
		{
			pos[] = {9376.16,3846.67,1.52487};
			target[] = {9378.32,3841.72,1.82487};
		};
		class Vehicle
		{
			pos[] = {9376.87,3840.8,0.1};
			dir = 17.9422;
		};
		class Building
		{
			type = "";
			pos[] = {1238.47,7312.86,1};
			dir = 0;
		};
	};
	
	class enoch
	{
		class Camera
		{
			pos[] = {9376.16,3846.67,1.52487};
			target[] = {9378.32,3841.72,1.82487};
		};
		class Vehicle
		{
			pos[] = {9376.87,3840.8,0.1};
			dir = 17.9422;
		};
		class Building
		{
			type = "";
			pos[] = {1238.47,7312.86,1};
			dir = 0;
		};
	};
	
	class stratis
	{
		class Camera
		{
			pos[] = {9376.16,3846.67,1.52487};
			target[] = {9378.32,3841.72,1.82487};
		};
		class Vehicle
		{
			pos[] = {9376.87,3840.8,0.1};
			dir = 17.9422;
		};
		class Building
		{
			type = "";
			pos[] = {1238.47,7312.86,1};
			dir = 0;
		};
	};

	class Vehicles
	{
		class Offroad_01_base_F
		{
			default[] = {{0,0,0,0,0},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class RawModifications
			{
				pool[] = {"HideDoors","HideBackpacks","HideBumper","HideConstruction","HideServices"};
				class HideDoors
				{
					parts[] = {"HideDoor1","HideDoor2","HideDoor3"};
					displayText = "Türen ausblenden/anzeigen";
					price = 4000;
				};
				class HideBackpacks
				{
					parts[] = {"HideBackpacks"};
					displayText = "Rucksäcke ausblenden/anzeigen";
					price = 4000;
				};
				class HideBumper
				{
					parts[] = {"HideBumper1","HideBumper2"};
					displayText = "Bumpers ausblenden/anzeigen";
					price = 4000;
				};
				class HideConstruction
				{
					parts[] = {"HideConstruction"};
					displayText = "Aufbau ausblenden/anzeigen";
					price = 4000;
				};
				class HideServices
				{
					parts[] = {"HideServices"};
					displayText = "Servicelicht ausblenden/anzeigen";
					price = 20000;
				};
			};
			class Colors
			{
				pool[] = {"RGB","Red","RedGlow","YellowMetallic","YellowFade","YellowGlow","BlueMetallic","Chrome"};
				class RGB
				{
					displayText = "Eigene RGB Farben";
					price = 25000;
					texture = "";
				};
				class Red
				{

					displayText = "Rot (Metallic)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa";
					material = "maverick\tuning\bin\materials\firered.rvmat";
				};
				class BlueMetallic
				{

					displayText = "Blau (Metallic)";
					price = 2000;
					texture = "a3\soft_f\offroad_01\data\offroad_01_ext_base03_co.paa";
					material = "maverick\tuning\bin\materials\shine_blue.rvmat";
				};
				class GreenOcean
				{

					displayText = "Grün / Blau Ozean verblassen";
					price = 2000;
					texture = "a3\soft_f\offroad_01\data\offroad_01_ext_base03_co.paa";
					material = "maverick\tuning\bin\materials\shine_blueocean.rvmat";
				};
				class RedGlow
				{

					displayText = "Rot (Glühen)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa";
					material = "maverick\tuning\bin\materials\glow_red.rvmat";
				};
				class YellowMetallic
				{
					displayText = "Gelb (Metallic)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\shine_gold.rvmat";
				};
				class YellowFade
				{
					displayText = "Gelb (verblassen)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\fade.rvmat";
				};
				class YellowGlow
				{
					displayText = "Gelb (Glühen)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\glow_yellow.rvmat";
				};
				class Chrome
				{
					displayText = "Chrome";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\chrome.rvmat";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class Quadbike_01_base_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class SUV_01_base_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class Van_01_transport_base_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class Offroad_02_unarmed_base_F // Classname of the vehicle you wish to tune
		{
			default[] = {{},"",0,0,{-1,-1,-1}}; // Do not change this
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1; // Do not change this

			class Colors // This class has to be present if you want to offer the players custom skins
			{
				pool[] = {"RGB","Red"}; // This list of classnames is used to determine what should be shown to the user
				class RGB // Classname of the custom skin, has to be hte same as in the pool[]
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = ""; // Path to the texture to apply
				};
				class Red
				{
					displayText = "Rot";
					price = 2000;
					texture = "a3\soft_f_exp\offroad_02\data\offroad_02_ext_red_co.paa";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro // If this class is present, Nitro can be bought!
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"}; // Classnames of the different types of nitro
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1; // How often should this stage be usable?
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow // If this class is present, Underglow can be bought (RGB)
			{
				pool[] = {"UnderglowRGB"}; // Do not change
				class UnderglowRGB // Do not change
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class C_Hatchback_01_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class C_Hatchback_01_sport_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class B_T_MRAP_01_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class O_MRAP_02_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class O_T_LSV_02_armed_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class I_G_Offroad_01_armed_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class O_T_LSV_02_unarmed_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class B_T_LSV_01_unarmed_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class B_Truck_01_box_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class B_Truck_01_covered_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class B_Truck_01_transport_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class B_Truck_01_fuel_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class O_Truck_03_device_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class O_Truck_03_covered_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class O_Truck_03_transport_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class O_Truck_03_fuel_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class I_Truck_02_covered_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class I_Truck_02_transport_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class I_Truck_02_fuel_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class C_Van_01_transport_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class C_Van_01_box_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class C_Van_01_fuel_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class C_Offroad_02_unarmed_F
		{
			default[] = {{},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB"};
				class RGB
				{
					displayText = "Benutzerdefinierte RGB-Fahrzeugfarbe";
					price = 25000;
					texture = "";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class B_Truck_01_flatbed_F
		{
			default[] = {{0,0,0,0,0},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class Colors
			{
				pool[] = {"RGB","Red","RedGlow","YellowMetallic","YellowFade","YellowGlow","BlueMetallic","Chrome"};
				class RGB
				{
					displayText = "Eigene RGB Farben";
					price = 25000;
					texture = "";
				};
				class Red
				{

					displayText = "Rot (Metallic)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa";
					material = "maverick\tuning\bin\materials\firered.rvmat";
				};
				class BlueMetallic
				{

					displayText = "Blau (Metallic)";
					price = 2000;
					texture = "a3\soft_f\offroad_01\data\offroad_01_ext_base03_co.paa";
					material = "maverick\tuning\bin\materials\shine_blue.rvmat";
				};
				class GreenOcean
				{

					displayText = "Grün / Blau Ozean verblassen";
					price = 2000;
					texture = "a3\soft_f\offroad_01\data\offroad_01_ext_base03_co.paa";
					material = "maverick\tuning\bin\materials\shine_blueocean.rvmat";
				};
				class RedGlow
				{

					displayText = "Rot (Glühen)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa";
					material = "maverick\tuning\bin\materials\glow_red.rvmat";
				};
				class YellowMetallic
				{
					displayText = "Gelb (Metallic)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\shine_gold.rvmat";
				};
				class YellowFade
				{
					displayText = "Gelb (verblassen)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\fade.rvmat";
				};
				class YellowGlow
				{
					displayText = "Gelb (Glühen)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\glow_yellow.rvmat";
				};
				class Chrome
				{
					displayText = "Chrome";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\chrome.rvmat";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class B_Truck_01_cargo_F
		{
			default[] = {{0,0,0,0,0},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;
			class Colors
			{
				pool[] = {"RGB","Red","RedGlow","YellowMetallic","YellowFade","YellowGlow","BlueMetallic","Chrome"};
				class RGB
				{
					displayText = "Eigene RGB Farben";
					price = 25000;
					texture = "";
				};
				class Red
				{

					displayText = "Rot (Metallic)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa";
					material = "maverick\tuning\bin\materials\firered.rvmat";
				};
				class BlueMetallic
				{

					displayText = "Blau (Metallic)";
					price = 2000;
					texture = "a3\soft_f\offroad_01\data\offroad_01_ext_base03_co.paa";
					material = "maverick\tuning\bin\materials\shine_blue.rvmat";
				};
				class GreenOcean
				{

					displayText = "Grün / Blau Ozean verblassen";
					price = 2000;
					texture = "a3\soft_f\offroad_01\data\offroad_01_ext_base03_co.paa";
					material = "maverick\tuning\bin\materials\shine_blueocean.rvmat";
				};
				class RedGlow
				{

					displayText = "Rot (Glühen)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa";
					material = "maverick\tuning\bin\materials\glow_red.rvmat";
				};
				class YellowMetallic
				{
					displayText = "Gelb (Metallic)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\shine_gold.rvmat";
				};
				class YellowFade
				{
					displayText = "Gelb (verblassen)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\fade.rvmat";
				};
				class YellowGlow
				{
					displayText = "Gelb (Glühen)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\glow_yellow.rvmat";
				};
				class Chrome
				{
					displayText = "Chrome";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\chrome.rvmat";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};	
		class I_E_Offroad_01_covered_F
		{
			default[] = {{0,0,0,0,0},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class RawModifications
			{
				pool[] = {"HideDoors","HideBackpacks","HideBumper","HideConstruction","HideServices"};
				class HideDoors
				{
					parts[] = {"HideDoor1","HideDoor2","HideDoor3"};
					displayText = "Türen ausblenden/anzeigen";
					price = 4000;
				};
				class HideBackpacks
				{
					parts[] = {"HideBackpacks"};
					displayText = "Rucksäcke ausblenden/anzeigen";
					price = 4000;
				};
				class HideBumper
				{
					parts[] = {"HideBumper1","HideBumper2"};
					displayText = "Bumpers ausblenden/anzeigen";
					price = 4000;
				};
				class HideConstruction
				{
					parts[] = {"HideConstruction"};
					displayText = "Aufbau ausblenden/anzeigen";
					price = 4000;
				};
				class HideServices
				{
					parts[] = {"HideServices"};
					displayText = "Servicelicht ausblenden/anzeigen";
					price = 20000;
				};
			};
			class Colors
			{
				pool[] = {"RGB","Red","RedGlow","YellowMetallic","YellowFade","YellowGlow","BlueMetallic","Chrome"};
				class RGB
				{
					displayText = "Eigene RGB Farben";
					price = 25000;
					texture = "";
				};
				class Red
				{

					displayText = "Rot (Metallic)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa";
					material = "maverick\tuning\bin\materials\firered.rvmat";
				};
				class BlueMetallic
				{

					displayText = "Blau (Metallic)";
					price = 2000;
					texture = "a3\soft_f\offroad_01\data\offroad_01_ext_base03_co.paa";
					material = "maverick\tuning\bin\materials\shine_blue.rvmat";
				};
				class GreenOcean
				{

					displayText = "Grün / Blau Ozean verblassen";
					price = 2000;
					texture = "a3\soft_f\offroad_01\data\offroad_01_ext_base03_co.paa";
					material = "maverick\tuning\bin\materials\shine_blueocean.rvmat";
				};
				class RedGlow
				{

					displayText = "Rot (Glühen)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa";
					material = "maverick\tuning\bin\materials\glow_red.rvmat";
				};
				class YellowMetallic
				{
					displayText = "Gelb (Metallic)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\shine_gold.rvmat";
				};
				class YellowFade
				{
					displayText = "Gelb (verblassen)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\fade.rvmat";
				};
				class YellowGlow
				{
					displayText = "Gelb (Glühen)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\glow_yellow.rvmat";
				};
				class Chrome
				{
					displayText = "Chrome";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\chrome.rvmat";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
		class I_E_Offroad_01_comms_F
		{
			default[] = {{0,0,0,0,0},"",0,0,{-1,-1,-1}};
			defaultMaterial = "a3\data_f\default.rvmat";
			fetchDefaultFromVehicleState = 1;

			class RawModifications
			{
				pool[] = {"HideDoors","HideBackpacks","HideBumper","HideConstruction","HideServices"};
				class HideDoors
				{
					parts[] = {"HideDoor1","HideDoor2","HideDoor3"};
					displayText = "Türen ausblenden/anzeigen";
					price = 4000;
				};
				class HideBackpacks
				{
					parts[] = {"HideBackpacks"};
					displayText = "Rucksäcke ausblenden/anzeigen";
					price = 4000;
				};
				class HideBumper
				{
					parts[] = {"HideBumper1","HideBumper2"};
					displayText = "Bumpers ausblenden/anzeigen";
					price = 4000;
				};
				class HideConstruction
				{
					parts[] = {"HideConstruction"};
					displayText = "Aufbau ausblenden/anzeigen";
					price = 4000;
				};
				class HideServices
				{
					parts[] = {"HideServices"};
					displayText = "Servicelicht ausblenden/anzeigen";
					price = 20000;
				};
			};
			class Colors
			{
				pool[] = {"RGB","Red","RedGlow","YellowMetallic","YellowFade","YellowGlow","BlueMetallic","Chrome"};
				class RGB
				{
					displayText = "Eigene RGB Farben";
					price = 25000;
					texture = "";
				};
				class Red
				{

					displayText = "Rot (Metallic)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa";
					material = "maverick\tuning\bin\materials\firered.rvmat";
				};
				class BlueMetallic
				{

					displayText = "Blau (Metallic)";
					price = 2000;
					texture = "a3\soft_f\offroad_01\data\offroad_01_ext_base03_co.paa";
					material = "maverick\tuning\bin\materials\shine_blue.rvmat";
				};
				class GreenOcean
				{

					displayText = "Grün / Blau Ozean verblassen";
					price = 2000;
					texture = "a3\soft_f\offroad_01\data\offroad_01_ext_base03_co.paa";
					material = "maverick\tuning\bin\materials\shine_blueocean.rvmat";
				};
				class RedGlow
				{

					displayText = "Rot (Glühen)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa";
					material = "maverick\tuning\bin\materials\glow_red.rvmat";
				};
				class YellowMetallic
				{
					displayText = "Gelb (Metallic)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\shine_gold.rvmat";
				};
				class YellowFade
				{
					displayText = "Gelb (verblassen)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\fade.rvmat";
				};
				class YellowGlow
				{
					displayText = "Gelb (Glühen)";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\glow_yellow.rvmat";
				};
				class Chrome
				{
					displayText = "Chrome";
					price = 2000;
					texture = "\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa";
					material = "maverick\tuning\bin\materials\chrome.rvmat";
				};
			};
			/*class Wheels
			{
				pool[] = {"BulletProof"};
				class BulletProof
				{
					displayText = "Kugelsichere Reifen";
					price = 250000;
				};
			};*/
			class Nitro
			{
				pool[] = {"Nitro1","Nitro2","Nitro3"};
				class Nitro1
				{
					displayText = "Nitro Stage 1";
					timesUseable = 1;
					price = 15000;
				};
				class Nitro2
				{
					displayText = "Nitro Stage 2";
					timesUseable = 2;
					price = 25000;
				};
				class Nitro3
				{
					displayText = "Nitro Stage 3";
					timesUseable = 3;
					price = 40000;
				};
			};
			class Underglow
			{
				pool[] = {"UnderglowRGB"};
				class UnderglowRGB
				{
					displayText = "Benutzerdefinierte RGB Fahrzeug Unterbodenbeleuchtung";
					price = 100000;
				};
			};
		};
	};
};






























/* DIALOG */
class mav_tuning_dialog_main {
    idd = 5100;
    movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
    class controls {
		class husky_RscText_1000: husky_RscText
		{
			idc = -1;
			x = 0.0359375 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.268125 * safezoneW;
			h = 0.033 * safezoneH;
			colorBackground[] = {1,1,1,1};
		};
		class husky_RscText_1001: husky_RscText
		{
			idc = -1;
			text = "FAHRZEUG TUNING SHOP"; //--- ToDo: Localize;
			x = 0.0410937 * safezoneW + safezoneX;
			y = 0.2514 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.022 * safezoneH;
			colorText[] = {0,0,0,1};
			shadow = 2;
		};
		class husky_RscText_1002: husky_RscText
		{
			idc = -1;
			x = 0.0359375 * safezoneW + safezoneX;
			y = 0.28 * safezoneH + safezoneY;
			w = 0.268125 * safezoneW;
			h = 0.473 * safezoneH;
			colorBackground[] = {0.12,0.14,0.16,0.8};
		};
		class husky_RscListbox_1500: husky_RscListbox
		{
			idc = 0;
			x = 0.0410937 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.257813 * safezoneW;
			h = 0.451 * safezoneH;
			sizeEx = 0.045;
		};
		class husky_RscButtonMenu_2400: husky_RscButtonMenu
		{
			idc = 1;
			text = "VERLASSE TUNING SHOP"; //--- ToDo: Localize;
			x = 0.0359375 * safezoneW + safezoneX;
			y = 0.7552 * safezoneH + safezoneY;
			w = 0.268125 * safezoneW;
			h = 0.022 * safezoneH;
		};
	};
};

class mav_tuning_dialog_rgbcolor {
    idd = 5200;
    movingEnable = 0;
    enableSimulation = 1;
    duration = 999999;
    class controls {
		class husky_RscText_1000: husky_RscText
		{
			idc = -1;
			x = 0.0359375 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.268125 * safezoneW;
			h = 0.286 * safezoneH;
			colorText[] = {};
			colorBackground[] = {0.12,0.14,0.16,0.8};
		};
		class husky_RscSlider_1900: husky_RscSlider
		{
			idc = 0;
			x = 0.082344 * safezoneW + safezoneX;
			y = 0.39 * safezoneH + safezoneY;
			w = 0.211406 * safezoneW;
			h = 0.022 * safezoneH;
			color[] = { 1, 1, 1, 1 };
    		coloractive[] = { 1, 0, 0, 0.5 };
    		style = 1024;
    		type = 3;
		};
		class husky_RscText_1001: husky_RscText
		{
			idc = -1;
			text = "ROT"; //--- ToDo: Localize;
			x = 0.0410937 * safezoneW + safezoneX;
			y = 0.39 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class husky_RscText_1002: husky_RscText
		{
			idc = -1;
			text = "GRÜN"; //--- ToDo: Localize;
			x = 0.0410937 * safezoneW + safezoneX;
			y = 0.434 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class husky_RscSlider_1901: husky_RscSlider
		{
			idc = 1;
			x = 0.082344 * safezoneW + safezoneX;
			y = 0.434 * safezoneH + safezoneY;
			w = 0.211406 * safezoneW;
			h = 0.022 * safezoneH;
			color[] = { 1, 1, 1, 1 };
    		coloractive[] = { 1, 0, 0, 0.5 };
    		style = 1024;
    		type = 3;
		};
		class husky_RscSlider_1902: husky_RscSlider
		{
			idc = 2;
			x = 0.082344 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.211406 * safezoneW;
			h = 0.022 * safezoneH;
			color[] = { 1, 1, 1, 1 };
    		coloractive[] = { 1, 0, 0, 0.5 };
    		style = 1024;
    		type = 3;
		};
		class husky_RscText_1003: husky_RscText
		{
			idc = -1;
			text = "Blau"; //--- ToDo: Localize;
			x = 0.0410937 * safezoneW + safezoneX;
			y = 0.478 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class husky_RscButtonMenu_2400: husky_RscButtonMenu
		{
			idc = 3;
			text = "Farbe anwenden"; //--- ToDo: Localize;
			x = 0.151437 * safezoneW + safezoneX;
			y = 0.6562 * safezoneH + safezoneY;
			w = 0.152625 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class husky_RscButtonMenu_2401: husky_RscButtonMenu
		{
			idc = 4;
			text = "ABBRECHEN"; //--- ToDo: Localize;
			x = 0.0359375 * safezoneW + safezoneX;
			y = 0.6562 * safezoneH + safezoneY;
			w = 0.113437 * safezoneW;
			h = 0.022 * safezoneH;
		};
	};
};