#include "..\..\script_macros.hpp"
/*
    File: fn_playerSkins.sqf
    Author: Daniel Stuart

    Description:
    Sets skins for players by their side and uniform.

	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
private ["_skinName","_gangName","_path","_unit","_type"];
_skinName = "";
_unit = [_this,0] call BIS_fnc_param;
_type = [_this,1,"",[""]] call BIS_fnc_param;


switch (playerSide) do {
    case civilian: {
         //_gangName = group player getVariable ["gang_name","KeineGang"];
        //diag_log _gangName;
		/*
		if (license_civ_psa) then {
			if (uniform player isEqualTo "U_B_CombatUniform_mcam") then {
				player setObjectTextureGlobal [0, "textures\zivs\psaskins\psa_bkw.paa"];
			};
		};
        		
		if (_gangName == "Personenschutz Altis") then {
			switch(_type) do {
				case "U_B_CombatUniform_mcam" : {
					_path = "textures\zivs\psaskins\psa_bkw.paa";
					_unit setObjectTextureGlobal [0,_path];
				};
			};
		};	
		*/
        /*
		//diag_log _gangName;
		if (_gangName == "Audi") then {
			switch(_type) do {
				case "U_B_CombatUniform_mcam" : {
					_path = "textures\zivs\psaskins\psa_bkw.paa";
					_unit setObjectTextureGlobal [0,_path];
				};
			};
		};
        */

        //Cop Uniform für Zivs
		if (uniform player isEqualTo "U_Rangemaster") then {
            _skinName = "textures\west\PolizeiUniform3.paa";
            player setObjectTextureGlobal [0, _skinName];
        };
        if (uniform player isEqualTo "U_B_GEN_Commander_F") then {
            _skinName = "textures\west\PolizeiUniform2.paa";
            player setObjectTextureGlobal [0, _skinName];
        };

        if (license_civ_UmbrellaCorps) then {

		    if (uniform player isEqualTo "U_BG_Guerrilla_6_1") then {
                _skinName = "textures\zivs\umbrellacorp\Umbrella_Corparation_Kleidung.jpg";
                player setObjectTextureGlobal [0, _skinName];
		    };
		    

            if((backpack player) == "B_ViperHarness_oli_F")  then {
		    	(unitBackpack player) setObjectTextureGlobal [0, "textures\zivs\umbrellacorp\Umbrella_Corparation_Viper_Rucksack.jpg"];
		    };
        };

		if (license_civ_sm) then {
			if (backpack player isEqualTo "B_Carryall_wdl_F") then {
                unitBackpack player setObjectTextureGlobal [0, ""];
			};
		};
		
        if (license_civ_psa) then {
			if (uniform player isEqualTo "U_B_CombatUniform_mcam") then {
                _skinName = "textures\zivs\psaskins\psa_bkw.paa";
                player setObjectTextureGlobal [0, _skinName];
            };
		};

        if (license_civ_HausRecht) then {
            if (uniform player isEqualTo "U_I_CombatUniform") then {
                _skinName = "textures\zivs\hausrecht\Hausrecht AAF Kleidung.paa";
                player setObjectTextureGlobal [0, _skinName];
		    };

            if((backpack player) == "B_Kitbag_cbr")  then {
		    	(unitBackpack player) setObjectTextureGlobal [0, "textures\zivs\hausrecht\Hausrecht Seesack.paa"];
		    };
		};

        if (license_civ_soa) then {
			if (uniform player isEqualTo "U_I_CombatUniform") then {
                _skinName = "textures\zivs\soa\SOA_U_I_CombatUniform_00.jpg";
                player setObjectTextureGlobal [0, _skinName];
            };
		};

    };

    case west: {

		if (backpack player isEqualTo "B_Kitbag_cbr") then {
            (unitBackpack player) setObjectTextureGlobal [0, "textures\west\PolizeiSeesack.paa"];
        };
		if (backpack player isEqualTo "B_ViperHarness_blk_F") then {
            (unitBackpack player) setObjectTextureGlobal [0, "textures\west\PolizeiViperRucksack.paa"];
        };
		
		if (uniform player isEqualTo "U_Rangemaster") then {
                if (FETCH_CONST(husky_coplevel) >= 1) then {
                    _skinName = "textures\west\PolizeiUniform3.paa";
                };
            player setObjectTextureGlobal [0, _skinName];
        };

        if (uniform player isEqualTo "U_B_GEN_Commander_F") then {
                if (FETCH_CONST(husky_coplevel) >= 1) then {
                    _skinName = "textures\west\PolizeiUniform2.paa";
                };
            player setObjectTextureGlobal [0, _skinName];
        };

		if (uniform player isEqualTo "U_B_CombatUniform_mcam_worn") then {
                if (FETCH_CONST(husky_coplevel) >= 1) then {
                    _skinName = "textures\west\PolizeiUniform1.paa";
                };
            player setObjectTextureGlobal [0, _skinName];
        };


        if (uniform player isEqualTo "U_B_SpecopsUniform_sgg") then {
                if (FETCH_CONST(husky_coplevel) >= 1) then {
                    _skinName = "textures\west\sek\SEKUniform1.jpg";
                };
            player setObjectTextureGlobal [0, _skinName];
        };
        if (uniform player isEqualTo "U_I_CombatUniform") then {
                if (FETCH_CONST(husky_coplevel) >= 1) then {
                    _skinName = "textures\west\sek\SEKUniform3.jpg";
                };
            player setObjectTextureGlobal [0, _skinName];
        };

        if (backpack player isEqualTo "B_Kitbag_cbr") then {    //backpack_fast_cbr_co
            if (license_cop_copsek) then {
                (unitBackpack player) setObjectTextureGlobal [0, "textures\west\sek\SEKSeesack.jpg"];
            };
        };
		if (backpack player isEqualTo "B_ViperHarness_blk_F") then {    //Backpack_ViperOp_blk_co
            if (license_cop_copsek) then {
                (unitBackpack player) setObjectTextureGlobal [0, "textures\west\sek\SEKViperRucksack.jpg"];
            };
        };
    };

    case independent: {

        if (backpack player isEqualTo "B_Kitbag_cbr") then {
            (unitBackpack player) setObjectTextureGlobal [0, "textures\guer\FeuerwehrSeesack.paa"];
        };
		if (backpack player isEqualTo "B_ViperHarness_blk_F") then {
            (unitBackpack player) setObjectTextureGlobal [0, "textures\guer\FeuerwehrViperRucksack.paa"];
        };

        if (uniform player isEqualTo "U_B_GEN_Commander_F") then {
            player setObjectTextureGlobal [0, "textures\guer\FeuerwehrUniform2.jpg"];
        };

        if (uniform player isEqualTo "U_B_CombatUniform_mcam") then {
            player setObjectTextureGlobal [0, "textures\guer\FeuerwehrUniform1.jpg"];
        };
    };
};


