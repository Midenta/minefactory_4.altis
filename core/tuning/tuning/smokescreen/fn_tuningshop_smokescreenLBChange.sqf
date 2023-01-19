disableSerialization;
private["_control","_index","_className","_basePrice","_vehicleInfo","_colorArray","_ctrl"];
_control = _this select 0;
_index = _this select 1;
_verschiedenes = _control lbData _index;

NOCRIS_TUNING_MENU_ARTIKELPRICE = 0;

_price = getNumber(missionconfigfile >> "CfgVehicle" >> NOCRIS_TUNING_MENU_CLASSNAME >> "price");
_multiplier = getNumber(missionconfigfile >> "shop" >> "vehicle" >> "vehicle_buy_multiplier" >> str(playerSide));
_tuningmultiplier = getNumber(missionconfigfile >> "CfgTuning" >> str(playerSide) >> "smokescreen" >> "tuning_multiplier");

_buyprice = _price * _multiplier;

_buycost = _tuningmultiplier * _buyprice;

NOCRIS_TUNING_MENU_ARTIKELPRICE = _buycost;