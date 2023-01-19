#include "..\..\script_macros.hpp"
/*
    Author : Yasar-S
    Details : Löscht die errichtete Sperrzone und gibt sie wieder frei
*/

if(side player in [civilian]) exitWith {hint "ZUGRIFF NICHT ERLAUBT."; /*["ZUGRIFF NICHT ERLAUBT.","error"] call husky_fnc_buildHint;*/ };
private["_makerUID","_myUID","_there"];


_there = missionNamespace getVariable ["sperrzone",false];
if(_there) then
{
	_makerUID = missionNamespace getVariable "uidsperrzone";
	_myUID = getPlayerUID player;
    private _copOnline = false;
    
    if(!(_myUID isEqualTo _makerUID)) then {
        {
            if((side _x) isEqualTo west && _makerUID isEqualTo (getPlayerUID _x)) exitWith {
                _copOnline = true;
            };
        }forEach playableUnits;
    } else {
        _copOnline = true;
    };
    
	if(_myUID isEqualTo _makerUID || !_copOnline) then
	{
		missionNamespace setVariable["sperrzone",false,true];
		missionNamespace setVariable["uidsperrzone","",true];
		deleteMarker "Sperrzone";
		deleteMarker "SperrzoneText";
		//_message = format["Die <t color='#FF0000'>SPERRZONE</t> wurde nun aufgehoben. Dieser Bereich kann nun wieder betreten werden. Wir bedanken uns für Ihr Verständnis !"];
		//[_message] call TON_fnc_cell_sperrzone;
		hint parseText format["Die <t color='#FF0000'>SPERRZONE</t> wurde nun aufgehoben. Dieser Bereich kann nun wieder betreten werden. Wir bedanken uns für Ihr Verständnis !"];

	}
	else
	{
		//["Der jenige der die Zone errichtet hat kann sie auch wieder beheben.","error"] call husky_fnc_buildHint;
		hint "Der jenige der die Zone errichtet hat kann sie auch wieder beheben.";
	};
}
else
{
	//["Es existiert keine Sperrzone.","error"] call husky_fnc_buildHint;
	hint "Es existiert keine Sperrzone.";
};