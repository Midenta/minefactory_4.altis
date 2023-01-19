/*
 File: fn_seizeWeapon.sqf
 Author: Skalicon
 Modified by powerafro2
 Beschreibung: Entfernt Objekte auf dem Boden
 
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
if (playerSide != west) exitWith {hint "Du bist kein Polizist, zum Benutzen brauchst du eine Spezialausrüstung und eine Sonderausbildung !!"};
//if ((missionNamespace getVariable ["husky_inv_keycard",0]) isEqualTo 0 ) exitWith {["Du Retardo di Caprio hast keine KeyCard.", "Fehler", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};


_clear = nearestObjects [player,["weaponholder"],3];
_destroyed = 0;
for "_i" from 0 to count _clear - 1 
do {
	_destroyed = _destroyed + 1;
	deleteVehicle (_clear select _i);
	sleep 0.1;
};
titleText[format["%1 Sachen auf dem Boden wurden von den Ameisen gefressen.", _destroyed],"PLAIN"];

//diag_log _destroyed;