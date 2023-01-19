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
class husky_gpsTracker {
   idd = 2016;
   name = "husky_gpsTracker";
   movingenable = false;
   enablesimulation = true;

   class controlsBackground
   {
       class hintergrundbild : husky_RscPicture
       {
           idc = 1106;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.213020833333333 * safezoneW + safezoneX;
           y = 0.402081362346263 * safezoneH + safezoneY;
           w = 0.585416666666667 * safezoneW;
           h = 0.371807000946074 * safezoneH;
       };
       class husky_RscTitleBackground : husky_RscText
       {
           idc = -1;
           colorbackground[] = {0,0,0,0.6};
           x = 0.336458333333333 * safezoneW + safezoneX;
           y = 0.525070955534532 * safezoneH + safezoneY;
           w = 0.3390625 * safezoneW;
           h = 0.173131504257332 * safezoneH;
       };
   };
   class controls
   {
       class Title : husky_RscTitle
       {
           colorbackground[] = {0,0,0,0.8};
           colortext[] = {1,1,1,1};
           idc = -1;
           text = "GPS Tracker benennen";
           x = 0.335416666666667 * safezoneW + safezoneX;
           y = 0.479602649006623 * safezoneH + safezoneY;
           w = 0.3390625 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class name_edit : husky_RscEdit
       {
           idc = 20161;
           style = 1;
           text = "";
           x = 0.341666666666667 * safezoneW + safezoneX;
           y = 0.535477767265847 * safezoneH + safezoneY;
           w = 0.323958333333333 * safezoneW;
           h = 0.10406811731315 * safezoneH;
       };
       class ButtonGPS : husky_RscButtonMenu
       {
           idc = -1;
           text = "GPS Tracker setzen";
           onbuttonclick = "[] spawn husky_fnc_gpsTracker;";
           x = 0.341666666666667 * safezoneW + safezoneX;
           y = 0.650690633869442 * safezoneH + safezoneY;
           w = 0.13125 * safezoneW;
           h = 0.0295364238410595 * safezoneH;
       };
       class ButtonClose : husky_RscButtonMenu
       {
           idc = -1;
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0;";
           x = 0.535416666666667 * safezoneW + safezoneX;
           y = 0.650690633869442 * safezoneH + safezoneY;
           w = 0.13125 * safezoneW;
           h = 0.0295364238410595 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
