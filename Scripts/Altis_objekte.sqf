private ["_objects","_object","_data"];
_data = [
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_ramp_up_f.p3d", [8637.88,15803.1,92.7955], [[-0.995355,0.0924054,-0.0270031],[-0.0271191,0,0.999632]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_f.p3d", [8673.65,15799.7,93.6434], [[-0.995616,0.0910656,-0.0213314],[-0.0214297,-0.000101368,0.99977]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_f.p3d", [8721.33,15795.4,94.8268], [[-0.995439,0.091088,-0.0283437],[-0.0284122,0.000544763,0.999596]]],
	["a3\structures_f_exp\infrastructure\bridges\bridgesea_01_pillar_f.p3d", [8683.14,15798.9,56.2643], [[-0.997951,0.0639241,0.00264657],[0.00265199,1.43678e-010,0.999996]]]
];
_objects = [];
{
	_object = createSimpleObject [(_x select 0), (ASLToAGL(_x select 1))];
	_object setVectorDirAndUp (_x select 2);
	_object setPosASL (_x select 1);
	_objects pushBack _object;
} forEach _data;
_objects;
