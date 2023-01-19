/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

if (!isNull objectParent player) exitWith {};
private "_tazered";
_tazered = "Land_Can_V3_F" createVehicleLocal [0,0,0];
_tazered setMass 1e10;
_tazered attachTo [player, [0,0,0], "Spine3"];
_tazered setVelocity [0,0,6];
detach _tazered;
0 = _tazered spawn {
	deleteVehicle _this;
};