
#include "..\..\script_macros.hpp"
/*

	Author: Nox
	Description: Macht dunkle Sachen hell.
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
	
	this setVariable ['door_knack',true,true]; 

*/
private ["_unit"];
_unit = [_this,0,objNull,[objNull]] call BIS_fnc_param;

if (_unit getVariable["restrained", false]) exitWith { hint "Du kannst deine Schulterlampe nicht einschalten solange du gefesselt bist!"; };
if (vehicle player != player) exitWith { hint "Du kannst deine Schulterlampe nicht einschalten während du in einem Fahrzeug sitzt."};
if (!(husky_inv_flashlightshoulder > 0)) exitWith { hint "Du besitzt keine Schulterlampe." };
if (!(alive vehicle player)) exitWith {};	

			if(husky_flashlight) then { 

				deleteVehicle light;    
				deleteVehicle flashlight;  
				husky_flashlight = false; 

			} else { 

				flashLight = "Item_acc_flashlight" createVehicle position player;  
				flashlight attachTo [player, [0.33,-0.04,-0.05], "Pelvis"];  
				flashlight setVectorDirAndUp [ [1,0.01,0.44], [1,0,0] ]; 
				lightpos = [0.33,-0.04,-0.05]; //Position des #lightpoints
				light = "#lightpoint" createVehicle lightpos;  
				light setLightBrightness 0.25; //Helligkeit 
				light setLightAmbient [1,0.99,0.88];  
				light setLightColor [1,0.99,0.88]; 
				light attachTo [player, [0,5,-0.5], "Pelvis"]; 
				light setDir 60; 
				husky_flashlight = true; 
			};