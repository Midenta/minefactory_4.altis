/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

if (isNil "stig_inDamageZone")then{stig_inDamageZone = false; call husky_fnc_damagezone;};
if (stig_inDamageZone) exitWith {};
stig_inDamageZone = true;
player setDamage 0;
player spawn {
	//while {alive player} do {
	//while {stig_inDamageZone && {player isEqualTo _this} && {alive player}} do {
	while {stig_inDamageZone && {alive player}} do {
		if (!(player inArea damagezonetrigger)) exitWith { stig_inDamageZone = false; };
		private _damage = 0.05;
		/*switch (true) do {
			case ((headgear player) == "H_ShemagOpen_khk"): { _damage = 0.2;};
			case ((headgear player) == "H_CrewHelmetHeli_B"): { _damage = 0.1;};
			case ((typeOf(vehicle player)) in ["I_MRAP_03_F","B_MRAP_01_F","O_MRAP_02_F","B_Heli_Light_01_F"]): { _damage = 0.0;};
		};*/
		player setDamage ((damage player) + _damage);
		hint "Du bist im verseuchten Gebiet!";
		sleep 1;
		
			/*_veh = vehicle player;
		if(local _veh) then {
			_veh setDamage 0;
			_veh allowDamage false;
		};*/
	};
	stig_inDamageZone = false;
	
};



/*
Bei Aktivierung

call husky_fnc_damagezone; hintSilent "Du bist im verseuchten Gebiet! Hoffentlich hast du ausreichende Schutzkleidung dabei...";

Deaktivierung
hintSilent "Sie sind vorerst wieder in Sicherheit";





damagezone_Warnung

keine

jeder spieler

vorhanden

wiederholbar

(player in thisList) or ((vehicle player) in thisList)

hintSilent "Noch 100 m bis zum verseuchten Gebiet! denken Sie an Ihre Ausr�stung";

hintSilent "Sie sind wieder in sicherer Entfernung";






damagezonetrigger


keine

jeder spieler

vorhanden

wiederholbar

(player in thisList) or ((vehicle player) in thisList)

call husky_fnc_damagezone; hintSilent "Du bist im verseuchten Gebiet! Hoffentlich hast du ausreichende Schutzkleidung dabei...";

hintSilent "Sie sind vorerst wieder in Sicherheit";
*/