class AH_buy 
{
	idd = 15100;
	movingEnable = false;
	enableSimulation = true;
	onLoad = "";
	
	class controlsBackground {};
	
	class controls {
		class RscText_1000: husky_RscText
		{
			idc = -1;
			x = 0.263205 * safezoneW + safezoneX;
			y = 0.235956 * safezoneH + safezoneY;
			w = 0.47359 * safezoneW;
			h = 0.528089 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class RscText_1001: husky_RscText
		{
			idc = -1;
			text = "ZU VERKAUFEN"; //--- ToDo: Localize;
			x = 0.269276 * safezoneW + safezoneX;
			y = 0.246958 * safezoneH + safezoneY;
			w = 0.163935 * safezoneW;
			h = 0.0220037 * safezoneH;
		};
		class RscListbox_1500: husky_RscListbox
		{
			idc = 15101;
			x = 0.269276 * safezoneW + safezoneX;
			y = 0.279963 * safezoneH + safezoneY;
			w = 0.461447 * safezoneW;
			h = 0.440074 * safezoneH;
			sizeEx = 0.04;
			onLBSelChanged = "_this spawn husky_fnc_ah_select";
		};
		class RscButtonMenu_2400: husky_RscButtonMenu
		{
			idc = -1;
			text = "KAUFEN"; //--- ToDo: Localize;
			onButtonClick = "[] spawn husky_fnc_ah_buy;";
			x = 0.399 * safezoneW + safezoneX;
			y = 0.731039 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.0220037 * safezoneH;
			colorText[] = {-1,-1,-1,1};
			colorBackground[] = {0.24,0.58,0,1};
		};
		class RscButtonMenu_2401: husky_RscButtonMenu
		{
			idc = -1;
			text = "$STR_Global_Close"; //--- ToDo: Localize;
			onButtonClick = "closeDialog 0;";
			x = 0.269276 * safezoneW + safezoneX;
			y = 0.731039 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.0220037 * safezoneH;
		};
		class RscButtonMenu_2402: husky_RscButtonMenu
		{
			idc = -1;
			text = "INVENTAR"; //--- ToDo: Localize;
			onButtonClick = "closeDialog 0;[] spawn husky_fnc_ah_loadInventory;";
			x = 0.334 * safezoneW + safezoneX;
			y = 0.731039 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.0220037 * safezoneH;
		};
		class RscPic_2403: husky_RscPicture
		{
			idc = 15160;
			text = "textures\Menus\auktionshaus\auktionshaus.jpg";
			x = 0.263205 * safezoneW + safezoneX;
			y = 0.17 * safezoneH + safezoneY;
			w = 0.47359 * safezoneW;
			h = 0.10528089 * safezoneH;
		};
		class textEdit : husky_RscEdit {
			idc = 15102;
			text = "";
			x = 0.594 * safezoneW + safezoneX;
			y = 0.731039 * safezoneH + safezoneY;
			w = 0.06 * safezoneW;
			h = 0.0220037 * safezoneH;
		};
		class RscButtonMenu_2404: husky_RscButtonMenu
		{
			idc = -1;
			text = "SUCHEN"; //--- ToDo: Localize;
			onButtonClick = "_search = ctrlText 15102;closeDialog 0;[_search] spawn husky_fnc_ah_load;";
			x = 0.669 * safezoneW + safezoneX;
			y = 0.731039 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.0220037 * safezoneH;
		};
	};
};