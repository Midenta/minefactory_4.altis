_this spawn {

	_stream = "#particlesource" createVehicleLocal [0,0,0];
	_stream setParticleRandom [0,[0.004,0.004,0.004],[0.01,0.01,0.01],30,0.01,[0,0,0,0],1,0.02,360];
	_stream setDropInterval 0.001;
	_dir = (getDir _this) - 90;
	_stream attachTo [_this,[-1, -3, 0]];

	_full = 0;
	
	for "_i" from 0 to 1 step 0.01 do {
		_stream setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal.p3d",16,12,8],"","BillBoard",1,3,[0,0,0],[sin (_dir) * _i,cos (_dir) * _i,0],0,1.5,1,0.1,[0.02,0.02,0.1],[[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0]],[1],1,0,"","",_stream,0,true,0.1,[[0.8,0.7,0.2,0]]] ;
		sleep 0.02;
		_full = _i;
	};
	
	while {fuel _this > 0} do {
	
		_i = _full;
		_stream setParticleParams [["\a3\data_f\ParticleEffects\Universal\Universal.p3d",16,12,8],"","BillBoard",1,3,[0,0,0],[sin (_dir) * _i,cos (_dir) * _i,0],0,1.5,1,0.1,[0.02,0.02,0.1],[[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0.1],[0.8,0.7,0.2,0]],[1],1,0,"","",_stream,0,true,0.1,[[0.8,0.7,0.2,0]]] ;
		sleep 0.02;
		
		_this setFuel (fuel _this) - 0.001 - random 0.00001;

	};

	deleteVehicle _stream;
	_this setFuel 0;
} ;