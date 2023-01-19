/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

class DeathScreen {
    idd = 7300;
    name = "husky_Death_Screen";
    movingEnable = 0;
    enableSimulation = 1;
	onload = "death_effect = true;[] spawn husky_fnc_death_effect;";
    onunload = "death_effect = false;";

    class controlsBackground {
		class Death_Screen_wasted: husky_RscPicture {
          idc = 1200;
          text = "Textures\Menus\Death.paa";
          x = 0.357136 * safezoneW + safezoneX;
          y = 0.225067 * safezoneH + safezoneY;
          w = 0.280802 * safezoneW;
          h = 0.527872 * safezoneH;
        };
    }; 

    class Controls {
        class MedicsOnline: husky_RscText {
            idc = 7304;
            colorBackground[] = {0,0,0,0};
            text = "Feuerwehr im Dienst: 1";
            x = 0.005 * safezoneW + safezoneX;
            y = 0.015 * safezoneH + safezoneY;
            w = 0.8;
            h = (1 / 25);
        };

        /*class MedicsNearby: husky_RscText {
            idc = 7305;
            colorBackground[] = {0,0,0,0};
            text = "Feuerwehr in der Nähe: Nein";
            x = 0.005 * safezoneW + safezoneX;
            y = 0.040 * safezoneH + safezoneY;
            w = 0.8;
            h = (1 / 25);
        };*/

        class RespawnBtn: husky_RscButtonMenu {
            idc = 7302;
            x = 0.9 * safezoneW + safezoneX;
            y = 0.015 * safezoneH + safezoneY;
            w = (9 / 40);
            h = (1 / 25);
            text = "Respawn";
            onButtonClick = "closeDialog 0; husky_respawned = true; death_effect = false; [] call cat_spawn_fnc_spawnMenu;";
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.7};
            class Attributes {align = "center";};
        };

        class MedicBtn: husky_RscButtonMenu {
            idc = 7303;
            x = 0.9 * safezoneW + safezoneX;
            y = 0.040 * safezoneH + safezoneY;
            w = (9 / 40);
            h = (1 / 25);
            onButtonClick = "[] call husky_fnc_requestMedic;";//sleep (2 * 60);
            text = "Ärztlichehilfe";
            colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.7};
            class Attributes {align = "center";};
        };

        class respawnTime: husky_RscText {
            idc = 7301;
            colorBackground[] = {0,0,0,0.5};
            text = "";
            x = 0.4175 * safezoneW + safezoneX;
            y = 0.7 * safezoneH + safezoneY;
            w = 0.4;
            h = (1 / 25);
        };
    };
};
