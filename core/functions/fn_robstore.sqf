#include "..\..\script_macros.hpp"
/*
file: fn_robShops.sqf
Author: MrKraken
Description:
Executes the rob shob action!

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
/*
	Author: moeck edit by Deathman
	
	File: fn_tankerob.sqf
*/
#include "..\..\script_macros.hpp"
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_pos", "_robdelay", "_delay","_onWanted","_Max_Distance_ShopText","_Max_Distance_Shop","_RoberDelay","_ATMuse","_Rob_Finish","_MarkerType","_MarkerText","_MarkerColor","_CreatMarkerName","_Stay_DistanceText","_ProgressBarText","_PoliceText_Fail","_Message_To_Police","_Max_Police","_Max_Distance_Text","_Max_Distance","_max_money_rob","_max_money_rob_random","_FailText_1","_FailText_2","_FailText_3","_FailText_4","_FailText_5","_FailText_6","_FailText_7","_FailText_8","_FailText_9"];
_max_money_rob = getnumber(missionConfigFile >> "TankeRob_Master" >> "Max_Money_Rob");
_max_money_rob_random = getnumber(missionConfigFile >> "TankeRob_Master" >> "Max_Money_Rob_Random");

_FailText_1 = getText(missionConfigFile >> "TankeRob_Master" >> "FailText_1");
_FailText_2 = getText(missionConfigFile >> "TankeRob_Master" >> "FailText_2");
_FailText_3 = getText(missionConfigFile >> "TankeRob_Master" >> "FailText_3");
_FailText_4 = getText(missionConfigFile >> "TankeRob_Master" >> "FailText_4");
_FailText_5 = getText(missionConfigFile >> "TankeRob_Master" >> "FailText_5");
_FailText_6 = getText(missionConfigFile >> "TankeRob_Master" >> "FailText_6");
_FailText_7 = getText(missionConfigFile >> "TankeRob_Master" >> "FailText_7");
_FailText_8 = getText(missionConfigFile >> "TankeRob_Master" >> "FailText_8");
_FailText_9 = getText(missionConfigFile >> "TankeRob_Master" >> "FailText_9");

_Max_Distance = getnumber(missionConfigFile >> "TankeRob_Master" >> "Max_Distance");
_Max_Distance_Text = getText(missionConfigFile >> "TankeRob_Master" >> "Max_Distance_Text");

_Max_Distance_Shop = getnumber(missionConfigFile >> "TankeRob_Master" >> "Max_Distance_Shop");
_Max_Distance_ShopText = getText(missionConfigFile >> "TankeRob_Master" >> "Max_Distance_Shop_Text");

_Max_Police = getnumber(missionConfigFile >> "TankeRob_Master" >> "Max_Police");
_Message_To_Police = getText(missionConfigFile >> "TankeRob_Master" >> "Message_To_Police");
_PoliceText_Fail = getText(missionConfigFile >> "TankeRob_Master" >> "PoliceText_Finish");

_ProgressBarText = getText(missionConfigFile >> "TankeRob_Master" >> "ProgressBarText");
_Stay_DistanceText = getText(missionConfigFile >> "TankeRob_Master" >> "Stay_DistanceText");

_CreatMarkerName= getText(missionConfigFile >> "TankeRob_Master" >> "CreatMarkerName");
_MarkerColor = getText(missionConfigFile >> "TankeRob_Master" >> "MarkerColor");
_MarkerText = getText(missionConfigFile >> "TankeRob_Master" >> "MarkerText");
_MarkerType = getText(missionConfigFile >> "TankeRob_Master" >> "MarkerType");

_Rob_Finish = getText(missionConfigFile >> "TankeRob_Master" >> "Rob_Finish");

_ATMuse = getnumber(missionConfigFile >> "TankeRob_Master" >> "ATMuse");
_RoberDelay = getnumber(missionConfigFile >> "TankeRob_Master" >> "RoberDelay");

_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
_kassa = 1000; //The amount the shop has to rob, you could make this a parameter of the call (https://community.bistudio.com/wiki/addAction). Give it a try and post below ;)
_action = [_this,2] call BIS_fnc_param;//Action name
_gFund = GANG_FUNDS;

if (side _robber in [west, independent]) exitwith {
	hintSilent _FailText_1;
 };
