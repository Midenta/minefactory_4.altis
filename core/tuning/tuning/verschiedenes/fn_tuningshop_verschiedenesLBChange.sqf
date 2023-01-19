disableSerialization;
private["_info","_control","_index","_dataArr","_infoBox","_price","_multiplier","_rentmultiplier","_tuningmultiplier","_beschreibung","_tastencombo","_buyprice","_rentcost","_buycost","_rentprice"];
_control = _this select 0;
_index = _this select 1;
_control = ((findDisplay 8000) displayCtrl 1507);
_dataArr = _control lbData (lbCurSel _control);
_dataArr = call compile format["%1", _dataArr];

ctrlShow [1100,true];

_infoBox = ((findDisplay 8000) displayCtrl 1100);

NOCRIS_TUNING_MENU_ARTIKELPRICE = 0;

_price = getNumber(missionconfigfile >> "CfgVehicle" >> NOCRIS_TUNING_MENU_CLASSNAME >> "price");
_multiplier = getNumber(missionconfigfile >> "shop" >> "vehicle" >> "vehicle_buy_multiplier" >> str(playerSide));
_tuningmultiplier = getNumber(missionconfigfile >> "CfgTuning" >> str(playerSide) >> "verschiedenes" >> _dataArr >> "tuning_multiplier");
_beschreibung = getText(missionconfigfile >> "CfgTuning" >> str(playerSide) >> "verschiedenes" >> _dataArr >> "beschreibung");
_tastencombo = getText(missionconfigfile >> "CfgTuning" >> str(playerSide) >> "verschiedenes" >> _dataArr >> "tastencombo");

_buyprice = _price * _multiplier;

_buycost = _tuningmultiplier * _buyprice;

NOCRIS_TUNING_MENU_ARTIKELPRICE = _buycost;

if (_tastencombo != "") then {
	_info = format["Beschreibung:<br/><br/>%1<br/><br/>Aktivierbar mit: %2",_beschreibung,_tastencombo];
	_info = format["%1", _info];
	_infoBox ctrlSetStructuredText parseText _info;
} else {
	_info = format["Beschreibung:<br/><br/>%1",_beschreibung];
	_info = format["%1", _info];
	_infoBox ctrlSetStructuredText parseText _info;
};



