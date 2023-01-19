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
class Chop_Shop {
   idd = 39400;
   name = "Chop_Shop";
   movingenable = 0;
   enablesimulation = 1;
   class controlsBackground
   {
       class hintergrundbild : husky_RscPicture
       {
           idc = 1106;
           text = "textures\Menus\TrunkPic.paa";
           x = -0.0791666666666667 * safezoneW + safezoneX;
           y = 0.0879848628192999 * safezoneH + safezoneY;
           w = 0.511979166666667 * safezoneW;
           h = 0.926206244087039 * safezoneH;
       };
       class RscTitleBackground : husky_RscText
       {
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           idc = -1;
           x = 0.0369791666666667 * safezoneW + safezoneX;
           y = 0.270009460737938 * safezoneH + safezoneY;
           w = 0.2796875 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class MainBackGround : husky_RscText
       {
           colorbackground[] = {0,0,0,0.7};
           idc = -1;
           x = 0.0369791666666667 * safezoneW + safezoneX;
           y = 0.314009460737938 * safezoneH + safezoneY;
           w = 0.280208333333333 * safezoneW;
           h = 0.512 * safezoneH;
       };
       class Title : husky_RscTitle
       {
           colorbackground[] = {0,0,0,0};
           idc = -1;
           text = "$STR_ChopShop_Title";
           x = 0.0369791666666667 * safezoneW + safezoneX;
           y = 0.270009460737938 * safezoneH + safezoneY;
           w = 0.2796875 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class priceInfo : husky_RscStructuredText
       {
           idc = 39401;
           text = "";
           sizeex = 0.035;
           x = 0.0469791666666667 * safezoneW + safezoneX;
           y = 0.709555345316935 * safezoneH + safezoneY;
           w = 0.2 * safezoneW;
           h = 0.100283822138127 * safezoneH;
       };
   };
   class controls
   {
       class vehicleList : husky_RscListBox
       {
           idc = 39402;
           onlbselchanged = "_this call husky_fnc_chopShopSelection";
           sizeex = 0.04;
           x = 0.0469791666666667 * safezoneW + safezoneX;
           y = 0.320009460737938 * safezoneH + safezoneY;
           w = 0.259791666666667 * safezoneW;
           h = 0.38 * safezoneH;
       };
       class BtnSell : husky_RscButtonMenu
       {
           idc = -1;
           text = "$STR_Global_Sell";
           onbuttonclick = "[] call husky_fnc_chopShopSell;";
           x = 0.173791666666667 * safezoneW + safezoneX;
           y = 0.830009460737938 * safezoneH + safezoneY;
           w = 0.141833333333333 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class BtnClose : husky_RscButtonMenu
       {
           idc = -1;
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0";
           x = 0.0369791666666667 * safezoneW + safezoneX;
           y = 0.830009460737938 * safezoneH + safezoneY;
           w = 0.134895833333333 * safezoneW;
           h = 0.04 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
