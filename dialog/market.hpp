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

class Market {
   idd = 39000;
   name = "Market";
   movingenable = false;
   enablesimulation = true;
   class controlsBackground
   {
       class TitleBackground : husky_RscText
       {
           idc = 1000;
           x = 0.319270833333333 * safezoneW + safezoneX;
           y = 0.257166508987701 * safezoneH + safezoneY;
           w = 0.4125 * safezoneW;
           h = 0.044 * safezoneH;
           colorbackground[] = {0.05,0.5,0.05,0.8};
           coloractive[] = {0.05,0.5,0.05,0.8};
       };
       class husky_RscTitleBackground_hg : husky_RscPicture
       {
           text = "textures\Menus\TrunkPic.paa";
           x = 0.0671875 * safezoneW + safezoneX;
           y = 0.0614947965941343 * safezoneH + safezoneY;
           w = 0.859375 * safezoneW;
           h = 0.883632923368023 * safezoneH;
           idc = 1002;
       };
       class MarketBackground : husky_RscText
       {
           idc = 1001;
           x = 0.246354166666667 * safezoneW + safezoneX;
           y = 0.247871333964049 * safezoneH + safezoneY;
           w = 0.502083333333333 * safezoneW;
           h = 0.559295175023652 * safezoneH;
           colorbackground[] = {0,0,0,0.6};
       };
       class Title : husky_RscText
       {
           idc = 1002;
           text = "UC-Markt";
           x = 0.241145833333333 * safezoneW + safezoneX;
           y = 0.203240302743614 * safezoneH + safezoneY;
           w = 0.511979166666667 * safezoneW;
           h = 0.044 * safezoneH;
       };
   };
   class controls
   {
       class GoodsDisplay : husky_RscListbox
       {
           idc = 39001;
           text = "";
           sizeex = 0.035;
           onlbselchanged = "[] spawn husky_fnc_marketGrab";
           x = 0.2587495 * safezoneW + safezoneX;
           y = 0.318826868495743 * safezoneH + safezoneY;
           w = 0.180833833333333 * safezoneW;
           h = 0.44741816461684 * safezoneH;
       };
       class GoodsTitle : husky_RscText
       {
           idc = -1;
           text = "Waren";
           x = 0.2587495 * safezoneW + safezoneX;
           y = 0.267701040681173 * safezoneH + safezoneY;
           w = 0.180833833333333 * safezoneW;
           h = 0.04639545884579 * safezoneH;
       };
       class InfoTitle : husky_RscText
       {
           idc = -1;
           text = "Information";
           x = 0.453489833333333 * safezoneW + safezoneX;
           y = 0.267701040681173 * safezoneH + safezoneY;
           w = 0.260051833333333 * safezoneW;
           h = 0.04639545884579 * safezoneH;
       };
       class CurrentGood : husky_RscText
       {
           idc = 39002;
           text = "Aktuelle Waren:";
           x = 0.453489833333333 * safezoneW + safezoneX;
           y = 0.326485335856197 * safezoneH + safezoneY;
           w = 0.260051833333333 * safezoneW;
           h = 0.0368070009460738 * safezoneH;
       };
       class CurrentPrice : husky_RscText
       {
           idc = 39003;
           text = "Derzeitiger Preis:";
           x = 0.453489833333333 * safezoneW + safezoneX;
           y = 0.385862819299905 * safezoneH + safezoneY;
           w = 0.260051833333333 * safezoneW;
           h = 0.0370321665089877 * safezoneH;
       };
       class RecentPrice : husky_RscText
       {
           idc = 39004;
           text = "Letzter Preis:";
           x = 0.453489833333333 * safezoneW + safezoneX;
           y = 0.448303689687796 * safezoneH + safezoneY;
           w = 0.260051833333333 * safezoneW;
           h = 0.0370321665089877 * safezoneH;
       };
       class RecentChange : husky_RscText
       {
           idc = 39005;
           text = "Letzte Änderung:";
           x = 0.453489833333333 * safezoneW + safezoneX;
           y = 0.510744560075686 * safezoneH + safezoneY;
           w = 0.260051833333333 * safezoneW;
           h = 0.0370321665089877 * safezoneH;
       };
       class StartPrice : husky_RscText
       {
           idc = 39006;
           text = "Server-Startpreis:";
           x = 0.453489833333333 * safezoneW + safezoneX;
           y = 0.570347209082308 * safezoneH + safezoneY;
           w = 0.260051833333333 * safezoneW;
           h = 0.0370321665089877 * safezoneH;
       };
       class StartChange : husky_RscText
       {
           idc = 39007;
           text = "Änderung seit Serverstart:";
           x = 0.453489833333333 * safezoneW + safezoneX;
           y = 0.629003784295175 * safezoneH + safezoneY;
           w = 0.260051833333333 * safezoneW;
           h = 0.0370321665089877 * safezoneH;
       };
       class ExitButton : husky_RscButtonMenu
       {
           idc = 39008;
           text = "$STR_Global_Close";
           onbuttonclick = "closeDialog 0;";
           x = 0.453489833333333 * safezoneW + safezoneX;
           y = 0.730233680227058 * safezoneH + safezoneY;
           w = 0.0678650333333334 * safezoneW;
           h = 0.0370321665089877 * safezoneH;
           colorbackground[] = {0.05,0.5,0.05,0.8};
           coloractive[] = {0.05,0.5,0.05,0.8};
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
