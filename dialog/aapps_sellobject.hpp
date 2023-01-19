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
class aapps_sell_object {
   idd = 198802;
   name = "aapps_sell_object";
   movingenable = 1;
   class controlsBackground
   {
       class husky_RscTitleBackground : husky_RscPicture
       {
           idc = -1;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.341666666666667 * safezoneW + safezoneX;
           y = 0.345316934720908 * safezoneH + safezoneY;
           w = 0.3171875 * safezoneW;
           h = 0.294228949858089 * safezoneH;
           colorbackground[] = {1,1,1,0};
       };
       class husky_RscTextabc : husky_RscText
       {
           idc = -1;
           text = "$STR_trade_gui_title";
           x = 0.417494 * safezoneW + safezoneX;
           y = 0.412 * safezoneH + safezoneY;
           w = 0.165001 * safezoneW;
           h = 0.023 * safezoneH;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           style = 2;
       };
       class RscText_1000 : husky_RscText
       {
           idc = -1;
           x = 0.4175 * safezoneW + safezoneX;
           y = 0.4384 * safezoneH + safezoneY;
           w = 0.164984 * safezoneW;
           h = 0.1122 * safezoneH;
           moving = 1;
           colorbackground[] = {0,0,0,0.8};
       };
       class RscText_1001 : husky_RscText
       {
           idc = -1;
           text = "$STR_trade_gui_players";
           x = 0.420594 * safezoneW + safezoneX;
           y = 0.456 * safezoneH + safezoneY;
           w = 0.04125 * safezoneW;
           h = 0.0176 * safezoneH;
       };
       class RscText_1002 : husky_RscText
       {
           idc = -1;
           text = "$STR_trade_gui_price";
           x = 0.420593 * safezoneW + safezoneX;
           y = 0.5022 * safezoneH + safezoneY;
           w = 0.04125 * safezoneW;
           h = 0.0176 * safezoneH;
       };
       class RscText_1003 : husky_RscText
       {
           idc = -1;
           text = "€";
           x = 0.564852 * safezoneW + safezoneX;
           y = 0.500089 * safezoneH + safezoneY;
           w = 0.0113438 * safezoneW;
           h = 0.0264 * safezoneH;
           style = 2;
       };
   };
   class controls
   {
       class RscCombo_2100 : husky_RscCombo
       {
           idc = 1988020;
           x = 0.463906 * safezoneW + safezoneX;
           y = 0.456 * safezoneH + safezoneY;
           w = 0.110354 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class RscEdit_1400 : husky_RscEdit
       {
           idc = 1988021;
           x = 0.463906 * safezoneW + safezoneX;
           y = 0.5 * safezoneH + safezoneY;
           w = 0.0989998 * safezoneW;
           h = 0.0264 * safezoneH;
           text = "";
           style = 1;
       };
       class RscButton_1600 : husky_RscButton
       {
           idc = -1;
           text = "$STR_trade_gui_cancel";
           x = 0.4175 * safezoneW + safezoneX;
           y = 0.555 * safezoneH + safezoneY;
           w = 0.0814734 * safezoneW;
           h = 0.02354 * safezoneH;
           action = "closeDialog 0";
           type = 1;
           access = 0;
           colorshadow[] = {0,0,0,0};
       };
       class RscButton_1601 : husky_RscButton
       {
           idc = -1;
           text = "$STR_trade_gui_request";
           x = 0.502063 * safezoneW + safezoneX;
           y = 0.555 * safezoneH + safezoneY;
           w = 0.0804422 * safezoneW;
           h = 0.02354 * safezoneH;
           action = "0 spawn husky_fnc_makeSellRequest";
           type = 1;
           access = 0;
           colorshadow[] = {0,0,0,0};
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
