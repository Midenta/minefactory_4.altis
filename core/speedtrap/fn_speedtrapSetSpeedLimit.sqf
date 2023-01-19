



private["_speedtrap","_speedlimit","_speedlimit_text","_display","_var_laptop","_value_laptop"];
disableSerialization;

_speedtrap = cursorTarget;
if (isNull _speedtrap) exitwith {};

_speedlimit = _speedtrap getVariable["speedtrap_speedlimit", 30];

createDialog "husky_speedtrap";
_display = findDisplay 8000;
_speedlimit_text = _display displayCtrl 8001;
_speedlimit_text ctrlSetText str(_speedlimit); 
