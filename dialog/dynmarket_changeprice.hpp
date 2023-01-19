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
class husky_dynmarket_changeprice {
   idd = 7000;
   name = "husky_dynmarket_changeprice";
   movingenable = false;
   enablesimulation = true;
   onload = "";

   class controlsBackground
   {
   };
   class controls
   {
       class RscFrame_1800 : husky_RscText
       {
           colorbackground[] = {0,0,0,1};
           idc = 7001;
           x = 0.322396 * safezoneW + safezoneX;
           y = 0.363292336802271 * safezoneH + safezoneY;
           w = 0.366667 * safezoneW;
           h = 0.158698663197729 * safezoneH;
       };
       class RscText_1000 : husky_RscText
       {
           idc = 7002;
           text = "SET ARTIKEL";
           x = 0.328125 * safezoneW + safezoneX;
           y = 0.375600727530747 * safezoneH + safezoneY;
           w = 0.0817708333333333 * safezoneW;
           h = 0.0349952989593188 * safezoneH;
       };
       class RscText_1001 : husky_RscText
       {
           idc = 7003;
           text = "ZU PREIS";
           x = 0.328125 * safezoneW + safezoneX;
           y = 0.412497605487228 * safezoneH + safezoneY;
           w = 0.0817708333333333 * safezoneW;
           h = 0.0349952989593188 * safezoneH;
       };
       class RscEdit_1400 : husky_RscEdit
       {
           idc = 7004;
           text = "";
           sizeex = 0.030;
           x = 0.412292666666667 * safezoneW + safezoneX;
           y = 0.375600727530747 * safezoneH + safezoneY;
           w = 0.162707333333333 * safezoneW;
           h = 0.0349952989593188 * safezoneH;
       };
       class RscEdit_1401 : husky_RscEdit
       {
           idc = 7005;
           text = "";
           sizeex = 0.030;
           x = 0.412292666666667 * safezoneW + safezoneX;
           y = 0.412497605487228 * safezoneH + safezoneY;
           w = 0.162707333333333 * safezoneW;
           h = 0.0349952989593188 * safezoneH;
       };
       class RscButton_1600 : husky_RscButtonMenu
       {
           idc = 7006;
           colorbackground[] = {0,0.59,0.04,1};
           text = "ANFRAGE AN DEN SERVER SENDEN";
           onbuttonclick = "[] spawn {[] call husky_fnc_ForcePrice;};";
           x = 0.43698 * safezoneW + safezoneX;
           y = 0.473036896877956 * safezoneH + safezoneY;
           w = 0.246354 * safezoneW;
           h = 0.0387890255439924 * safezoneH;
       };
       class RscButton_1601 : husky_RscButtonMenu
       {
           idc = 7007;
           colorbackground[] = {0.69,0.14,0,1};
           text = "ABBRECHEN";
           onbuttonclick = "closeDialog 0;";
           x = 0.328125 * safezoneW + safezoneX;
           y = 0.473036896877956 * safezoneH + safezoneY;
           w = 0.103125 * safezoneW;
           h = 0.0387890255439924 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
