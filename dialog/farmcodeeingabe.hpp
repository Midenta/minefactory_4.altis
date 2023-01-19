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
class farmcodeeingabe {
   idd = 76548;
   name = "farmcodeeingabe";
   movingenable = true;
   enableSimulation = 1;

   class controlsBackground
   {
       class hintergrundbild : husky_RscPicture
       {
           idc = 1106;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.172916666666667 * safezoneW + safezoneX;
           y = 0.350047303689688 * safezoneH + safezoneY;
           w = 0.657291666666667 * safezoneW;
           h = 0.293282876064333 * safezoneH;
       };
       class MainBackground : husky_RscText
       {
           idc = -1;
           x = 0.440104166666667 * safezoneW + safezoneX;
           y = 0.542100283822138 * safezoneH + safezoneY;
           w = 0.2234375 * safezoneW;
           h = 0.037 * safezoneH;
           colorbackground[] = {0,0,0,0.7};
       };
       class Title : husky_RscTitle
       {
           colorbackground[] = {0.23921568627451,0.23921568627451,0.23921568627451,1};
           idc = 2901;
           text = "Minefactory.eu Farm Boost Activator.exe";
           x = 0.308583333333333 * safezoneW + safezoneX;
           y = 0.398675496688741 * safezoneH + safezoneY;
           w = 0.384125 * safezoneW;
           h = 0.0469252601702936 * safezoneH;
       };
   };
   class controls
   {
      class status : husky_RscTitle
       {
           colorbackground[] = {0.501960784313725,0.501960784313725,0.501960784313725,1};
           idc = 1001545;
           text = "";
           x = 0.308458333333333 * safezoneW + safezoneX;
           y = 0.450520340586566 * safezoneH + safezoneY;
           w = 0.384125 * safezoneW;
           h = 0.0469252601702936 * safezoneH;
       };
       class inputBox : husky_RscEdit
       {
           idc = 13377;
           x = 0.442708333333333 * safezoneW + safezoneX;
           y = 0.542100283822138 * safezoneH + safezoneY;
           w = 0.217708333333333 * safezoneW;
           h = 0.0312204351939451 * safezoneH;
           text = "";
           colorbackground[] = {1,1,1,1};
           colordisabled[] = {0.2,0.2,0.2,1};
           colorselection[] = {1,0,0,1};
           colortext[] = {0,0,0,1};
       };


       class payTicket : husky_RscButtonMenu
       {
           x = 0.326041666666667 * safezoneW + safezoneX;
           y = 0.542100283822138 * safezoneH + safezoneY;
           w = 0.095589 * safezoneW;
           h = 0.039216 * safezoneH;
           text = "Aktivieren";
           colorbackground[] = {0.6,0.2,0,1};
           onbuttonclick = "[] call husky_fnc_farmboostquery; closeDialog 0;";
           idc = 1000;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
