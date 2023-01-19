/*

    hmm no idea what just happen here

    Thieves
	
	Thieves-Gaming.de
	
	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

*/
private "_mIndex";
disableSerialization;
waitUntil {
    !isNull(findDisplay 655000)
};
private _Dialog = findDisplay 655000;
private _mvalue = _Dialog displayCtrl 655515;
private _svalue = _Dialog displayCtrl 655535;
/*
private _unit = _Dialog displayCtrl 555360;

private _unit = lbData [70090,lbCurSel 70090];
_unit = call compile format ["%1",_unit];
*/

_mIndex = _mvalue lbadd "Information - Med";
_mvalue lbSetData[(lbSize _mvalue) - 1, "Information - Med"];


_mIndex = _mvalue lbadd "Sonstiges - Med";
_mvalue lbSetData[(lbSize _mvalue) - 1, "Sonstiges - Med"];

_mIndex = _mvalue lbadd "Personalakte MED";
_mvalue lbSetData[(lbSize _mvalue) - 1, "Personalakte MED"];

_mIndex = _svalue lbadd "Offen";
_svalue lbSetValue[(lbSize _svalue) - 1, 0];
_mIndex = _svalue lbadd "Bezahlt";
_svalue lbSetValue[(lbSize _svalue) - 1, 1];
_mIndex = _svalue lbadd "Geschlossen";
_svalue lbSetValue[(lbSize _svalue) - 1, 2];