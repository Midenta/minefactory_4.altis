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
class husky_dynmarket_prices {
   idd = 7100;
   name = "husky_dynmarket_prices";
   movingenable = false;
   enablesimulation = true;
   onload = "[] spawn {sleep 1;[] call husky_fnc_LoadIntoListbox;};";

   class controlsBackground
   {
       class hintergrundbild : husky_RscPicture
       {
           idc = 1106;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.0416666666666667 * safezoneW + safezoneX;
           y = 0.0510879848628193 * safezoneH + safezoneY;
           w = 0.951041666666667 * safezoneW;
           h = 0.833491012298959 * safezoneH;
       };
       class husky_Background : husky_RscText
       {
           x = 0.238020833333333 * safezoneW + safezoneX;
           y = 0.194741966893866 * safezoneH + safezoneY;
           h = 0.566699123661148 * safezoneH;
           w = 0.558333333333333 * safezoneW;
           colorbackground[] = {0,0,0,0.835294117647059};
           idc = 1000;
       };
   };
   class controls
   {
	   class RscText_100000 : husky_RscText
       {
           idc = 1002;
           text = "Jetziger Verkauf's Preis";
           x = 0.408072916666667 * safezoneW + safezoneX;
           y = 0.259006815968841 * safezoneH + safezoneY;
           w = 0.120052083333333 * safezoneW;
           h = 0.0294961868549173 * safezoneH;
		   class Attributes {
			   font = "PuristaMedium";
			   align = "left";
		   };
       };
       class RscText_1000000 : husky_RscText
       {
           idc = 1003;
           text = "Standard Verkauf's Preis";
           x = 0.537760416666667 * safezoneW + safezoneX;
           y = 0.259006815968841 * safezoneH + safezoneY;
           w = 0.120052083333333 * safezoneW;
           h = 0.0294961868549173 * safezoneH;
		   class Attributes {
			   font = "PuristaMedium";
			   align = "left";
		   };
       };
       class RscText_10000000 : husky_RscText
       {
           idc = 1004;
           text = "Kurs";
           x = 0.667578125 * safezoneW + safezoneX;
           y = 0.259006815968841 * safezoneH + safezoneY;
           w = 0.120052083333333 * safezoneW;
           h = 0.0294961868549173 * safezoneH;
		   class Attributes {
			   font = "PuristaMedium";
			   align = "left";
		   };
       };
       class husky_MarktAnzeige : husky_RscListNBox
       {
           idc = 7777;
		   sizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
           columns[] = {0,0.29,0.53,0.78};
		   class Attributes {
			   font = "PuristaLight";
		   };
           x = 0.246354166666667 * safezoneW + safezoneX;
           y = 0.288218111002921 * safezoneH + safezoneY;
           w = 0.541666666666667 * safezoneW;
           h = 0.432327166504381 * safezoneH;
       };
       class RscButtonMenu_2400 : husky_RscButtonMenu
       {
           onbuttonclick = "closeDialog 0;";
           idc = 1006;
           text = "OKAY";
           x = 0.415104166666667 * safezoneW + safezoneX;
           y = 0.727895024342746 * safezoneH + safezoneY;
           w = 0.217708 * safezoneW;
           h = 0.0219914 * safezoneH;
           colortext[] = {1,1,1,1};
           colorbackground[] = {0,0.52,0.03,1};
       };
       class RscText_10000 : husky_RscText
       {
           idc = 1001;
           text = "Items";
           x = 0.246354166666667 * safezoneW + safezoneX;
           y = 0.259006815968841 * safezoneH + safezoneY;
           w = 0.150520833333333 * safezoneW;
           h = 0.0294961868549173 * safezoneH;
       };
       class husky_RscText0 : husky_RscText
       {
           x = 0.408333333333333 * safezoneW + safezoneX;
           y = 0.204479552093476 * safezoneH + safezoneY;
           h = 0.037 * safezoneH;
           w = 0.2484375 * safezoneW;
           text = "Markt / Boerse";
           idc = 1005;
		   class Attributes {
			   font = "TahomaB";
			   align = "center";
		   };
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
