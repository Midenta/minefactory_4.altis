#include "..\..\script_macros.hpp"
/*
    File: fn_handleDamage.sqf
    Author: Bryan "Tonic" Boardwine

    Description:
    Handles damage, specifically for handling the 'tazer' pistol and nothing else.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

params [
    ["_unit",objNull,[objNull]],
    ["_part","",[""]],
    ["_damage",0,[0]],
    ["_source",objNull,[objNull]],
    ["_projectile","",[""]],
    ["_index",0,[0]]
];

//Internal Debugging.
//if (!isNil "TON_Debug") then {
	//systemChat format["PART: %1 || DAMAGE: %2 || SOURCE: %3 || PROJECTILE: %4 || FRAME: %5",_part,_damage,_source,_projectile,diag_frameno];

if (!isNull _source && {_source != _unit}) then {
    //if (side _source isEqualTo west) then {
        if (currentWeapon _source in ["hgun_P07_blk_Snds_F","hgun_P07_blk_F","srifle_GM6_ghex_F","launch_RPG7_F"/*,"HMG_127","HMG_127_LSV_01","GMG_40mm","B_LSV_01_armed_black_F"*/] /*|| _projectile in ["B_9x21_Ball","B_556x45_dual","5Rnd_127x108_Mag"]*/) then {
            if (alive _unit) then {
                if (playerSide in [civilian,west,independent] && {!husky_istazed}) then {
                    private _distance = 50;
                    //if (currentWeapon _source in ["arifle_SDAR_F"]) then {_distance = 100};
					//if (currentWeapon _source in ["SMG_05_F"]) then {_distance = 450};
					if (currentWeapon _source in ["launch_RPG7_F"]) then {_distance = 1500};
					//if (currentWeapon _source in ["HMG_127_LSV_01"]) then {_distance = 1500};
					if (currentWeapon _source in ["srifle_GM6_ghex_F"]) then {_distance = 25000};
					//if (currentWeapon _source in ["HMG_127"]) then {_distance = 20000};
                    if (_unit distance _source < _distance) then {
                        if !(isNull objectParent _unit) then {
                            if (typeOf (vehicle _unit) in ["B_Quadbike_01_F","C_Kart_01_Blu_F","C_Kart_01_Fuel_F","C_Kart_01_Red_F","C_Kart_01_Vrana_F","B_T_LSV_01_unarmed_F","O_T_LSV_02_unarmed_F","O_T_LSV_02_armed_F","C_Offroad_02_unarmed_F","B_LSV_01_unarmed_F","B_Heli_Light_01_F"]) then {
								_unit action ["Eject",vehicle _unit];
									/*sleep 2;
									_unit setUnconscious true;
									sleep 2;
									_unit setUnconscious false;*/
									//diag_log "Ist im Fahrzeug";
								[_unit,_source] spawn husky_fnc_tazed;
                            };
                        } else {
							//diag_log "Ist außerhalb des Fahrzeuges";
                            [_unit,_source] spawn husky_fnc_tazed;
                        };
                    };
                };
                _damage = if (_part isEqualTo "") then {
                    damage _unit;
                } else {
                    _unit getHit _part;
                };
            };
        };
    //};
	
	/*		//SLUG MUNITON UND PROMET EINFÜGEN
		//Rubberbullets
		if (currentMagazine _source in ["30Rnd_65x39_caseless_mag_Tracer"] && _projectile in ["B_65x39_Caseless"]) then { //attention I changed it to mag and projectile!!
			//if (side _source isEqualTo west && playerSide isEqualTo civilian) then {
				_damage = 0;
				if (alive player && !husky_istazed && !husky_isknocked && !(_unit getVariable ["restrained",false])) then {
					private ["_distance"];
					_distance = 300;
					if (_unit distance _source < _distance) then {
						if !(isNull objectParent player) then {
							if (typeOf (vehicle _unit) in ["B_Quadbike_01_F","C_Kart_01_Blu_F","C_Kart_01_Fuel_F","C_Kart_01_Red_F","C_Kart_01_Vrana_F","B_T_LSV_01_unarmed_F","O_T_LSV_02_unarmed_F","O_T_LSV_02_armed_F","C_Offroad_02_unarmed_F","B_LSV_01_unarmed_F","B_Heli_Light_01_F"]) then {
								player action ["Eject",vehicle player];
								[_unit,_source] spawn husky_fnc_tazedRubber; //change this too
							};
						} else {
							[_unit,_source] spawn husky_fnc_tazedRubber; // here too
						};
					};
				};
			//};
		};
		*/
};

/*
//Handle the tazer first (Top-Priority).
if (!isNull _source && {_source != _unit}) then {
//if (!isNull _source) then {
    //if (_source != _unit) then {
        if (currentWeapon _source in ["hgun_P07_snds_F","arifle_SDAR_F","srifle_GM6_ghex_F"] && _projectile in ["B_9x21_Ball","B_556x45_dual","5Rnd_127x108_Mag"]) then {
            //if (side _source isEqualTo west && playerSide isEqualTo civilian || playerSide isEqualTo independent || playerSide isEqualTo east || playerSide isEqualTo west || playerSide isEqualTo civilian) then {
              //if (side _source in [west,civilian,independent,east]) then {
					//_damage = 0;
                if (alive player && !husky_istazed && !husky_isknocked /*&& !(_unit getVariable ["restrained",false])*/		//	) then {			//einklammern
                    //private ["_distance"];
                    //_distance = 30;
