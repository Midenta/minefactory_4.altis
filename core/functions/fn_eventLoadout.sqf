#include "..\..\script_macros.hpp"

/*
    File: fn_copLoadout.sqf
    Author: Bryan "Tonic" Boardwine
    Edited: Itsyuka

    Description:
    Loads the cops out with the default gear.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
	
	
	this addAction["Event Loadout A",husky_fnc_eventLoadout,"",0,false,false,"","",4];
*/
private["_handle"];
_handle = [] spawn husky_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

	player addHeadgear "H_Booniehat_oli";
/*	player addUniform "U_O_R_Gorka_01_camo_F";
	player addVest "V_TacVest_camo";
	
	player addItem "ItemMap";
	player assignItem "ItemMap";
	player addItem "ItemGPS";
	player assignItem "ItemGPS";
	player addItem "ItemRadio";
	player assignItem "ItemRadio";
	
	
	player addWeapon "srifle_DMR_03_khaki_F";
	player addWeaponItem ["srifle_DMR_03_khaki_F", "optic_Arco_lush_F"];
	player addWeaponItem ["srifle_DMR_03_khaki_F", "acc_flashlight"];
	player addWeaponItem ["srifle_DMR_03_khaki_F", "20Rnd_762x51_Mag"];
	player addMagazine "20Rnd_762x51_Mag";
	player addMagazine "20Rnd_762x51_Mag";
	player addMagazine "20Rnd_762x51_Mag";
	player addMagazine "20Rnd_762x51_Mag";
    player addMagazine "20Rnd_762x51_Mag";
    player addMagazine "20Rnd_762x51_Mag";
    player addMagazine "20Rnd_762x51_Mag";
    player addMagazine "20Rnd_762x51_Mag";
    player addMagazine "20Rnd_762x51_Mag";
    player addMagazine "20Rnd_762x51_Mag";
    player addMagazine "20Rnd_762x51_Mag";
    player addMagazine "20Rnd_762x51_Mag";
    player addMagazine "20Rnd_762x51_Mag";
	*/

[getPlayerUID player, "Eventloudout", format ["%1 - %2 hat das Evenloudout genutzt. Bankkonto: %3 €  Bargeld: %4 €",profileName,(getPlayerUID player),[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
