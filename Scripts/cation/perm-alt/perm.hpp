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
class Cat_perm_management {
   idd = 9500;
   name = "Cat_perm_management";
   movingenable = 0;
   enablesimulation = 1;

   class controlsBackground
   {
       class husky_RscTitleBackground_hintergrund : husky_RscPicture
       {
           idc = -1;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.23125 * safezoneW + safezoneX;
           y = 0.139072847682119 * safezoneH + safezoneY;
           w = 0.535416666666667 * safezoneW;
           h = 0.448438978240303 * safezoneH;
           colorbackground[] = {1,1,1,0};
       };
       class MainBackground : husky_RscText
       {
           colorbackground[] = {0, 0, 0, 0.7};
           idc = -1;
           x = 0.35 * safezoneW + safezoneX;
           y = 0.265846736045412 * safezoneH + safezoneY;
           h = 0.199621570482498 * safezoneH;
           w = 0.299479166666667 * safezoneW;
       };
   };
   class controls
   {
       class Title : husky_RscTitle
       {
           colorbackground[] = {0, 0, 0, 0};
           idc = 9501;
           text = "";
           x = 0.35 * safezoneW + safezoneX;
           y = 0.221759697256386 * safezoneH + safezoneY;
           w = 0.299479166666667 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class rank0 : husky_RscText
       {
           x = 0.362364457831325 * safezoneW + safezoneX;
           y = 0.324336257309942 * safezoneH + safezoneY;
           h = 0.04 * safezoneH;
           w = 0.134623493975904 * safezoneW;
           idc = 9504;
		   sizeex = 0.05;
       };
       class rank1 : husky_RscText
       {
           x = 0.506859939759036 * safezoneW + safezoneX;
           y = 0.324336257309942 * safezoneH + safezoneY;
           h = 0.04 * safezoneH;
           w = 0.132093548613057 * safezoneW;
           idc = 9505;
		   sizeex = 0.05;
       };
       class ranklist : husky_RscCombo
       {
           idc = 9506;
           x = 0.362364457831325 * safezoneW + safezoneX;
           y = 0.376066964797615 * safezoneH + safezoneY;
           w = 0.276879728215187 * safezoneW;
           h = 0.0297986927236717 * safezoneH;
		   sizeex = 0.05;
       };
       class playername1 : husky_RscText
       {
           x = 0.506859939759036 * safezoneW + safezoneX;
           y = 0.280649501789795 * safezoneH + safezoneY;
           h = 0.04 * safezoneH;
           w = 0.132093548613057 * safezoneW;
           idc = 9503;
		   sizeex = 0.05;
       };
       class playername0 : husky_RscText
       {
           x = 0.362364457831325 * safezoneW + safezoneX;
           y = 0.280649501789795 * safezoneH + safezoneY;
           h = 0.04 * safezoneH;
           w = 0.134623493975904 * safezoneW;
           idc = 9502;
		   sizeex = 0.05;
       };
       class button : husky_RscButtonMenu
       {
           idc = 9507;
           text = "";
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           onbuttonclick = "[cursorObject] call cat_perm_fnc_setPerm";
           x = 0.362364457831325 * safezoneW + safezoneX;
           y = 0.411756834843461 * safezoneH + safezoneY;
           w = 0.276589030540768 * safezoneW;
           h = 0.04 * safezoneH;
		   sizeex = 0.05;
       };
       class CloseButtonKey : husky_RscButtonMenu
       {
           text = "";
           onbuttonclick = "closeDialog 0;";
           x = 0.35 * safezoneW + safezoneX;
           y = 0.473420133063617 * safezoneH + safezoneY;
           w = 0.299479166666667 * safezoneW;
           h = 0.04 * safezoneH;
           idc = 9508;
		   sizeex = 0.05;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
