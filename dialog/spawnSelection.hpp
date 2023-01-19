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
class husky_spawn_selection {
   idd = 38500;
   name = "husky_spawn_selection";
   movingenable = 0;
   enablesimulation = 1;
   class controlsBackground
   {
       class husky_RscTitleBackground : husky_RscText
       {
           idc = 1000;
           x = 0.0101577 * safezoneW + safezoneX;
           y = 0.0291999 * safezoneH + safezoneY;
           w = 0.170156 * safezoneW;
           h = 0.9438 * safezoneH;
           colorbackground[] = {0.294,0.286,0.286,0.8};
       };
       class Title : husky_RscText
       {
           idc = 1001;
           text = "Spawnauswahl";
           x = 0.0132501 * safezoneW + safezoneX;
           y = 0.0402 * safezoneH + safezoneY;
           w = 0.164999 * safezoneW;
           h = 0.0242 * safezoneH;
       };
       class MapView : husky_RscMapControl
       {
           idc = 38502;
           x = 0.183407 * safezoneW + safezoneX;
           y = 0.0292 * safezoneH + safezoneY;
           w = 0.8085 * safezoneW;
           h = 0.9438 * safezoneH;
           maxsatellitealpha = 0.75;
           alphafadestartscale = 1.15;
           alphafadeendscale = 1.29;
		   widthRailWay = 1;
       };
   };
   class controls
   {
       class spawnList : husky_RscListNbox
       {
           idc = 38510;
           x = 0.0153125 * safezoneW + safezoneX;
           y = 0.071 * safezoneH + safezoneY;
           w = 0.159844 * safezoneW;
           h = 0.847 * safezoneH;
           text = "";
           sizeex = 0.041;
           coloumns[] = {0,0,0.9};
           drawsidearrows = 1;
           idcleft = -1;
           idcright = -1;
           rowheight = 0.050;
           onlbselchanged = "_this call husky_fnc_spawnPointSelected;";
       };
       class spawnButton : husky_RscButtonMenu
       {
           text = "Flug buchen";
           x = 0.0153125 * safezoneW + safezoneX;
           y = 0.9246 * safezoneH + safezoneY;
           w = 0.159844 * safezoneW;
           h = 0.033 * safezoneH;
           style = "0x02";
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
           colorbackgroundactive[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.69])","(profilenamespace getvariable ['GUI_BCG_RGB_G',0.75])","(profilenamespace getvariable ['GUI_BCG_RGB_B',0.5])",1};
           colorbackgrounddisabled[] = {0.95,0.95,0.95,0};
           offsetx = 0.003;
           offsety = 0.003;
           offsetpressedx = 0.002;
           offsetpressedy = 0.002;
           colorshadow[] = {0,0,0,1};
           colorborder[] = {0,0,0,0};
           bordersize = 0.008;
           onbuttonclick = "[] call husky_fnc_spawnConfirm";
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
