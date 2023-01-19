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
class husky_FuelStat {
   idd = 20300;
   name = "husky_FuelStat";
   movingenable = 0;
   enablesimulation = 1;
   onload = "ctrlShow [2330,false];";
   class controlsBackground
   {
       class husky_RscTitleBackground_bg : husky_RscPicture
       {
           idc = -1;
           text = "textures\Menus\TrunkPic.paa";
           x = -0.0645833333333333 * safezoneW + safezoneX;
           y = 0.0454115421002838 * safezoneH + safezoneY;
           w = 1.09322916666667 * safezoneW;
           h = 0.956480605487228 * safezoneH;
       };
       class husky_RscTitleBackground : husky_RscText
       {
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           idc = -1;
           x = 0.1578125 * safezoneW + safezoneX;
           y = 0.205676442762535 * safezoneH + safezoneY;
           w = 0.644270833333333 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class MainBackground : husky_RscText
       {
           colorbackground[] = {0,0,0,0.7};
           idc = -1;
           x = 0.1578125 * safezoneW + safezoneX;
           y = 0.249676442762536 * safezoneH + safezoneY;
           w = 0.644791666666667 * safezoneW;
           h = 0.612 * safezoneH;
       };
       class Title : husky_RscTitle
       {
           idc = 20301;
           text = "";
           x = 0.1578125 * safezoneW + safezoneX;
           y = 0.205676442762535 * safezoneH + safezoneY;
           w = 0.644791666666667 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class VehicleTitleBox : husky_RscText
       {
           idc = -1;
           text = "$STR_GUI_ShopStock";
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           x = 0.1678125 * safezoneW + safezoneX;
           y = 0.265676442762535 * safezoneH + safezoneY;
           w = 0.2040625 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class VehicleInfoHeader : husky_RscText
       {
           idc = 20330;
           text = "$STR_GUI_VehInfo";
           colorbackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
           x = 0.3740625 * safezoneW + safezoneX;
           y = 0.264730368968779 * safezoneH + safezoneY;
           w = 0.42 * safezoneW;
           h = 0.04 * safezoneH;
       };
	   class vehicleInfomationList : husky_RscStructuredText
       {
           idc = 20303;
           sizeex = 0.035;
           x = 0.3734375 * safezoneW + safezoneX;
           y = 0.307676442762535 * safezoneH + safezoneY;
           w = 0.421145833333333 * safezoneW;
           h = 0.49 * safezoneH;
       };
       class FuelPrice : husky_RscTitle
       {
           idc = 20322;
           text = "Preis:";
           x = 0.374583333333333 * safezoneW + safezoneX;
           y = 0.685525070955535 * safezoneH + safezoneY;
           w = 0.226458333333333 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class literfuel : husky_RscTitle
       {
           idc = 20324;
           text = "Sprit:";
           x = 0.374583333333333 * safezoneW + safezoneX;
           y = 0.586329233680227 * safezoneH + safezoneY;
           w = 0.226979166666667 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class Totalfuel : husky_RscTitle
       {
           idc = 20323;
           text = "Gesamt:";
           x = 0.374583333333333 * safezoneW + safezoneX;
           y = 0.634437086092715 * safezoneH + safezoneY;
           w = 0.2275 * safezoneW;
           h = 0.04 * safezoneH;
       }; 
   };
   class controls
   {
       class VehicleList : husky_RscListBox
       {
           idc = 20302;
           text = "";
           sizeex = 0.04;
           colorbackground[] = {0.1,0.1,0.1,0.9};
           onlbselchanged = "_this call husky_fnc_fuelLBChange";
           x = 0.1678125 * safezoneW + safezoneX;
           y = 0.307676442762535 * safezoneH + safezoneY;
           w = 0.2040625 * safezoneW;
           h = 0.49 * safezoneH;
       };
       class fuelTank : husky_RscXSliderH
       {
           idc = 20901;
           text = "";
           onsliderposchanged = "[3,_this select 1] call husky_fnc_s_onSliderChange;";
           tooltip = "";
           x = 0.375625 * safezoneW + safezoneX;
           y = 0.7360454115421 * safezoneH + safezoneY;
           w = 0.228020833333333 * safezoneW;
           h = 0.0403864560075685 * safezoneH;
       };
       
	   class CloseBtn : husky_RscButtonMenu
       {
           text = "$STR_Global_Close";
           onbuttonclick =  "closeDialog 0; husky_action_inUse = false;";
           x = 0.1678125 * safezoneW + safezoneX;
           y = 0.807965941343425 * safezoneH + safezoneY;
           w = 0.15625 * safezoneW;
           h = 0.04 * safezoneH;
       };
       class refuelCar : husky_RscButtonMenu
       {
           idc = 20309;
           text = "Tanken";
           onbuttonclick = "[] spawn husky_fnc_fuelRefuelCar;";
           x = 0.375625 * safezoneW + safezoneX;
           y = 0.807019867549669 * safezoneH + safezoneY;
           w = 0.15625 * safezoneW;
           h = 0.04 * safezoneH;
       };
   };
};
/////////////////////////////////////////////////////////////////
////////////////////////// FILE END /////////////////////////////
/////////////////////////////////////////////////////////////////
