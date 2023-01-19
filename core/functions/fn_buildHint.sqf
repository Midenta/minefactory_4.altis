params [
	["_text","",[""]],
	["_type","",[""]]
];

if(_type isEqualTo "error") then {
	hint format ["ERROR: %1",_text];
};

if(_type isEqualTo "info") then {
	hint format ["INFO: %1",_text];
};