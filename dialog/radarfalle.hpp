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
class radarfalle {
   idd = 61000;
   name = "radarfalle";
   movingenable = 0;
   enablesimulation = 1;

   class controlsBackground
   {
       class husky_RscTitleBackground : husky_RscPicture
       {
           idc = -1;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.3390625 * safezoneW + safezoneX;
           y = 0.262062440870388 * safezoneH + safezoneY;
           w = 0.257291666666667 * safezoneW;
           h = 0.475875118259224 * safezoneH;
       };
       class MainBackground : husky_RscText
       {
           idc = -1;
           x = 0.4 * safezoneW + safezoneX;
           y = 0.368510879848628 * safezoneH + safezoneY;
           w = 0.134375 * safezoneW;
           h = 0.271981078524125 * safezoneH;
           colorbackground[] = {0,0,0,0.4};
       };
       class Title : husky_RscText
       {
           idc = -1;
           text = "Radarfalle";
           x = 0.399426833333333 * safezoneW + safezoneX;
           y = 0.335510879848628 * safezoneH + safezoneY;
           w = 0.134062 * safezoneW;
           h = 0.033 * safezoneH;
           colortext[] = {2555,255,255,1};
           colorbackground[] = {0,0,0,0.4};
           sizeex = 0.052;
       };
       class preistitle : husky_RscText
       {
           idc = -1;
           text = "Editiert von :";
           x = 0.4046875 * safezoneW + safezoneX;
           y = 0.383159886471145 * safezoneH + safezoneY;
           w = 0.0547911666666669 * safezoneW;
           h = 0.0293282876064333 * safezoneH;
           colortext[] = {255,255,255,1};
           sizeex = 0.028;
       };
       class prozentual_title : husky_RscText
       {
           idc = -1;
           text = "Geschwindigkeit :";
           x = 0.4046875 * safezoneW + safezoneX;
           y = 0.417218543046358 * safezoneH + safezoneY;
           w = 0.0751036666666669 * safezoneW;
           h = 0.0293282876064333 * safezoneH;
           colortext[] = {255,255,255,1};
           sizeex = 0.028;
       };
   };
   class controls
   {
       class RscStructuredText_1102 : husky_RscStructuredText
       {
           idc = 61001;
           x = 0.454166666666666 * safezoneW + safezoneX;
           y = 0.383159886471145 * safezoneH + safezoneY;
           w = 0.0786458333333333 * safezoneW;
           h = 0.0293282876064333 * safezoneH;
       };
       class RscStructuredText_1104 : husky_RscStructuredText
       {
           idc = 61002;
           x = 0.4734375 * safezoneW + safezoneX;
           y = 0.417218543046358 * safezoneH + safezoneY;
           w = 0.0578125 * safezoneW;
           h = 0.0293282876064333 * safezoneH;
       };
       class RscButton_1600 : husky_RscButtonMenu
       {
           idc = 61003;
           x = 0.4046875 * safezoneW + safezoneX;
           y = 0.45127719962157 * safezoneH + safezoneY;
           w = 0.125 * safezoneW;
           h = 0.0283822138126774 * safezoneH;
       };
       class RscButton_1601 : husky_RscButtonMenu
       {
           idc = 61004;
           x = 0.4046875 * safezoneW + safezoneX;
           y = 0.487228003784295 * safezoneH + safezoneY;
           w = 0.125 * safezoneW;
           h = 0.0283822138126774 * safezoneH;
       };
       class RscButton_1602 : husky_RscButtonMenu
       {
           idc = 61005;
           x = 0.4046875 * safezoneW + safezoneX;
           y = 0.52317880794702 * safezoneH + safezoneY;
           w = 0.125 * safezoneW;
           h = 0.0283822138126774 * safezoneH;
       };
       class RscButton_1603 : husky_RscButtonMenu
       {
           idc = 61006;
           x = 0.4046875 * safezoneW + safezoneX;
           y = 0.558183538315988 * safezoneH + safezoneY;
           w = 0.125 * safezoneW;
           h = 0.0283822138126774 * safezoneH;
       };
       class RscButton_1604 : husky_RscButtonMenu
       {
           idc = 61007;
           x = 0.4046875 * safezoneW + safezoneX;
           y = 0.597918637653738 * safezoneH + safezoneY;
           w = 0.125 * safezoneW;
           h = 0.0283822138126774 * safezoneH;
       };
       class RscButtonMenuCancel_2700 : husky_RscButtonMenu
       {
           text = "Schließen";
           x = 0.416666666666667 * safezoneW + safezoneX;
           y = 0.647114474929044 * safezoneH + safezoneY;
           w = 0.095589 * safezoneW;
           h = 0.0283822138126774 * safezoneH;
           onbuttonclick = "closeDialog 0;";
           idc = 1000;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
