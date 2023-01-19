/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
_display = findDisplay 112445;
_pid = _display displayCtrl 1129;
_pid ctrlSetStructuredText parseText (format["%1",getPlayerUID player]);
_name = _display displayCtrl 1130;
_name ctrlSetStructuredText parseText (format["%1",profileName]);

/*
0 spawn {
	diag_log "fn_bummelDieBummels.sqf gestartet.";
	while {true} do {
		_display = findDisplay 112445;
		diag_log _display;
		_CTRL = _Display displayCtrl 1129;
		diag_log _CTRL;



		//global_date
		//global_time
		_zeitExtra = serverTime - global_servertimeAthuskyInit;
		diag_log _zeitExtra;
		_stundenExtra = floor(_zeitExtra / (3600));
		diag_log _stundenExtra;
		_stunden_seit_serverstart_vergangen = (global_time select 0) + _stundenExtra;
		diag_log _stunden_seit_serverstart_vergangen;

		_minutenExtra = floor((_zeitExtra - (_stundenExtra * 3600)) / 60);
		diag_log _minutenExtra;
		_minuten_seit_serverstart_vergangen = (global_time select 1) + _minutenExtra;
		diag_log _minuten_seit_serverstart_vergangen;

		_sekundenExtra = (((_zeitExtra - _stundenExtra * 3600) - (_minutenExtra * 60)));
		diag_log _sekundenExtra;
		_sekunden_seit_serverstart_vergangen = (global_time select 2) + _sekundenExtra;
		diag_log _sekunden_seit_serverstart_vergangen;




		_sec=  global_time select 2;
		_min=	global_time select 1;
		_h 	=	global_time select 0;

		_sec =	if (_sec < 10)then	{"0" + str(_sec)}else{str(_sec)};
		_min =	if (_min < 10)then	{"0" + str(_min)}else{str(_min)};
		_h	 =	if (_h < 10)then		{"0" + str(_h)}else{str(_h)};

		_zeit = format["%1:%2:%3", _sec, _min, _h];
		_datum = format["%1.%2.%3",global_date select 0, global_date select 1, global_date select 2];

		_control ctrlSetStructuredText parseText (format["%1 | %2 | %3",_datum,_zeit,profileName]);
		
		uiSleep 1;
	};
};
*/