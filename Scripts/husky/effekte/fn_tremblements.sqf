/*
    Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
_value = param [0,0,[0]];
if (_value isEqualTo 0) exitWith {};

_temps_Commencement_min= 300;
_temps_Commencement_max= 600;
 
_duree_min= 60/(1-damage player)*_value;
_duree_max= 300/(1-damage player)*_value;
 
_equilbre_min= 0/(1-damage player)*_value;
_equilbre_max= 10/(1-damage player)*_value;
_equilibre_monte= 0.1/(1-damage player)*_value;
 
_flou_min= 0/(1-damage player)*_value;
_flou_max= 0.0001/(1-damage player)*_value;
_flou_monte= 0.00001/(1-damage player)*_value;
 
_couleurs_min= 0/(1-damage player)*_value;
_couleurs_max= 0.01/(1-damage player)*_value;
_couleurs_monte= 0.001/(1-damage player)*_value;
 
_frequence= 0.1*_value;
_frequence_min= 1*_value;
_frequence_max= 3*_value;
_frequence_monte= 0.1*_value;

closeDialog 0;

_temps_Commencement=_temps_Commencement_min max random _temps_Commencement_max;

_duree=(_duree_min+round(random _duree_max));
_temps_equilibre=1/_frequence;
_couleurs=0;
_flou=0;
_equilibre=0;

sleep _temps_Commencement;

_consomation_drogue=(player getvariable["consomation_drogue",0]);

["Du fühlst dich abhänig ...", "Achtung", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;

for "_i" from 0 to round(_duree/2) do 
{
    if (_consomation_drogue!=(player getvariable["consomation_drogue",0])) exitWith{};
    _equilibre= _equilbre_min max (_equilbre_max min (_equilibre+random (_equilibre+_equilibre_monte)-random (_equilibre)));
    _frequence= _frequence_min max (_frequence_max min (_frequence+random (_frequence+_frequence_monte)-random (_frequence)));
    
    addcamShake[random _equilibre, _duree_max, _frequence];
    
    if (_i%5==0) then {call BIS_fnc_fatigueEffect;};
    player setfatigue ((getFatigue player)-0.05);
    player setStamina ((getStamina player)-0.05);
    
    sleep 1;
};

for "_i" from 0 to round(_duree/2) do 
{
    if (_consomation_drogue!=(player getvariable["consomation_drogue",0])) exitWith{};  
    _equilibre= _equilbre_min max (_equilbre_max min (_equilibre+random (_equilibre)-random (_equilibre+_equilibre_monte)));
    _frequence= _frequence_min max (_frequence_max min (_frequence+random (_frequence)-random (_frequence+_frequence_monte)));
    
    addcamShake[random _equilibre, _duree_max, _frequence];
    
    if (_i%5==0) then {call BIS_fnc_fatigueEffect;};
    player setfatigue ((getFatigue player)-0.01);
    player setStamina ((getStamina player)-0.01);
    
    sleep 1;
};

resetCamShake;

["Du beginnst, Deinen Mangel zu kontrollieren ...", "Achtung", true, [1, 1, 1, 1], [1,0,0,1]] spawn husky_fnc_createNotification;
