#include "..\..\script_macros.hpp"
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

//_civ_spawn_musik = "";
/*_rad = round(random 1);

	switch(true) do {
		case (_rad == 1) : {
           _civ_spawn_musik == "ServerIntroCiv_normal";
		   diag_log _rad;
        };
		case (_rad == 0.1) : {
           _civ_spawn_musik == "ServerIntroCiv_boost";
		   diag_log _rad;
        };
		diag_log _civ_spawn_musik;
	};
*/
	_civ_spawn_musik = ["ServerIntroCiv_normal"];	//,"ServerIntroCiv_boost"

	//Musik beim 1. Spawn
	//MEDIC Intro
	if ( playerSide isEqualTo independent ) then {
		playSound   "ServerIntroMed";
	};
	//ADAC Intro
	if ( playerSide isEqualTo east	) then {
		playSound   "ServerIntroADAC";
	};
	//COP Intro
	if ( playerSide isEqualTo west ) then {
		playSound   "ServerIntroCop";
	};
	//ZIV Intro
	if ( playerSide isEqualTo civilian	) then {
		//playSound   "ServerIntroCiv";
		playSound (selectRandom _civ_spawn_musik);
	};