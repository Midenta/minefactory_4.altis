#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
	
	thias AddAction 
	
	
	
	this addAction[format ["%1 ($%2)",localize (getText(missionConfigFile >> "Licenses" >> "rebel" >> "displayName")), [(getNumber(missionConfigFile >> "Licenses" >> "rebel" >> "price"))] call husky_fnc_numberText],husky_fnc_buyLicense,"rebel",0,false,false,"",' !license_civ_rebel',4]; 
			this addAction[format ["%1 ($%2)",localize (getText(missionConfigFile >> "Licenses" >> "miliz" >> "displayName")), [(getNumber(missionConfigFile >> "Licenses" >> "miliz" >> "price"))] call husky_fnc_numberText],husky_fnc_buyLicense,"miliz",0,false,false,"",' !license_civ_miliz && license_civ_rebel',4]; 
			this addAction[format ["%1 ($%2)",localize (getText(missionConfigFile >> "Licenses" >> "schwarzmarkt" >> "displayName")), [(getNumber(missionConfigFile >> "Licenses" >> "schwarzmarkt" >> "price"))] call husky_fnc_numberText],husky_fnc_buyLicense,"schwarzmarkt",0,false,false,"",' !license_civ_schwarzmarkt && license_civ_miliz && license_civ_rebel',4];
*/
#define Btn1 8520
#define Btn2 8521
#define Btn3 8522

private ["_case","_display","_Btn1","_Btn2","_Btn3","_Btn4"];
/*

if (!dialog) then {
    createDialog "reb_lizenz";
};

_display = findDisplay 8519;
_Btn1 = _display displayCtrl Btn1;
_Btn2 = _display displayCtrl Btn2;
_Btn3 = _display displayCtrl Btn3;

/*
createDialog "reb_lizenz";

_Btn1 ctrlSetText "Tamaulipas";
_Btn1 buttonSetAction "[player] remoteExecCall [""husky_fnc_copSit"",husky_pInact_curTarget]; closeDialog 0;";

_Btn2 ctrlSetText "Tierra Caliente";
_Btn2 buttonSetAction "[player] remoteExecCall [""husky_fnc_copStand"",husky_pInact_curTarget]; closeDialog 0;";

_Btn3 ctrlSetText "Sinaloa Kartell";
_Btn3 buttonSetAction "[player] remoteExecCall [""husky_fnc_copStand"",husky_pInact_curTarget]; closeDialog 0;";
*/
/*
if (!(license_civ_rebel)) then {_btn2 ctrlEnable false;};
if (!(license_civ_miliz)) then {_btn3 ctrlEnable false;};

_Btn1 ctrlShow true;		//license_civ_rebel
_Btn2 ctrlShow false;		//license_civ_miliz
_Btn3 ctrlShow false;		//license_civ_schwarzmarkt
_Btn4 ctrlShow true;		//
*/

/*
_case = [_this,0,0] call BIS_fnc_param;


switch (_case) do {
    case 0:{
        if (license_civ_rebel = true;) then {
			 
			
		}else{
			hint "Du hast hierrauf kein Zugriff!";
		};			
    };
	case 1:{
		if (license_civ_rebel = true;) then {
			
			}else{
			hint "Du hast hierrauf kein Zugriff!";
		};
    };
	case 2:{
        if (license_civ_miliz = true;) then {
			
		}else{
			hint "Du hast hierrauf kein Zugriff!";
		};
    };		
};
*/
/*
[0] call husky_fnc_reb_lizenz;
[1] call husky_fnc_reb_lizenz;
[2] call husky_fnc_reb_lizenz;
*/