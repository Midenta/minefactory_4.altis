/*
	Thieves

	Universe-Community.de

	Diese Mission ist bearbeitet von dem Development Team von Universe-Community.de 
	Diese Mission darf von keinem anderen genutzt werden außer von Universe-Community.de!
*/

//if (isserver) exitwith {};

"filmGrain" ppEffectEnable true;
"filmGrain" ppEffectAdjust [0.02, 1, 1, 0.1, 1, false];
"filmGrain" ppEffectCommit 5;

setviewdistance 1000;
/*bis_fog = 0.7;

setviewdistance 1000;
0 setovercast 0.9;
0 setrain 1;
0 setfog 0.8;
0 setfog bis_fog;
*/
[] spawn {
_delay = 3;
sleep 0.01;
while {true} do {
_delay setovercast 0.9;
_delay setrain 1;
//_delay setfog bis_fog;
sleep _delay ;
};
};
/*
//--- Bodendunst
[] spawn {
waituntil {isplayer player};
setwind [0.201112,0.204166,true];
while {true} do {
_ran = ceil random 5;
_obj = vehicle player;
_pos = position _obj;

//--- BodenDunst
setwind [0.201112*2,0.204166*2,false];
_velocity = [random 10,random 10,-1];
_color = [1.0, 0.9, 0.8];
_alpha = 0.02 + random 0.02;
_ps = "#particlesource" createVehicleLocal _pos;
_ps setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8,0], "", "Billboard", 1, 7, [0, 0, -6], _velocity, 1, 1.275, 1, 0, [9], [_color + [0], _color + [_alpha], _color + [0]], [1000], 1, 0, "", "", _obj];
_ps setParticleRandom [3, [30, 30, 0], [0, 0, 0], 1, 0, [0, 0, 0, 0.01], 0, 0];
_ps setParticleCircle [0.1, [0, 0, 0]];
_ps setDropInterval 0.01;

sleep (random 0.4);
deletevehicle _ps;
_delay = 10 + random 20;
sleep _delay;

};
};*/

//Schnee

setWind [0, -5, true];

_obj = player;
_pos = position (vehicle _obj);

_d = 15;
_h = 12;
_h1 = 8;
_h2 = 4;
_density = 20000;


_fog1 = "#particlesource" createVehicleLocal _pos;
_fog1 setParticleParams [
["\A3\data_f\ParticleEffects\Universal\Universal.p3d" , 16, 12, 13, 0], "", "Billboard", 1, 10,
[0, 0, -6], [0, 0, 0], 1, 1.275, 1, 0,
[7,6], [[1, 1, 1, 0], [1, 1, 1, 0.04], [1, 1, 1, 0]], [1000], 1, 0, "", "", _obj];
_fog1 setParticleRandom [3, [55, 55, 0.2], [0, 0, -0.1], 2, 0.45, [0, 0, 0, 0.1], 0, 0];
_fog1 setParticleCircle [0.001, [0, 0, -0.12]];
_fog1 setDropInterval 1;

_fog2 = "#particlesource" createVehicleLocal _pos;
_fog2 setParticleParams [
["\A3\data_f\ParticleEffects\Universal\Universal.p3d" , 16, 12, 13, 0], "", "Billboard", 1, 10,
[0, 0, -6], [0, 0, 0], 1, 1.275, 1, 0,
[7,6], [[1, 1, 1, 0], [1, 1, 1, 0.04], [1, 1, 1, 0]], [1000], 1, 0, "", "", _obj];
_fog2 setParticleRandom [3, [55, 55, 0.2], [0, 0, -0.1], 2, 0.45, [0, 0, 0, 0.1], 0, 0];
_fog2 setParticleCircle [0.001, [0, 0, -0.12]];
_fog2 setDropInterval 1;

_fog3 = "#particlesource" createVehicleLocal _pos;
_fog3 setParticleParams [
["\A3\data_f\ParticleEffects\Universal\Universal.p3d" , 16, 12, 13, 0], "", "Billboard", 1, 10,
[0, 0, -6], [0, 0, 0], 1, 1.275, 1, 0,
[7,6], [[1, 1, 1, 0], [1, 1, 1, 0.04], [1, 1, 1, 0]], [1000], 1, 0, "", "", _obj];
_fog3 setParticleRandom [3, [55, 55, 0.2], [0, 0, -0.1], 2, 0.45, [0, 0, 0, 0.1], 0, 0];
_fog3 setParticleCircle [0.001, [0, 0, -0.12]];
_fog3 setDropInterval 1;


while {true} do
{
_a = 0;
while { _a < _density } do
{
_pos = position player;
_fog1 setpos _pos;
_fog2 setpos _pos;
_fog3 setpos _pos;
0 setRain 0;

_dpos = [((_pos select 0) + (_d - (random (2*_d))) + ((velocity vehicle player select 0)*1)),
((_pos select 1) + (_d - (random (2*_d))) + ((velocity vehicle player select 0)*1)),((_pos select 2) + _h)];
drop [["A3\Data_F\ParticleEffects\Universal\Universal", 16, 12, 8, 1], "", "Billboard", 1, 7, _dpos, 
[0,0,-1], 1, 0.0000001, 0.000, 0.7, [0.07], [[1,1,1,0], [1,1,1,1], [1,1,1,1], [1,1,1,1]], [0,0], 0.2, 1.2, "", "", ""]; _a = _a + 1;


_dpos = [((_pos select 0) + (_d - (random (2*_d))) + ((velocity vehicle player select 0)*1)),
((_pos select 1) + (_d - (random (2*_d))) + ((velocity vehicle player select 0)*1)),((_pos select 2) + _h1)];
drop [["A3\Data_F\ParticleEffects\Universal\Universal", 16, 12, 8, 1], "", "Billboard", 1, 7, _dpos,
 [0,0,-1], 1, 0.0000001, 0.000, 0.7, [0.07], [[1,1,1,0], [1,1,1,1], [1,1,1,1], [1,1,1,1]], [0,0], 0.2, 1.2, "", "", ""];


_dpos = [((_pos select 0) + (_d - (random (2*_d))) + ((velocity vehicle player select 0)*1)),
((_pos select 1) + (_d - (random (2*_d))) + ((velocity vehicle player select 0)*1)),((_pos select 2) + _h2)];
drop [["A3\Data_F\ParticleEffects\Universal\Universal", 16, 12, 8, 1], "", "Billboard", 1, 7, _dpos, 
[0,0,-1], 1, 0.0000001, 0.000, 0.7, [0.07], [[1,1,1,0], [1,1,1,1], [1,1,1,1], [1,1,1,1]], [0,0], 0.2, 1.2, "", "", ""];

};
sleep 0.2;	//Standard 0.2
};