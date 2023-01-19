////////////////////////////////////////////////////////////////////////////
//////           This HPP was created by Shinji`s GUI tool            //////
//////           Minefactory.eu 							      //////
//////           Thieves										      //////
////////////////////////////////////////////////////////////////////////////
/*
	Thieves

	Thieves-Gaming.de

	Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de
	Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
class helpDisplay {
   idd = 60700;
   name = "helpDisplay";
   movingenable = 0;
   enablesimulation = 1;
   class controlsBackground
   {
       class husky_RscTitleBackground : husky_RscText
       {
           idc = -1;
           text = "Minefactory.eu Hilfe";
           x = 0.298906 * safezoneW + safezoneX;
           y = 0.27516 * safezoneH + safezoneY;
           w = 0.170156 * safezoneW;
           h = 0.022 * safezoneH;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])","(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
       };
       class husky_RscTitleBackground_bild : husky_RscPicture
       {
           text = "textures\Menus\TrunkPic.paa";
           x = 0.157291666666667 * safezoneW + safezoneX;
           y = 0.169347209082308 * safezoneH + safezoneY;
           w = 0.686979166666667 * safezoneW;
           h = 0.663197729422895 * safezoneH;
           idc = 1002;
       };
       class MainBackground : husky_RscText
       {
           idc = -1;
           x = 0.298906 * safezoneW + safezoneX;
           y = 0.2976 * safezoneH + safezoneY;
           w = 0.402187 * safezoneW;
           h = 0.407 * safezoneH;
           colorbackground[] = {0,0,0,0.7};
       };
       class mText : husky_RscText
       {
           idc = -1;
           text = "Womit können wir helfen?";
           x = 0.300969 * safezoneW + safezoneX;
           y = 0.302 * safezoneH + safezoneY;
           w = 0.195937 * safezoneW;
           h = 0.022 * safezoneH;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.5};
       };
       class mText2 : husky_RscText
       {
           idc = -1;
           text = "Infotext";
           x = 0.502062 * safezoneW + safezoneX;
           y = 0.302 * safezoneH + safezoneY;
           w = 0.195937 * safezoneW;
           h = 0.022 * safezoneH;
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])",0.5};
       };
   };
   class controls
   {
       class itemList : husky_RscListBox
       {
           idc = 67001;
           onlbselchanged = "_this call husky_fnc_menuLBChanged";
           x = 0.304062 * safezoneW + safezoneX;
           y = 0.3328 * safezoneH + safezoneY;
           w = 0.190781 * safezoneW;
           h = 0.363 * safezoneH;
           sizeex = 2.5 * 0.02;
       };
       class Title : husky_RscTitle
       {
           idc = 67003;
           text = "Minefactory.eu Hilfe";
           x = 0.298906 * safezoneW + safezoneX;
           y = 0.2756 * safezoneH + safezoneY;
           w = 0.170156 * safezoneW;
           h = 0.022 * safezoneH;
           colortext[] = {0.95,0.95,0.95,1};
           sizeex = (((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1) * GUI_GRID_H;
       };
       class ItemName : husky_RscText
       {
           idc = 60704;
           text = "";
           x = 0.497937 * safezoneW + safezoneX;
           y = 0.335 * safezoneH + safezoneY;
           w = 0.190781 * safezoneW;
           h = 0.055 * safezoneH;
           sizeex = 2.7 * 0.02;
       };
       class Description : husky_RscStructuredText
       {
           idc = 60708;
           text = "Beschreibung:";
           x = 0.497937 * safezoneW + safezoneX;
           y = 0.379 * safezoneH + safezoneY;
           w = 0.06159 * safezoneW;
           h = 0.044 * safezoneH;
       };
       class DescriptionText : husky_RscStructuredText
       {
           idc = 60709;
           text = "";
           x = 0.497937 * safezoneW + safezoneX;
           y = 0.4164 * safezoneH + safezoneY;
           w = 0.195937 * safezoneW;
           h = 0.2772 * safezoneH;
       };
       class closeButton : husky_RscButtonMenu
       {
           idc = -1;
           onbuttonclick = "closeDialog 0;";
           text = "Schliessen";
           x = 0.637155 * safezoneW + safezoneX;
           y = 0.709 * safezoneH + safezoneY;
           w = 0.0644531 * safezoneW;
           h = 0.0279914853358562 * safezoneH;
       };
       class Lizenzen : husky_RscButtonMenu
       {
           idc = 1000;
           onbuttonclick = "call husky_fnc_licenseMenu;";
           text = "Lizenzen";
           x = 0.298906 * safezoneW + safezoneX;
           y = 0.709 * safezoneH + safezoneY;
           w = 0.0661981666666666 * safezoneW;
           h = 0.0279914853358562 * safezoneH;
       };
       /*class Fahrzeuge : husky_RscButtonMenu
       {
           idc = 1001;
           onbuttonclick = "call husky_fnc_marketMenu;";
           text = "vItems";
           x = 0.36777345 * safezoneW + safezoneX;
           y = 0.709 * safezoneH + safezoneY;
           w = 0.0644530999999999 * safezoneW;
           h = 0.0289375591296121 * safezoneH;
       };*/
	   /*
	   class Fahrzeuge : husky_RscButtonMenu
       {
           idc = 1001;
           onbuttonclick = "call husky_fnc_carMenu;";
           text = "Fahrzeuge";
           x = 0.36777345 * safezoneW + safezoneX;
           y = 0.709 * safezoneH + safezoneY;
           w = 0.0644530999999999 * safezoneW;
           h = 0.0289375591296121 * safezoneH;
       };*/
       /*class Bugtracker : husky_RscButtonMenu
       {
           idc = 1003;
           onbuttonclick = "call husky_fnc_bugOpenMenu";
           text = "Bugtracker";
           x = 0.50214845 * safezoneW + safezoneX;
           y = 0.709 * safezoneH + safezoneY;
           w = 0.0644530999999999 * safezoneW;
           h = 0.0279914853358562 * safezoneH;
       };*/
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
