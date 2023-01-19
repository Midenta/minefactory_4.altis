disableSerialization;
private["_dataArr","_control","_index","_className","_basePrice","_vehicleInfo","_colorArray","_ctrl"];
_control = _this select 0;
_index = _this select 1;
_control = ((findDisplay 8000) displayCtrl 1506);
_dataArr = _control lbData (lbCurSel _control);
_dataArr = call compile format["%1", _dataArr];

NOCRIS_TUNING_MENU_ARTIKELPRICE = 0;

_price = getNumber(missionconfigfile >> "CfgVehicle" >> NOCRIS_TUNING_MENU_CLASSNAME >> "price");
_multiplier = getNumber(missionconfigfile >> "shop" >> "vehicle" >> "vehicle_buy_multiplier" >> str(playerSide));
_tuningmultiplier = getNumber(missionconfigfile >> "CfgTuning" >> str(playerSide) >> "ubodylights" >> "tuning_multiplier");

_buyprice = _price * _multiplier;

_buycost = _tuningmultiplier * _buyprice;

NOCRIS_TUNING_MENU_ARTIKELPRICE = _buycost;



