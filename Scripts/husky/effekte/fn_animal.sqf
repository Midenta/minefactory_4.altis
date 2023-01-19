/*
Author: PPEffects : AlaskaVet | ChickenPart : Joe Barbaro
///PPEffect von ALTIShuskyRPG (https://www.altishuskyrpg.com/topic/2257-tutorial-effects-for-heroin/)\\\
Description: Ein Drug effect Script

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
	private _RandomAnimal = selectRandom ["Cock_white_F","Rabbit_F","Alsatian_Random_F","Ornate_random_F"];
	"chromAberration" ppEffectEnable true; 
	"radialBlur" ppEffectEnable true; 
	enableCamShake true; 
	
	for "_i" from 0 to 20 do  { 
		"chromAberration" ppEffectAdjust [random 0.25,random 0.25,true]; 
		"chromAberration" ppEffectCommit 1; 
		"radialBlur" ppEffectAdjust [random 0.02,random 0.02,0.15,0.15]; 
		"radialBlur" ppEffectCommit 1; 
		addcamShake[random 3, 1, random 3]; 
		sleep 1; 
	}; 
	
	//Stop effects 
	"chromAberration" ppEffectAdjust [0,0,true]; 
	"chromAberration" ppEffectCommit 5; 
	"radialBlur" ppEffectAdjust [0,0,0,0]; 
	"radialBlur" ppEffectCommit 5; 
	sleep 5; 
	
	//Deactivate ppEffects 
	"chromAberration" ppEffectEnable false; 
	"radialBlur" ppEffectEnable false; 
	resetCamShake; 
	
	//Start my Scriptpart :D 
	player setUnconscious true; 
	5 cutText ["","BLACK OUT"]; 
	sleep 2; 
	16 cutText ["Was passiert jetzt?! hihi luul ;-)","PLAIN"]; 
	sleep 5; 
	
	private _player = player; 
	_petdrug = group ANIMAL createUnit [_RandomAnimal , position player, [], 0, "FORM"]; 
	16 cutText ["Alter das Zeug knallt ja mies... WTF :-D","Plain"]; 
	selectPlayer _petdrug; 
	//player allowDamage false; 
	//_petdrug allowDamage false; 
	5 cutText ["","BLACK IN"]; 
	sleep 120; 
	selectPlayer _player; 
	player setUnconscious false; 
	player allowDamage true; 
	16 cutText ["Was ein krasser Trip :D... Nochmal...","Plain"]; 
	_petdrug setObjectTextureGlobal [0,"#(rgb,8,8,3)color(1,0,0,1)"]; 
	sleep 30; 
	
	private _fire = createVehicle ["test_EmptyObjectForFireBig", position _petdrug, [], 0, "CAN_COLLIDE"]; 
	sleep 2; 
	deleteVehicle _petdrug; 
	deleteVehicle _fire;