disableSerialization;
private["_control","_index","_dataArr","_sound"];
_control = _this select 0;
_index = _this select 1;
_dataArr = _control lbData _index;
_dataArr = call compile format["%1",_dataArr];
if (NOCRIS_TUNING_HORNTEST_ACTIVE) exitwith {systemchat "Du musst kurz warten bevor du dir die nächste Hupe anhören kannst!";};

NOCRIS_TUNING_MENU_ARTIKELPRICE = 0;

_price = getNumber(missionconfigfile >> "CfgVehicle" >> NOCRIS_TUNING_MENU_CLASSNAME >> "price");
_multiplier = getNumber(missionconfigfile >> "shop" >> "vehicle" >> "vehicle_buy_multiplier" >> str(playerSide));
_tuningmultiplier = getNumber(missionconfigfile >> "CfgTuning" >> str(playerSide) >> "hupen" >> "tuning_multiplier");

_buyprice = _price * _multiplier;

_buycost = _tuningmultiplier * _buyprice;

NOCRIS_TUNING_MENU_ARTIKELPRICE = _buycost;

_sound = getText(missionconfigfile >> "CfgTuning" >> str(playerSide) >> "hupen" >> _dataArr >> "sound");

player say _sound;

NOCRIS_TUNING_HORNTEST_ACTIVE = true;

sleep 3;

NOCRIS_TUNING_HORNTEST_ACTIVE = false;
