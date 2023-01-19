disableSerialization;
private["_control","_dataArr","_index"];
_control = _this select 0;
_index = _this select 1;
_dataArr = _control lbData _index;
_dataArr = call compile format["%1",_dataArr];

switch(_dataArr) do {
	case "hupen": {[] call husky_fnc_tuningshop_hupenmenu;};
	case "ubodylights": {[] call husky_fnc_tuningshop_ubodylightmenu;};
	case "smokescreen": {[] call husky_fnc_tuningshop_smokescreenmenu;};
	case "verschiedenes": {[] call husky_fnc_tuningshop_verschiedenesmenu;};
};

