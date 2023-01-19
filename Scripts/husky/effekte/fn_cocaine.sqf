/*
    Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

_temps_Commencement_min= 1;
_temps_Commencement_max= 10;
 
_duree_min= 60/(1-damage player);
_duree_max= 600/(1-damage player);
 
_equilbre_min= 0/(1-damage player);
_equilbre_max= 200/(1-damage player);
_equilibre_monte= 2/(1-damage player);
 
_flou_min= 0.1/(1-damage player);
_flou_max= 0.025/(1-damage player);
_flou_monte= 0.0008/(1-damage player);
 
_couleurs_min= 0/(1-damage player);
_couleurs_max= 0.25/(1-damage player);
_couleurs_monte= 0.002/(1-damage player);
 
_frequence= 1;
_frequence_min= 0.5;
_frequence_max= 5;
_frequence_monte= 0.01;

closeDialog 0;

_temps_Commencement=_temps_Commencement_min max random _temps_Commencement_max;
_duree=(_duree_min+round(random _duree_max));
_temps_equilibre=1/_frequence;
_couleurs=0;
_flou=0;
_equilibre=0;

sleep _temps_Commencement;

[] spawn {
    player setVariable["consomation_drogue",((player getvariable["consomation_drogue",0])+1),true];
    sleep 1800;
    player setVariable["consomation_drogue",((player getvariable["consomation_drogue",0])-1),true];
};
[] spawn {
    titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
    player enableFatigue false;
    sleep 180;
    player enableFatigue true;
};
if (random(100)>50) then {
    if ((player getvariable["consomation_drogue",0]) > 5 ) then {	//Drogen bevor tod
        ["Du fühlst dich sehr schlecht ...", "Achtung", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
        player setVariable["consomation_drogue",0,true];
        [] spawn {
            sleep 5;
            player setdamage 1;
        };
    };
};


if !(missionNamespace getVariable ["effect_in_progress",false]) then {

        playSound "cocaine";

    effect_in_progress = true;
};

"chromAberration" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;

for "_i" from 0 to round(_duree/2) do 
{
if !(alive player) exitWith{"chromAberration" ppEffectAdjust [0,0,true];"chromAberration" ppEffectCommit 5;"radialBlur" ppEffectAdjust  [0,0,0,0];"radialBlur" ppEffectCommit 5;sleep 0.1;"chromAberration" ppEffectEnable false;"radialBlur" ppEffectEnable false;resetCamShake;effect_in_progress = false;};
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
if !(alive player) exitWith{"chromAberration" ppEffectAdjust [0,0,true];"chromAberration" ppEffectCommit 5;"radialBlur" ppEffectAdjust  [0,0,0,0];"radialBlur" ppEffectCommit 5;sleep 0.1;"chromAberration" ppEffectEnable false;"radialBlur" ppEffectEnable false;resetCamShake;effect_in_progress = false;1 fadeMusic 0;};

    _equilibre= _equilbre_min max (_equilbre_max min (_equilibre+random (_equilibre)-random (_equilibre+_equilibre_monte)));
    _flou= _flou_min max (_flou_max min (_flou+random (_flou)-random (_flou+_flou_monte)));
    _couleurs= _couleurs_min max (_couleurs_max min (_couleurs+random (_couleurs)-random (_couleurs+_couleurs_monte)));
    _frequence= _frequence_min max (_frequence_max min (_frequence+random (_frequence)-random (_frequence+_frequence_monte)));
    
    "chromAberration" ppEffectAdjust [random _couleurs,random _couleurs,true];
    "chromAberration" ppEffectCommit 1;
    "radialBlur" ppEffectAdjust  [random _flou,random _flou,_flou,_flou];
    "radialBlur" ppEffectCommit 1;
    addcamShake[random _equilibre, _duree_max, _frequence];
    
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

player setvariable["consomation_drogue_max",(player getvariable["consomation_drogue",0]) max (player getvariable["consomation_drogue_max",0])];
[(abs((player getvariable["consomation_drogue_max",0])-(player getvariable["consomation_drogue",0]))+1)] spawn husky_fnc_tremblements;
