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
class Polizeibericht {
   idd = 55000;
   name = "Polizeibericht";
   movingenable = false;
   enablesimulation = true;
   onload = "[] spawn husky_fnc_auswahl;";

   class controlsBackground
   {
       class hintergrundbild : husky_RscPicture
       {
           idc = 1106;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.0901041666666667 * safezoneW + safezoneX;
           y = 0.0378429517502365 * safezoneH + safezoneY;
           w = 0.8265625 * safezoneW;
           h = 0.818353831598865 * safezoneH;
       };
       class MainBackground : husky_RscText
       {
           idc = -1;
           colorbackground[] = {0,0,0,0.7};
           x = 0.266979166666667 * safezoneW + safezoneX;
           y = 0.207039735099338 * safezoneH + safezoneY;
           w = 0.474166666666667 * safezoneW;
           h = 0.522383159886471 * safezoneH;
       };
       class polizeibericht_start : husky_RscText
       {
           idc = 55003;
           colorbackground[] = {0.254901960784314,0.411764705882353,0.882352941176471,1};
           text = "Polizei Computer - Bericht";
           x = 0.2671875 * safezoneW + safezoneX;
           y = 0.178807947019868 * safezoneH + safezoneY;
           w = 0.473958333333333 * safezoneW;
           h = 0.0253935666982024 * safezoneH;
       };
	   class polizeibericht_peronalieneins : husky_RscStructuredText
       {
		   idc = 555360;
           x = 0.309895833333333 * safezoneW + safezoneX;
           y = 0.239832071901608 * safezoneH + safezoneY;
           h = 0.035 * safezoneH;
           w = 0.1 * safezoneW;
           text = "Max Mustermann";
		   colorbackground[] = {0,0,0,0.5};
       };
   };
   class controls
   {
       class RscButtonMenu_2400 : husky_RscButtonMenu
       {
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0;";
           x = 0.655416166666667 * safezoneW + safezoneX;
           y = 0.685573320719016 * safezoneH + safezoneY;
           w = 0.0810421666666667 * safezoneW;
           h = 0.0334427625354778 * safezoneH;
           idc = 1000;
       };
       class aRscEdit_1401 : husky_RscEdit
       {
           idc = 55005;
           text = "xx.xx.xxxx";
           x = 0.309895833333333 * safezoneW + safezoneX;
           y = 0.35052270577105 * safezoneH + safezoneY;
           w = 0.1 * safezoneW;
           h = 0.035 * safezoneH;
       };
       class polizeibericht_uhrzeut : husky_RscStructuredText
       {
           type = 55002;	//type =
           x = 0.588541666666667 * safezoneW + safezoneX;
           y = 0.30889545884579 * safezoneH + safezoneY;
           h = 0.035 * safezoneH;
           w = 0.1 * safezoneW;
           text = "Uhrzeit";
           idc = 1002;
       };
       class polizeibericht_abschicken_btn : husky_RscButtonMenu
       {
           idc = 55007;
           text = "ABSCHICKEN";
           onbuttonclick = "[] call husky_fnc_bericht";
           x = 0.447603666666667 * safezoneW + safezoneX;
           y = 0.644892147587512 * safezoneH + safezoneY;
           w = 0.0810421666666667 * safezoneW;
           h = 0.0334427625354778 * safezoneH;
       };
       class RscCombo_2100 : husky_RscCombo
       {
           x = 0.4359375 * safezoneW + safezoneX;
           y = 0.239832071901608 * safezoneH + safezoneY;
           w = 0.12 * safezoneW;
           h = 0.035 * safezoneH;
           idc = 55515;
       };
       class RscCombo_2101 : husky_RscCombo
       {
           x = 0.4359375 * safezoneW + safezoneX;
           y = 0.375120624408704 * safezoneH + safezoneY;
           w = 0.12 * safezoneW;
           h = 0.035 * safezoneH;
           idc = 55535;
       };
       class polizeibericht_datum : husky_RscStructuredText
       {
           type = 55001;
           x = 0.309895833333333 * safezoneW + safezoneX;
           y = 0.30889545884579 * safezoneH + safezoneY;
           h = 0.035 * safezoneH;
           w = 0.1 * safezoneW;
           text = "Datum";
           idc = 1001;
       };
       class aRscEdit_1402 : husky_RscEdit	//husky_RscEdit
       {
           idc = 55006;
           text = "xx:xx";
           x = 0.588541666666667 * safezoneW + safezoneX;
           y = 0.35052270577105 * safezoneH + safezoneY;
           w = 0.1 * safezoneW;
           h = 0.035 * safezoneH;
       };
       class aRscEdit_1400 : husky_RscEditMulti
       {
           idc = 55004;
           text = "Beispieltext";
           x = 0.309895833333333 * safezoneW + safezoneX;
           y = 0.435666982024598 * safezoneH + safezoneY;
           w = 0.380729166666667 * safezoneW;
           h = 0.188741721854305 * safezoneH;
       };
	  
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
