class AH_vsell 
{
	idd = 15600;
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
			idc = 15601;
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
			text = "VERKAUFEN"; //--- ToDo: Localize;
			onButtonClick = "[] spawn husky_fnc_ah_sell;";
			x = 0.669 * safezoneW + safezoneX; //399 - 604
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
		/*
		class RscButtonMenu_2402: husky_RscButtonMenu
		{
			idc = -1;
			text = "AMOUNT"; //--- ToDo: Localize;
			onButtonClick = "closeDialog 0;[] spawn husky_fnc_ah_loadInventory;";
			x = 0.334 * safezoneW + safezoneX;
			y = 0.731039 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.0220037 * safezoneH;
		};
		*/
		class RscPic_2403: husky_RscPicture
		{
			idc = 15660;
			text = "textures\Menus\auktionshaus\auktionshaus.jpg";
			x = 0.263205 * safezoneW + safezoneX;
			y = 0.17 * safezoneH + safezoneY;
			w = 0.47359 * safezoneW;
			h = 0.10528089 * safezoneH;
		};
		class RscText_1002: husky_RscText
		{
			idc = -1;
			text = "MENGE"; //--- ToDo: Localize;
			x = 0.48 * safezoneW + safezoneX; //334
			y = 0.731039 * safezoneH + safezoneY;
			w = 0.03 * safezoneW;
			h = 0.0220037 * safezoneH;
		};
		class textEdit : husky_RscEdit {
			idc = 15602;
			text = "1";
			x = 0.515 * safezoneW + safezoneX; //464
			y = 0.731039 * safezoneH + safezoneY;
			w = 0.022 * safezoneW;
			h = 0.0220037 * safezoneH;
		};
		class RscText_1003: husky_RscText
		{
			idc = -1;
			text = "KAUFPREIS ($)"; //--- ToDo: Localize;
			x = 0.549 * safezoneW + safezoneX; //334
			y = 0.731039 * safezoneH + safezoneY;
			w = 0.059 * safezoneW;
			h = 0.0220037 * safezoneH;
		};
		class textEdit2 : husky_RscEdit {
			idc = 15603;
			text = "50";
			x = 0.614 * safezoneW + safezoneX; //464
			y = 0.731039 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.0220037 * safezoneH;
		};
		
		class RscButtonMenu_2404: husky_RscButtonMenu
		{
			idc = -1;
			text = "LÖSCHEN"; //--- ToDo: Localize;
			onButtonClick = "[] spawn husky_fnc_ah_takeBack;";
			x = 0.398724 * safezoneW + safezoneX;
			y = 0.731039 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.0220037 * safezoneH;
			colorText[] = {-1,-1,-1,1};
			colorBackground[] = {1,0.54,0,1};
		};
		
		class RscButtonMenu_2405: husky_RscButtonMenu
		{
			idc = -1;
			text = "ZURÜCK";
			onButtonClick = "closeDialog 0;[] spawn husky_fnc_ah_load;";
			x = 0.334 * safezoneW + safezoneX;
			y = 0.731039 * safezoneH + safezoneY;
			w = 0.05 * safezoneW;
			h = 0.0220037 * safezoneH;
		};
	};
};