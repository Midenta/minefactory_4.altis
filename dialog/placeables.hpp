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
class husky_Menu_Placeables {
   idd = 20000;
   name = "husky_Menu_Placeables";
   movingenable = false;
   enablesimulation = true;
   onload = "";
   class controlsBackground
   {
       class hintergrundbild : husky_RscPicture
       {
           idc = 1107;
           text = "textures\Menus\TrunkPic.paa";
           x = safeZoneX + safeZoneW * -0.09375;
			y = safeZoneY + safeZoneH * 0.13222223;
			w = safeZoneW * 0.524375;
			h = safeZoneH * 0.96777778;
       };
       class husky_RscTitleBackground : husky_RscText
       {
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           idc = -1;
           x = safeZoneX + safeZoneW * 0.01125;
			y = safeZoneY + safeZoneH * 0.28;
			w = safeZoneW * 0.3125;
			h = safeZoneH * 0.04;
       };
       class MainBackground : husky_RscText
       {
           colorbackground[] = {0, 0, 0, 0.7};
           idc = -1;
           x = safeZoneX + safeZoneW * 0.0125;
			y = safeZoneY + safeZoneH * 0.32555556;
			w = safeZoneW * 0.31125;
			h = safeZoneH * 0.63777778;
       };
   };
   class controls
   {
       class Title : husky_RscTitle
       {
           colorbackground[] = {0, 0, 0, 0};
           idc = -1;
           text = "Absperrungen";
           x = safeZoneX + safeZoneW * 0.011875;
			y = safeZoneY + safeZoneH * 0.27888889;
			w = safeZoneW * 0.309375;
			h = safeZoneH * 0.03888889;
       };
       class PlaceablesList : husky_RscTree
       {
           idc = 20001;
           text = "";
           sizeex = 0.035;
           ontreeselchanged = "_this call husky_fnc_placeablesMenuPreview";
           x = safeZoneX + safeZoneW * 0.01625;
			y = safeZoneY + safeZoneH * 0.33444445;
			w = safeZoneW * 0.303125;
			h = safeZoneH * 0.57222223;
       };
       class CloseButtonKey : husky_RscButtonMenu
       {
           idc = -1;
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0;";
           x = safeZoneX + safeZoneW * 0.01625;
			y = safeZoneY + safeZoneH * 0.92;
			w = safeZoneW * 0.079375;
			h = safeZoneH * 0.03222223;
       };
       class RemoveAll : husky_RscButtonMenu
       {
           idc = -1;
           text = "ALLE entfernen";
           onbuttonclick = "[] call husky_fnc_placeablesRemoveAll; closeDialog 0;";
           x = safeZoneX + safeZoneW * 0.101875;
			y = safeZoneY + safeZoneH * 0.92;
			w = safeZoneW * 0.104375;
			h = safeZoneH * 0.03222223;
       };
       class Place : husky_RscButtonMenu
       {
           idc = -1;
           text = "Platzieren";
           onbuttonclick = "[] spawn husky_fnc_placeablePlace;";
           x = safeZoneX + safeZoneW * 0.211875;
            y = safeZoneY + safeZoneH * 0.92;
            w = safeZoneW * 0.10625;
            h = safeZoneH * 0.03222223;
       };
       class Preview : husky_RscStructuredText 
		{
			idc = 21111;
			x = safeZoneX + safeZoneW * 0.33375;
			y = safeZoneY + safeZoneH * 0.33444445;
			w = safeZoneW * 0.1125;
			h = safeZoneH * 0.17666667;
			colorbackground[] = {0.31,0.31,0.31,0.898};
			sizeex = 0.035;
		};
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
