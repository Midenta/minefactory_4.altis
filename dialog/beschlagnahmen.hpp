////////////////////////////////////////////////////////////////////////////
//////           This HPP was created by Shinji`s GUI tool            //////
//////           Minefactory.eu 							      //////
//////           Thieves										      //////
////////////////////////////////////////////////////////////////////////////
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! 
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/

class beschlagnahmen {
    idd = 38000;
    movingEnable = 0;
    enableSimulation = 1;

class controlsBackground {

		class MainBackground: husky_RscText
		{
			idc = -1;
			x = 0.825 * safezoneW + safezoneX;
			y = 0.58 * safezoneH + safezoneY;
			w = 0.15 * safezoneW;
			h = 0.3 * safezoneH;
			colorBackground[] = {0,0,0,0.4};
		};

		class Title: husky_RscTitle
		{
			idc = 37401;
			text = "Beschlagnahmen"; //--- ToDo: Localize;
			x = 0.833333 * safezoneW + safezoneX;
			y = 0.586482 * safezoneH + safezoneY;
			w = 0.1375 * safezoneW;
			h = 0.02 * safezoneH;
			colorText[] = {255,255,255,1};
			sizeEx = 0.0290909;
		};
    };

    class controls {
        class ButtonClose: husky_RscButtonMenu {
            idc = -1;
            text = "$STR_Global_Close";
            onButtonClick = "closeDialog 0;";
            x = 0.9 * safezoneW + safezoneX;
            y = 0.92 * safezoneH + safezoneY;
            w = 0.075 * safezoneW;
            h = 0.04 * safezoneH;
            colorText[] = {255,255,255,1};
            colorBackground[] = {0,0,0,0.4};
        };

		class ButtonEinzeln: husky_RscButtonMenu
		{
			idc = 1600;
			text = "EINZELN";
			onButtonClick = "[husky_pInact_curTarget,3] spawn husky_fnc_searchAction; closeDialog 0;";
			x = 0.825 * safezoneW + safezoneX;
			y = 0.88 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.04 * safezoneH;
			colorText[] = {255,255,255,1};
			colorBackground[] = {0,0,0,0.4};
		};

		class ButtonAlles: husky_RscButtonMenu
		{
			idc = 1601;
			text = "ALLES";
			onButtonClick = "[husky_pInact_curTarget,2] spawn husky_fnc_searchAction; closeDialog 0;";
			x = 0.9 * safezoneW + safezoneX;
			y = 0.88 * safezoneH + safezoneY;
			w = 0.075 * safezoneW;
			h = 0.04 * safezoneH;
			colorText[] = {255,255,255,1};
			colorBackground[] = {0,0,0,0.4};
		};

		class Listbox: husky_RscListbox
		{
			idc = 59000;
			x = 0.83125 * safezoneW + safezoneX;
			y = 0.609815 * safezoneH + safezoneY;
			w = 0.1375 * safezoneW;
			h = 0.26 * safezoneH;
			colorText[] = {255,255,255,1};
			colorBackground[] = {0,0,0,0.4};
            sizeEx = 0.020;
		};
    };
};
