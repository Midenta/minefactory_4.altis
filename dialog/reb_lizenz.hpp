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
class reb_lizenz {
   idd = 8519;
   name = "reb_lizenz";
   movingenable = false;
   enablesimulation = true;
   class controlsBackground
   {
       class hintergrund : husky_RscPicture
       {
           text = "TrunkPic.paa";
           x = 0.215104166666667 * safezoneW + safezoneX;
           y = 0.0943472090823088 * safezoneH + safezoneY;
           w = 0.508333333333333 * safezoneW;
           h = 0.77414853358562 * safezoneH;
           idc = -1;
       };
       class text : husky_RscText
       {
           x = 0.343229166666667 * safezoneW + safezoneX;
           y = 0.265376064333018 * safezoneH + safezoneY;
           h = 0.0458822138126773 * safezoneH;
           w = 0.2625 * safezoneW;
           idc = 1004;
           text = "Kartell Zugangs Web";
       };
   };
   class controls
   {
       class reb_1 : husky_RscButton
       {
           x = 0.398238166666667 * safezoneW + safezoneX;
           y = 0.374904771996216 * safezoneH + safezoneY;
           w = 0.150398666666667 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 8520;
           onbuttonclick = "[0] call husky_fnc_reb_lizenz;";
           text = "Tamaulipas";
           tooltip = "Schaltet den Zugriff auf den Tamaulipas frei";
       };
       class reb_2 : husky_RscButton
       {
           x = 0.398238166666667 * safezoneW + safezoneX;
           y = 0.454374970671712 * safezoneH + safezoneY;
           w = 0.150398666666667 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 8521;
           onbuttonclick = "[1] call husky_fnc_reb_lizenz;";
           text = "Tierra Caliente";
           tooltip = "Schaltet den Zugriff auf Tierra Caliente frei (Benötigt den Tamaulipas Zugang)";
       };
       class reb_3 : husky_RscButton
       {
           x = 0.398238166666667 * safezoneW + safezoneX;
           y = 0.534791243140964 * safezoneH + safezoneY;
           w = 0.150398666666667 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = 8522;
           onbuttonclick = "[2] call husky_fnc_reb_lizenz;";
           text = "Sinaloa";
           tooltip = "Schaltet den Zugriff auf Sinaloa frei (Benötigt den Tierra Caliente Zugang)";
       };
       class close : husky_RscButton
       {
           x = 0.398238166666667 * safezoneW + safezoneX;
           y = 0.684270902554399 * safezoneH + safezoneY;
           w = 0.150398666666667 * safezoneW;
           h = 0.039216 * safezoneH;
           idc = -1;
           onbuttonclick = "closeDialog 0;";
           text = "Verlassen";
           tooltip = ;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
