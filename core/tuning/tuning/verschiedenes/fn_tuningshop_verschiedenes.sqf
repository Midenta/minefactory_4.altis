disableSerialization;
private["_index","_state","_control","_dataArr","_price","_multiplier","_rentmultiplier","_tuningmultiplier","_buyprice","_rentprice","_buycost","_rentcost","_laderaum","_turbolader"];
if ((lbCurSel 1502) == -1) exitWith {hint "Du musst ein Fahrzeug auswählen!";};
if ((lbCurSel 1507) == -1) exitWith {hint "Du hast nichts ausgewählt";};
_index = -1;
_state = -1;
_control = ((findDisplay 8000) displayCtrl 1507);
_dataArr = _control lbData (lbCurSel _control);
_dataArr = call compile format["%1", _dataArr];
_cartuning = NOCRIS_TUNING_MENU_VEHICLE getVariable ["tuning","FAILED"];
if (_cartuning isEqualTo "FAILED") exitWith {hint "Konnte Tuningstatus nicht abfragen.";};

_price = getNumber(missionconfigfile >> "CfgVehicle" >> NOCRIS_TUNING_MENU_CLASSNAME >> "price");
_multiplier = getNumber(missionconfigfile >> "shop" >> "vehicle" >> "vehicle_buy_multiplier" >> str(playerSide));
_tuningmultiplier = getNumber(missionconfigfile >> "CfgTuning" >> str(playerSide) >> "verschiedenes" >> _dataArr >> "tuning_multiplier");

_buyprice = _price * _multiplier;

_buycost = _tuningmultiplier * _buyprice;

_index = getNumber(missionconfigfile >> "CfgTuning" >> str(playerSide) >> "verschiedenes" >> _dataArr >> "index");
_state = getNumber(missionconfigfile >> "CfgTuning" >> str(playerSide) >> "verschiedenes" >> _dataArr >> "state");

_lagerraumold = NOCRIS_TUNING_MENU_VEHICLE getVariable "Lagerraum";
_laderaum = _cartuning select 8;
_turbolader = _cartuning select 3;
_nitro = _cartuning select 2;
_zusatztank = _cartuning select 7;
_benzinpumpe = _cartuning select 6;
_geheimfach = _cartuning select 5;
if (_dataArr == "turbolader" && (NOCRIS_TUNING_MENU_CLASSNAME == "C_Offroad_01_F")) exitwith {hint "Du kannst kein Offroader anheben!";};
if (_dataArr == "turbolader" && _turbolader == 1) exitwith {hint "Du kannst dein Fahrzeug nur einmal anheben!";};
if (_dataArr == "nitro" && _nitro == 1) exitwith {hint "Du hast Nitro bereits eingebaut!";};
if (_dataArr == "zusatztank" && _zusatztank == 1) exitwith {hint "Du hast bereits ein Zusatztank eingebaut!";};
if (_dataArr == "benzinpumpe" && _benzinpumpe == 1) exitwith {hint "Du hast bereits eine Benzinpumpe eingebaut!";};
if (_dataArr == "geheimfach" && _geheimfach == 1) exitwith {hint "Du hast bereits ein Geheimfach eingebaut!";};
if (_dataArr == "laderaumausbau" && (NOCRIS_TUNING_MENU_CLASSNAME in ["B_Quadbike_01_F","C_Hatchback_01_F","C_Offroad_01_F","C_SUV_01_F","C_Hatchback_01_sport_F","B_G_Offroad_01_armed_F","B_G_Offroad_01_F"])) exitwith {hint "Du kannst bei diesem Fahrzeug den Laderaum nicht ausbauen!";};
if (_dataArr == "laderaumausbau" && _laderaum == 300) exitwith {hint "Du hast dein Laderaum bereits komplett ausgebaut!";};

if (_dataArr == "turbolader") then {(NOCRIS_TUNING_MENU_VEHICLE)setMass(((getMass(NOCRIS_TUNING_MENU_VEHICLE)))-(((getMass(NOCRIS_TUNING_MENU_VEHICLE)))*0.5));};
if (_dataArr == "laderaumausbau") then {
	if (_laderaum == -1) exitwith {_state = 50; _lagerraumnew = _lagerraumold + 50; NOCRIS_TUNING_MENU_VEHICLE setVariable["Lagerraum",_lagerraumnew, true];};
	if (_laderaum == 50) exitwith {_state = 100; _lagerraumnew = _lagerraumold + 50; NOCRIS_TUNING_MENU_VEHICLE setVariable["Lagerraum",_lagerraumnew, true];};
	if (_laderaum == 100) exitwith {_state = 150; _lagerraumnew = _lagerraumold + 50; NOCRIS_TUNING_MENU_VEHICLE setVariable["Lagerraum",_lagerraumnew, true];};
	if (_laderaum == 150) exitwith {_state = 200; _lagerraumnew = _lagerraumold + 50; NOCRIS_TUNING_MENU_VEHICLE setVariable["Lagerraum",_lagerraumnew, true];};
	if (_laderaum == 200) exitwith {_state = 250; _lagerraumnew = _lagerraumold + 50; NOCRIS_TUNING_MENU_VEHICLE setVariable["Lagerraum",_lagerraumnew, true];};
	if (_laderaum == 250) exitwith {_state = 300; _lagerraumnew = _lagerraumold + 50; NOCRIS_TUNING_MENU_VEHICLE setVariable["Lagerraum",_lagerraumnew, true];};
};
		
if (_index == -1 or _state == -1) exitWith {};

if (_buycost < 0) exitWith {}; //Bad price entry
if (NOCRIS_c126 < _buycost) exitWith {hint format["Dir fehlen %1 um dein Fahrzeug zu tunen!",[_buycost - NOCRIS_c126] call CLIENT_fnc_numberText];};

NOCRIS_c126 = NOCRIS_c126 - _buycost;

_cartuning set [_index,_state];

NOCRIS_TUNING_MENU_VEHICLE setVariable ["tuning",_cartuning,true];

hint parsetext"Fahrzeug erfolgreich umgebaut!";

[NOCRIS_TUNING_MENU_VEHICLE,2] remoteExecCall ["SERVER_fnc_vehicleUpdate",2];
[] call CLIENTSERVER_fnc_updateplayer;
closedialog 0;