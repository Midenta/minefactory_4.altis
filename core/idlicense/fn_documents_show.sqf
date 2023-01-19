#include "..\..\script_macros.hpp"
/*
 *
 *	@File:		fn_show_idcard.sqf
 *	@Author: 	AllianceApps
 *	@Date:		01.10.2017
 *
 *	You are not allowed to use this script or remove the credits of the script without written permission of the author.
 *  You are not allowed to use this script without a valid license. License terms apply.
 *
 *  Du darfst dieses Script nicht nutzen oder diesen Copyright-Hinweis nicht entfernen, wenn du keine schriftliche Bestätigung des Autors hast.
 *  Du darfst dieses Script nicht ohne gültige Lizenz nutzen. Die Lizenzbestimmungen für Scripts sind zu beachten.
 *  
 */
params [
	["_typ", "", [""]],
	["_data", [], [[]]],
	["_uid", "", [""]],
	["_playerside", civilian, [civilian]]
];
if((_data isEqualTo []) OR {_uid isEqualTo ""} OR {_typ isEqualTo ""}) exitWith {};
if(!alive player) exitWith {};
disableSerialization;
"idlicence" cutRsc ["idlicence","PLAIN"];
_display = uiNamespace getVariable "idlicence";

_namearr = ((_data select 0) splitString " ");
_lastname = _namearr select ((count _namearr) -1);
if(_playerside isEqualTo CIVILIAN) exitWith {
	(_display displayCtrl 72765) ctrlSetText "textures\zivs\idlicenece.paa";
	_type = (_data select 2) splitString ".";
	reverse _type;
	if((parseNumber (_type joinString "")) < 19800000) then {
		_type = "A";
	} else {
		_type = "B";
	};
	(_display displayCtrl 72750) ctrlSetText _typ; //TYPE
	(_display displayCtrl 72764) ctrlSetText _type; //TYPE

	(_display displayCtrl 72752) ctrlSetText (_data select 0); //Name
	
	(_display displayCtrl 72753) ctrlSetText (_data select 5); //anschrift1
	(_display displayCtrl 72754) ctrlSetText (_data select 6); //anschrift2
	(_display displayCtrl 72755) ctrlSetText (_data select 1); //Geburtsdatum
	(_display displayCtrl 72756) ctrlSetText format["%1, %2",_data select 2,_data select 3]; //Geburtsort
	(_display displayCtrl 72757) ctrlSetText (localize (_data select 4)); //Geschlecht
	(_display displayCtrl 72759) ctrlSetText toUpper(_namearr select 0);
	(_display displayCtrl 72760) ctrlSetText toUpper(_lastname select [0,1]);
	(_display displayCtrl 72761) ctrlSetText toUpper(_lastname);
	(_display displayCtrl 72762) ctrlSetText toUpper(_data select 3);
	(_display displayCtrl 72763) ctrlSetText (_uid select [11,17]);
};