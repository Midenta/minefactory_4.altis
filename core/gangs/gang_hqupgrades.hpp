class husky_gang_hqupgrades {
    idd = 220400;
    name= "husky_gang_hqupgrades";
    movingEnable = 1;
    enableSimulation = 1;

	class controlsBackground {
		class RscText_1000: husky_RscStructuredText
		{
			idc = -1;
			text = "<img image='\a3\3den\data\displays\display3den\entitymenu\garage_ca.paa'></img> HQ-Upgrades"; //--- ToDo: Localize;
			x = 0.427807 * safezoneW + safezoneX;
			y = 0.2998 * safezoneH + safezoneY;
			w = 0.145431 * safezoneW;
			h = 0.0264 * safezoneH;
			colorBackground[] = {0.584314,0.647059,0.65098,0.6};
		};
		class RscText_1001: husky_RscText
		{
			idc = -1;
			x = 0.427807 * safezoneW + safezoneX;
			y = 0.3262 * safezoneH + safezoneY;
			w = 0.145429 * safezoneW;
			h = 0.29304 * safezoneH;
			colorBackground[] = {0.14902,0.196078,0.219608,0.9};
		};
		class RscText_1002: husky_RscText
		{
			idc = -1;
			text = "$STR_aapps_gang_hq_upgrades";
			x = 0.431932 * safezoneW + safezoneX;
			y = 0.3339 * safezoneH + safezoneY;
			w = 0.137165 * safezoneW;
			h = 0.0264 * safezoneH;
			colorBackground[] = {0.584314,0.647059,0.65098,0.6};
		};
		class RscText_1003: husky_RscText
		{
			idc = -1;
			x = 0.431938 * safezoneW + safezoneX;
			y = 0.3614 * safezoneH + safezoneY;
			w = 0.137148 * safezoneW;
			h = 0.209 * safezoneH;
			colorBackground[] = {0.584314,0.647059,0.65098,0.2};
		};
	};
	class controls {
		class RscButton_1604: husky_RscButton
		{
			idc = -1;
			text = "$STR_aapps_gang_close";
			x = 0.431932 * safezoneW + safezoneX;
			y = 0.5792 * safezoneH + safezoneY;
			w = 0.137674 * safezoneW;
			h = 0.03058 * safezoneH;
			colorBackground[] = {0.14902,0.196078,0.219608,1};
			action = "closeDialog 0";
			type = 1; access = 0;
			colorShadow[] = {0,0,0,0};
		};

		class Upgradestemplate: husky_RscButton
		{
			idc = 220410;
			text = ""; // ATM
			x = 0.435003 * safezoneW + safezoneX;
			y = 0.3702 * safezoneH + safezoneY;
			w = 0.130457 * safezoneW;
			h = 0.03058 * safezoneH;
			colorBackground[] = {0.14902,0.196078,0.219608,1};
			colorBackgroundDisabled[] = {0.14902,0.196078,0.219608,0.3};
			colorDisabled[] = {1,1,1,1};
			action = "";
			type = 1; access = 0;
			colorShadow[] = {0,0,0,0};
		};
		class RscText_1006: Upgradestemplate
		{
			idc = 220412;
			text = ""; //MARKET
			x = 0.434999 * safezoneW + safezoneX;
			y = 0.410644 * safezoneH + safezoneY;
			w = 0.130457 * safezoneW;
			h = 0.03058 * safezoneH;
		};
		class RscText_1007: Upgradestemplate
		{
			idc = 220414;
			text = ""; //HEAL
			x = 0.435003 * safezoneW + safezoneX;
			y = 0.44874 * safezoneH + safezoneY;
			w = 0.130457 * safezoneW;
			h = 0.03058 * safezoneH;
		};
		class RscText_1008: Upgradestemplate
		{
			idc = 220416;
			text = ""; //GENERALSTORE
			x = 0.435003 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.130457 * safezoneW;
			h = 0.03058 * safezoneH;
		};
		class RscText_1009: Upgradestemplate
		{
			idc = 220418;
			text = ""; //GARAGE
			x = 0.435003 * safezoneW + safezoneX;
			y = 0.52992 * safezoneH + safezoneY;
			w = 0.130457 * safezoneW;
			h = 0.03058 * safezoneH;
		};
		class buy_default: husky_RscButton
		{
			idc = 220411;
			text = "\a3\3den\data\attributes\edit\maximize_ca.paa";
			x = 0.548469 * safezoneW + safezoneX;
			y = 0.3702 * safezoneH + safezoneY;
			w = 0.0165002 * safezoneW;
			h = 0.0308 * safezoneH;
			action = "";
			type = 1; access = 0;
			colorShadow[] = {0,0,0,0};
			color[] = {1,1,1,1};
			colorBackground[] = {0.584314,0.647059,0.65098,0.6};
			colorBackgroundFocused[] = {0.584314,0.647059,0.65098,0.6};
			colorBackgroundActive[] = {0.584314,0.647059,0.65098,0.6};
			style = 48 + 0x800;
			offsetPressedX = 0;
			offsetPressedY = 0;
		};
		class RscText_1011: buy_default
		{
			idc = 220413;
			x = 0.548525 * safezoneW + safezoneX;
			y = 0.410333 * safezoneH + safezoneY;
			w = 0.0165002 * safezoneW;
			h = 0.0308 * safezoneH;
			action = "";
		};
		class RscText_1012: buy_default
		{
			idc = 220415;
			x = 0.548437 * safezoneW + safezoneX;
			y = 0.448642 * safezoneH + safezoneY;
			w = 0.0165002 * safezoneW;
			h = 0.0308 * safezoneH;
			action = "";
		};
		class RscText_1013: buy_default
		{
			idc = 220417;
			x = 0.548469 * safezoneW + safezoneX;
			y = 0.489 * safezoneH + safezoneY;
			w = 0.0165002 * safezoneW;
			h = 0.0308 * safezoneH;
			action = "";
		};
		class RscText_1014: buy_default
		{
			idc = 220419;
			x = 0.548469 * safezoneW + safezoneX;
			y = 0.52948 * safezoneH + safezoneY;
			w = 0.0165002 * safezoneW;
			h = 0.0308 * safezoneH;
			action = "";
		};
	};
};