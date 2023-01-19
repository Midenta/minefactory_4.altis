_reward_days = param [1, -1, [0]];
//diag_log "1";
//diag_log _reward_days;
waitUntil {sleep 0.2; !husky_firstSpawn};
//diag_log "2";
sleep 10;
//diag_log "4";
private _lootboxrandom = selectRandom ["lootboxnormal","lootboxepic","lootboxlegend"];
private _amount = selectRandom [1,2];
private _displayName = getText(missionConfigFile >> "VirtualItems" >> _lootboxrandom >> "displayName");
private "_action";
_action = [format ["<t size='1' color='#0095E6' font='PuristaBold' align='center' >Tägliche Loot Box</t><br/><t size='0.8' color='#ffffff' font='PuristaBold' align='center' >Danke das du jetzt schon %1 mal auf unseren Server vorbei schaust viel spaß.</t><br/><br/><t size='0.8' color='#ffffff' font='PuristaBold' align='center' >Hier ist deine Tägliche Loot Box</t><br/><t size='0.8' color='#B00B69' font='PuristaBold' align='center' >Loot Box: %2 | Anzahl: %3</t>",_reward_days,(localize _displayname),_amount], "Danke für's wieder kommen", true, false] call BIS_fnc_guiMessage;

if(_action) then {
[true,_lootboxrandom,_amount] call husky_fnc_handleInv;
hint "Viel Spaß mit deiner Belohnung";
};
