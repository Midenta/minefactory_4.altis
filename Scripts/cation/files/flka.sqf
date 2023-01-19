private ["_objects","_object","_data"];
_data = [
	["Land_Hospital_side1_F", [14917.8,17207.8,17.8522], [[-0.698123,-0.715977,0],[0,0,1]]],
	["Land_Hospital_side2_F", [14970.9,17215.4,17.8613], [[-0.698123,-0.715977,0],[0,0,1]]],
	["Land_Hospital_main_F", [14943.9,17227.8,17.8599], [[-0.698123,-0.715977,0],[0,0,1]]]
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
