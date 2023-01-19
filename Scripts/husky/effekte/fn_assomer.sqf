/*
    Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
//_curConfig = missionConfigFile >> "Max_Settings_EffetsEcran";
//CONFIGURATION DES VARIABLES
_temps_Commencement_min= 0.1;
_temps_Commencement_max= 0.1;
 
_duree_min= 5;
_duree_max= 5;
 
_equilbre_min= 20;
_equilbre_max= 20;
_equilibre_monte= 0;
 
_flou_min= 0;
_flou_max= 10;
_flou_monte= 0.1;
 
_couleurs_min= 0;
_couleurs_max= 0;
_couleurs_monte= 0;
 
_frequence= 0.5;
_frequence_min= 0.5;
_frequence_max= 0.5;
_frequence_monte= 0;

// FERMER L'INVENTAIRE
closeDialog 0;
 
// INITIALISATION DES VARIABLES
_temps_Commencement=_temps_Commencement_min max random _temps_Commencement_max;
_duree=(_duree_min+round(random _duree_max));
_couleurs=0;
_flou=0;
_equilibre=0;
 
// ATTENTE DE LANCEMENT
sleep _temps_Commencement;
 
//ACTIVATION DES EFFETS
"chromAberration" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;

//PHASE DE MONTEE
for "_i" from 0 to _duree do 
{
//RECCURRENCE 
    _equilibre= _equilbre_min max (_equilbre_max min (_equilibre+random (_equilibre+_equilibre_monte)-random (_equilibre)));
    _flou= _flou_min max (_flou_max min (_flou+random (_flou+_flou_monte)-random (_flou)));
    _couleurs= _couleurs_min max (_couleurs_max min (_couleurs+random (_couleurs+_couleurs_monte)-random (_couleurs)));
    _frequence= _frequence_min max (_frequence_max min (_frequence+random (_frequence+_frequence_monte)-random (_frequence)));
    
//EFFETS
    "chromAberration" ppEffectAdjust [_couleurs,random _couleurs,true];
    "chromAberration" ppEffectCommit 1;
    "radialBlur" ppEffectAdjust  [random _flou,random _flou,_flou,_flou];
    "radialBlur" ppEffectCommit 1;
    addcamShake[_equilibre, _duree_max, _frequence];
    
sleep 1;
};

//ARRET DES EFFETS
"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;
 
//DESACTIVATION DES EFFETS
"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;