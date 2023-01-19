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

class licenseDisplay {
    idd = 80700;
    name= "licenseDisplay";
    movingEnable = 0;
    enableSimulation = 1;

    class controlsBackground {
		class husky_RscTitleBackground: husky_RscText
		{
			idc = -1;
			text = "Minefactory.eu Lizenz Datenbank"; //--- ToDo: Localize;
			x = 0.298906 * safezoneW + safezoneX;
			y = 0.27516 * safezoneH + safezoneY;
			w = 0.170156 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
		};
		class husky_RscTitleBackground_hg : husky_RscPicture
       {
           text = "textures\Menus\TrunkPic.paa";
           x = 0.157291666666667 * safezoneW + safezoneX;
           y = 0.169347209082308 * safezoneH + safezoneY;
           w = 0.686979166666667 * safezoneW;
           h = 0.663197729422895 * safezoneH;
           idc = 1002;
       };
		class MainBackground: husky_RscText
		{
			idc = -1;
			x = 0.298906 * safezoneW + safezoneX;
			y = 0.2976 * safezoneH + safezoneY;
			w = 0.402187 * safezoneW;
			h = 0.407 * safezoneH;
			colorBackground[] = {0,0,0,0.7};
		};
		class mText: husky_RscText
		{
			idc = -1;
			text = "Lizenz Datenbank"; //--- ToDo: Localize;
			x = 0.300969 * safezoneW + safezoneX;
			y = 0.302 * safezoneH + safezoneY;
			w = 0.195937 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.5};
		};
		class mText2: husky_RscText
		{
			idc = -1;
			text = "Lizenz Informationen"; //--- ToDo: Localize;
			x = 0.502062 * safezoneW + safezoneX;
			y = 0.302 * safezoneH + safezoneY;
			w = 0.195937 * safezoneW;
			h = 0.022 * safezoneH;
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.5};
		};
    };

    class controls {
        class itemList: husky_RscListBox
		{
			idc = 87001;
			onLBSelChanged = "_this call husky_fnc_licenseLBChange";
			x = 0.304062 * safezoneW + safezoneX;
			y = 0.3328 * safezoneH + safezoneY;
			w = 0.190781 * safezoneW;
			h = 0.363 * safezoneH;
			sizeEx = 2.5 * 0.02;
		};
		class Title: husky_RscTitle
		{
			idc = 87003;
			text = "Minefactory.eu Lizenz Datenbank"; //--- ToDo: Localize;
			x = 0.298906 * safezoneW + safezoneX;
			y = 0.2756 * safezoneH + safezoneY;
			w = 0.170156 * safezoneW;
			h = 0.022 * safezoneH;
			colorText[] = {0.95,0.95,0.95,1};
			sizeEx = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * GUI_GRID_H;
		};
		class ItemName: husky_RscText
		{
			idc = 80704;
			text = "";
			x = 0.497937 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.190781 * safezoneW;
			h = 0.055 * safezoneH;
			sizeEx = 2.7 * 0.02;
		};
		class BuyPrice: husky_RscText
		{
			idc = 80705;
			text = "Kaufpreis:"; //--- ToDo: Localize;
			x = 0.498969 * safezoneW + safezoneX;
			y = 0.5308 * safezoneH + safezoneY;
			w = 0.190781 * safezoneW;
			h = 0.055 * safezoneH;
			sizeEx = 2.7 * 0.02;
		};
		class SellPrice: husky_RscText
		{
			idc = 80706;
			text = "Fraktion:"; //--- ToDo: Localize;
			x = 0.498969 * safezoneW + safezoneX;
			y = 0.5726 * safezoneH + safezoneY;
			w = 0.190781 * safezoneW;
			h = 0.055 * safezoneH;
			sizeEx = 2.7 * 0.02;
		};
		/*class Weight: husky_RscText
		{
			idc = 80707;
			text = "ist:"; //--- ToDo: Localize;
			x = 0.498969 * safezoneW + safezoneX;
			y = 0.6166 * safezoneH + safezoneY;
			w = 0.190781 * safezoneW;
			h = 0.055 * safezoneH;
			sizeEx = 2.7 * 0.02;
		};*/
		class Description: husky_RscStructuredText
		{
			idc = 80708;
			text = "Beschreibung:"; //--- ToDo: Localize;
			x = 0.497937 * safezoneW + safezoneX;
			y = 0.379 * safezoneH + safezoneY;
			w = 0.06159 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class DescriptionText: husky_RscStructuredText
		{
			idc = 80709;
			text = "";
			x = 0.497937 * safezoneW + safezoneX;
			y = 0.4164 * safezoneH + safezoneY;
			w = 0.195937 * safezoneW;
			h = 0.11 * safezoneH;
		};
		/*class WeightNum: husky_RscText
		{
			idc = 80710;
			text = "";
			x = 0.587635 * safezoneW + safezoneX;
			y = 0.6166 * safezoneH + safezoneY;
			w = 0.190781 * safezoneW;
			h = 0.055 * safezoneH;
			colorText[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			sizeEx = 2.7 * 0.02;
		};*/
		class SellNum: husky_RscText
		{
			idc = 80711;
			text = "";
			x = 0.587657 * safezoneW + safezoneX;
			y = 0.5726 * safezoneH + safezoneY;
			w = 0.190781 * safezoneW;
			h = 0.055 * safezoneH;
			colorText[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			sizeEx = 2.7 * 0.02;
		};
		class BuyNum: husky_RscText
		{
			idc = 80712;
			text = "";
			x = 0.587654 * safezoneW + safezoneX;
			y = 0.5308 * safezoneH + safezoneY;
			w = 0.190781 * safezoneW;
			h = 0.055 * safezoneH;
			colorText[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			sizeEx = 2.7 * 0.02;
		};
        class closeButton: husky_RscButtonMenu
        {
        	idc = -1;
        	onButtonClick = "closeDialog 0;";
        	text = "Schliessen"; //--- ToDo: Localize;
        	x = 0.637155 * safezoneW + safezoneX;
        	y = 0.709 * safezoneH + safezoneY;
        	w = 0.0644531 * safezoneW;
        	h = 0.022 * safezoneH;
        };
    };
};