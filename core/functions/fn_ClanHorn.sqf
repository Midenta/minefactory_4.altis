#include "..\..\script_macros.hpp"
/*

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

	https://native-network.net/forum/thread/13549-tutorial-clan-hupen/
*/

private ["_veh"];
_veh = vehicle player;

//if (!(license_civ_ponnygang or license_civ_husky)) exitwith {["Du besitzt keine Clan Sirene", "Achtung", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};

if (license_civ_ponnygang) then { // Clan Hupe 1
 if (_veh getVariable ["Clan_Siren",false]) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du darfst die Clan Hupe nicht Spammen!</t>";};
 _veh setVariable ["Clan_Siren",true,true];
 titleText ["PONNY CLAN SIRENE","PLAIN"];titleFadeOut 2;
 [_veh,"ponnygang",100,1] remoteExecCall ["husky_fnc_say3D",0];
 sleep 120;
 _veh setVariable ["Clan_Siren",false,true];
};

if (license_civ_baum) then { // Clan Hupe 2
 if (_veh getVariable ["Clan_Siren",false]) exitWith {hint parseText "<t underline='true' size='1.8' color='#ff0000'>Warnung</t><br /><t size='1.5' color='#ffffff'>Du darfst die Clan Hupe nicht Spammen!</t>";};
 _veh setVariable ["Clan_Siren",true,true];
 titleText ["BAUM CLAN SIRENE","PLAIN"];titleFadeOut 2;
 [_veh,"baumgang",100,1] remoteExecCall ["husky_fnc_say3D",0];
 sleep 120;
 _veh setVariable ["Clan_Siren",false,true];
};














/*
if (license_civ_ponnygang) then { // Clan Hupe 1
 if (_veh getVariable ["Clan_Siren",false]) exitWith {hint "Du darfst die Clan Hupe nicht Spammen!"};
 _veh setVariable ["Clan_Siren",true,true];
 titleText ["Du hast deinen Clan CALL gezündet (DEIN CLAN NAME)","PLAIN"];
 [_veh,"ponnygang",50,1] remoteExecCall ["husky_fnc_say3D",0];
 sleep 60;
 _veh setVariable ["Clan_Siren",false,true];
};



private ["_veh"];
_veh = vehicle player;

 if (_veh getVariable ["siren6",false]) exitWith {["Du darfst die Sirene nicht Spammen!", "Achtung", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;};

 _veh setVariable ["siren6",true,true];
	[_veh,"ponnygang"] remoteExec ["husky_fnc_say3D",RANY];
	titleText ["Warnung AN","PLAIN"];titleFadeOut 2;
 sleep 20;
	titleText ["Warnung AUS","PLAIN"];titleFadeOut 2;
 sleep 40;
	_veh setVariable ["siren6",false,true];
	//titleText ["Warnung AUS","PLAIN"];titleFadeOut 2;

	*/
