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
class husky_news_broadcast {
   idd = 100100;
   name = "husky_news_broadcast";
   movingenable = 0;
   enablesimulation = 1;
   class controlsBackground
   {
       class husky_RscTitleBackground_hg : husky_RscPicture
       {
           text = "textures\Menus\TrunkPic.paa";
           x = 0.0671875 * safezoneW + safezoneX;
           y = 0.0614947965941343 * safezoneH + safezoneY;
           w = 0.9203125 * safezoneW;
           h = 0.883632923368023 * safezoneH;
           idc = 1002;
       };
       class husky_RscTitleBackground : husky_RscText
       {
           colorbackground[] = {"(profileNamespace getVariable ['GUI_BCG_RGB_R',0.3843])", "(profileNamespace getVariable ['GUI_BCG_RGB_G',0.7019])", "(profileNamespace getVariable ['GUI_BCG_RGB_B',0.8862])", "(profileNamespace getVariable ['GUI_BCG_RGB_A',0.7])"};
           idc = -1;
           x = 0.26525 * safezoneW + safezoneX;
           y = 0.196215704824976 * safezoneH + safezoneY;
           w = 0.516520833333333 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class MainBackground : husky_RscText
       {
           colorbackground[] = {0, 0, 0, 0.7};
           idc = -1;
           x = 0.259104166666667 * safezoneW + safezoneX;
           y = 0.243377483443709 * safezoneH + safezoneY;
           w = 0.528395833333333 * safezoneW;
           h = 0.510643330179754 * safezoneH;
       };
   };
   class controls
   {
       class Title : husky_RscTitle
       {
           colorbackground[] = {0, 0, 0, 0};
           idc = -1;
           text = "$STR_News_DialogTitle";
           x = 0.26525 * safezoneW + safezoneX;
           y = 0.196215704824976 * safezoneH + safezoneY;
           w = 0.517041666666667 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class MsgHeader : husky_RscTitle
       {
           colorbackground[] = {0, 0, 0, 0};
           idc = -1;
           text = "$STR_News_MsgHeader";
           x = 0.26525 * safezoneW + safezoneX;
           y = 0.25473036896878 * safezoneH + safezoneY;
           w = 0.517041666666667 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class MsgHeaderEdit : husky_RscEdit
       {
           idc = 100101;
           text = "";
           sizeex = 0.035;
           x = 0.26525 * safezoneW + safezoneX;
           y = 0.300946073793756 * safezoneH + safezoneY;
           w = 0.517041666666667 * safezoneW;
           h = 0.0453169347209083 * safezoneH;
       };
       class MsgText : husky_RscTitle
       {
           colorbackground[] = {0, 0, 0, 0};
           idc = -1;
           text = "$STR_News_MsgContent";
           x = 0.26525 * safezoneW + safezoneX;
           y = 0.357294228949858 * safezoneH + safezoneY;
           w = 0.517041666666667 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class MsgContentEdit : husky_RscEdit
       {
           idc = 100102;
           text = "";
           sizeex = 0.035;
           x = 0.26525 * safezoneW + safezoneX;
           y = 0.403973509933775 * safezoneH + safezoneY;
           w = 0.517041666666667 * safezoneW;
           h = 0.232734153263955 * safezoneH;
       };
       class MessageInfo : husky_RscStructuredText
       {
           colorbackground[] = {0, 0, 0, 0};
           idc = 100103;
           x = 0.26525 * safezoneW + safezoneX;
           y = 0.646168401135289 * safezoneH + safezoneY;
           w = 0.517041666666667 * safezoneW;
           h = 0.0966745506149479 * safezoneH;
       };
       class ConfirmButtonKey : husky_RscButtonMenu
       {
           idc = 100104;
           text = "$STR_News_Broadcast";
           x = 0.424625 * safezoneW + safezoneX;
           y = 0.770302743614002 * safezoneH + safezoneY;
           w = 0.2625 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class CloseButtonKey : husky_RscButtonMenu
       {
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0;";
           x = 0.259104166666667 * safezoneW + safezoneX;
           y = 0.770302743614002 * safezoneH + safezoneY;
           w = 0.15625 * safezoneW;
           h = 0.04 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
