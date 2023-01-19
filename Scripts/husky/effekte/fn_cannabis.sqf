/*
    Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

_temps_Commencement_min = 5;
_temps_Commencement_max = 30;

_duree_min = 60;
_duree_max = 600;
 
_equilbre_min= 0/(1-damage player);
_equilbre_max= 50/(1-damage player);
_equilibre_monte= 5/(1-damage player);
 
_flou_min= 0/(1-damage player);
_flou_max= 0.005/(1-damage player);
_flou_monte= 0.0005/(1-damage player);
 
_couleurs_min= 0/(1-damage player);
_couleurs_max= 1/(1-damage player);
_couleurs_monte= 0.05/(1-damage player);
 
_frequence= 0.1;
_frequence_min= 0.01;
_frequence_max= 0.4;
_frequence_monte= 0.005;

closeDialog 0;

_temps_Commencement=_temps_Commencement_min max random _temps_Commencement_max;
_duree=(_duree_min+round(random _duree_max));
_temps_equilibre=1/_frequence;
_couleurs= 0;
_flou= 0;
_equilibre= 0;


disableSerialization;
"progressBar" cutRsc ["husky_progress","PLAIN"];
_ui = uiNamespace getVariable "husky_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_upp = "In Bearbeitung...";
_pgText ctrlSetText format ["%2 (0%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0;
 
for "_i" from 0 to 1 step 0 do {
    sleep  0.05;
    _cP = _cP + 0.01;
    _progress progressSetPosition _cP;
    _pgText ctrlSetText format ["%3 (%1%2)...",round(_cP * 100),"%",_upp];
    if (_cP >= 0.99) exitWith {};
};
"progressBar" cutText ["","PLAIN"]; 

sleep _temps_Commencement;

[] spawn {
    _nb = random 20;
    for "_i" from 1 to _nb do {
		if !(alive player) exitWith{};
        _smoke = "SmokeShellGreen" createVehicle [0,0,0];
        sleep 5;
        _smoke attachTo [player, [0,0,0],"head"];
        sleep random [0.1,0.15,0.3];
        deletevehicle _smoke;
        sleep (random 10);
    };
};

[] spawn {
    player setVariable["consomation_drogue",((player getvariable["consomation_drogue",0])+1),true];
    sleep 1800;
    player setVariable["consomation_drogue",((player getvariable["consomation_drogue",0])-1),true];
};
if (random(100) > 50) then {
    husky_hunger = 100;
    husky_thirst = 100;        

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

        playSound "cannabis";

    effect_in_progress = true;
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
    addcamShake [random _equilibre,_duree_max, _frequence];
    
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
    addcamShake [random _equilibre, _duree_max, _frequence];
    
    sleep 1;
};

"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 0.1;

"chromAberration" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;

effect_in_progress = false;

player setvariable["consomation_drogue_max",(player getvariable["consomation_drogue",0]) max (player getvariable["consomation_drogue_max",0])];
[(abs((player getvariable["consomation_drogue_max",0])-(player getvariable["consomation_drogue",0]))+1)] spawn husky_fnc_tremblements;