/*					private _distance = 35;		//<- neu
					//if (_projectile == "16Rnd_9x21_red_Mag") then {_distance = 200;};
					if (_projectile isEqualTo "B_556x45_dual") then {_distance = 100};	//<- neu
					if (_projectile isEqualTo "5Rnd_127x108_Mag") then {_distance = 20000};	//<- neu
                    if (_unit distance _source < _distance) then {
                        if !(isNull objectParent player) then {
                            if (typeOf vehicle player) in ["B_Quadbike_01_F","C_Kart_01_Blu_F","C_Kart_01_Fuel_F","C_Kart_01_Red_F","C_Kart_01_Vrana_F"]) then {	//<- neu
							//if (typeOf (vehicle _unit) isEqualTo "B_Quadbike_01_F") then {
                                //player action ["Eject",vehicle player];
								_unit action ["Eject",vehicle _unit];	//<- neu
                                [_unit,_source] spawn husky_fnc_tazed;
                            };
                        } else {
                            [_unit,_source] spawn husky_fnc_tazed;
                        };
                    };
                };
				_damage = if (_part isEqualTo "") then {
                    damage _unit;
                } else {
                    _unit getHit _part;
				};
			//};
        };
    //};
};
*/

//VDM Report And ADD
if ((isPlayer _source) && ((driver vehicle _source) == _source) && (vehicle _source != _source)) then {
	if (_part == "body" && (player getVariable["limit",true]) && playerSide in [west,independent,civilian]) then {
		player setVariable ["limit",false];
		[_source] spawn {
			_driver = _this select 0;
			[0,format["%1 hat %2 angefahren!", name _driver, name player]] remoteExec ["husky_fnc_broadcast",0];
			[getPlayerUID player, "VDM", format ["%1 - %2 wurde von %3 angefahren. Bankkonto: %4 €  Bargeld: %5 €",profileName,(getPlayerUID player),name _driver,[b126] call husky_fnc_numberText,[c126] call husky_fnc_numberText]] remoteExec ["HC_fnc_AdvancedLog",HC_Husky];
			sleep 2;
			player setVariable ["limit",true];
		};
	};
	player setdamage 0.95;
	//_damage = 0.95;
	
};

//};

/*	
private _evadePercent = 'util_evade' call DT_fnc_perkData;
if (random 1 < _evadePercent) exitWith {false};
if (_damage > 0.5) then {player setVariable ['bleedingPatched',false]};
*/

/*
if (((vehicle _source isKindOf "Ship") OR ( vehicle _source isKindOf "Air") OR (vehicle _source isKindOf "LandVehicle")) AND (_projectile == "")) then  {
	_unit allowDamage false;
	_unit setVariable ["husky_fnc_allowDamage", False];
	_unit spawn {
		_driver = _this select 0;
		[0,format["%1 hat %2 angefahren!", name _driver, name _unit]] remoteExec ["husky_fnc_broadcast",0];
		sleep 2;
		_this setVariable ["husky_fnc_allowDamage", True];
		_this allowDamage true;
	};
};
*/

/*
if ((vehicle _unit) isKindOf "Car" && (isNull _source || _source isEqualTo _unit)) then {
	_damage = if (husky_seatbelt) then { _damage / 2 } else { _damage};
};
*/
// Sicherheitsgurt
if (((vehicle _unit) isKindOf "Car" || (vehicle _unit) isKindOf "Tank") && (isNull _source || _source isEqualTo _unit)) then {
    switch (true) do {
        case (husky_seatbelt): { _damage = (_damage * 0.5) };
        case (!husky_seatbelt && speed vehicle player > 60): {
            [] spawn {
                if(speed vehicle player < 2) then {
                    moveOut player;
                    player setVelocity [(velocity player select 0) * 5,(velocity player select 1) * 5,((velocity player select 2) * 2) + 3];
                };
            };
        };
        default {};
    };
};
/*
if(vehicle _source isKindOf "LandVehicle") then {
	if(_source != _unit AND {alive _unit} AND {isPlayer _source}) then {
		_damage = 0.001;
	};
};

//VDM Report And ADD
if ((isPlayer _source) && (vehicle _source != _source)) then {
	if(_part == "body" && (player getVariable["limit",true]) && (side _source == civilian)) then {
		player setVariable ["limit",false];
		[_source] spawn {
		_driver = _this select 0;
		[0,format["%1 just ran over %2!", name _driver, name player]] remoteExec ["husky_fnc_broadcast",0];
		sleep (10);
		player setVariable ["limit",true];
    };
};

_damage = getDamage player;
};
*/
((uiNamespace getVariable ["playerHUD",displayNull]) displayCtrl 2403) ctrlSetText format["%1 %",round ((1 - (damage player)) * 100)];

[] spawn husky_fnc_hudUpdate;	//<- neu

_damage;
