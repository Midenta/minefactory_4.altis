disableSerialization;
private["_display","_list","_configname","_name","_icon"];

ctrlShow [1100,false];

ctrlShow [1501,false];
ctrlShow [1505,false];
ctrlShow [1506,false];
ctrlShow [1507,false];

ctrlShow [2400,false];
ctrlShow [2420,false];
ctrlShow [2421,false];
ctrlShow [2422,false];

ctrlShow [2400,true];
ctrlShow [1501,true];

_display = findDisplay 8000;
_list = _display displayCtrl 1501;
lbClear _list;
			
{
	_configname = configName (_x);
	_name = getText(_x >> "name");
	_icon = getText(_x >> "icon");
	
	_list lbAdd format["%1",_name];
	_list lbSetPicture [(lbSize _list)-1,_icon];
	_list lbSetData [(lbSize _list)-1,str(_configname)];
} foreach ("true" configClasses (missionConfigFile >> "CfgTuning" >> str(playerSide) >> "hupen"));

_list lbSetCurSel 0;