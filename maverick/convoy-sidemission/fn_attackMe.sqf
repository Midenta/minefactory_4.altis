scriptName "fn_attackMe";
/*--------------------------------------------------------------------------
    Author:		Bytex Digital
    Website:	https://bytex.digital

    You're not allowed to use this file without permission from the author!
---------------------------------------------------------------------------*/
#define __filename "fn_attackMe.sqf"

_time = getNumber(missionConfigFile >> "Maverick_ConvoySidemission" >> "Config" >> "MakePlayersHostileFor");
hint format["Achtung! Sie haben einen Konvoi angegriffen. Sie sind für %1 Minuten allen Spielern gegenüber feindlich eingestellt. Sie können Fahrzeuge von Freunden nicht betreten, sondern nur alleine fahren.",_time / 60];
mav_convoy_attackme_scriptthread = _time spawn {
	while {rating player > -100000} do {
		player addRating -50000000000;
	};
	sleep _this;
	while {rating player < 1000000} do {
		player addRating 50000000000;
	};
	hint "Sie sind nicht mehr feindselig.";
	mav_convoy_attackme_scriptthread = nil;
};

player addEventHandler ["Killed",{
	//diag_log "Unit has died, not hostile to convoy anymore";
	if (!isNil "mav_convoy_attackme_scriptthread") then {
		terminate mav_convoy_attackme_scriptthread;
		mav_convoy_attackme_scriptthread = nil;
	};
}];