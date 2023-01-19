/*
*    Format:
*        3: STRING (Conditions) - Must return boolean :
*            String can contain any amount of conditions, aslong as the entire
*            string returns a boolean. This allows you to check any levels, licenses etc,
*            in any combination. For example:
*                "call husky_coplevel && license_civ_someLicense"
*            This will also let you call any other function.
*
*
*	Thieves
*
*	Universe-Community.de
*
*	Diese Mission ist bearbeitet von dem Development Team von Universe-Community.de
*	Diese Mission darf von keinem anderen genutzt werden außer von Universe-Community.de!
*
*/
class CfgSpawnPoints {

    class Altis {
        class Civilian {
            class Kavala {
                displayName = "Kavala (Hauptstadt)";
                spawnMarker = "civ_spawn_1";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };

            class Athira {
                displayName = "Athira";
                spawnMarker = "civ_spawn_2";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };

            class Sofia {
                displayName = "Chalkeia";
                spawnMarker = "civ_spawn_3";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };

			class Nechori {
                displayName = "Neochori (#Altis+)";
                spawnMarker = "civ_spawn_4";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };

            class Pygros {
                displayName = "Pygros";
                spawnMarker = "civ_spawn_pygros";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };

			class Admin {
                displayName = "Admin-Villa {NonRP Zone}";
                spawnMarker = "adminspawn_1";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "call husky_adminlevel >= 1";
            };
            class RebelN {
                displayName = "Tamaulipas";
                spawnMarker = "Reb_spawn_1";
                icon = "\a3\ui_f\data\map\MapControl\bunker_ca.paa";
                conditions = "license_civ_rebel";
            };

            class Miliz {
                displayName = "Tierra Caliente";
                spawnMarker = "Rebelop_1";
                icon = "\a3\ui_f\data\map\MapControl\bunker_ca.paa";
                conditions = "license_civ_miliz";
            };

            class Schwarzmarkt {
                displayName = "Sinaloa Kartell";
                spawnMarker = "Rebelop_2";
                icon = "\a3\ui_f\data\map\MapControl\bunker_ca.paa";
                conditions = "license_civ_schwarzmarkt";
            };

			class psa {
                displayName = "PSA HQ";
                spawnMarker = "psa_spawn";
                icon = "\a3\ui_f\data\map\MapControl\bunker_ca.paa";
                conditions = "license_civ_psa";
            };
        };

        class Cop {
			class Kavala {
                displayName = "Kavala HQ";
                spawnMarker = "cop_spawn_2";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };
			
			class pyrgos {
                displayName = "Polizei Pyrgos";
                spawnMarker = "cop_spawn_3";
                icon = "\a3\ui_f\data\map\MapControl\watertower_ca.paa";
                conditions = "";
            };

			class Checkpoint_Chalkeia {
                displayName = "Checkpoint Chalkeia";
                spawnMarker = "cop_spawn_4";
                icon = "\a3\ui_f\data\map\Markers\NATO\respawn_inf_ca.paa";
                conditions = "";
            };

            class Checkpoint_Telos {
                displayName = "Checkpoint Telos";
                spawnMarker = "checkpoint_bank_cop_spawn";
                icon = "\a3\ui_f\data\map\Markers\NATO\respawn_inf_ca.paa";
                conditions = "";
            };
			/*
			class Kuestenwache_Altis {
                displayName = "Küstenwache";
                spawnMarker = "cop_spawn_3";
                icon = "\a3\ui_f\data\map\Markers\NATO\b_naval.paa";
                conditions = "";
            };
			*/
			class Training {
                displayName = "Polizei Trainingsgelände";
                spawnMarker = "cop_spawn_5";
                icon = "\a3\ui_f\data\map\Markers\NATO\respawn_inf_ca.paa";
                conditions = "";
            };
            class Luftwache {
                displayName = "Luftwache";
                spawnMarker = "cop_spawn_1";
                icon = "\a3\ui_f\data\map\Markers\NATO\b_air.paa";
                conditions = "";
            };
			
			class Gefaengnis {
                displayName = "Gefängnis";
                spawnMarker = "cop_spawn_7";
                icon = "\a3\ui_f\data\map\Markers\NATO\respawn_inf_ca.paa";
                conditions = "";
            };

		};

        class Med {
            class Kavala_Krankenhaus {
                displayName = "Kavala Krankenhaus";
                spawnMarker = "medic_spawn_1";
                icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "";
            };

            class Feldklinik_Sofia {
                displayName = "Feldklinik Sofia";
                spawnMarker = "medic_spawn_2";
                icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "";
            };

			/*class wasser_Altis {
                displayName = "Seerettung";
                spawnMarker = "medic_spawn_3";
                icon = "\a3\ui_f\data\map\Markers\NATO\n_naval.paa";
                conditions = "";
            };*/

            class Gesundheitszentrum {
                displayName = "Gesundheitszentrum";
                spawnMarker = "medic_spawn_Air_HQ";
                icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "";
            };
			
			class pyrgos {
                displayName = "Gesundheitszentrum Pyrgos";
                spawnMarker = "medic_spawn_3";
                icon = "\a3\ui_f\data\map\MapControl\hospital_ca.paa";
                conditions = "";
            };
        };
    };
};
