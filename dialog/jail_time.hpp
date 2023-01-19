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
class jail_time {
   idd = 26500;
   name = "jail_time";
   movingenable = false;
   enablesimulation = true;
   class controlsBackground
   {
       class husky_RscTitleBackgroundhintergrund : husky_RscPicture
       {
           idc = -1;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.177083333333333 * safezoneW + safezoneX;
           y = 0.293282876064333 * safezoneH + safezoneY;
           w = 0.658333333333333 * safezoneW;
           h = 0.406811731315043 * safezoneH;
           colorbackground[] = {1,1,1,0};
       };
       class husky_RscTitleBackground : husky_RscText
       {
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           idc = -1;
           x = 0.322395833333333 * safezoneW + safezoneX;
           y = 0.368401135288553 * safezoneH + safezoneY;
           w = 0.369791666666667 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class MainBackground : husky_RscText
       {
           colorbackground[] = {0, 0, 0, 0.7};
           idc = -1;
           x = 0.322395833333333 * safezoneW + safezoneX;
           y = 0.410508987701041 * safezoneH + safezoneY;
           w = 0.368229166666667 * safezoneW;
           h = 0.212 * safezoneH;
       };
   };
   class controls
   {
       class Title : husky_RscTitle
       {
           colorbackground[] = {0, 0, 0, 0};
           idc = 2651;
           text = "Ins Gefängnis stecken";
           x = 0.322916666666667 * safezoneW + safezoneX;
           y = 0.36717123935667 * safezoneH + safezoneY;
           w = 0.36875 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class InfoMsg : husky_RscText
       {
           idc = 2601;
           text = "Zeit in Minuten:";
           x = 0.3390625 * safezoneW + safezoneX;
           y = 0.479754020813623 * safezoneH + safezoneY;
           w = 0.336979166666667 * safezoneW;
           h = 0.036802270577105 * safezoneH;
       };
       class textEdit : husky_RscEdit
       {
           idc = 1400;
           text = "15";
           sizeex = 0.030;
           x = 0.4265625 * safezoneW + safezoneX;
           y = 0.479754020813623 * safezoneH + safezoneY;
           w = 0.25 * safezoneW;
           h = 0.036802270577105 * safezoneH;
       };
       class payTicket : husky_RscButtonMenu
       {
           idc = 2402;
           text = "Ok";
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           onbuttonclick = "[] spawn husky_fnc_arrestDialog_Arrest;";
           x = 0.444270833333333 * safezoneW + safezoneX;
           y = 0.552507095553453 * safezoneH + safezoneY;
           w = 0.15625 * safezoneW;
           h = 0.0276537369914854 * safezoneH;
       };
       class CloseButtonKey : husky_RscButtonMenu
       {
           idc = 2400;
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0;";
           x = 0.444270833333333 * safezoneW + safezoneX;
           y = 0.58561967833491 * safezoneH + safezoneY;
           w = 0.15625 * safezoneW;
           h = 0.0275118259224219 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
