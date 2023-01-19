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

#define BGX 0.35
#define BGY 0.2
#define BGW 0.46
class vInteraction_Menu {
   idd = 37400;
   name = "vInteraction_Menu";
   movingenable = 0;
   enablesimulation = 1;
   class controlsBackground
   {
       class husky_RscTitleBackground : husky_RscPicture
       {
           idc = -1;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.583854166666667 * safezoneW + safezoneX;
           y = 0.17123935666982 * safezoneH + safezoneY;
           w = 0.220833333333333 * safezoneW;
           h = 0.592242194891202 * safezoneH;
       };
       class MainBackground : husky_RscText
       {
           idc = -1;
           x = 0.636823166666667 * safezoneW + safezoneX;
           y = 0.314697256385998 * safezoneH + safezoneY;
           w = 0.113437 * safezoneW;
           h = 0.33147114474929 * safezoneH;
           colorbackground[] = {0,0,0,0.4};
       };
       class Title : husky_RscTitle
       {
           idc = 37401;
           text = "$STR_pInAct_Title";
           x = 0.636979166666667 * safezoneW + safezoneX;
           y = 0.278919256385998 * safezoneH + safezoneY;
           w = 0.113437 * safezoneW;
           h = 0.033 * safezoneH;
           colortext[] = {255,255,255,1};
           colorbackground[] = {0,0,0,0.4};
           sizeex = 0.052;
       };
   };
   class controls
   {
       class ButtonClose : husky_RscButtonMenu
       {
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0;";
           x = 0.636302333333334 * safezoneW + safezoneX;
           y = 0.647295175023652 * safezoneH + safezoneY;
           w = 0.113437 * safezoneW;
           h = 0.022 * safezoneH;
           colorbackground[] = {0,0,0,0.4};
       };
       class ButtonOne : husky_RscButtonMenu
       {
           idc = 37450;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           text = "";
           x = 0.641979166666667 * safezoneW + safezoneX;
           y = 0.325697256385998 * safezoneH + safezoneY;
           w = 0.103125 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class ButtonTwo : husky_RscButtonMenu
       {
           idc = 37451;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           text = "";
           x = 0.641979166666667 * safezoneW + safezoneX;
           y = 0.358697256385998 * safezoneH + safezoneY;
           w = 0.103125 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class ButtonThree : husky_RscButtonMenu
       {
           idc = 37452;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           text = "";
           x = 0.641979166666667 * safezoneW + safezoneX;
           y = 0.391697256385998 * safezoneH + safezoneY;
           w = 0.103125 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class ButtonFour : husky_RscButtonMenu
       {
           idc = 37453;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           text = "";
           x = 0.641979166666667 * safezoneW + safezoneX;
           y = 0.424697256385998 * safezoneH + safezoneY;
           w = 0.103125 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class ButtonFive : husky_RscButtonMenu
       {
           idc = 37454;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           text = "";
           x = 0.641979166666667 * safezoneW + safezoneX;
           y = 0.457697256385998 * safezoneH + safezoneY;
           w = 0.103125 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class ButtonSix : husky_RscButtonMenu
       {
           idc = 37455;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           text = "";
           x = 0.641979166666667 * safezoneW + safezoneX;
           y = 0.490697256385998 * safezoneH + safezoneY;
           w = 0.103125 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class ButtonSeven : husky_RscButtonMenu
       {
           idc = 37456;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           text = "";
           x = 0.641979166666667 * safezoneW + safezoneX;
           y = 0.523697256385998 * safezoneH + safezoneY;
           w = 0.103125 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class ButtonEight : husky_RscButtonMenu
       {
           idc = 37457;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           text = "";
           x = 0.641979166666667 * safezoneW + safezoneX;
           y = 0.556697256385998 * safezoneH + safezoneY;
           w = 0.103125 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class Buttonnein : husky_RscButtonMenu
       {
           idc = 37458;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           text = "";
           x = 0.641979166666667 * safezoneW + safezoneX;
           y = 0.588810785241249 * safezoneH + safezoneY;
           w = 0.103125 * safezoneW;
           h = 0.022 * safezoneH;
       };
       class Buttonten : husky_RscButtonMenu
       {
           idc = 37459;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           text = "";
           x = 0.641979166666667 * safezoneW + safezoneX;
           y = 0.617192999053926 * safezoneH + safezoneY;
           w = 0.103125 * safezoneW;
           h = 0.022 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
