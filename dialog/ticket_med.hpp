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
class husky_ticket_give_med {
   idd = 2750;
   name = "husky_ticket_give_med";
   movingenable = 0;
   enablesimulation = 1;

   class controlsBackground
   {
	   class husky_RscTitleBackground : husky_RscPicture
       {
           idc = -1;
           text = "textures\Menus\TrunkPic.paa";
           x = 0.730208333333333 * safezoneW + safezoneX;
           y = 0.510879848628193 * safezoneH + safezoneY;
           w = 0.257291666666667 * safezoneW;
           h = 0.475875118259224 * safezoneH;
       };
       class MainBackground : husky_RscText
       {
           idc = -1;
           x = 0.791614333333333 * safezoneW + safezoneX;
           y = 0.644764427625355 * safezoneH + safezoneY;
           w = 0.134062 * safezoneW;
           h = 0.176 * safezoneH;
           colorbackground[] = {0,0,0,0.4};
       };
       
       class CloseButtonKey : husky_RscButtonMenu
       {
           text = "SCHLIESSEN";
           onbuttonclick = "closeDialog 0;";
           x = 0.868958333333333 * safezoneW + safezoneX;
           y = 0.875764427625355 * safezoneH + safezoneY;
           w = 0.0567187000000001 * safezoneW;
           h = 0.033 * safezoneH;
           colortext[] = {255,255,255,1};
           colorbackground[] = {0,0,0,0.4};
       };
       class preistitle : husky_RscText
       {
           idc = -1;
           text = "Preis";
           x = 0.796771333333333 * safezoneW + safezoneX;
           y = 0.644764427625355 * safezoneH + safezoneY;
           w = 0.0257812 * safezoneW;
           h = 0.022 * safezoneH;
           colortext[] = {255,255,255,1};
           sizeex = 0.028;
       };
       class prozentual_title : husky_RscText
       {
           idc = -1;
           text = "Prozentual";
           x = 0.796771333333333 * safezoneW + safezoneX;
           y = 0.699764427625355 * safezoneH + safezoneY;
           w = 0.0360937 * safezoneW;
           h = 0.022 * safezoneH;
           colortext[] = {255,255,255,1};
           sizeex = 0.028;
       };
   };
   class controls
   {
       class Title : husky_RscText
       {
           idc = 2751;
           text = "Strafzettel";
           x = 0.791614333333333 * safezoneW + safezoneX;
           y = 0.611764427625355 * safezoneH + safezoneY;
           w = 0.134062 * safezoneW;
           h = 0.033 * safezoneH;
           colortext[] = {2555,255,255,1};
           colorbackground[] = {0,0,0,0.4};
           sizeex = 0.052;
       };
       class prozentSlider : husky_RscXSliderH
       {
           idc = 2757;
           x = 0.801927333333333 * safezoneW + safezoneX;
           y = 0.732764427625355 * safezoneH + safezoneY;
           w = 0.113437 * safezoneW;
           h = 0.022 * safezoneH;
           onsliderposchanged = "_this call husky_fnc_sliderchangeticket;";
       };
       class Prozentanzeige : husky_RscText
       {
           idc = 2756;
           x = 0.801927333333333 * safezoneW + safezoneX;
           y = 0.765764427625355 * safezoneH + safezoneY;
           w = 0.113437 * safezoneW;
           h = 0.022 * safezoneH;
           colortext[] = {255,255,255,1};
           colorbackground[] = {0,0,0,0.4};
           sizeex = 0.028;
       };
       class moneyEdit : husky_RscEdit
       {
           idc = 2752;
           text = "";
           x = 0.801459333333333 * safezoneW + safezoneX;
           y = 0.672320427625355 * safezoneH + safezoneY;
           w = 0.113437 * safezoneW;
           h = 0.022 * safezoneH;
           colortext[] = {255,255,255,1};
           colorbackground[] = {255,255,255,0.3};
           sizeex = 0.04;
       };
       /*class forcepayTicket : husky_RscButtonMenu
       {
           idc = 2753;
           text = "ZWINGEN";
           onbuttonclick = "[husky_ticket_unit,true] spawn husky_fnc_ticketGive;";
           x = 0.858646333333333 * safezoneW + safezoneX;
           y = 0.831764427625355 * safezoneH + safezoneY;
           w = 0.0670312 * safezoneW;
           h = 0.033 * safezoneH;
           colortext[] = {255,255,255,1};
           colorbackground[] = {0,0,0,0.4};
           sizeex = 0.04;
       };*/
       class payTicket : husky_RscButtonMenu
       {
           idc = 2754;
           text = "AUSSTELLEN";
           onbuttonclick = "[husky_ticket_unit] spawn husky_fnc_ticketGive_med;";
           x = 0.791614333333333 * safezoneW + safezoneX;
           y = 0.831764427625355 * safezoneH + safezoneY;
           w = 0.0670312 * safezoneW;
           h = 0.033 * safezoneH;
           colortext[] = {255,255,255,1};
           colorbackground[] = {0,0,0,0.4};
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