if (husky_firstrob) exitWith {
	hint _FailText_2;
};
if (servertime < husky_nextrob) exitWith {
	hintSilent format [_FailText_3, [(husky_nextrob - servertime),"MM:SS"] call BIS_fnc_secondsToString];
};
_robdelay = _RoberDelay; // 900 Zeit die zwischen zwei Überfällen vergehen muss.
if(side _robber != civilian) exitWith { 
	hint _FailText_4;
};
if(_robber distance _shop > _Max_Distance) exitWith { 
	hint _Max_Distance_Text;
};
//if !(_kassa) then { _kassa = 1000; };
if (vehicle player != _robber) exitWith { 
	hint _FailText_5;
};
if !(alive _robber) exitWith {};
if (currentWeapon _robber isEqualTo "" || (currentWeapon _robber in ["Binocular","Rangefinder"])) exitWith { 
	hint _FailText_6;
};
_cops = (west countSide playableUnits);
if(_cops < _Max_Police) exitWith{
	hint _PoliceText_Fail;
};
if (_kassa isEqualTo 0) exitWith { 
	hint _FailText_7;
};
_rip = true;
_onWanted = false;
_kassa = _max_money_rob + round(random _max_money_rob_random);
_shop removeAction _action;
_chance = random(100);
_Posshop = position player;
//if (_chance >= 33 && _chance < 66) then { [1,hint parseText format[_Message_To_Police]] remoteExec ["husky_fnc_broadcast",west]; };
if (_chance >= 33 && _chance < 66) then {[1,format["ALARM! - Tankstelle: %1 wird ausgeraubt!", _Posshop]] remoteExec ["husky_fnc_broadcast",west]; };
if(_chance >= 66) then { 
	hint _FailText_8; 
	[1,format["ALARM! - Tankstelle: %1 wird ausgeraubt!", _Posshop]] remoteExec ["husky_fnc_broadcast",west];
	//[1,hint parseText format[_Message_To_Police]] remoteExec ["husky_fnc_broadcast",west]; 
};
disableSerialization;
5 cutRsc ["husky_progress","PLAIN"];
_ui = uiNameSpace getVariable "husky_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format[_ProgressBarText,"%"];
_progress progressSetPosition 0.01;
_cP = 0.01;
if(_rip) then {
	husky_nextrob = servertime + _robdelay;
	publicVariable "husky_nextrob";
		while{true} do {
			sleep 1.5;
			_cP = _cP + 0.01;
			_progress progressSetPosition _cP;
			_pgText ctrlSetText format[_Stay_DistanceText,round(_cP * 100),"%"];
			_Pos = position player; // by ehno: get player pos
			//if (_chance >= 66) then {
				_marker = createMarker [_CreatMarkerName, _Pos]; //by ehno: Place a Maker on the map
				_CreatMarkerName setMarkerColor _MarkerColor;
				_CreatMarkerName setMarkerText _MarkerText;
				_CreatMarkerName setMarkerType _MarkerType;
			//};
			if(_cP >= 1) exitWith {};
				if(_robber distance _shop > _Max_Distance_Shop) exitWith { 
					deleteMarker _CreatMarkerName; 
					hint _Max_Distance_ShopText; 
					5 cutText ["","PLAIN"]; _rip = false; 
				};
			if!(alive _robber) exitWith {deleteMarker _CreatMarkerName; _rip = false; 5 cutText ["","PLAIN"];};
			if(husky_istazed) exitWith {deleteMarker _CreatMarkerName; _rip = false; 5 cutText ["","PLAIN"];};
			if(player getVariable ["Re-strained",FALSE]) exitWith { deleteMarker _CreatMarkerName; _rip = false; 5 cutText ["","PLAIN"];};
			if (currentWeapon _robber isEqualTo "" || (currentWeapon _robber in ["Binocular","Rangefinder"])) exitWith { 
				hint _FailText_9;
				deleteMarker _CreatMarkerName; _rip = false; 5 cutText ["","PLAIN"]; 
			};
		};
	if!(alive _robber) exitWith { _rip = false; deleteMarker _CreatMarkerName; 5 cutText ["","PLAIN"];};
	if(husky_istazed) exitWith {deleteMarker _CreatMarkerName; _rip = false; 5 cutText ["","PLAIN"];};
	if(player getVariable ["Re-strained",FALSE]) exitWith { deleteMarker _CreatMarkerName; _rip = false; 5 cutText ["","PLAIN"];};
	if (currentWeapon _robber isEqualTo "" || (currentWeapon _robber in ["Binocular","Rangefinder"])) exitWith {deleteMarker _CreatMarkerName; _rip = false; 5 cutText ["","PLAIN"]; };
	if(_robber distance _shop > _Max_Distance_Shop) exitWith { deleteMarker _CreatMarkerName; 5 cutText ["","PLAIN"]; _rip = false; };
	5 cutText ["","PLAIN"];
			titleText[format[_Rob_Finish,[_kassa] call husky_fnc_numberText],"PLAIN"];
		deleteMarker _CreatMarkerName; // by ehno delete maker
		
		[getPlayerUID player, "Tankstelle Ausgraubt", format ["%1 - %2 hat %3 ausgraubt Bargeld: %4 € Bankkonto: %5 € Coins: %6 € Gangkonto: %7 €",profileName,(getPlayerUID player),_kassa,[c126] call husky_fnc_numberText,[b126] call husky_fnc_numberText,[COINS] call husky_fnc_numberText,[_gFund] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];

		
		husky_cash = husky_cash + _kassa;
		_rip = false;
		husky_use_atm = false;
		uiSleep (_ATMuse + random(180));
		husky_use_atm = true;
		if!(alive _robber) exitWith {};
		
		
};
if !(_onWanted) then {
	if!(_chance < 10) then {
			_chance = random 100; 
		if(_chance < 40) then {
			[getPlayerUID _robber,name _robber,"27"] remoteExecCall ["husky_fnc_wantedAdd",2];
		};
	};
};
_action = _shop addAction["Tankstelle Ausrauben",husky_fnc_robstore,"",0,false,false,"","playerSide isEqualTo civilian",4];
//_action = _shop addAction["Tankstelleshop",husky_fnc_weaponShopMenu,"gerneralstore",0,false,false,"","playerSide isEqualTo civilian",4];
//_action = _shop addAction["Tankstelleshop",husky_fnc_virt_menu,"market",0,false,false,"","",4];


/*
private["_robber","_shop","_kassa","_ui","_progress","_pgText","_cP","_rip","_pos"];
_shop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param; //The object that has the action attached to it is _this. ,0, is the index of object, ObjNull is the default should there be nothing in the parameter or it's broken
_robber = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param; //Can you guess? Alright, it's the player, or the "caller". The object is 0, the person activating the object is 1
//_kassa = 1000; //The amount the shop has to rob, you could make this a parameter of the call (https://community.bistudio.com/wiki/addAction). Give it a try and post below ;)
_action = [_this,2] call BIS_fnc_param;//Action name


if (side _robber != civilian) exitWith { hint "Du kannst die Tankstelle nicht ausrauben!" };
if (_robber distance _shop > 20) exitWith { hint "Maximal 20 Meter entfernen!" };


if !(_kassa) then { _kassa = 1000; };
if (_rip) exitWith { hint "Tankstelle wird schon ausgeraubt!" };
if (vehicle player != _robber) exitWith { hint "Raus aus dem Fahrzeug!" };


if !(alive _robber) exitWith {};
if (currentWeapon _robber == "") exitWith { hint "HaHa, Ich finde Pranks immer wieder schön... hobo!" };
if (binocular _robber ) exitWith { hint "HaHa, Ich finde Pranks immer wieder schön... hobo!" };
if (_kassa == 0) exitWith { hint "Heute gibt es hier nichts!" };


_rip = true;
_kassa = 10000 + round(random 75000);
_shop removeAction _action;
_shop switchMove "AmovPercMstpSsurWnonDnon";
_chance = random(100);
if (_chance >= 75) then {[1,format["ALARM! - Tankstelle: %1 wird ausgeraubt!", _shop]] remoteExec ["husky_fnc_broadcast",west]; };


_cops = (west countSide playableUnits);
//if (_cops < 1) exitWith{[_vault,-1] remoteExec ["disableSerialization;",2]; hint "Die Bank hat bereits alle Einnahmmen abgeholt!";};
disableSerialization;
5 cutRsc ["husky_progress","PLAIN"];
_ui = uiNameSpace getVariable "husky_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["Raub gestartet! Bewege dich maximal 20 Meter weit weg! (1%1)...","%"];
_progress progressSetPosition 0.01;
_cP = 0.0001;


if (_rip) then {
	while{true} do {
		sleep 3;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["Behalte eine Distanz von 20 Metern zur Kasse! (%1%2)...",round(_cP * 100),"%"];
		_Pos = position player; // by ehno: get player pos
		_marker = createMarker ["Marker200", _Pos]; //by ehno: Place a Maker on the map
		"Marker200" setMarkerColor "ColorRed";
		"Marker200" setMarkerText "!ACHTUNG! Tankstellenüberfall !ACHTUNG!";
		"Marker200" setMarkerType "mil_warning";
		if (_cP >= 1) exitWith {};
		if (_robber distance _shop > 20.5) exitWith { };
		if!(alive _robber) exitWith {};
	};
	
	if!(alive _robber) exitWith { _rip = false; };
	if (_robber distance _shop > 20.5) exitWith { deleteMarker "Marker200"; _shop switchMove ""; hint "Du warst zu weit weg von der Kasse."; 5 cutText ["","PLAIN"]; _rip = false; };
	5 cutText ["","PLAIN"];


	titleText[format["Du hast %1 €, gestohlen, jetzt hau ab, die Polizei ist unterwegs!!",[_kassa] call husky_fnc_numberText],"PLAIN"];
	deleteMarker "Marker200"; // by ehno delete maker
	husky_cash = husky_cash + _kassa;
	

	_rip = false;
	husky_use_atm = false;
	sleep (30 + random(180));
	husky_use_atm = true;
	if!(alive _robber) exitWith {};
	[getPlayerUID _robber,name _robber,"27"] remoteExec ["husky_fnc_wantedAdd",2];
};

sleep 900;
_action = _shop addAction["Ausrauben",husky_fnc_robstore];
_shop switchMove "";
*/