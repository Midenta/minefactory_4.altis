/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!

*/

private _unit = player;

if (alive _unit) then {
_veh = vehicle _unit;

player action ["getOut", vehicle _veh];

sleep 0.75;

_chute = createVehicle ["Steerable_Parachute_F", (getPos _unit), [], 0, "NONE"];
_chute setPos (getPos _unit);
_unit setCaptive true;
_unit moveInDriver _chute;


waitUntil {((getPosATL _unit select 2) < 2)};
sleep 2;
if ((vehicle _unit) isEqualTo _chute) then {
player action ["getOut", vehicle player];
sleep 0.5;
deleteVehicle _chute;
};

_unit setCaptive false;


	if(!isMultiplayer) then {
		hint "off!";
	};

};



//RUCKSACK AUF BAUCH
/*
_parachute = _this select 1;
_pack = unitBackpack _unit;

if(_parachute == "") then {
	_unit addBackpack "B_Parachute";
} else {
	_unit addBackpack format ["%1",_parachute];
};

_pack attachTo [_unit,[0,-0.13,0],"Pelvis"]; 
_pack setVectorDirAndUp [[0,0,1],[0,1,0]]; //flip pack upside down

_nil = [_unit,_pack] spawn {
_unit = _this select 0;
_pack = _this select 1;

waitUntil {isTouchingGround _unit};
detach _pack;

_pack setVectorDirAndUp [[0,0,-1],[0,-1,0]];
_pack setPosAtl [getposATL _pack select 0,getposATL _pack select 1,-.13];
_pack addAction ["Take Bag",{(_this select 1) action ["TakeBag",_this select 0];}];
};
*/