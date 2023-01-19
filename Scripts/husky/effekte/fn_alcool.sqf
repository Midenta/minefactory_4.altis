/*
    Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
//_curConfig = missionConfigFile >> "Max_Settings_EffetsEcran";
_temps_Commencement_min= 5;
_temps_Commencement_max= 30;
 
_duree_min= 30/(1-damage player);
_duree_max= 150/(1-damage player);
 
_equilbre_min= 0/(1-damage player);
_equilbre_max= 100/(1-damage player);
_equilibre_monte= 1/(1-damage player);
 
_flou_min= 0/(1-damage player);
_flou_max= 0.012/(1-damage player);
_flou_monte= 0.0001/(1-damage player);
 
_couleurs_min= 0/(1-damage player);
_couleurs_max= 0.8/(1-damage player);
_couleurs_monte= 0.0006/(1-damage player);
 
_frequence= 0.1;
_frequence_min= 0.1;
_frequence_max= 0.1;
_frequence_monte= 0;
    
effect_in_progress = true;
closeDialog 0;

_temps_Commencement=_temps_Commencement_min max random _temps_Commencement_max;
_duree=(_duree_min+round(random _duree_max));
_couleurs=0;
_flou=0;
_equilibre=0;
 
sleep _temps_Commencement;
 
[] spawn {
    player setVariable["consomation_alcool",((player getvariable["consomation_alcool",0])+1),true];
    sleep 600;
    player setVariable["consomation_alcool",((player getvariable["consomation_alcool",0])-1),true];
};
if (random(100)>50) then {
    husky_hunger = 100 min (husky_hunger + random(20));
    husky_thirst = 100 min (husky_thirst + random(40)); 

    if ((player getvariable["consomation_drogue",0]) > 10 ) then {	//alc bevor tod
        ["Du fühlst dich sehr schlecht ...", "Achtung", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
        player setVariable ["consomation_alcool",0,true];
        [] spawn {
            sleep 5;
            player setdamage 1;
        };
    };
};

"chromAberration" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;

for "_i" from 0 to round(_duree/2) do {
	if !(alive player) exitWith{"chromAberration" ppEffectAdjust [0,0,true];"chromAberration" ppEffectCommit 5;"radialBlur" ppEffectAdjust  [0,0,0,0];"radialBlur" ppEffectCommit 5;sleep 0.1;"chromAberration" ppEffectEnable false;"radialBlur" ppEffectEnable false;resetCamShake;effect_in_progress = false;1 fadeMusic 0;};
    _equilibre= _equilbre_min max (_equilbre_max min (_equilibre+random (_equilibre+_equilibre_monte)-random (_equilibre)));
    _flou= _flou_min max (_flou_max min (_flou+random (_flou+_flou_monte)-random (_flou)));
    _couleurs= _couleurs_min max (_couleurs_max min (_couleurs+random (_couleurs+_couleurs_monte)-random (_couleurs)));
    _frequence= _frequence_min max (_frequence_max min (_frequence+random (_frequence+_frequence_monte)-random (_frequence)));
    
    "chromAberration" ppEffectAdjust [random _couleurs,random _couleurs,true];
    "chromAberration" ppEffectCommit 1;
    "radialBlur" ppEffectAdjust  [random _flou,random _flou,_flou,_flou];
    "radialBlur" ppEffectCommit 1;
    addcamShake[random _equilibre, _duree_max, _frequence];
    
	sleep 1;
};
 
for "_i" from 0 to round(_duree/2) do {
	if !(alive player) exitWith{"chromAberration" ppEffectAdjust [0,0,true];"chromAberration" ppEffectCommit 5;"radialBlur" ppEffectAdjust  [0,0,0,0];"radialBlur" ppEffectCommit 5;sleep 0.1;"chromAberration" ppEffectEnable false;"radialBlur" ppEffectEnable false;resetCamShake;effect_in_progress = false;};
    _equilibre= _equilbre_min max (_equilbre_max min (_equilibre+random (_equilibre)-random (_equilibre+_equilibre_monte)));
    _flou= _flou_min max (_flou_max min (_flou+random (_flou)-random (_flou+_flou_monte)));
    _couleurs= _couleurs_min max (_couleurs_max min (_couleurs+random (_couleurs)-random (_couleurs+_couleurs_monte)));
    _frequence= _frequence_min max (_frequence_max min (_frequence+random (_frequence)-random (_frequence+_frequence_monte)));
    _temps_equilibre=1/_frequence;

    "chromAberration" ppEffectAdjust [random _couleurs,random _couleurs,true];
    "chromAberration" ppEffectCommit 1;
    "radialBlur" ppEffectAdjust  [random _flou,random _flou,_flou,_flou];
    "radialBlur" ppEffectCommit 1;
    addcamShake[random _equilibre, 10*_temps_equilibre, _frequence];
    
	sleep 1;
};

"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;

effect_in_progress = false;