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

class Achievement_Menu {
   idd = 5000;
   name = "Achievement_Menu";
   movingenable = 0;
   enablesimulation = 1;
   onload = "[] spawn husky_fnc_Achievementupdate;";
   class controlsBackground
   {
       class hintergrundbild : husky_RscPicture
       {
           idc = 1106;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.181770833333333 * safezoneW + safezoneX;
           y = 0.106906338694418 * safezoneH + safezoneY;
           w = 0.602604166666667 * safezoneW;
           h = 0.624408703878903 * safezoneH;
       };
       class MainBackground : husky_RscText
       {
           colorbackground[] = {0, 0, 0, 0.7};
           idc = -1;
           x = 0.309895833333333 * safezoneW + safezoneX;
           y = 0.239131450827654 * safezoneH + safezoneY;
           w = 0.347395833333333 * safezoneW;
           h = 0.388911392405063 * safezoneH;
       };
       class husky_RscTitleBackground : husky_RscText
       {
           colorbackground[] = {0,0,0,0.705882};
           idc = -1;
           x = 0.309895833333333 * safezoneW + safezoneX;
           y = 0.213242453748782 * safezoneH + safezoneY;
           w = 0.347395833333333 * safezoneW;
           h = 0.0233690360272643 * safezoneH;
       };
       class Title : husky_RscTitle
       {
           colorbackground[] = {0, 0, 0, 0};
           idc = -1;
           text = "Achievement Menu";
           x = 0.309375 * safezoneW + safezoneX;
           y = 0.213242453748782 * safezoneH + safezoneY;
           w = 0.347395833333333 * safezoneW;
           h = 0.0228627069133398 * safezoneH;
           sizeex = 0.045;
       };
       class Attributes
       {
           font = "PuristaMedium";
           align = "center";
           idc = 1000;
       };
   };
   class controls
   {
       class Achievement_Menu_Namen : husky_RscListNBox
       {
           w = 0.339166666666668 * safezoneW;
           h = 0.304771178188899 * safezoneH;
           x = 0.313437499999999 * safezoneW + safezoneX;
           y = 0.289191820837391 * safezoneH + safezoneY;
           idc = 5014;
           sizeex = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
           columns[] = {0,0.4,0.5};
           font = "PuristaMedium";
       };
       class Achievement_Text : husky_RscText
       {
           x = 0.313437499999999 * safezoneW + safezoneX;
           y = 0.245472249269718 * safezoneH + safezoneY;
           h = 0.0359298928919179 * safezoneH;
           w = 0.111041666666668 * safezoneW;
           text = "Achievements";
           sizeex = 0.045;
           idc = -1;
           colorbackground[] = {0,0,0,0.705882};
       };
       class Attributes
       {
           font = "PuristaMedium";
           align = "center";
           idc = 1000;
       };
       class GN_Text : husky_RscText
       {
           x = 0.4265625 * safezoneW + safezoneX;
           y = 0.245472249269718 * safezoneH + safezoneY;
           h = 0.0359298928919179 * safezoneH;
           w = 0.05 * safezoneW;
           text = "Gefunden";
           idc = -1;
           sizeex = 0.045;
           colorbackground[] = {0,0,0,0.705882};
       };
       class Attributes
       {
           font = "PuristaMedium";
           align = "center";
           idc = 1000;
       };
       class Droport_Text : husky_RscText
       {
           x = 0.478125 * safezoneW + safezoneX;
           y = 0.245472249269718 * safezoneH + safezoneY;
           h = 0.0359298928919179 * safezoneH;
           w = 0.175 * safezoneW;
           text = "Bedingungen";
           idc = -1;
           sizeex = 0.045;
           colorbackground[] = {0,0,0,0.705882};
       };
       class Attributes
       {
           font = "PuristaMedium";
           align = "center";
           idc = 1000;
       };
       class CloseButton : husky_RscButtonMenu
       {
           idc = 2624;
           text = "Schliessen";
           colorbackground[] = {0,0,0,0.705882};
           onbuttonclick = "closeDialog 0;";
           x = 0.412708333333333 * safezoneW + safezoneX;
           y = 0.596611489776047 * safezoneH + safezoneY;
           w = 0.13 * safezoneW;
           h = 0.0255890944498539 * safezoneH;
           colorbackground2[] = {0.129, 0.129, 0.129,1};
       };
       class Attributes
       {
           font = "PuristaMedium";
           align = "center";
           idc = 1000;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
