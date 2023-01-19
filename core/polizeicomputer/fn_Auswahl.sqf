#include "..\..\script_macros.hpp"
/*

    hmm no idea what just happen here

	Bearbeitet von ԄӏՖҚ
    Freigestellt für Minefactory.eu

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

*/
//private "_mIndex";
private["_mIndex","_text","_unit","_display"];
disableSerialization;
waitUntil {
    !isNull(findDisplay 55000)
};


//private _unit = husky_fahndung;
//diag_log format["%1",_unit];

//_unit = lbData[20073,(lbCurSel 20073)];
//_unit = call compile format["%1", _unit];
//diag_log format["%1",_unit];
/*
_display = findDisplay 55000;
_text = _display displayCtrl 555360;
_text ctrlSetStructuredText parseText format["<t size='0.9' align='center'>%1</t>", _unit getVariable["realname", name _unit]];
//diag_log format["%1",_text];
*/

/*
private _name = _display displayCtrl 555360;
_name ctrlSetStructuredText parseText format["<t size='0.9' align='center'>%1</t>", _unit getVariable["realname", name _unit]];
//diag_log format["%1",_name];

*/

/*		//Uhrzeit und datum fügt es ein, aner beim speichern übernimmt es das ne 
		//beim aktivieren im bericht.hpp husky_RscEdit zu structur text und type zu icd und icd ausklammern
	_now = systemTime;
	_jahr= _now select 0;
	_monat = _now select 1;
	_tag = _now select 2;
	_stunde = _now select 3;
	_minute  = _now select 4;
	_sekunde  = _now select 5;


private _display = findDisplay 55000;
private _datum = _display displayCtrl 55005;
private _uhrzeit = _display displayCtrl 55006;
_datum ctrlSetStructuredText parseText format["%1.%2.%3", _tag, _monat, _jahr];
_uhrzeit ctrlSetStructuredText parseText format["%1:%2", _stunde, _minute];
	
*/
	

private _Dialog = findDisplay 55000;
private _mvalue = _Dialog displayCtrl 55515;
private _svalue = _Dialog displayCtrl 55535;
/*private _target = lbData[20070,lbcurSel 20073];
//private _display = findDisplay 55000;
private _text = _Dialog displayCtrl 555360;
_text ctrlSetStructuredText parseText format["<t size='0.9' align='center'>%1</t>", _target getVariable["realname",name _target]];

//diag_log _text;
//diag_log _target;
//diag_log _display;
*/

_mIndex = _mvalue lbadd "Information";
_mvalue lbSetData[(lbSize _mvalue) - 1, "Information"];
_mIndex = _mvalue lbadd "Allgemeine Verkehrskontrolle";
_mvalue lbSetData[(lbSize _mvalue) - 1, "Allgemeine Verkehrskontrolle"];
_mIndex = _mvalue lbadd "Ordnungswiedrigkeit";
_mvalue lbSetData[(lbSize _mvalue) - 1, "Ordnungswiedrigkeit"];

_mIndex = _mvalue lbadd "Verstoß StVO";
_mvalue lbSetData[(lbSize _mvalue) - 1, "Verstoß StVO"];
_mIndex = _mvalue lbadd "Lasermessung";
_mvalue lbSetData[(lbSize _mvalue) - 1, "Lasermessung"];
_mIndex = _mvalue lbadd "Straftat";
_mvalue lbSetData[(lbSize _mvalue) - 1, "Straftat"];

_mIndex = _mvalue lbadd "INFO Sonderermittlung";
_mvalue lbSetData[(lbSize _mvalue) - 1, "INFO Sonderermittlung"];
_mIndex = _mvalue lbadd "INFO Zivilfahnder";
_mvalue lbSetData[(lbSize _mvalue) - 1, "INFO Zivilfahnder"];
_mIndex = _mvalue lbadd "INFO copbereitschaftspolizei";
_mvalue lbSetData[(lbSize _mvalue) - 1, "INFO copbereitschaftspolizei"];
_mIndex = _mvalue lbadd "INFO SEK";
_mvalue lbSetData[(lbSize _mvalue) - 1, "INFO SEK"];
_mIndex = _mvalue lbadd "Bankprotokoll";
_mvalue lbSetData[(lbSize _mvalue) - 1, "Bankprotokoll"];
_mIndex = _mvalue lbadd "Sonstiges";
_mvalue lbSetData[(lbSize _mvalue) - 1, "Sonstiges"];

_mIndex = _mvalue lbadd "Personalakte POL";
_mvalue lbSetData[(lbSize _mvalue) - 1, "Personalakte POL"];

_mIndex = _svalue lbadd "Offen";
_svalue lbSetValue[(lbSize _svalue) - 1, 0];
_mIndex = _svalue lbadd "Bezahlt";
_svalue lbSetValue[(lbSize _svalue) - 1, 1];
_mIndex = _svalue lbadd "Gefängnis";
_svalue lbSetValue[(lbSize _svalue) - 1, 2];
_mIndex = _svalue lbadd "Geschlossen";
_svalue lbSetValue[(lbSize _svalue) - 1, 3];
_mIndex = _svalue lbadd "Ausgebrochen";
_svalue lbSetValue[(lbSize _svalue) - 1, 4];