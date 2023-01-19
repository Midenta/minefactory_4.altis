/////////////////////////////////////////////////////////////////
/////////// This File was Edited by GUI D3V by Shinji ///////////
/////////////////////////////////////////////////////////////////
/////////// This .hpp was created by MO and Husky ///////////////
/////////////////////////////////////////////////////////////////
/////////// Minefactory.eu //////////////////////////////////////
/////////////////////////////////////////////////////////////////
/*
Diese Mission ist bearbeitet von dem Development Team von Thieves-Gaming.de! (2021)
Diese Mission darf von keinem anderen genutzt werden außer von Thieves-Gaming.de!
*/
/////////////////////////////////////////////////////////////////
class playerhud {
    idd = 112445;
    duration = 10e10;
    movingEnable = 0;
    fadein = 0;
    fadeout = 0;
    name = "playerHUD";
    onLoad = "uiNamespace setVariable ['playerHUD',_this select 0];";	// [] execVM ""dialog\function\fn_bummelDieBummel.sqf""
    objects[] = {};
    controls[] = {
		LebenBalken,
		Leben,
		EssenBalken,
		Essen,
		TrinkenBalken,
		Trinken,
		Rucksackplatz,
		Platz,
		Bargeld,
		Bar,
		Bank,
		Geld,
		//Leiser,
		//Offen,
		//Geschlossen,
		Wasserzeichen,
		TextNebenWasserzeichenOben,
		TextNebenWasserzeichenUnten
   };
   class LebenBalken : husky_RscPicture
   {
       idc = 1000;
       text = "textures\hud\LebenBalken.paa";
       x = 0.970833333333333 * safezoneW + safezoneX;
           y = 0.706981317600787 * safezoneH + safezoneY;
           w = 0.028125 * safezoneW;
           h = 0.0523844641101278 * safezoneH;
   };
   class Leben : husky_RscPicture
   {
       idc = 1001;
       text = "textures\hud\health0.paa";
       x = 0.970833333333333 * safezoneW + safezoneX;
           y = 0.706981317600787 * safezoneH + safezoneY;
           w = 0.028125 * safezoneW;
           h = 0.0523844641101278 * safezoneH;
   };
   class EssenBalken : husky_RscPicture
   {
       idc = 1004;
       text = "textures\hud\EssenBalken.paa";
       x = 0.970833333333333 * safezoneW + safezoneX;
           y = 0.786627335299902 * safezoneH + safezoneY;
           w = 0.028125 * safezoneW;
           h = 0.0523844641101278 * safezoneH;
   };
   class Essen : husky_RscPicture
   {
       idc = 1003;
       text = "textures\hud\food0.paa";
       x = 0.970833333333333 * safezoneW + safezoneX;
           y = 0.786627335299902 * safezoneH + safezoneY;
           w = 0.028125 * safezoneW;
           h = 0.0523844641101278 * safezoneH;
   };
   class TrinkenBalken : husky_RscPicture
   {
       idc = 1005;
       text = "textures\hud\TrinkenBalken.paa";
       x = 0.970833333333333 * safezoneW + safezoneX;
           y = 0.867969518190757 * safezoneH + safezoneY;
           w = 0.028125 * safezoneW;
           h = 0.0523844641101278 * safezoneH;
   };
   class Trinken : husky_RscPicture
   {
       idc = 1006;
       text = "textures\hud\water0.paa";
        x = 0.970833333333333 * safezoneW + safezoneX;
           y = 0.867969518190757 * safezoneH + safezoneY;
           w = 0.028125 * safezoneW;
           h = 0.0523844641101278 * safezoneH;
   };
   class Rucksackplatz : husky_RscPicture
   {
       idc = 1007;
       text = "textures\hud\RucksackPlatz.paa";
       x = 0.9359375 * safezoneW + safezoneX;
           y = 0.960668633235005 * safezoneH + safezoneY;
           w = 0.0151041666666667 * safezoneW;
           h = 0.0287856440511308 * safezoneH;
   };
   class Platz : husky_RscText
   {
       idc = 1008;
       text = "";
       x = 0.952604166666667 * safezoneW + safezoneX;
           y = 0.960668633235005 * safezoneH + safezoneY;
           h = 0.0287856440511308 * safezoneH;
           w = 0.0432291666666664 * safezoneW;
           colortext[] = {0,0.705882352941177,1,1};
   };
   class Bargeld : husky_RscPicture
   {
       idc = 1009;
       text = "textures\hud\Bargeld.paa";
       x = 0.644270833333333 * safezoneW + safezoneX;
           y = 0.960668633235005 * safezoneH + safezoneY;
           w = 0.0151041666666667 * safezoneW;
           h = 0.0287856440511308 * safezoneH;
   };
   class Bar : husky_RscText
   {
       idc = 1010;
       text = "";
       x = 0.6609375 * safezoneW + safezoneX;
           y = 0.960668633235005 * safezoneH + safezoneY;
           h = 0.0287856440511308 * safezoneH;
           w = 0.103645833333333 * safezoneW;
           colortext[] = {0,0.705882352941177,1,1};
   };
   class Bank : husky_RscPicture
   {
       idc = 1011;
       text = "textures\hud\Bank.paa";
       x = 0.789583333333333 * safezoneW + safezoneX;
           y = 0.960668633235005 * safezoneH + safezoneY;
           w = 0.0151041666666667 * safezoneW;
           h = 0.0287856440511308 * safezoneH;
   };
   class Geld : husky_RscText
   {
       idc = 1012;
       text = "";
       x = 0.80625 * safezoneW + safezoneX;
           y = 0.960668633235005 * safezoneH + safezoneY;
           h = 0.0287856440511308 * safezoneH;
           w = 0.103645833333333 * safezoneW;
           colortext[] = {0,0.705882352941177,1,1};
   };
   /*
   class Leiser : husky_RscPicture
   {
       idc = 1014;
       text = "textures\hud\Leiser.paa";
        x = 0.00677083333333333 * safezoneW + safezoneX;
           y = 0.449360865290069 * safezoneH + safezoneY;
           w = 0.0151041666666667 * safezoneW;
           h = 0.0287856440511308 * safezoneH;
   };
   */
   /*
   class Offen : husky_RscPicture
   {
       idc = 1016;
       text = "textures\hud\seatbeltOff.paa";
       x = 0.00677083333333333 * safezoneW + safezoneX;
           y = 0.492625368731564 * safezoneH + safezoneY;
           w = 0.0151041666666667 * safezoneW;
           h = 0.0304818092428712 * safezoneH;
   };
   class Geschlossen : husky_RscPicture
   {
       idc = 1017;
       text = "textures\hud\seatbeltOn.paa";
       x = 0.00677083333333333 * safezoneW + safezoneX;
           y = 0.492625368731564 * safezoneH + safezoneY;
           w = 0.0151041666666667 * safezoneW;
           h = 0.0304818092428712 * safezoneH;
   };*/
   class Wasserzeichen : husky_RscPicture
   {
       idc = 1013;
       text = "textures\hud\Wasserzeichen.paa";
       x = -0.00677083333333333 * safezoneW + safezoneX;
           y = 0.867969518190757 * safezoneH + safezoneY;
           w = 0.0833333333333333 * safezoneW;
           h = 0.15 * safezoneH;
   };
   class TextNebenWasserzeichenOben : husky_RscStructuredText
   {
       idc = 1129;
       text = "";
        x = 0.0755208333333333 * safezoneW + safezoneX;
           y = 0.934476401179941 * safezoneH + safezoneY;
           h = 0.0287856440511308 * safezoneH;
           w = 0.218229166666667 * safezoneW;
       colorbackground[] = {1,1,1,0};
       colortext[] = {0,0.705882352941177,1,1};
   };
   class TextNebenWasserzeichenUnten : husky_RscStructuredText
   {
       idc = 1130;
       text = "";
       x = 0.0755208333333333 * safezoneW + safezoneX;
           y = 0.960668633235005 * safezoneH + safezoneY;
           h = 0.0287856440511308 * safezoneH;
           w = 0.218229166666667 * safezoneW;
       colorbackground[] = {1,1,1,0};
       colortext[] = {0,0.705882352941177,1,1};
   };
};

/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
