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
class nanoEMPConsole {
   idd = 3494;
   name = "nanoEMPConsole";
   movingenable = false;
   enablesimulation = true;
   onload = "[] spawn husky_fnc_openEmpMenu;";
   
   class controlsBackground
   {
       class husky_RscTitleBackground_hintergrund : husky_RscPicture
       {
           idc = -1;
           text = "textures\Menus\TrunkPic.paa";
           x = -0.0901041666666667 * safezoneW + safezoneX;
           y = 0.299905392620624 * safezoneH + safezoneY;
           w = 0.707291666666667 * safezoneW;
           h = 0.745506149479659 * safezoneH;
           colorbackground[] = {1,1,1,0};
       };
       class husky_RscTitleBackground : husky_RscText
       {
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           idc = -1;
           x = 0.0601458333333333 * safezoneW + safezoneX;
           y = 0.425165562913907 * safezoneH + safezoneY;
           w = 0.404958333333333 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class MainBackground : husky_RscText
       {
           colorbackground[] = {0, 0, 0, 0.7};
           idc = -1;
           x = 0.0598958333333333 * safezoneW + safezoneX;
           y = 0.464522232734153 * safezoneH + safezoneY;
           w = 0.4046875 * safezoneW;
           h = 0.423511825922422 * safezoneH;
       };
   };
   class controls
   {
       class Title : husky_RscTitle
       {
           colorbackground[] = {0, 0, 0, 0};
           idc = 2901;
           text = "HG EMP Operator Konsole";
           x = 0.0601458333333333 * safezoneW + safezoneX;
           y = 0.424219489120151 * safezoneH + safezoneY;
           w = 0.403916666666667 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class PlayerList_Admin : husky_RscListBox
       {
           idc = 2902;
           text = "";
           sizeex = 0.035;
           x = 0.0684375 * safezoneW + safezoneX;
           y = 0.476650898770104 * safezoneH + safezoneY;
           w = 0.188854166666667 * safezoneW;
           h = 0.393736991485336 * safezoneH;
       };
       class PlayerBInfo : husky_RscStructuredText
       {
           idc = 2903;
           text = "";
           x = 0.262708333333333 * safezoneW + safezoneX;
           y = 0.476650898770104 * safezoneH + safezoneY;
           w = 0.191458333333333 * safezoneW;
           h = 0.393736991485336 * safezoneH;
       };
       class CloseButtonKey : husky_RscButtonMenu
       {
           idc = -1;
           text = "Schliessen";
           onbuttonclick = "closeDialog 0;";
           x = 0.0601458333333333 * safezoneW + safezoneX;
           y = 0.892034058656575 * safezoneH + safezoneY;
           w = 0.0950625 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class Refresh : husky_RscButtonMenu
       {
           idc = -1;
           text = "Scan";
           onbuttonclick = "[] spawn husky_fnc_scanVehicles;";
           x = 0.158854166666667 * safezoneW + safezoneX;
           y = 0.892034058656575 * safezoneH + safezoneY;
           w = 0.0958333333333333 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class ExecEMP : husky_RscButtonMenu
       {
           idc = 2070;
           text = "EMP-Aktivieren";
           onbuttonclick = "[] spawn husky_fnc_empVehicle;";
           x = 0.36375 * safezoneW + safezoneX;
           y = 0.892034058656575 * safezoneH + safezoneY;
           w = 0.0971875 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class WarnEMP : husky_RscButtonMenu
       {
           idc = 2060;
           text = "EMP-Warnen";
           onbuttonclick = "[] spawn husky_fnc_warnVehicle;";
           x = 0.262708333333333 * safezoneW + safezoneX;
           y = 0.892034058656575 * safezoneH + safezoneY;
           w = 0.0958333333333333 * safezoneW;
           h = 0.04 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
