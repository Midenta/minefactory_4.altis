#include "..\..\script_macros.hpp"
/*
	fn_tieingb.sqf

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

params [["_civ", Objnull, [Objnull]]];
if(isNull _civ) exitWith {};

//Monitor excessive blindfolding
[] spawn
{
	private["_time"];
	while {true} do
	{
		uisleep 5;
		
		if(!(player getVariable["blindfolded", false])) exitWith {};

		if(!(player getVariable["restrained", false])) exitwith {
			player setVariable["blindfolded", nil, true];
			hint "Du hast es geschafft, die Augenbinde zu entfernen!";
		};

		if(!([west,getPos player,50] call husky_fnc_nearUnits) && !([civilian,getPos player,50] call husky_fnc_nearUnits) && (player getVariable["blindfolded", false]) && isNull objectParent player) exitWith {

			player setVariable["blindfolded", nil, true];
			"colorCorrections" ppEffectAdjust [1, 1, 0.7, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.01],  [0, 0, 0, 0.0]]; 
			"colorCorrections" ppEffectCommit 3;
			"colorCorrections" ppEffectEnable false;	
			hint "Du hast es geschafft, die Augenbinde zu entfernen!";
		};
	};
};

cutText ["Entfernt Augenbinde!","PLAIN",2];	

cutText["Du hast verbundene Augen.","PLAIN",0,true];

"colorCorrections" ppEffectEnable true;			
"colorCorrections" ppEffectAdjust [1, 1, 0.7, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.01],  [0, 0, 0, 0.0]];  
"colorCorrections" ppEffectCommit 0.3;

removeGoggles player;
player addGoggles "G_Blindfold_01_black_F";

[] spawn {
	while {true} do
	{	
		if(!(player getvariable ["blindfolded", false])) exitWith {
			cutText ["Du hast die Augen nicht mehr verbunden.","PLAIN",2];	
			player setVariable ["blindfolded", nil, true];
		};
		/*if(deadPlayer) exitWith
		{
			cutText ["Du hast die Augen nicht mehr verbunden.","PLAIN",2];	
			player setVariable ["blindfolded", nil, true];
		};
		*/
		if(vehicle player != player) then
		{
			if(driver (vehicle player) == player) then {
				player action["eject",vehicle player]
			};
		};
		uiSleep 1;
		"colorCorrections" ppEffectEnable true;			
		"colorCorrections" ppEffectAdjust [1, 1, 0.7, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.01],  [0, 0, 0, 0.0]];  
		"colorCorrections" ppEffectCommit 0.3;
	};

	"colorCorrections" ppEffectAdjust [1, 1, 0.7, [0.0, 0.0, 0.0, 0.0], [1, 1, 1, 0.01],  [0, 0, 0, 0.0]]; 
	"colorCorrections" ppEffectCommit 3;
	"colorCorrections" ppEffectEnable false;	

	removeGoggles player;
	/*if(!deadPlayer) then
	{
		player switchMove "AmovPercMstpSlowWrflDnon_SaluteIn";
		player setVariable ["blindfolded", nil, true];
		detach player;
	};
	*/
};