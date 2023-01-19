#include "..\..\script_macros.hpp"
/*
    File: fn_p_openMenu.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Opens the players virtual inventory menu
	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
if (!alive player || dialog) exitWith {}; //Prevent them from opening this for exploits while dead.
createDialog "playerSettings";
disableSerialization;

//call husky_fnc_playerSkins;
[player, uniform player] call husky_fnc_playerSkins;

[] call husky_fnc_hudUpdate;

[player] call husky_fnc_gangcheck;


switch (playerSide) do {
    case civilian: {
        /*ctrlShow[2012,false];
		ctrlShow[9900,false];
		ctrlShow[1210,false];
		ctrlShow[4112,false];
		ctrlShow[4111,false];
		ctrlShow[4125,false];
		ctrlShow[4126,false];*/

		ctrlShow[2011,true];	//Gang
		ctrlShow[2025,true];	//Börse
		ctrlShow[5123,false];	//Repair Menü
		ctrlShow[3333,false];	//Absperrungsmenü
		ctrlShow[20145,true];	//Handy
		ctrlShow[4112,false];	//fms funke
		ctrlShow[4113,false];	//fms med 
		ctrlShow[4115,false];	//fms leitstelle
		ctrlShow[4114,false];	//fms cop
		ctrlShow[4126,false];	//notrufverwaltung
		ctrlShow[2012,false];	//Fahndungsliste
		
		ctrlShow[5555,true];	//Farmboost
		ctrlShow[5556,true];	//Crafting
		ctrlShow[2027,true];    //Gambling	
        
		ctrlShow[3025,false];	//COPS ALLE
		ctrlShow[3026,false];	//EMS ALLE
		ctrlShow[3027,false];	//AKAC ALLE
		//ctrlShow[4111,false];	//Notrufverwaltung
		//ctrlShow[10001,true];	//Crafting
		//ctrlShow[8801,true];	//Markt
		//ctrlShow[8800,true];	//Hilfe
		//ctrlShow[88800,false];	//alle Absperrungen entfernen
		
		ctrlShow[3028,true];	//senderverschlcheckbox
		ctrlShow[3029,true];	//koordsverschcheckbox
		ctrlShow[3035,true];	//koordsverchl
		ctrlShow[3036,true];	//senderverschl
		
		/*
		if (_medicRepairing isEqualTo 1) then {
			{
				_damage = getDammage _x;
				if ((_damage > 0.1) && !(_x isKindOf "Man") && !(_x isKindOf "Car") && !(_x isKindOf "Air") && !(_x isKindOf "Ship")) then {
					_damged = _damged + 1;
				};
			} forEach _nearestObjects;
			if (_damged > 0) then {
				ctrlShow[2409,true];
			} else {
				ctrlShow[500,false];
			};
		} else {
			ctrlShow[500,false];
		};	
		*/
    };
	
	case west: {
		ctrlShow[2011,false];	//Gang
		ctrlShow[2025,true];	//Börse
		ctrlShow[5123,false];	//Repair Menü
		ctrlShow[3333,true];	//Absperrungsmenü
		ctrlShow[20145,true];	//Handy
		ctrlShow[4112,true];	//fms funke
		ctrlShow[4113,false];	//fms med 
		ctrlShow[4115,true];	//fms leitstelle
		ctrlShow[4114,true];	//fms cop
		ctrlShow[4126,true];	//notrufverwaltung
		ctrlShow[2012,true];	//Fahndungsliste
		
		ctrlShow[5555,false];	//Farmboost
		ctrlShow[5556,false];	//Crafting
		ctrlShow[2027,true];    //Gambling	
        
		ctrlShow[3025,true];	//COPS ALLE
		ctrlShow[3026,false];	//EMS ALLE
		ctrlShow[3027,false];	//AKAC ALLE
		
		ctrlShow[3028,false];	//senderverschlcheckbox
		ctrlShow[3029,false];	//koordsverschcheckbox
		ctrlShow[3035,false];	//koordsverchl
		ctrlShow[3036,false];	//senderverschl
		
		if ((call husky_coplevel) < (getNumber(missionConfigFile >> "Cation_Reporting" >> "controlCenterMinLevelWest"))) then {
			ctrlShow[2017,false];
		}; 
		/*
		if (_medicRepairing isEqualTo 1) then {
			{
				_damage = getDammage _x;
				if ((_damage > 0.1) && !(_x isKindOf "Man") && !(_x isKindOf "Car") && !(_x isKindOf "Air") && !(_x isKindOf "Ship")) then {
					_damged = _damged + 1;
				};
			} forEach _nearestObjects;
			if (_damged > 0) then {
				ctrlShow[2409,true];
			} else {
				ctrlShow[500,false];
			};
		} else {
			ctrlShow[500,false];
		};	
		*/
    };

    case independent: {
        ctrlShow[2011,false];	//Gang
		ctrlShow[2025,false];	//Börse
		ctrlShow[5123,true];	//Repair Menü
		ctrlShow[3333,true];	//Absperrungsmenü
		ctrlShow[20145,true];	//Handy
		ctrlShow[4112,true];	//fms funke
		ctrlShow[4113,true];	//fms med 
		ctrlShow[4115,true];	//fms leitstelle
		ctrlShow[4114,false];	//fms cop
		ctrlShow[4126,true];	//notrufverwaltung
		ctrlShow[2012,false];	//Fahndungsliste
		
		ctrlShow[5555,false];	//Farmboost
		ctrlShow[5556,false];	//Crafting
		ctrlShow[2027,true];    //Gambling	
        
		ctrlShow[3025,false];	//COPS ALLE
		ctrlShow[3026,true];	//EMS ALLE
		ctrlShow[3027,false];	//AKAC ALLE
		
		ctrlShow[3028,false];	//senderverschlcheckbox
		ctrlShow[3029,false];	//koordsverschcheckbox
		ctrlShow[3035,false];	//koordsverchl
		ctrlShow[3036,false];	//senderverschl
		
		if ((call husky_mediclevel) < (getNumber(missionConfigFile >> "Cation_Reporting" >> "controlCenterMinLevelIndependent"))) then {
			ctrlShow[2017,false];
		}; 
		if (_medicRepairing isEqualTo 1) then {
			{
				_damage = getDammage _x;
				if ((_damage > 0.1) && !(_x isKindOf "Man") && !(_x isKindOf "Car") && !(_x isKindOf "Tank") && !(_x isKindOf "Air") && !(_x isKindOf "Ship")) then {
					_damged = _damged + 1;
				};
			} forEach _nearestObjects;
			if (_damged > 0) then {
				ctrlShow[2409,true];
			} else {
				ctrlShow[5123,false];
			};
		} else {
			ctrlShow[5123,false];
		};	

   };
};

if (FETCH_CONST(husky_adminlevel) < 1) then {
    ctrlShow[2021,false];
};
[] call husky_fnc_p_updateMenu;