//Spawn Kleidung
if (uniform player isEqualTo "U_C_Poloshirt_blue") then {
    player setObjectTextureGlobal [0, "textures\SpawnKleidung.paa"];
};

//Unsichtbarer Bergen
if (backpack player isEqualTo "B_Bergen_mcamo_F") then {
	//[unitBackpack player,[0, ""]] remoteExec ["setObjectTexture",-2];
	unitBackpack player setObjectTextureGlobal [0, ""];
};

if(player getVariable ["husky_leitungimdienst",true]) then {
	if (uniform player isEqualTo "U_O_Protagonist_VR") then {
		//player setObjectTextureGlobal [0, "textures\west\bepo_neu.paa"];
	};
};

if(player getVariable ["husky_entwicklerimdienst",true]) then {
	if (uniform player isEqualTo "U_O_Protagonist_VR") then {
		//player setObjectTextureGlobal [0, "textures\west\bepo_neu.paa"];
	};
};

if(player getVariable ["husky_adminimdienst",true]) then {
	if (uniform player isEqualTo "U_O_Protagonist_VR") then {
		//player setObjectTextureGlobal [0, "textures\west\bepo_neu.paa"];
	};
};

if(player getVariable ["husky_teamimdienst",true]) then {
	if (uniform player isEqualTo "U_O_Protagonist_VR") then {
		//player setObjectTextureGlobal [0, "textures\west\bepo_neu.paa"];
	};
};