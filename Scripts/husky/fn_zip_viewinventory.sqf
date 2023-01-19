/*
  File: fn_zip_viewinventory.sqf
  Desciption: Give's robbers the ability to pat down the player they have captured.
  
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
if (!params [["_unit", objNull, [objNull]]]) exitWith {
};

    player action ['Gear', _unit];