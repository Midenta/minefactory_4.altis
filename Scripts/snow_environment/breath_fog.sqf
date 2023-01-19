/*
	Thieves

	Universe-Community.de

	Diese Mission ist bearbeitet von dem Development Team von Universe-Community.de 
	Diese Mission darf von keinem anderen genutzt werden außer von Universe-Community.de!
*/

private ["_unit"]; 
_unit = _this select 0;
_strength = 0.2;  //Strength of the Fog (0 to 1)

while {alive _unit} do {
	sleep (2 + random 2); // Randomized time between breaths

	_source = "logic" createVehicleLocal (getpos _unit);
	_fog = "#particlesource" createVehicleLocal getpos _source;
	_fog setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 13,0],
	"", 
	"Billboard", 
	0.5, 
	0.5, 
	[0,0,0],
	[0, 0.2, -0.2], 
	1, 1.275,	1, 0.2, 
	[0, 0.2,0], 
	[[1,1,1, _strength], [1,1,1, 0.01], [1,1,1, 0]], 
	[1000], 
	1, 
	0.04, 
	"", 
	"", 
	_source];
	_fog setParticleRandom [2, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];
	_fog setDropInterval 0.001;

	_source attachto [_unit,[0,0.15,0], "neck"]; // Position of player mouth

	sleep 0.5; // Time of the mist
	deletevehicle _source;
	deleteVehicle _fog;
};