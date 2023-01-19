#include "..\..\script_macros.hpp"
/*
    Author : Yasar-S
    Details : Erlaubt den Polizisten eine Sperrzone zu errichten.
*/

_x = _this select 0;
_y = _this select 1;

_dis = sliderPosition 5002;
_ort = ctrlText 5004;
onMapSingleClick "";

if(_ort == "") exitWith {
	//["<t color='#FF0000'>Fehler !</t><br/>Ich kann mit solchen Informationen <t color='#FF0000'>KEINE</t> Sperrzone einrichten !","error"] call husky_fnc_buildHint;
	hint parseText format ["<t color='#FF0000'>Fehler !</t><br/>Ich kann mit solchen Informationen <t color='#FF0000'>KEINE</t> Sperrzone einrichten !"];
};

_uid = getPlayerUID player;
if(missionNamespace getVariable ["sperrzone",false]) exitWith {
    //["Es wurde bereits eine Sperrzone errichtet !","error"] call husky_fnc_buildHint;
	hint "Es wurde bereits eine Sperrzone errichtet !";
};
missionNamespace setVariable ["sperrzone",true,true];
missionNamespace setVariable ["uidsperrzone",_uid,true];


_sperrzonenmarker = createMarker ["Sperrzone",[_x, _y, 0]];
_sperrzonenmarker1 = createMarker ["SperrzoneText",[_x, _y, 0]];

_sperrzonenmarker setMarkerPos [_x, _y, 0];
_sperrzonenmarker1 setMarkerPos [_x, _y, 0];

openMap[false, false];
//_message = format["Es wurde eine <t color='#FF0000'>SPERRZONE</t> im Bereich <t color='#FF0000'>%1</t> eingerichtet. Der Bereich hat ein Druchmesser von <t color='#FF0000'>%2</t>m und bitten sie es nicht zu betreten da es zum Schusswechsel kommen könnte.",_ort,[_dis] call husky_fnc_numberText];
//[_message,_ort] call TON_fnc_cell_sperrzone;

hint parseText format["Es wurde eine <t color='#FF0000'>SPERRZONE</t> im Bereich <t color='#FF0000'>%1</t> eingerichtet. Der Bereich hat ein Druchmesser von <t color='#FF0000'>%2</t>m und bitten sie es nicht zu betreten da es zum Schusswechsel kommen könnte.",_ort,[_dis] call husky_fnc_numberText];


_sperrzonenmarker setMarkerColor "ColorYellow";
_sperrzonenmarker setMarkerShape "ELLIPSE";
_sperrzonenmarker setMarkerSize [_dis, _dis];

_sperrzonenmarker1 setMarkerColor "ColorRed";
_sperrzonenmarker1 setMarkerText "Sperrzone";
_sperrzonenmarker1 setMarkerType "hd_warning";

/*
private _text = round (( player distance2D (getMarkerPos ( format ["stig_sz_markerA%1",_this]))) - ((getMarkerSize ( format ["stig_sz_markerA%1",_this])) select 0 ) );
if(_text < 0)then{
	_text = "<br/><t color='#FF0000'>WARNUNG: Du bist in der Sperrzone!</t>"
}else{
	_text = format ["<br/>Diese liegt %1 Meter von dir entfernt.",_text];
};

hint parseText format ["<t size='2'><t color='#0026FF'>Sperrzone</t></t><br/>Die Einsatzleitung hat eine neue Sperrzone ausgerufen.<br/>%1 <br/><br/>Für weitere Informationen, siehe auf deine Karte.",_text];
*/