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
class Federal_Safe {
   idd = 3500;
   name = "Federal_Safe";
   movingenable = 0;
   enablesimulation = 1;
   class controlsBackground
   {
       class hintergrundbild : husky_RscPicture
       {
           idc = 1106;
           text = "textures\Menus\TrunkPic.paa";
           x = -0.0776041666666667 * safezoneW + safezoneX;
           y = 0.0728476821192053 * safezoneH + safezoneY;
           w = 0.466666666666667 * safezoneW;
           h = 1.00662251655629 * safezoneH;
       };
       class RscTitleBackground : husky_RscText
       {
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           idc = -1;
           x = 0.028125 * safezoneW + safezoneX;
           y = 0.237842951750237 * safezoneH + safezoneY;
           w = 0.253125 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class RscBackground : husky_RscText
       {
           colorbackground[] = {0, 0, 0, 0.7};
           idc = -1;
           x = 0.028125 * safezoneW + safezoneX;
           y = 0.281842951750237 * safezoneH + safezoneY;
           w = 0.254166666666667 * safezoneW;
           h = 0.612 * safezoneH;
       };
       class RscTitleText : husky_RscTitle
       {
           colorbackground[] = {0, 0, 0, 0};
           idc = 3501;
           text = "";
           x = 0.028125 * safezoneW + safezoneX;
           y = 0.237842951750237 * safezoneH + safezoneY;
           w = 0.253645833333333 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class VehicleWeight : RscTitleText
       {
           idc = 3504;
           style = 1;
           text = "";
           x = 0.028125 * safezoneW + safezoneX;
           y = 0.237842951750237 * safezoneH + safezoneY;
           w = 0.253645833333333 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class RscTrunkText : husky_RscText
       {
           idc = -1;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           text = "$STR_Trunk_TInventory";
           sizeex = 0.04;
           x = 0.038125 * safezoneW + safezoneX;
           y = 0.287842951750237 * safezoneH + safezoneY;
           w = 0.235833333333333 * safezoneW;
           h = 0.04 * safezoneH;
       };
   };
   class controls
   {
       class TrunkGear : husky_RscListBox
       {
           idc = 3502;
           text = "";
           sizeex = 0.030;
           x = 0.038125 * safezoneW + safezoneX;
           y = 0.327842951750236 * safezoneH + safezoneY;
           w = 0.235833333333333 * safezoneW;
           h = 0.42 * safezoneH;
       };
       class TrunkEdit : husky_RscEdit
       {
           idc = 3505;
           text = "1";
           sizeex = 0.030;
           x = 0.038125 * safezoneW + safezoneX;
           y = 0.757842951750237 * safezoneH + safezoneY;
           w = 0.235833333333333 * safezoneW;
           h = 0.03 * safezoneH;
       };
       class TakeItem : husky_RscButtonMenu
       {
           idc = -1;
           text = "$STR_Trunk_Take";
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           onbuttonclick = "[] call husky_fnc_safeTake;";
           x = 0.118125 * safezoneW + safezoneX;
           y = 0.817842951750237 * safezoneH + safezoneY;
           w = 0.15625 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class ButtonClose : husky_RscButtonMenu
       {
           idc = -1;
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0;";
           x = 0.028125 * safezoneW + safezoneX;
           y = 0.897842951750237 * safezoneH + safezoneY;
           w = 0.15625 * safezoneW;
           h = 0.04 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
