/*
	Thieves

	Universe-Community.de

	Diese Mission ist bearbeitet von dem Development Team von Universe-Community.de 
	Diese Mission darf von keinem anderen genutzt werden außer von Universe-Community.de!
*/

//if (isserver) exitwith {};
_parray = [["\A3\data_f\ParticleEffects\Universal\Universal", 16, 12, 13,1], "",
            "Billboard", 1, 7, [0,0,0], [0,0,0], 1, 0.0000001, 0.000, 1.7,
	    [0.07],///,0.07], 
		[[1,1,1,1]], // Colour of the snow
		[0,1], 0.2, 1.2, "", "", player];
_snow = "#particlesource" createVehicleLocal position player;
_snow setParticleParams _parray;
_snow setParticleRandom [0, [10, 10, 7], [0, 0, 0], 0, 0.01, [0, 0, 0, 0.1], 0, 0];
_snow setParticleCircle [0.0, [0, 0, 0]];
_snow setDropInterval 1;	//0.001 standart



