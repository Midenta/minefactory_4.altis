private ["_objects","_object","_data"];
_data = [
	["Land_Hospital_main_F", [16631.2,12806.4,11.5181], [[-0.868887,0.49501,0],[0,0,1]]],
	["Land_Hospital_side1_F", [16605.2,12826.6,11.5101], [[-0.868884,0.495015,0],[0,0,1]]],
	["Land_Hospital_side2_F", [16626,12777.1,11.5195], [[-0.868887,0.49501,0],[0,0,1]]]
];
_objects = [];
{
	_object = (_x select 0) createVehicle (ASLToAGL(_x select 1));
	_object setVectorDirAndUp (_x select 2);
	_object setPosASL (_x select 1);
	_object enableSimulationGlobal true;
	_objects pushBack _object;
} forEach _data;
_objects;
