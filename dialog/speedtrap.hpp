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
class husky_speedtrap {
   idd = 8000;
   name = "husky_speedtrap";
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
           x = 0.4004685 * safezoneW + safezoneX;
           y = 0.383159886471145 * safezoneH + safezoneY;
           w = 0.134062 * safezoneW;
           h = 0.228949858088931 * safezoneH;
           colorbackground[] = {0,0,0,0.4};
       };
       class Title : husky_RscText
       {
           idc = 2651;
           text = "Einstellungen";
           x = 0.40125 * safezoneW + safezoneX;
           y = 0.344673604541154 * safezoneH + safezoneY;
           w = 0.1359375 * safezoneW;
           h = 0.033 * safezoneH;
           colortext[] = {2555,255,255,1};
           colorbackground[] = {0,0,0,0.4};
           sizeex = 0.052;
       };
	   class SpeedlimitEditText : husky_RscStructuredText
       {
           idc = -1;
           text = "Geschwindigkeit:";
           x = 0.40125 * safezoneW + safezoneX;
           y = 0.40066225165563 * safezoneH + safezoneY;
           w = 0.0810416666666666 * safezoneW;
           h = 0.0323557237464522 * safezoneH;
       };
	   class SpeedlimitDescription : husky_RscStructuredText
       {
           idc = -1;
           text = "Eine Toleranz von 5km/h wird automatisch berücksichtigt.";
           x = 0.40125 * safezoneW + safezoneX;
           y = 0.448912015137181 * safezoneH + safezoneY;
           w = 0.132604166666667 * safezoneW;
           h = 0.0676442762535478 * safezoneH;
       };
   };
   class controls
   {
       class SpeedlimitEdit : husky_RscEdit
       {
           idc = 8001;
           text = "";
           sizeex = 0.04;
           x = 0.485416666666667 * safezoneW + safezoneX;
           y = 0.40066225165563 * safezoneH + safezoneY;
           w = 0.0494791666666667 * safezoneW;
           h = 0.0323557237464522 * safezoneH;
       };
       class SaveButtonKey : husky_RscButtonMenu
       {
           idc = 8005;
           text = "Speichern";
           onbuttonclick = "[] call husky_fnc_setSpeedtrapLimit;closeDialog 0;";
           x = 0.415625 * safezoneW + safezoneX;
           y = 0.559129612109744 * safezoneH + safezoneY;
           w = 0.095589 * safezoneW;
           h = 0.0283822138126774 * safezoneH;
       };
       class RscButtonMenuCancel_2700 : husky_RscButtonMenu
       {
           text = "Schließen";
           x = 0.415625 * safezoneW + safezoneX;
           y = 0.638599810785241 * safezoneH + safezoneY;
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
