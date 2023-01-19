/*	
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
	
	Function starts countdown algorithm which calls specified function with rest counts number as argument
	Arguments: [counts number, delay between counts, count handler function]
	Usage: [10, 1, {DoSomethingWithThisArgumentContainingRemainCounts}] call Fn_CountDownTimerStart
*/
/*
_this spawn {
	_this params ["_cts", "_ctd", "_fnc"];
	
	while {_cts = _cts - 1; sleep _ctd; _cts >= 0} do {
		_cts call _fnc}
};
*/


private "_time";
_time = _this select 0;

while {_time > 0} do {
	_time = _time - 1;  
	hintSilent format["Verbleibende Zeit: \n %1", [((_time)/60)+.01,"HH:MM"] call BIS_fnc_timetostring];	
	sleep 1;
};