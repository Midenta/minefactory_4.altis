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
class Cat_reporting_tablet {
   idd = 9800;
   name = "Cat_reporting_tablet";
   movingenable = 0;
   enablesimulation = 1;
   class controlsBackground
   {
       class background : husky_RscPicture
       {
           shadow = 0;
           type = 0;
           style = 48;
           sizeex = 0.023;
           font = "robotocondensed";
           text = "textures\Menus\TrunkPic.paa";
           colorbackground[] = {};
           colortext[] = {};
           x = 0.10625 * safezoneW + safezoneX;
           y = 0.188268684957427 * safezoneH + safezoneY;
           w = 0.805729166666667 * safezoneW;
           h = 0.649006622516556 * safezoneH;
           tooltipcolortext[] = {1,1,1,1};
           tooltipcolorbox[] = {1,1,1,1};
           tooltipcolorshade[] = {0,0,0,0.65};
           idc = -1;
       };
       class map : husky_RscMapControl
       {
           idc = 9801;
           x = 0.460490463215259 * safezoneW + safezoneX;
           y = 0.339153046062407 * safezoneH + safezoneY;
           w = 0.284468664850136 * safezoneW;
           h = 0.294638943733164 * safezoneH;
       };
   };
   class controls
   {
       class centerNumber : husky_RscText
       {
           idc = 9803;
           colorbackground[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           x = 0.713896457765668 * safezoneW + safezoneX;
           y = 0.638961373798232 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.0310626702997274 * safezoneW;
           colorshadow[] = {0,0,0,0.5};
           tooltipcolortext[] = {1,1,1,1};
           tooltipcolorbox[] = {1,1,1,1};
           tooltipcolorshade[] = {0,0,0,0.65};
       };
       class statusNumber : husky_RscText
       {
           idc = 9804;
           colorbackground[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           x = 0.572692754061964 * safezoneW + safezoneX;
           y = 0.638961373798232 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.0310626702997274 * safezoneW;
           colorshadow[] = {0,0,0,0.5};
           tooltipcolortext[] = {1,1,1,1};
           tooltipcolorbox[] = {1,1,1,1};
           tooltipcolorshade[] = {0,0,0,0.65};
       };
       class title : husky_RscText
       {
           idc = 9805;
           x = 0.460490463215259 * safezoneW + safezoneX;
           y = 0.297716894977169 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.284468664850136 * safezoneW;
       };
       class statusPlayer : husky_RscText
       {
           idc = 9806;
           colorbackground[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           x = 0.460490463215259 * safezoneW + safezoneX;
           y = 0.638961373798232 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.109416944192148 * safezoneW;
           colorshadow[] = {0,0,0,0.5};
           tooltipcolortext[] = {1,1,1,1};
           tooltipcolorbox[] = {1,1,1,1};
           tooltipcolorshade[] = {0,0,0,0.65};
       };
       class playerheader : husky_RscText
       {
           idc = 9807;
           x = 0.272888283378747 * safezoneW + safezoneX;
           y = 0.297716894977169 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.185422343324251 * safezoneW;
       };
       class playerlist : husky_RscListBox
       {
           x = 0.272888283378747 * safezoneW + safezoneX;
           y = 0.338812785388128 * safezoneH + safezoneY;
           w = 0.185422343324251 * safezoneW;
           h = 0.379908675799087 * safezoneH;
           idc = 9808;
           rowheight = 0.050;
           sizeex = 0.050;
           onlbselchanged = "_this call cat_reporting_fnc_lbChanged;";
       };
       class change : husky_RscText
       {
           idc = 9809;
           colorbackground[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           x = 0.460490463215259 * safezoneW + safezoneX;
           y = 0.681956621004566 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.142779291553133 * safezoneW;
           colorshadow[] = {0,0,0,0.5};
           tooltipcolortext[] = {1,1,1,1};
           tooltipcolorbox[] = {1,1,1,1};
           tooltipcolorshade[] = {0,0,0,0.65};
       };
       class ok : husky_RscButtonMenu
       {
           idc = 9810;
           x = 0.713896457765668 * safezoneW + safezoneX;
           y = 0.681956621004566 * safezoneH + safezoneY;
           w = 0.0310626702997274 * safezoneW;
           h = 0.037 * safezoneH;
           onbuttonclick = "[] call cat_reporting_fnc_finishStatusChange;";
       };
       class statusFromCenter : husky_RscText
       {
           idc = 9811;
           colorbackground[] = {0,0,0,0};
           colortext[] = {1,1,1,1};
           x = 0.607267441860465 * safezoneW + safezoneX;
           y = 0.638961373798232 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.102452316076294 * safezoneW;
           colorshadow[] = {0,0,0,0.5};
           tooltipcolortext[] = {1,1,1,1};
           tooltipcolorbox[] = {1,1,1,1};
           tooltipcolorshade[] = {0,0,0,0.65};
       };
       class status : husky_RscCombo
       {
           x = 0.607267441860465 * safezoneW + safezoneX;
           y = 0.681956621004566 * safezoneH + safezoneY;
           w = 0.102452316076294 * safezoneW;
           h = 0.037 * safezoneH;
           idc = 9802;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
