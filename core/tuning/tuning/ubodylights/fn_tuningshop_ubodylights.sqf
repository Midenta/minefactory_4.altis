disableSerialization;
private["_multiplier","_costubodylights","_mode","_spawnPoints","_className","_basePrice","_colorIndex","_spawnPoint","_vehicle","_shopSide","_licenses","_exit","_nearVehicles","_buycost"];
if ((lbCurSel 1502) == -1) exitWith {hint "Du musst ein Fahrzeug auswählen!";};
if ((lbCurSel 1506) == -1) exitWith {hint "Du hast keine Unterbodenbeleuchtung ausgewählt";};
_index = -1;
_state = -1;
_control = ((findDisplay 8000) displayCtrl 1506);
_dataArr = _control lbData (lbCurSel _control);
_dataArr = call compile format["%1", _dataArr];
_cartuning = NOCRIS_TUNING_MENU_VEHICLE getVariable ["tuning","FAILED"];
if (_cartuning isEqualTo "FAILED") exitWith {hint "Konnte Tuningstatus nicht abfragen.";};

_price = getNumber(missionconfigfile >> "CfgVehicle" >> NOCRIS_TUNING_MENU_CLASSNAME >> "price");
_multiplier = getNumber(missionconfigfile >> "shop" >> "vehicle" >> "vehicle_buy_multiplier" >> str(playerSide));
_tuningmultiplier = getNumber(missionconfigfile >> "CfgTuning" >> str(playerSide) >> "ubodylights" >> "tuning_multiplier");

_buyprice = _price * _multiplier;

_buycost = _tuningmultiplier * _buyprice;

_index = getNumber(missionconfigfile >> "CfgTuning" >> str(playerSide) >> "ubodylights" >> "index");
_state = getNumber(missionconfigfile >> "CfgTuning" >> str(playerSide) >> "ubodylights" >> _dataArr >> "state");

if (!isClass (missionConfigFile >> "CfgVehicle" >> NOCRIS_TUNING_MENU_CLASSNAME >> "tuning")) exitwith 
{
	hint "In dein Fahrzeug kann derzeit keine Unterbodenbeleuchtung eingebaut werden!";
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