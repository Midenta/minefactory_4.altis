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
class Polizeistartbild_med {
   idd = 620070;
   name = "Polizeistartbild_med";
   movingenable = false;
   enablesimulation = true;
   onload = "[] spawn husky_fnc_Polizeicomputerstart_med;";

   class controlsBackground
   {
       class hintergrundbild : husky_RscPicture
       {
           idc = 1106;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.0833333333333333 * safezoneW + safezoneX;
           y = 0.0775780510879849 * safezoneH + safezoneY;
           w = 0.846875 * safezoneW;
           h = 0.837275307473983 * safezoneH;
       };
       class MainBackground : husky_RscText
       {
           idc = -1;
           colorbackground[] = {0,0,0,0.7};
           x = 0.268541666666667 * safezoneW + safezoneX;
           y = 0.262858088930937 * safezoneH + safezoneY;
           w = 0.474166666666667 * safezoneW;
           h = 0.522383159886471 * safezoneH;
       };
       class Polizeistartbuerger1 : husky_RscStructuredText
       {
           idc = 625452;
           colorbackground[] = {0.254901960784314,0.411764705882353,0.882352941176471,1};
           text = "Medizin Computer Schnellsuche";
           x = 0.26875 * safezoneW + safezoneX;
           y = 0.234626300851467 * safezoneH + safezoneY;
           w = 0.473958333333333 * safezoneW;
           h = 0.0253935666982024 * safezoneH;
       };
	   class Polizeistartbuerger : husky_RscStructuredText
       {
           idc = 620074;
           text = "Selektierte Person";
           x = 0.560103666666667 * safezoneW + safezoneX;
           y = 0.335526017029328 * safezoneH + safezoneY;
           w = 0.0810421666666667 * safezoneW;
           h = 0.0334427625354778 * safezoneH;
       };
	   class Polizeistartname : husky_RscStructuredText
       {
           idc = 620075;
           text = "";
           x = 0.514583333333333 * safezoneW + safezoneX;
           y = 0.376207190160833 * safezoneH + safezoneY;
           w = 0.182291666666667 * safezoneW;
           h = 0.0334427625354778 * safezoneH;
       };
   };
   class controls
   {
       class Polizeistartcancel : husky_RscButtonMenu
       {
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0;";
           x = 0.560103666666667 * safezoneW + safezoneX;
           y = 0.648676442762536 * safezoneH + safezoneY;
           w = 0.0810421666666667 * safezoneW;
           h = 0.0334427625354778 * safezoneH;
       };

       class Polizeistartdatabase : husky_RscButtonMenu
       {
           idc = 620076;
           text = "Datenbank öffnen";
           onbuttonclick = "[_this] spawn husky_fnc_pcdb_med";
           x = 0.560103666666667 * safezoneW + safezoneX;
           y = 0.523794701986755 * safezoneH + safezoneY;
           w = 0.0810421666666667 * safezoneW;
           h = 0.0334427625354778 * safezoneH;
       };

       class Polizeistartspielerliste : husky_RscListBox
       {
           idc = 620073;
           text = "";
           sizeex = 0.035;
           onlbselchanged = "[_this] spawn husky_fnc_Polizeicomputerinfo1_med";
           x = 0.2762495 * safezoneW + safezoneX;
           y = 0.271613055818354 * safezoneH + safezoneY;
           w = 0.180521333333333 * safezoneW;
           h = 0.502275307473983 * safezoneH;
       };

   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
